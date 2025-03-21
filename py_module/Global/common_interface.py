import time
import cirq
import mindquantum
import tensornetwork as tn
import jax
import jax.numpy as jnp
from jax import jit
import numpy as np
import gc
import signal
from contextlib import contextmanager
from numpy import load
from qiskit import QuantumCircuit
from qiskit.transpiler.passes import RemoveBarriers
from cirq.contrib.qasm_import import circuit_from_qasm
from mindquantum.io.qasm.openqasm import OpenQASM
from mindquantum.core.gates import BitFlipChannel, DepolarizingChannel, PhaseFlipChannel, Measure, RX, RY, RZ, Rxx
from mindquantum.core.circuit import Circuit
from math import sqrt
import random

jax.config.update('jax_platform_name', 'cpu')
tn.set_default_backend("jax")


class TimeoutException(Exception): pass


@contextmanager
def time_limit(seconds=3600 * 2):
    def signal_handler(signum, frame):
        raise TimeoutException("Timed out!")

    signal.signal(signal.SIGALRM, signal_handler)
    signal.alarm(seconds)
    try:
        yield
    finally:
        signal.alarm(0)


OOM_model_list = ['inst_4x4', 'qaoa_20']

noise_op_cirq = {
    "phase_flip": cirq.phase_flip,
    "depolarizing": cirq.depolarize,
    "bit_flip": cirq.bit_flip,
}

noise_op_mq = {
    "phase_flip": PhaseFlipChannel,
    "depolarizing": DepolarizingChannel,
    "bit_flip": BitFlipChannel,
}

noise_ops = ["phase_flip", "depolarizing", "bit_flip"]

# imported from a trained model
params_cr = [0.25005275, 0.1326074, 2.7016566, 4.0975943, 3.4119093, 4.7883525,
             2.724837, 3.5035949, 5.2497797, 3.109118, 1.2774808, 4.773297,
             2.529881, 6.0996304, 2.6149085, 0.36178315, 1.7953006, 3.7028892,
             5.8374367, 5.6633015, 1.1470748, 0.38180125, 0.45548266, 4.427361,
             5.7957864, 3.8033733, 5.544324, 6.214601, 5.1286793, 1.4030437,
             3.8545115, 0.18550971, 3.1386983, 5.195878, 1.4268013, 4.9385486,
             0.26109523, 1.3583922, 1.1371251, 5.902646, 1.9806675, 3.643112,
             0.4566148, 1.2792462, 3.2569685, 0.30495742, 1.3238809, 4.924705,
             3.2494488, 3.6414773, 4.4106135, 3.9998493, 4.9263744, 5.0355964,
             1.8715085, 2.821595, 3.9963686, 3.9364269, 2.0835845, 5.255737,
             5.682012, 1.5800779, 0.13781616, 4.6939526, 1.7238493, 2.7945642,
             1.7180046, 3.3467932, 2.6824343, 1.4030236, 4.50502, 6.0017667,
             2.029843, 2.7211223, 5.819587, ]

params_aci = [5.6864963, 4.5384674, 4.0658937, 6.0114822, 2.6314237, 0.7971049,
              6.2414956, 1.231465, 5.112798, 0.09745377, 0.2654334, 4.1310773,
              3.3447504, 5.935498, 1.7449, 1.745954, 1.514159, 2.4577525,
              6.188601, 5.751889, 0.16371164, 5.015923, 2.698336, 2.7948823,
              1.7905817, 4.1858573, 1.714581, 4.134787, 4.522799, 0.33325404,
              5.646758, 1.0231644, 3.535049, 4.513359, 2.4423301, 3.346549,
              0.7184883, 3.5541363, 5.1378045, 5.4350505, 4.250444, 2.081229,
              2.3359709, 1.1259285, 3.906016, 0.1284471, 2.5366719, 5.801898,
              1.9489733, 2.5943935, 5.240497, 2.2280385, 2.2115154, 3.0721598,
              0.9330431, 2.9257228, 2.702144, 4.1977177, 1.682387, 3.859512,
              4.688113, 5.4294186, 3.3565576, 6.080049, 1.753433, 1.5129646,
              5.4340334, ]

