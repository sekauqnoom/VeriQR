OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[2];
ry(-3.2047030925750732) q[0];
ry(-0.23856540024280548) q[1];
ry(-1.36288583278656) q[2];
ry(-0.13818147778511047) q[3];
cx q[0],q[1];
cx q[1],q[2];
cx q[2],q[3];
ry(-1.5990185737609863) q[0];
ry(-0.19568267464637756) q[1];
ry(1.6602661609649658) q[2];
ry(-1.833220362663269) q[3];
cx q[0],q[1];
cx q[1],q[2];
cx q[2],q[3];
ry(-1.4458485841751099) q[0];
ry(1.2807508707046509) q[1];
ry(-1.646888017654419) q[2];
ry(-0.5752613544464111) q[3];
cx q[0],q[1];
cx q[1],q[2];
cx q[2],q[3];
ry(-0.006432238966226578) q[0];
ry(-0.0093964459374547) q[1];
ry(-1.5325969457626343) q[2];
ry(-0.007533968426287174) q[3];
measure q[2] -> c[0];
measure q[3] -> c[1];