params_fct = [0.11780868, 1.5765338, 4.206496, 0.5947907, 6.0406756, 3.2344778,
              2.0535638, 1.0474278, 1.3552234, 1.1947954, 4.359093, 4.3828235,
              1.5595611, 4.189004, 4.736576, 5.6395154, 5.4876723, 3.7906342,
              0.896061, 5.0224333, 4.600445, 5.46947, 2.2689416, 1.4538898,
              2.2451863, 3.6725183, 1.8202529, 1.6112416, 0.574555, 4.0879498,
              5.6109347, 3.6359, 6.2621737, 4.9480653, 2.7919254, 5.074803,
              5.822844, 5.5694394, 5.677946, 5.1136017, 1.9180884, 2.2606523,
              3.8960311, 5.540094, 1.9288703, 4.161004, 5.011807, 1.5809758,
              1.9225371, 0.47577053, 5.9932785, 6.2445574, 0.36193165, 0.54220635,
              2.5442297, 6.1613083, 2.1198325, 5.00303, 0.99314445, 3.1671383,
              1.9087403, 0.6342722, 0.70649546, 3.2471435, 3.4544551, 3.4269898,
              5.728249, 1.6742734, 3.6606266, 1.8093376, 1.574797, 6.1125684,
              5.2926126, 0.16639477, 5.572203, ]

case_params = {
    'aci': (params_aci, 8),
    'cr': (params_cr, 9),
    'fct': (params_fct, 9),
}


def qasm2mq(qasm_str):
    circuit = OpenQASM().from_string(qasm_str)
    if circuit.parameterized:
        val_list = []
        for param in circuit.params_name:
            # print(param)
            param = param.replace('pi', str(np.pi)).replace('π', str(np.pi))
            # print("param = {}, num = {}".format(param, float(param)))
            val_list.append(float(param))
        pr = dict(zip(circuit.params_name, val_list))  # 获取线路参数
        circuit = circuit.apply_value(pr)

    return circuit


def qasm2cirq_by_qiskit(file):
    with open(file, 'r') as f:
        qasm_str = f.read()

    # qasm to qiskit
    circ = QuantumCircuit.from_qasm_str(qasm_str)
    circ.remove_final_measurements()
    circ = RemoveBarriers()(circ)
    # qiskit to qasm
    qasm_str = circ.inverse().qasm()

    # qasm to cirq
    circuit = circuit_from_qasm(qasm_str)
    qubits = sorted(circuit.all_qubits())

    return qubits, circuit, qasm_str


def get_origin_circuit(qasm_file_, to_save_figure=False, filedir=None):
    cirq_qubits, cirq_circuit, qasm_str = qasm2cirq_by_qiskit(qasm_file_)

    mq_circuit = qasm2mq(qasm_str)

    model_name_ = qasm_file_[qasm_file_.rfind('/') + 1:-5]
    if to_save_figure:
        file_name_ = "{}_origin.svg".format(model_name_)
        if filedir is not None:
            mq_circuit.svg().to_file("./results/{}/{}/{}".format(model_name_, filedir, file_name_))
        else:
            mq_circuit.svg().to_file("./results/{}/{}".format(model_name_, file_name_))
        print(file_name_ + " was saved successfully! ")

    return mq_circuit, cirq_circuit, cirq_qubits


def generate_model_circuit(variables, qubits_num, model_name_, to_save_figure=False, filedir=None):
    cirq_qubits = cirq.GridQubit.rect(1, qubits_num)
    symbols = iter(variables)
    cirq_circuit = cirq.Circuit()
    cirq_circuit += [cirq.Z(q1) ** next(symbols) for q1 in cirq_qubits]
    cirq_circuit += [cirq.Y(q1) ** next(symbols) for q1 in cirq_qubits]
    cirq_circuit += [cirq.Z(q1) ** next(symbols) for q1 in cirq_qubits]

    cirq_circuit += [cirq.XX(q1, q2) ** next(symbols) for q1, q2 in
                     zip(cirq_qubits, cirq_qubits[1:] + [cirq_qubits[0]])]
    cirq_circuit += [cirq.Z(q1) ** next(symbols) for q1 in cirq_qubits]
    cirq_circuit += [cirq.Y(q1) ** next(symbols) for q1 in cirq_qubits]
    cirq_circuit += [cirq.Z(q1) ** next(symbols) for q1 in cirq_qubits]
    cirq_circuit += [cirq.XX(q1, q2) ** next(symbols) for q1, q2 in
                     zip(cirq_qubits, cirq_qubits[1:] + [cirq_qubits[0]])]

    cirq_circuit += cirq.X(cirq_qubits[-1]) ** next(symbols)
    cirq_circuit += cirq.Y(cirq_qubits[-1]) ** next(symbols)
    cirq_circuit += cirq.X(cirq_qubits[-1]) ** next(symbols)

    mq_qubits = [i for i in range(qubits_num)]
    variables = [round(i, 4) for i in variables]
    symbols = iter(variables)
    mq_circuit = Circuit()
    for q in mq_qubits:
        # circuit += Power(Z, next(symbols)).on(q)
        mq_circuit += RZ(next(symbols)).on(q)

    for q in mq_qubits:
        # circuit += Power(Y, next(symbols)).on(q)
        mq_circuit += RY(next(symbols)).on(q)

    for q in mq_qubits:
        # circuit += Power(Z, next(symbols)).on(q)
        mq_circuit += RZ(next(symbols)).on(q)

    for q1, q2 in zip(mq_qubits, mq_qubits[1:] + [mq_qubits[0]]):
        # circuit += XX(next(symbols)).on([q1, q2])
        mq_circuit += Rxx(next(symbols)).on([q1, q2])

    for q in mq_qubits:
        # circuit += Power(Z, next(symbols)).on(q)
        mq_circuit += RZ(next(symbols)).on(q)

    for q in mq_qubits:
        # circuit += Power(Y, next(symbols)).on(q)
        mq_circuit += RY(next(symbols)).on(q)

    for q in mq_qubits:
        # circuit += Power(Z, next(symbols)).on(q)
        mq_circuit += RZ(next(symbols)).on(q)

    for q1, q2 in zip(mq_qubits, mq_qubits[1:] + [mq_qubits[0]]):
        # circuit += XX(next(symbols)).on([q1, q2])
        mq_circuit += Rxx(next(symbols)).on([q1, q2])

    # circuit += Power(X, next(symbols)).on(qubits[-1])
    # circuit += Power(Y, next(symbols)).on(qubits[-1])
    # circuit += Power(X, next(symbols)).on(qubits[-1])
    mq_circuit += RX(next(symbols)).on(mq_qubits[-1])
    mq_circuit += RZ(next(symbols)).on(mq_qubits[-1])
    mq_circuit += RX(next(symbols)).on(mq_qubits[-1])

    if to_save_figure:
        file_name_ = "{}_origin.svg".format(model_name_)
        if filedir is not None:
            mq_circuit.svg().to_file("./results/{}/{}/{}".format(model_name_, filedir, file_name_))
        else:
            mq_circuit.svg().to_file("./results/{}/{}".format(model_name_, file_name_))
        print(file_name_ + " was saved successfully! ")

    return mq_circuit, cirq_circuit, cirq_qubits


def random_insert_ops(mq_circuit: mindquantum.Circuit, cirq_circuit: cirq.Circuit,
                      mq_nums_and_ops, cirq_nums_and_ops, with_ctrl=True, after_measure=False):
    """Insert single-qubit operators at random points in the circuit.

    args:
        circuit: The quantum circuit in which the operators are to be inserted.
        nums_and_ops: [num_0, op_0], [num_1, op_1], ...
            Where num_i is the number of insertion operators op_i. num_i: int, op_i: gate.
        with_ctrl: Whether to allow operator insertion on control qubits.
        after_measure: Whether to allow insertion of an operator after a measurement gate.
        shots: The number of new circuits generated.

    returns:
        An iterator of the new circuit generated after inserting the operators.
    """
    print(mq_nums_and_ops)
    print(cirq_nums_and_ops)

    mq_circuit = mq_circuit.remove_barrier()
    available_indexes = []
    if after_measure:
        available_indexes = range(len(mq_circuit))
    else:
        for i, mq_gate in enumerate(mq_circuit):
            if not isinstance(mq_gate, Measure):
                available_indexes.append(i)

    mq_nums, mq_ops = [], []
    cirq_nums, cirq_ops = [], []
    for i in range(len(mq_nums_and_ops)):
        if len(mq_nums_and_ops[i]) != 2:
            raise ValueError(
                f'The format of the argment "nums_and_ops" should be "[num_0, op_0], [num_1, op_1], ....".')
        if mq_nums_and_ops[i][0] > len(available_indexes):
            raise ValueError(
                f'The number of positions allowed to insert channel should be less than {len(available_indexes)}, but get {mq_nums_and_ops[i][0]}.')
        mq_nums.append(mq_nums_and_ops[i][0])
        mq_ops.append(mq_nums_and_ops[i][1])
        cirq_nums.append(cirq_nums_and_ops[i][0])
        cirq_ops.append(cirq_nums_and_ops[i][1])
    indexes = []
    for num in mq_nums:
        tem = sorted(np.random.choice(available_indexes, size=num, replace=False))
        indexes.append(tem)

    mq_random_circuit = Circuit()
    cirq_random_circuit = cirq.Circuit()
    # qubits_num = mq_circuit.n_qubits
    # cirq_qubits = cirq.GridQubit.rect(1, qubits_num)
    # cirq_qubits = cirq.num_qubits(qubits_num)
    cirq_qubits = sorted(cirq_circuit.all_qubits())
    selected_qubits = []
    for (i, mq_gate), cirq_gate in zip(enumerate(mq_circuit), cirq_circuit.all_operations()):
        if (isinstance(mq_gate, Measure) or isinstance(cirq_gate, Measure)) and not after_measure:
            continue
        mq_random_circuit += mq_gate
        cirq_random_circuit += cirq_gate
        for j, tem_indexs in enumerate(indexes):
            for k in tem_indexs:
                if k == i:
                    qubits = mq_gate.obj_qubits
                    if with_ctrl:
                        qubits += mq_gate.ctrl_qubits

                    qubit = int(np.random.choice(qubits))
                    if qubit not in selected_qubits:  # the `qubit` has been selected.
                        mq_random_circuit += mq_ops[j].on(qubit)
                        cirq_random_circuit += cirq_ops[j].on(cirq_qubits[qubit])
                        selected_qubits.append(qubit)

    return mq_random_circuit, cirq_random_circuit


def generate_circuit_with_random_noise(mq_circuit: mindquantum.Circuit, cirq_circuit: cirq.Circuit,
                                       model_name_, to_save_figure=False, filedir=None):
    # generate random noise
    noise_num = mq_circuit.n_qubits
    print('add {} noise'.format(noise_num))
    mq_ops, cirq_ops = [], []
    left_noise_num = noise_num
    while left_noise_num > 0:
        noise_p_ = float(round(random.uniform(0, 0.2), 5))
        noise_type_ = random.choice(noise_ops)
        mq_noise_op = noise_op_mq[noise_type_](noise_p_)
        cirq_noise_op = noise_op_cirq[noise_type_](noise_p_)
        temp_noise_num = random.randint(0, left_noise_num)
        if temp_noise_num != 0:
            mq_ops.append([temp_noise_num, mq_noise_op])
            cirq_ops.append([temp_noise_num, cirq_noise_op])
            left_noise_num -= temp_noise_num
            # print('[{}, {}]'.format(temp_noise_num, noise_op))
            # print('left_noise_num =', left_noise_num)

    # remove measures
    all_measures = []
    for gate in mq_circuit:
        if isinstance(gate, Measure):
            all_measures.append(gate)
    mq_circuit = mq_circuit.remove_measure()

    # insert random noise
    mq_circuit, cirq_circ = random_insert_ops(mq_circuit, cirq_circuit, mq_ops, cirq_ops)

    # add measures
    for m in all_measures:
        mq_circuit += m

    if to_save_figure:
        file_name_ = '{}_random.svg'.format(model_name_)
        # mq_circ.svg().to_file("./figures/{}/{}".format(model_name_, file_name_))  # qasm_file chop '.qasm'
        if filedir is not None:
            mq_circuit.svg().to_file("./results/{}/{}/{}".format(model_name_, filedir, file_name_))
        else:
            mq_circuit.svg().to_file("./results/{}/{}".format(model_name_, file_name_))
        print(file_name_ + " was saved successfully! ")
    return mq_circuit, cirq_circ


def generate_circuit_with_specified_noise(mq_circuit: mindquantum.Circuit, cirq_circuit: cirq.Circuit,
                                          noise_type_, noise_list_, kraus_file_, noise_p_,
                                          model_name_, to_save_figure=False, filedir=None):
    all_measures = []
    for gate in mq_circuit:
        # print(type(gate))
        if type(gate) is Measure:
            all_measures.append(gate)
    if mq_circuit.has_measure_gate:
        mq_circuit = mq_circuit.remove_measure()

    # noise_op_cirq_ = noise_op_cirq[noise_type]
    # noise_op_mq_ = noise_op_mq[noise_type]
    qubits_num = mq_circuit.n_qubits
    # qubits = cirq.GridQubit.rect(1, qubits_num)
    qubits = sorted(cirq_circuit.all_qubits())
    if noise_p_ > 1e-7:
        if noise_type_ == "mixed":
            l = len(noise_list_)
            for q in range(qubits_num)[::l]:
                for i in range(l):
                    if q + i < qubits_num:
                        cirq_circuit += noise_op_cirq[noise_list_[i]](noise_p_).on(qubits[q + i])
                        mq_circuit += noise_op_mq[noise_list_[i]](noise_p_).on(q + i)
            noise_list_ = [noise_op_mq[i].__name__ for i in noise_list_]
            noise_list_ = [i[0: i.index("Channel")] for i in noise_list_]
            noise_ = "mixed_{}_{}".format('_'.join(noise_list_), noise_p_)
        elif noise_type_ == "custom":
            # TODO
            data = load(kraus_file_)
            noisy_kraus = data['kraus']
            noise_ = "custom_{}_{}".format(kraus_file_[kraus_file_.rfind('/') + 1:-4], noise_p_)
        else:
            # noise = noise_op_cirq[noise_type]
            cirq_circuit += noise_op_cirq[noise_type_](noise_p_).on_each(*qubits)
            for q in range(mq_circuit.n_qubits):
                mq_circuit += noise_op_mq[noise_type_](noise_p_).on(q)
            noise_ = noise_op_mq[noise_type_].__name__
            noise_ = noise_[0: noise_.index("Channel")]
            noise_ = "{}_{}".format(noise_, noise_p_)

    print("add {} with probability {}".format(noise_type_, noise_p_))
    for m in all_measures:
        mq_circuit += m

    if to_save_figure:
        file_name_ = '{}_{}.svg'.format(model_name_, noise_)
        # mq_circuit.svg().to_file("./figures/{}/{}".format(model_name_, file_name_))
        if filedir is not None:
            mq_circuit.svg().to_file("./results/{}/{}/{}".format(model_name_, filedir, file_name_))
        else:
            mq_circuit.svg().to_file("./results/{}/{}".format(model_name_, file_name_))
        print(file_name_ + " was saved successfully! ")
    return mq_circuit, cirq_circuit, noise_


def circuit_to_tensor(circuit, all_qubits, measurement):
    """
    convert a quantum circuit model to tensor network
    circuit: The quantum circuit written with cirq
    all_qubits: The total qubits, not only the working qubits of input circuit
    """
    # qubits = circuit.all_qubits()
    # qubits_frontier = {q: 0 for q in qubits}
    # qubits_frontier = {q: 0 for q in all_qubits}
    # qubits = sorted(circuit.all_qubits())
    qubits_frontier = {q: 0 for q in all_qubits}
    left_edge = {q: 0 for q in all_qubits}
    right_edge = {q: 0 for q in all_qubits}
    all_qnum = len(all_qubits)
    nodes_set = []
    # print('qubits_frontier', qubits_frontier)
    # print(circuit.all_qubits())

    # Measurement
    Measurement = [jnp.eye(2)] * (all_qnum - 1) + [measurement]
    for j in range(len(Measurement)):
        left_inds = f'li{0}q{all_qubits[j]}'
        right_inds = f'ri{0}q{all_qubits[j]}'
        a = tn.Node(Measurement[j], axis_names=[left_inds, right_inds])
        nodes_set.append(a)
        left_edge[all_qubits[j]] = a[left_inds]
        right_edge[all_qubits[j]] = a[right_inds]

    # circuit
    for moment in circuit.moments:
        # print(moment)
        for op in moment.operations:
            left_start_inds = [f"li{qubits_frontier[q]}q{q}" for q in op.qubits]
            right_start_inds = [f"ri{qubits_frontier[q]}q{q}" for q in op.qubits]
            for q in op.qubits:
                qubits_frontier[q] += 1
            left_end_inds = [f'li{qubits_frontier[q]}q{q}' for q in op.qubits]
            right_end_inds = [f'ri{qubits_frontier[q]}q{q}' for q in op.qubits]
            try:
                # unitary
                op.gate._has_unitary_()
                U = jnp.array(cirq.unitary(op).reshape((2,) * 2 * len(op.qubits)))
                U_d = jnp.array(cirq.unitary(op).conj().T.reshape((2,) * 2 * len(op.qubits)))

                b = tn.Node(U_d, axis_names=left_end_inds + left_start_inds)
                nodes_set.append(b)
                # U^\dagger M
                for j in range(len(op.qubits)):
                    b[left_start_inds[j]] ^ left_edge[op.qubits[j]]
                    left_edge[op.qubits[j]] = b[left_end_inds[j]]

                c = tn.Node(U, axis_names=right_start_inds + right_end_inds)
                nodes_set.append(c)
                # U^\dagger rho U
                for j in range(len(op.qubits)):
                    c[right_start_inds[j]] ^ right_edge[op.qubits[j]]
                    right_edge[op.qubits[j]] = c[right_end_inds[j]]
            except:
                # noise
                kraus = op._mixture_()
                kraus_ = []
                for E in kraus:
                    kraus_.append(sqrt(E[0]) * E[1])
                noisy_kraus = jnp.array(kraus_)
                noisy_kraus_d = jnp.array([E.conj().T for E in kraus_])

                kraus_inds = [f'ki{qubits_frontier[q]}q{q}' for q in op.qubits]

                d = tn.Node(noisy_kraus_d, axis_names=kraus_inds + left_end_inds + left_start_inds)
                nodes_set.append(d)
                e = tn.Node(noisy_kraus, axis_names=kraus_inds + right_start_inds + right_end_inds)
                nodes_set.append(e)

                # E^\dagger E
                for j in range(len(kraus_inds)):
                    d[kraus_inds[j]] ^ e[kraus_inds[j]]

                # E rho E^\dagger
                for j in range(len(op.qubits)):
                    e[right_start_inds[j]] ^ right_edge[op.qubits[j]]
                    right_edge[op.qubits[j]] = e[right_end_inds[j]]

                    d[left_start_inds[j]] ^ left_edge[op.qubits[j]]
                    left_edge[op.qubits[j]] = d[left_end_inds[j]]

    return nodes_set, [left_edge[q] for q in all_qubits], [right_edge[q] for q in all_qubits]


def model_to_mv(model_circuit, qubits, measurement):
    measurement = jnp.array(measurement)

    def mv1(v):
        nodes_set, left_edge, right_edge = circuit_to_tensor(model_circuit, qubits, measurement)
        node_v = tn.Node(v.reshape([2] * len(qubits)), axis_names=[edge.name for edge in left_edge])
        nodes_set.append(node_v)
        # A(|psi>)
        for j in range(len(qubits)):
            right_edge[j] ^ node_v[left_edge[j].name]

        y = tn.contractors.auto(nodes_set, left_edge).tensor.reshape([2 ** len(qubits)])
        e = jnp.linalg.norm(y)
        return y / e, e

    def mv2(v):
        nodes_set, left_edge, right_edge = circuit_to_tensor(model_circuit, qubits, jnp.eye(2) - measurement)
        node_v = tn.Node(v.reshape([2] * len(qubits)), axis_names=[edge.name for edge in left_edge])
        nodes_set.append(node_v)
        for j in range(len(qubits)):
            right_edge[j] ^ node_v[left_edge[j].name]

        y = tn.contractors.auto(nodes_set, left_edge).tensor.reshape([2 ** len(qubits)])
        e = jnp.linalg.norm(y)
        return y / e, e

    return len(qubits), jit(mv1), jit(mv2)


norm_jit = jit(jnp.linalg.norm)


def largest_eigenvalue(nqs, mv, N):
    key = jax.random.PRNGKey(int(100 * time.time()))
    print("==========Evaluate largest eigenvalue==========")
    v = jax.random.uniform(key, [2 ** nqs])
    v = v / norm_jit(v)
    e0 = 1.
    for j in range(N):
        gc.collect()
        start = time.time()
        v, e = mv(v)
        print('iter %d/%d, %.8f, elapsed time: %.4fs' % (j, N, e, time.time() - start))
        if jnp.abs(e - e0) < 1e-6:
            break
        e0 = e
    print("===============================================")
    return v, e


def smallest_eigenvalue(nqs, mv, N):
    key = jax.random.PRNGKey(int(100 * time.time()))
    print("=========Evaluate smallest eigenvalue==========")
    v = jax.random.uniform(key, [2 ** nqs])
    v = v / norm_jit(v)
    e0 = 1.
    for j in range(N):
        gc.collect()
        start = time.time()
        v, e = mv(v)
        print('iter %d/%d, %.8f, elapsed time: %.4fs' % (j, N, 1 - e, time.time() - start))
        if jnp.abs(e - e0) < 1e-6:
            break
        e0 = e
    print("===============================================")
    return v, 1 - e


def lipschitz(model_circuit, qubits, measurement):
    n, mv1, mv2 = model_to_mv(model_circuit, qubits, measurement)
    v1, e1 = largest_eigenvalue(n, mv1, 200)
    if e1 == -1:
        return -1
    v2, e2 = smallest_eigenvalue(n, mv2, 200)
    if e2 == -1:
        return -1

    phi = v1
    psi = v2
    k = e1 - e2
    return k, (phi, psi)


def calculate_lipschitz(cirq_circuit: cirq.Circuit, cirq_qubits):
    measurement = np.array([[1., 0.], [0., 0.]])
    print("===========The Lipschitz Constant Calculation Start============")
    start_time = time.time()
    k, bias_kernel = lipschitz(cirq_circuit, cirq_qubits, measurement)
    total_time = time.time() - start_time
    # print('Circuit: %s' % file)
    # print('Noise configuration: {}, {}'.format(noise_type, p))
    print('Lipschitz K =', k)
    print('Elapsed time = %.4fs' % total_time)
    # print('The bias kernel is: (\n{},\n {})'.format(bias_kernel[0], bias_kernel[1]))
    print("============The Lipschitz Constant Calculation End=============")
    return k, total_time, bias_kernel


def verify(k, epsilon, delta):
    if delta >= k * epsilon:
        print('This model is ({}, {})-robust.'.format(epsilon, delta))
        # print('YES')
        return True

    print('This model is not ({}, {})-robust.'.format(epsilon, delta))
    # print('NO')
    print("============The Global Verification End============")
    return False
