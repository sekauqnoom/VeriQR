§
çź
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
8
Const
output"dtype"
valuetensor"
dtypetype
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
ž
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
O
TfqAppendCircuit
programs
programs_to_append
programs_extended
{
TfqNoisyExpectation
programs
symbol_names
symbol_values

pauli_sums
num_samples
expectations
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8Ś¸
l

parametersVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*
shared_name
parameters
e
parameters/Read/ReadVariableOpReadVariableOp
parameters*
_output_shapes
:K*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
z
Adam/parameters/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*"
shared_nameAdam/parameters/m
s
%Adam/parameters/m/Read/ReadVariableOpReadVariableOpAdam/parameters/m*
_output_shapes
:K*
dtype0
z
Adam/parameters/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:K*"
shared_nameAdam/parameters/v
s
%Adam/parameters/v/Read/ReadVariableOpReadVariableOpAdam/parameters/v*
_output_shapes
:K*
dtype0
ń\
ConstConst*
_output_shapes
:*
dtype0*ˇ\
value­\BŞ\B\

tfq_gate_set\



ZP
control_qubits
 
global_shift
    
exponentqgenerator0
control_values
 
exponent_scalar
  ?0_0


ZP
control_qubits
 
control_values
 
exponent_scalar
  ?
global_shift
    
exponentqgenerator10_1


ZP
exponentqgenerator2
exponent_scalar
  ?
global_shift
    
control_qubits
 
control_values
 0_2


ZP
exponent_scalar
  ?
control_values
 
global_shift
    
exponentqgenerator3
control_qubits
 0_3


ZP
control_qubits
 
control_values
 
exponent_scalar
  ?
global_shift
    
exponentqgenerator40_4


ZP
exponent_scalar
  ?
exponentqgenerator5
global_shift
    
control_values
 
control_qubits
 0_5


ZP
exponent_scalar
  ?
control_qubits
 
control_values
 
exponentqgenerator6
global_shift
    0_6


ZP
control_values
 
global_shift
    
control_qubits
 
exponent_scalar
  ?
exponentqgenerator70_7


ZP
global_shift
    
exponentqgenerator8
control_qubits
 
control_values
 
exponent_scalar
  ?0_8



YP
exponentqgenerator9
control_qubits
 
control_values
 
global_shift
    
exponent_scalar
  ?0_0


YP
control_values
 
global_shift
    
exponentqgenerator10
control_qubits
 
exponent_scalar
  ?0_1


YP
exponentqgenerator11
exponent_scalar
  ?
global_shift
    
control_values
 
control_qubits
 0_2


YP
global_shift
    
exponentqgenerator12
control_values
 
control_qubits
 
exponent_scalar
  ?0_3


YP
control_values
 
exponent_scalar
  ?
global_shift
    
exponentqgenerator13
control_qubits
 0_4


YP
control_values
 
control_qubits
 
exponent_scalar
  ?
global_shift
    
exponentqgenerator140_5


YP
exponent_scalar
  ?
global_shift
    
control_qubits
 
control_values
 
exponentqgenerator150_6


YP
exponent_scalar
  ?
control_qubits
 
global_shift
    
exponentqgenerator16
control_values
 0_7


YP
exponent_scalar
  ?
control_values
 
global_shift
    
exponentqgenerator17
control_qubits
 0_8



ZP
exponent_scalar
  ?
control_qubits
 
exponentqgenerator18
global_shift
    
control_values
 0_0


ZP
exponent_scalar
  ?
exponentqgenerator19
control_qubits
 
control_values
 
global_shift
    0_1


ZP
control_values
 
exponentqgenerator20
control_qubits
 
global_shift
    
exponent_scalar
  ?0_2


ZP
control_qubits
 
exponent_scalar
  ?
control_values
 
exponentqgenerator21
global_shift
    0_3


ZP
control_values
 
global_shift
    
control_qubits
 
exponent_scalar
  ?
exponentqgenerator220_4


ZP
global_shift
    
control_values
 
exponentqgenerator23
control_qubits
 
exponent_scalar
  ?0_5


ZP
control_values
 
exponentqgenerator24
global_shift
    
control_qubits
 
exponent_scalar
  ?0_6


ZP
control_qubits
 
control_values
 
exponentqgenerator25
global_shift
    
exponent_scalar
  ?0_7


ZP
exponent_scalar
  ?
control_values
 
control_qubits
 
exponentqgenerator26
global_shift
    0_8ľ
K

DP
p
o:
control_qubits
 
control_values
 0_0
K

DP
p
o:
control_values
 
control_qubits
 0_1
K

DP
p
o:
control_values
 
control_qubits
 0_2
K

DP
control_qubits
 
p
o:
control_values
 0_3
K

DP
control_values
 
p
o:
control_qubits
 0_4
K

DP
control_values
 
control_qubits
 
p
o:0_5
K

DP
control_qubits
 
p
o:
control_values
 0_6
K

DP
control_qubits
 
p
o:
control_values
 0_7
K

DP
control_qubits
 
control_values
 
p
o:0_8


XXP
exponentqgenerator27
control_values
 
exponent_scalar
  ?
global_shift
    
control_qubits
 0_00_1


XXP
control_values
 
control_qubits
 
global_shift
    
exponentqgenerator28
exponent_scalar
  ?0_10_2Ş


XXP
control_values
 
exponentqgenerator29
control_qubits
 
global_shift
    
exponent_scalar
  ?0_20_3


ZP
control_qubits
 
exponent_scalar
  ?
control_values
 
global_shift
    
exponentqgenerator370_1ť


XXP
control_qubits
 
control_values
 
exponent_scalar
  ?
exponentqgenerator30
global_shift
    0_30_4


ZP
control_qubits
 
exponent_scalar
  ?
global_shift
    
exponentqgenerator38
control_values
 0_2


YP
exponent_scalar
  ?
control_qubits
 
control_values
 
global_shift
    
exponentqgenerator460_1Ě


XXP
control_values
 
exponentqgenerator31
control_qubits
 
exponent_scalar
  ?
global_shift
    0_40_5


ZP
exponent_scalar
  ?
control_values
 
control_qubits
 
exponentqgenerator39
global_shift
    0_3


YP
control_qubits
 
global_shift
    
exponent_scalar
  ?
control_values
 
exponentqgenerator470_2


ZP
exponentqgenerator55
control_qubits
 
global_shift
    
control_values
 
exponent_scalar
  ?0_1Ě


XXP
control_values
 
exponentqgenerator32
global_shift
    
control_qubits
 
exponent_scalar
  ?0_50_6


ZP
control_qubits
 
exponent_scalar
  ?
control_values
 
exponentqgenerator40
global_shift
    0_4


YP
exponent_scalar
  ?
control_qubits
 
global_shift
    
control_values
 
exponentqgenerator480_3


ZP
control_values
 
exponent_scalar
  ?
control_qubits
 
exponentqgenerator56
global_shift
    0_2Ě


XXP
global_shift
    
control_values
 
exponent_scalar
  ?
exponentqgenerator33
control_qubits
 0_60_7


ZP
exponent_scalar
  ?
global_shift
    
control_qubits
 
control_values
 
exponentqgenerator410_5


YP
global_shift
    
control_values
 
control_qubits
 
exponent_scalar
  ?
exponentqgenerator490_4


ZP
exponentqgenerator57
global_shift
    
control_qubits
 
control_values
 
exponent_scalar
  ?0_3Ě


XXP
exponent_scalar
  ?
global_shift
    
control_qubits
 
control_values
 
exponentqgenerator340_70_8


ZP
exponent_scalar
  ?
control_values
 
control_qubits
 
exponentqgenerator42
global_shift
    0_6


YP
exponent_scalar
  ?
global_shift
    
control_values
 
control_qubits
 
exponentqgenerator500_5


ZP
global_shift
    
exponent_scalar
  ?
exponentqgenerator58
control_values
 
control_qubits
 0_4Ě


XXP
control_qubits
 
exponent_scalar
  ?
control_values
 
exponentqgenerator35
global_shift
    0_80_0


ZP
exponent_scalar
  ?
control_values
 
global_shift
    
control_qubits
 
exponentqgenerator430_7


YP
global_shift
    
exponentqgenerator51
control_qubits
 
exponent_scalar
  ?
control_values
 0_6


ZP
exponentqgenerator59
control_values
 
exponent_scalar
  ?
global_shift
    
control_qubits
 0_5Ä


ZP
exponent_scalar
  ?
control_values
 
exponentqgenerator36
control_qubits
 
global_shift
    0_0


ZP
control_qubits
 
exponent_scalar
  ?
global_shift
    
exponentqgenerator44
control_values
 0_8


YP
control_values
 
global_shift
    
control_qubits
 
exponentqgenerator52
exponent_scalar
  ?0_7


ZP
control_values
 
global_shift
    
exponentqgenerator60
control_qubits
 
exponent_scalar
  ?0_6ł


YP
global_shift
    
exponentqgenerator45
control_values
 
control_qubits
 
exponent_scalar
  ?0_0


YP
control_values
 
control_qubits
 
global_shift
    
exponentqgenerator53
exponent_scalar
  ?0_8


ZP
global_shift
    
exponentqgenerator61
exponent_scalar
  ?
control_values
 
control_qubits
 0_7˘


ZP
control_values
 
exponentqgenerator54
exponent_scalar
  ?
global_shift
    
control_qubits
 0_0


ZP
exponent_scalar
  ?
global_shift
    
control_qubits
 
control_values
 
exponentqgenerator620_8


XXP
global_shift
    
control_qubits
 
exponentqgenerator63
control_values
 
exponent_scalar
  ?0_00_1


XXP
exponentqgenerator64
global_shift
    
control_qubits
 
control_values
 
exponent_scalar
  ?0_10_2


XXP
exponentqgenerator65
control_values
 
global_shift
    
control_qubits
 
exponent_scalar
  ?0_20_3


XXP
control_values
 
exponent_scalar
  ?
exponentqgenerator66
control_qubits
 
global_shift
    0_30_4


XXP
exponent_scalar
  ?
control_values
 
exponentqgenerator67
control_qubits
 
global_shift
    0_40_5


XXP
exponent_scalar
  ?
control_values
 
exponentqgenerator68
control_qubits
 
global_shift
    0_50_6


XXP
exponentqgenerator69
control_qubits
 
global_shift
    
exponent_scalar
  ?
control_values
 0_60_7


XXP
exponent_scalar
  ?
global_shift
    
exponentqgenerator70
control_values
 
control_qubits
 0_70_8


XXP
exponentqgenerator71
exponent_scalar
  ?
control_values
 
global_shift
    
control_qubits
 0_80_0


XP
control_qubits
 
exponentqgenerator72
control_values
 
exponent_scalar
  ?
global_shift
    0_8


YP
global_shift
    
control_values
 
exponentqgenerator73
exponent_scalar
  ?
control_qubits
 0_8


XP
control_qubits
 
control_values
 
global_shift
    
exponent_scalar
  ?
exponentqgenerator740_8
i
Const_1Const*
_output_shapes

:*
dtype0**
value!BB
  ?
0_8Z
Y
Const_2Const*
_output_shapes

:*
dtype0*
valueB:d
á
Const_3Const*
_output_shapes
:K*
dtype0*Ľ
valueBKBqgenerator0Bqgenerator1Bqgenerator10Bqgenerator11Bqgenerator12Bqgenerator13Bqgenerator14Bqgenerator15Bqgenerator16Bqgenerator17Bqgenerator18Bqgenerator19Bqgenerator2Bqgenerator20Bqgenerator21Bqgenerator22Bqgenerator23Bqgenerator24Bqgenerator25Bqgenerator26Bqgenerator27Bqgenerator28Bqgenerator29Bqgenerator3Bqgenerator30Bqgenerator31Bqgenerator32Bqgenerator33Bqgenerator34Bqgenerator35Bqgenerator36Bqgenerator37Bqgenerator38Bqgenerator39Bqgenerator4Bqgenerator40Bqgenerator41Bqgenerator42Bqgenerator43Bqgenerator44Bqgenerator45Bqgenerator46Bqgenerator47Bqgenerator48Bqgenerator49Bqgenerator5Bqgenerator50Bqgenerator51Bqgenerator52Bqgenerator53Bqgenerator54Bqgenerator55Bqgenerator56Bqgenerator57Bqgenerator58Bqgenerator59Bqgenerator6Bqgenerator60Bqgenerator61Bqgenerator62Bqgenerator63Bqgenerator64Bqgenerator65Bqgenerator66Bqgenerator67Bqgenerator68Bqgenerator69Bqgenerator7Bqgenerator70Bqgenerator71Bqgenerator72Bqgenerator73Bqgenerator74Bqgenerator8Bqgenerator9
L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *  ?
L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?

NoOpNoOp
ů
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*˛
value¨BĽ B
ż
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
 

_symbols_list
_append_layer

parameters
trainable_variables
regularization_losses
	variables
	keras_api

	keras_api

	keras_api
R
iter

beta_1

beta_2
	decay
learning_ratem7v8

0
 

0
­
trainable_variables
layer_metrics
metrics
regularization_losses
non_trainable_variables
	variables

layers
layer_regularization_losses
 
 
R
trainable_variables
regularization_losses
 	variables
!	keras_api
ZX
VARIABLE_VALUE
parameters:layer_with_weights-0/parameters/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­
"layer_metrics
trainable_variables
#metrics
regularization_losses
$non_trainable_variables
	variables

%layers
&layer_regularization_losses
 
 
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1
 

0
1
2
3
 
 
 
 
­
)layer_metrics
trainable_variables
*metrics
regularization_losses
+non_trainable_variables
 	variables

,layers
-layer_regularization_losses
 
 
 

0
 
4
	.total
	/count
0	variables
1	keras_api
D
	2total
	3count
4
_fn_kwargs
5	variables
6	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

0	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

20
31

5	variables
}{
VARIABLE_VALUEAdam/parameters/mVlayer_with_weights-0/parameters/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/parameters/vVlayer_with_weights-0/parameters/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
r
serving_default_input_2Placeholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
ř
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2Const
parametersConst_1Const_2Const_3Const_4Const_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_9544
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ž
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameparameters/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp%Adam/parameters/m/Read/ReadVariableOp%Adam/parameters/v/Read/ReadVariableOpConst_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_9793
ˇ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
parameters	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/parameters/mAdam/parameters/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_9839Ü
˛4

__inference__wrapped_model_9341
input_2"
model_1_noisy_pqc_1_tile_input<
8model_1_noisy_pqc_1_tile_1_input_readvariableop_resource$
 model_1_noisy_pqc_1_tile_2_input$
 model_1_noisy_pqc_1_tile_3_input
model_1_noisy_pqc_1_9326*
&model_1_tf___operators___add_1_addv2_y$
 model_1_tf_math_multiply_1_mul_x
identity˘/model_1/noisy_pqc_1/Tile_1/input/ReadVariableOpm
model_1/noisy_pqc_1/ShapeShapeinput_2*
T0*
_output_shapes
:2
model_1/noisy_pqc_1/Shape
$model_1/noisy_pqc_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_1/noisy_pqc_1/GatherV2/indices
!model_1/noisy_pqc_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!model_1/noisy_pqc_1/GatherV2/axis
model_1/noisy_pqc_1/GatherV2GatherV2"model_1/noisy_pqc_1/Shape:output:0-model_1/noisy_pqc_1/GatherV2/indices:output:0*model_1/noisy_pqc_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
model_1/noisy_pqc_1/GatherV2Ľ
"model_1/noisy_pqc_1/Tile/multiplesPack%model_1/noisy_pqc_1/GatherV2:output:0*
N*
T0*
_output_shapes
:2$
"model_1/noisy_pqc_1/Tile/multiplesˇ
model_1/noisy_pqc_1/TileTilemodel_1_noisy_pqc_1_tile_input+model_1/noisy_pqc_1/Tile/multiples:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙2
model_1/noisy_pqc_1/Tile
'model_1/noisy_pqc_1/add_circuit_1/ShapeShapeinput_2*
T0*
_output_shapes
:2)
'model_1/noisy_pqc_1/add_circuit_1/ShapeŞ
2model_1/noisy_pqc_1/add_circuit_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 24
2model_1/noisy_pqc_1/add_circuit_1/GatherV2/indices¤
/model_1/noisy_pqc_1/add_circuit_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/model_1/noisy_pqc_1/add_circuit_1/GatherV2/axisŃ
*model_1/noisy_pqc_1/add_circuit_1/GatherV2GatherV20model_1/noisy_pqc_1/add_circuit_1/Shape:output:0;model_1/noisy_pqc_1/add_circuit_1/GatherV2/indices:output:08model_1/noisy_pqc_1/add_circuit_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2,
*model_1/noisy_pqc_1/add_circuit_1/GatherV2Í
2model_1/noisy_pqc_1/add_circuit_1/TfqAppendCircuitTfqAppendCircuitinput_2!model_1/noisy_pqc_1/Tile:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙24
2model_1/noisy_pqc_1/add_circuit_1/TfqAppendCircuit×
/model_1/noisy_pqc_1/Tile_1/input/ReadVariableOpReadVariableOp8model_1_noisy_pqc_1_tile_1_input_readvariableop_resource*
_output_shapes
:K*
dtype021
/model_1/noisy_pqc_1/Tile_1/input/ReadVariableOpˇ
 model_1/noisy_pqc_1/Tile_1/inputPack7model_1/noisy_pqc_1/Tile_1/input/ReadVariableOp:value:0*
N*
T0*
_output_shapes

:K2"
 model_1/noisy_pqc_1/Tile_1/input
&model_1/noisy_pqc_1/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&model_1/noisy_pqc_1/Tile_1/multiples/1Ú
$model_1/noisy_pqc_1/Tile_1/multiplesPack%model_1/noisy_pqc_1/GatherV2:output:0/model_1/noisy_pqc_1/Tile_1/multiples/1:output:0*
N*
T0*
_output_shapes
:2&
$model_1/noisy_pqc_1/Tile_1/multiplesĚ
model_1/noisy_pqc_1/Tile_1Tile)model_1/noisy_pqc_1/Tile_1/input:output:0-model_1/noisy_pqc_1/Tile_1/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙K2
model_1/noisy_pqc_1/Tile_1
&model_1/noisy_pqc_1/Tile_2/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&model_1/noisy_pqc_1/Tile_2/multiples/1Ú
$model_1/noisy_pqc_1/Tile_2/multiplesPack%model_1/noisy_pqc_1/GatherV2:output:0/model_1/noisy_pqc_1/Tile_2/multiples/1:output:0*
N*
T0*
_output_shapes
:2&
$model_1/noisy_pqc_1/Tile_2/multiplesĂ
model_1/noisy_pqc_1/Tile_2Tile model_1_noisy_pqc_1_tile_2_input-model_1/noisy_pqc_1/Tile_2/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
model_1/noisy_pqc_1/Tile_2
&model_1/noisy_pqc_1/Tile_3/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&model_1/noisy_pqc_1/Tile_3/multiples/1Ú
$model_1/noisy_pqc_1/Tile_3/multiplesPack%model_1/noisy_pqc_1/GatherV2:output:0/model_1/noisy_pqc_1/Tile_3/multiples/1:output:0*
N*
T0*
_output_shapes
:2&
$model_1/noisy_pqc_1/Tile_3/multiplesĂ
model_1/noisy_pqc_1/Tile_3Tile model_1_noisy_pqc_1_tile_3_input-model_1/noisy_pqc_1/Tile_3/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
model_1/noisy_pqc_1/Tile_3ă
'model_1/noisy_pqc_1/TfqNoisyExpectationTfqNoisyExpectationFmodel_1/noisy_pqc_1/add_circuit_1/TfqAppendCircuit:programs_extended:0model_1_noisy_pqc_1_9326#model_1/noisy_pqc_1/Tile_1:output:0#model_1/noisy_pqc_1/Tile_2:output:0#model_1/noisy_pqc_1/Tile_3:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2)
'model_1/noisy_pqc_1/TfqNoisyExpectation˛
model_1/noisy_pqc_1/IdentityIdentity6model_1/noisy_pqc_1/TfqNoisyExpectation:expectations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
model_1/noisy_pqc_1/Identity
model_1/noisy_pqc_1/IdentityN	IdentityN6model_1/noisy_pqc_1/TfqNoisyExpectation:expectations:0Fmodel_1/noisy_pqc_1/add_circuit_1/TfqAppendCircuit:programs_extended:0model_1_noisy_pqc_1_9326#model_1/noisy_pqc_1/Tile_1:output:0#model_1/noisy_pqc_1/Tile_2:output:0#model_1/noisy_pqc_1/Tile_3:output:0*
T

2**
_gradient_op_typeCustomGradient-9325*u
_output_shapesc
a:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:K:˙˙˙˙˙˙˙˙˙K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙2
model_1/noisy_pqc_1/IdentityN×
$model_1/tf.__operators__.add_1/AddV2AddV2&model_1/noisy_pqc_1/IdentityN:output:0&model_1_tf___operators___add_1_addv2_y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2&
$model_1/tf.__operators__.add_1/AddV2Ĺ
model_1/tf.math.multiply_1/MulMul model_1_tf_math_multiply_1_mul_x(model_1/tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
model_1/tf.math.multiply_1/Mul¨
IdentityIdentity"model_1/tf.math.multiply_1/Mul:z:00^model_1/noisy_pqc_1/Tile_1/input/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 2b
/model_1/noisy_pqc_1/Tile_1/input/ReadVariableOp/model_1/noisy_pqc_1/Tile_1/input/ReadVariableOp:L H
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
Á	
Ć
&__inference_model_1_layer_call_fn_9672

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity˘StatefulPartitionedCallŹ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_94982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
	
Ă
"__inference_signature_wrapper_9544
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_93412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
č
ś
A__inference_model_1_layer_call_and_return_conditional_losses_9460

inputs
noisy_pqc_1_9444
noisy_pqc_1_9446
noisy_pqc_1_9448
noisy_pqc_1_9450
noisy_pqc_1_9452"
tf___operators___add_1_addv2_y
tf_math_multiply_1_mul_x
identity˘#noisy_pqc_1/StatefulPartitionedCallŐ
#noisy_pqc_1/StatefulPartitionedCallStatefulPartitionedCallinputsnoisy_pqc_1_9444noisy_pqc_1_9446noisy_pqc_1_9448noisy_pqc_1_9450noisy_pqc_1_9452*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_noisy_pqc_1_layer_call_and_return_conditional_losses_93862%
#noisy_pqc_1/StatefulPartitionedCallĹ
tf.__operators__.add_1/AddV2AddV2,noisy_pqc_1/StatefulPartitionedCall:output:0tf___operators___add_1_addv2_y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.__operators__.add_1/AddV2Ľ
tf.math.multiply_1/MulMultf_math_multiply_1_mul_x tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.math.multiply_1/Mul
IdentityIdentitytf.math.multiply_1/Mul:z:0$^noisy_pqc_1/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 2J
#noisy_pqc_1/StatefulPartitionedCall#noisy_pqc_1/StatefulPartitionedCall:K G
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
¨!
ď
E__inference_noisy_pqc_1_layer_call_and_return_conditional_losses_9713

inputs

tile_input(
$tile_1_input_readvariableop_resource
tile_2_input
tile_3_input
unknown

identity_1˘Tile_1/input/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapef
GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/indices`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis§
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2

GatherV2i
Tile/multiplesPackGatherV2:output:0*
N*
T0*
_output_shapes
:2
Tile/multiplesg
TileTile
tile_inputTile/multiples:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Tile`
add_circuit_1/ShapeShapeinputs*
T0*
_output_shapes
:2
add_circuit_1/Shape
add_circuit_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 2 
add_circuit_1/GatherV2/indices|
add_circuit_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
add_circuit_1/GatherV2/axisí
add_circuit_1/GatherV2GatherV2add_circuit_1/Shape:output:0'add_circuit_1/GatherV2/indices:output:0$add_circuit_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
add_circuit_1/GatherV2
add_circuit_1/TfqAppendCircuitTfqAppendCircuitinputsTile:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
add_circuit_1/TfqAppendCircuit
Tile_1/input/ReadVariableOpReadVariableOp$tile_1_input_readvariableop_resource*
_output_shapes
:K*
dtype02
Tile_1/input/ReadVariableOp{
Tile_1/inputPack#Tile_1/input/ReadVariableOp:value:0*
N*
T0*
_output_shapes

:K2
Tile_1/inputj
Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Tile_1/multiples/1
Tile_1/multiplesPackGatherV2:output:0Tile_1/multiples/1:output:0*
N*
T0*
_output_shapes
:2
Tile_1/multiples|
Tile_1TileTile_1/input:output:0Tile_1/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙K2
Tile_1j
Tile_2/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Tile_2/multiples/1
Tile_2/multiplesPackGatherV2:output:0Tile_2/multiples/1:output:0*
N*
T0*
_output_shapes
:2
Tile_2/multipless
Tile_2Tiletile_2_inputTile_2/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Tile_2j
Tile_3/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Tile_3/multiples/1
Tile_3/multiplesPackGatherV2:output:0Tile_3/multiples/1:output:0*
N*
T0*
_output_shapes
:2
Tile_3/multipless
Tile_3Tiletile_3_inputTile_3/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Tile_3Ú
TfqNoisyExpectationTfqNoisyExpectation2add_circuit_1/TfqAppendCircuit:programs_extended:0unknownTile_1:output:0Tile_2:output:0Tile_3:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
TfqNoisyExpectationv
IdentityIdentity"TfqNoisyExpectation:expectations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identityë
	IdentityN	IdentityN"TfqNoisyExpectation:expectations:02add_circuit_1/TfqAppendCircuit:programs_extended:0unknownTile_1:output:0Tile_2:output:0Tile_3:output:0*
T

2**
_gradient_op_typeCustomGradient-9701*u
_output_shapesc
a:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:K:˙˙˙˙˙˙˙˙˙K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙2
	IdentityN

Identity_1IdentityIdentityN:output:0^Tile_1/input/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity_1"!

identity_1Identity_1:output:0*F
_input_shapes5
3:˙˙˙˙˙˙˙˙˙:::::K2:
Tile_1/input/ReadVariableOpTile_1/input/ReadVariableOp:K G
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K
ë
ˇ
A__inference_model_1_layer_call_and_return_conditional_losses_9419
input_2
noisy_pqc_1_9403
noisy_pqc_1_9405
noisy_pqc_1_9407
noisy_pqc_1_9409
noisy_pqc_1_9411"
tf___operators___add_1_addv2_y
tf_math_multiply_1_mul_x
identity˘#noisy_pqc_1/StatefulPartitionedCallÖ
#noisy_pqc_1/StatefulPartitionedCallStatefulPartitionedCallinput_2noisy_pqc_1_9403noisy_pqc_1_9405noisy_pqc_1_9407noisy_pqc_1_9409noisy_pqc_1_9411*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_noisy_pqc_1_layer_call_and_return_conditional_losses_93862%
#noisy_pqc_1/StatefulPartitionedCallĹ
tf.__operators__.add_1/AddV2AddV2,noisy_pqc_1/StatefulPartitionedCall:output:0tf___operators___add_1_addv2_y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.__operators__.add_1/AddV2Ľ
tf.math.multiply_1/MulMultf_math_multiply_1_mul_x tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.math.multiply_1/Mul
IdentityIdentitytf.math.multiply_1/Mul:z:0$^noisy_pqc_1/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 2J
#noisy_pqc_1/StatefulPartitionedCall#noisy_pqc_1/StatefulPartitionedCall:L H
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
Á	
Ć
&__inference_model_1_layer_call_fn_9653

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity˘StatefulPartitionedCallŹ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_94602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
¨!
ď
E__inference_noisy_pqc_1_layer_call_and_return_conditional_losses_9386

inputs

tile_input(
$tile_1_input_readvariableop_resource
tile_2_input
tile_3_input
unknown

identity_1˘Tile_1/input/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapef
GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/indices`
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
GatherV2/axis§
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2

GatherV2i
Tile/multiplesPackGatherV2:output:0*
N*
T0*
_output_shapes
:2
Tile/multiplesg
TileTile
tile_inputTile/multiples:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Tile`
add_circuit_1/ShapeShapeinputs*
T0*
_output_shapes
:2
add_circuit_1/Shape
add_circuit_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 2 
add_circuit_1/GatherV2/indices|
add_circuit_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
add_circuit_1/GatherV2/axisí
add_circuit_1/GatherV2GatherV2add_circuit_1/Shape:output:0'add_circuit_1/GatherV2/indices:output:0$add_circuit_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
add_circuit_1/GatherV2
add_circuit_1/TfqAppendCircuitTfqAppendCircuitinputsTile:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙2 
add_circuit_1/TfqAppendCircuit
Tile_1/input/ReadVariableOpReadVariableOp$tile_1_input_readvariableop_resource*
_output_shapes
:K*
dtype02
Tile_1/input/ReadVariableOp{
Tile_1/inputPack#Tile_1/input/ReadVariableOp:value:0*
N*
T0*
_output_shapes

:K2
Tile_1/inputj
Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Tile_1/multiples/1
Tile_1/multiplesPackGatherV2:output:0Tile_1/multiples/1:output:0*
N*
T0*
_output_shapes
:2
Tile_1/multiples|
Tile_1TileTile_1/input:output:0Tile_1/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙K2
Tile_1j
Tile_2/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Tile_2/multiples/1
Tile_2/multiplesPackGatherV2:output:0Tile_2/multiples/1:output:0*
N*
T0*
_output_shapes
:2
Tile_2/multipless
Tile_2Tiletile_2_inputTile_2/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Tile_2j
Tile_3/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2
Tile_3/multiples/1
Tile_3/multiplesPackGatherV2:output:0Tile_3/multiples/1:output:0*
N*
T0*
_output_shapes
:2
Tile_3/multipless
Tile_3Tiletile_3_inputTile_3/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Tile_3Ú
TfqNoisyExpectationTfqNoisyExpectation2add_circuit_1/TfqAppendCircuit:programs_extended:0unknownTile_1:output:0Tile_2:output:0Tile_3:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
TfqNoisyExpectationv
IdentityIdentity"TfqNoisyExpectation:expectations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identityë
	IdentityN	IdentityN"TfqNoisyExpectation:expectations:02add_circuit_1/TfqAppendCircuit:programs_extended:0unknownTile_1:output:0Tile_2:output:0Tile_3:output:0*
T

2**
_gradient_op_typeCustomGradient-9374*u
_output_shapesc
a:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:K:˙˙˙˙˙˙˙˙˙K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙2
	IdentityN

Identity_1IdentityIdentityN:output:0^Tile_1/input/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity_1"!

identity_1Identity_1:output:0*F
_input_shapes5
3:˙˙˙˙˙˙˙˙˙:::::K2:
Tile_1/input/ReadVariableOpTile_1/input/ReadVariableOp:K G
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K
Ä	
Ç
&__inference_model_1_layer_call_fn_9515
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity˘StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_94982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
Ś#
÷
__inference__traced_save_9793
file_prefix)
%savev2_parameters_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop0
,savev2_adam_parameters_m_read_readvariableop0
,savev2_adam_parameters_v_read_readvariableop
savev2_const_6

identity_1˘MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardŚ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameĘ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ü
valueŇBĎB:layer_with_weights-0/parameters/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/parameters/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/parameters/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names˘
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesŁ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0%savev2_parameters_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop,savev2_adam_parameters_m_read_readvariableop,savev2_adam_parameters_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2ş
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesĄ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*;
_input_shapes*
(: :K: : : : : : : : : :K:K: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: : 

_output_shapes
:K: 

_output_shapes
:K:

_output_shapes
: 
ë
ˇ
A__inference_model_1_layer_call_and_return_conditional_losses_9438
input_2
noisy_pqc_1_9422
noisy_pqc_1_9424
noisy_pqc_1_9426
noisy_pqc_1_9428
noisy_pqc_1_9430"
tf___operators___add_1_addv2_y
tf_math_multiply_1_mul_x
identity˘#noisy_pqc_1/StatefulPartitionedCallÖ
#noisy_pqc_1/StatefulPartitionedCallStatefulPartitionedCallinput_2noisy_pqc_1_9422noisy_pqc_1_9424noisy_pqc_1_9426noisy_pqc_1_9428noisy_pqc_1_9430*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_noisy_pqc_1_layer_call_and_return_conditional_losses_93862%
#noisy_pqc_1/StatefulPartitionedCallĹ
tf.__operators__.add_1/AddV2AddV2,noisy_pqc_1/StatefulPartitionedCall:output:0tf___operators___add_1_addv2_y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.__operators__.add_1/AddV2Ľ
tf.math.multiply_1/MulMultf_math_multiply_1_mul_x tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.math.multiply_1/Mul
IdentityIdentitytf.math.multiply_1/Mul:z:0$^noisy_pqc_1/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 2J
#noisy_pqc_1/StatefulPartitionedCall#noisy_pqc_1/StatefulPartitionedCall:L H
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
ü-
đ
A__inference_model_1_layer_call_and_return_conditional_losses_9634

inputs
noisy_pqc_1_tile_input4
0noisy_pqc_1_tile_1_input_readvariableop_resource
noisy_pqc_1_tile_2_input
noisy_pqc_1_tile_3_input
noisy_pqc_1_9619"
tf___operators___add_1_addv2_y
tf_math_multiply_1_mul_x
identity˘'noisy_pqc_1/Tile_1/input/ReadVariableOp\
noisy_pqc_1/ShapeShapeinputs*
T0*
_output_shapes
:2
noisy_pqc_1/Shape~
noisy_pqc_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
noisy_pqc_1/GatherV2/indicesx
noisy_pqc_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
noisy_pqc_1/GatherV2/axisă
noisy_pqc_1/GatherV2GatherV2noisy_pqc_1/Shape:output:0%noisy_pqc_1/GatherV2/indices:output:0"noisy_pqc_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
noisy_pqc_1/GatherV2
noisy_pqc_1/Tile/multiplesPacknoisy_pqc_1/GatherV2:output:0*
N*
T0*
_output_shapes
:2
noisy_pqc_1/Tile/multiples
noisy_pqc_1/TileTilenoisy_pqc_1_tile_input#noisy_pqc_1/Tile/multiples:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/Tilex
noisy_pqc_1/add_circuit_1/ShapeShapeinputs*
T0*
_output_shapes
:2!
noisy_pqc_1/add_circuit_1/Shape
*noisy_pqc_1/add_circuit_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 2,
*noisy_pqc_1/add_circuit_1/GatherV2/indices
'noisy_pqc_1/add_circuit_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'noisy_pqc_1/add_circuit_1/GatherV2/axisŠ
"noisy_pqc_1/add_circuit_1/GatherV2GatherV2(noisy_pqc_1/add_circuit_1/Shape:output:03noisy_pqc_1/add_circuit_1/GatherV2/indices:output:00noisy_pqc_1/add_circuit_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2$
"noisy_pqc_1/add_circuit_1/GatherV2´
*noisy_pqc_1/add_circuit_1/TfqAppendCircuitTfqAppendCircuitinputsnoisy_pqc_1/Tile:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙2,
*noisy_pqc_1/add_circuit_1/TfqAppendCircuitż
'noisy_pqc_1/Tile_1/input/ReadVariableOpReadVariableOp0noisy_pqc_1_tile_1_input_readvariableop_resource*
_output_shapes
:K*
dtype02)
'noisy_pqc_1/Tile_1/input/ReadVariableOp
noisy_pqc_1/Tile_1/inputPack/noisy_pqc_1/Tile_1/input/ReadVariableOp:value:0*
N*
T0*
_output_shapes

:K2
noisy_pqc_1/Tile_1/input
noisy_pqc_1/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2 
noisy_pqc_1/Tile_1/multiples/1ş
noisy_pqc_1/Tile_1/multiplesPacknoisy_pqc_1/GatherV2:output:0'noisy_pqc_1/Tile_1/multiples/1:output:0*
N*
T0*
_output_shapes
:2
noisy_pqc_1/Tile_1/multiplesŹ
noisy_pqc_1/Tile_1Tile!noisy_pqc_1/Tile_1/input:output:0%noisy_pqc_1/Tile_1/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙K2
noisy_pqc_1/Tile_1
noisy_pqc_1/Tile_2/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2 
noisy_pqc_1/Tile_2/multiples/1ş
noisy_pqc_1/Tile_2/multiplesPacknoisy_pqc_1/GatherV2:output:0'noisy_pqc_1/Tile_2/multiples/1:output:0*
N*
T0*
_output_shapes
:2
noisy_pqc_1/Tile_2/multiplesŁ
noisy_pqc_1/Tile_2Tilenoisy_pqc_1_tile_2_input%noisy_pqc_1/Tile_2/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/Tile_2
noisy_pqc_1/Tile_3/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2 
noisy_pqc_1/Tile_3/multiples/1ş
noisy_pqc_1/Tile_3/multiplesPacknoisy_pqc_1/GatherV2:output:0'noisy_pqc_1/Tile_3/multiples/1:output:0*
N*
T0*
_output_shapes
:2
noisy_pqc_1/Tile_3/multiplesŁ
noisy_pqc_1/Tile_3Tilenoisy_pqc_1_tile_3_input%noisy_pqc_1/Tile_3/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/Tile_3Ť
noisy_pqc_1/TfqNoisyExpectationTfqNoisyExpectation>noisy_pqc_1/add_circuit_1/TfqAppendCircuit:programs_extended:0noisy_pqc_1_9619noisy_pqc_1/Tile_1:output:0noisy_pqc_1/Tile_2:output:0noisy_pqc_1/Tile_3:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2!
noisy_pqc_1/TfqNoisyExpectation
noisy_pqc_1/IdentityIdentity.noisy_pqc_1/TfqNoisyExpectation:expectations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/IdentityČ
noisy_pqc_1/IdentityN	IdentityN.noisy_pqc_1/TfqNoisyExpectation:expectations:0>noisy_pqc_1/add_circuit_1/TfqAppendCircuit:programs_extended:0noisy_pqc_1_9619noisy_pqc_1/Tile_1:output:0noisy_pqc_1/Tile_2:output:0noisy_pqc_1/Tile_3:output:0*
T

2**
_gradient_op_typeCustomGradient-9618*u
_output_shapesc
a:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:K:˙˙˙˙˙˙˙˙˙K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/IdentityNˇ
tf.__operators__.add_1/AddV2AddV2noisy_pqc_1/IdentityN:output:0tf___operators___add_1_addv2_y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.__operators__.add_1/AddV2Ľ
tf.math.multiply_1/MulMultf_math_multiply_1_mul_x tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.math.multiply_1/Mul
IdentityIdentitytf.math.multiply_1/Mul:z:0(^noisy_pqc_1/Tile_1/input/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 2R
'noisy_pqc_1/Tile_1/input/ReadVariableOp'noisy_pqc_1/Tile_1/input/ReadVariableOp:K G
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
Ó
Ź
*__inference_noisy_pqc_1_layer_call_fn_9728

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_noisy_pqc_1_layer_call_and_return_conditional_losses_93862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:˙˙˙˙˙˙˙˙˙:::::K22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K
č4
î
 __inference__traced_restore_9839
file_prefix
assignvariableop_parameters 
assignvariableop_1_adam_iter"
assignvariableop_2_adam_beta_1"
assignvariableop_3_adam_beta_2!
assignvariableop_4_adam_decay)
%assignvariableop_5_adam_learning_rate
assignvariableop_6_total
assignvariableop_7_count
assignvariableop_8_total_1
assignvariableop_9_count_1)
%assignvariableop_10_adam_parameters_m)
%assignvariableop_11_adam_parameters_v
identity_13˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_2˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9Đ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ü
valueŇBĎB:layer_with_weights-0/parameters/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/parameters/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/parameters/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¨
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesě
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_parametersIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_1Ą
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_iterIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ł
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ł
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4˘
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ş
AssignVariableOp_5AssignVariableOp%assignvariableop_5_adam_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6
AssignVariableOp_6AssignVariableOpassignvariableop_6_totalIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7
AssignVariableOp_7AssignVariableOpassignvariableop_7_countIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8
AssignVariableOp_8AssignVariableOpassignvariableop_8_total_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_count_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10­
AssignVariableOp_10AssignVariableOp%assignvariableop_10_adam_parameters_mIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11­
AssignVariableOp_11AssignVariableOp%assignvariableop_11_adam_parameters_vIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpć
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_12Ů
Identity_13IdentityIdentity_12:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_13"#
identity_13Identity_13:output:0*E
_input_shapes4
2: ::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
č
ś
A__inference_model_1_layer_call_and_return_conditional_losses_9498

inputs
noisy_pqc_1_9482
noisy_pqc_1_9484
noisy_pqc_1_9486
noisy_pqc_1_9488
noisy_pqc_1_9490"
tf___operators___add_1_addv2_y
tf_math_multiply_1_mul_x
identity˘#noisy_pqc_1/StatefulPartitionedCallŐ
#noisy_pqc_1/StatefulPartitionedCallStatefulPartitionedCallinputsnoisy_pqc_1_9482noisy_pqc_1_9484noisy_pqc_1_9486noisy_pqc_1_9488noisy_pqc_1_9490*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_noisy_pqc_1_layer_call_and_return_conditional_losses_93862%
#noisy_pqc_1/StatefulPartitionedCallĹ
tf.__operators__.add_1/AddV2AddV2,noisy_pqc_1/StatefulPartitionedCall:output:0tf___operators___add_1_addv2_y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.__operators__.add_1/AddV2Ľ
tf.math.multiply_1/MulMultf_math_multiply_1_mul_x tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.math.multiply_1/Mul
IdentityIdentitytf.math.multiply_1/Mul:z:0$^noisy_pqc_1/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 2J
#noisy_pqc_1/StatefulPartitionedCall#noisy_pqc_1/StatefulPartitionedCall:K G
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
ü-
đ
A__inference_model_1_layer_call_and_return_conditional_losses_9589

inputs
noisy_pqc_1_tile_input4
0noisy_pqc_1_tile_1_input_readvariableop_resource
noisy_pqc_1_tile_2_input
noisy_pqc_1_tile_3_input
noisy_pqc_1_9574"
tf___operators___add_1_addv2_y
tf_math_multiply_1_mul_x
identity˘'noisy_pqc_1/Tile_1/input/ReadVariableOp\
noisy_pqc_1/ShapeShapeinputs*
T0*
_output_shapes
:2
noisy_pqc_1/Shape~
noisy_pqc_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
noisy_pqc_1/GatherV2/indicesx
noisy_pqc_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
noisy_pqc_1/GatherV2/axisă
noisy_pqc_1/GatherV2GatherV2noisy_pqc_1/Shape:output:0%noisy_pqc_1/GatherV2/indices:output:0"noisy_pqc_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2
noisy_pqc_1/GatherV2
noisy_pqc_1/Tile/multiplesPacknoisy_pqc_1/GatherV2:output:0*
N*
T0*
_output_shapes
:2
noisy_pqc_1/Tile/multiples
noisy_pqc_1/TileTilenoisy_pqc_1_tile_input#noisy_pqc_1/Tile/multiples:output:0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/Tilex
noisy_pqc_1/add_circuit_1/ShapeShapeinputs*
T0*
_output_shapes
:2!
noisy_pqc_1/add_circuit_1/Shape
*noisy_pqc_1/add_circuit_1/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B : 2,
*noisy_pqc_1/add_circuit_1/GatherV2/indices
'noisy_pqc_1/add_circuit_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'noisy_pqc_1/add_circuit_1/GatherV2/axisŠ
"noisy_pqc_1/add_circuit_1/GatherV2GatherV2(noisy_pqc_1/add_circuit_1/Shape:output:03noisy_pqc_1/add_circuit_1/GatherV2/indices:output:00noisy_pqc_1/add_circuit_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: 2$
"noisy_pqc_1/add_circuit_1/GatherV2´
*noisy_pqc_1/add_circuit_1/TfqAppendCircuitTfqAppendCircuitinputsnoisy_pqc_1/Tile:output:0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙2,
*noisy_pqc_1/add_circuit_1/TfqAppendCircuitż
'noisy_pqc_1/Tile_1/input/ReadVariableOpReadVariableOp0noisy_pqc_1_tile_1_input_readvariableop_resource*
_output_shapes
:K*
dtype02)
'noisy_pqc_1/Tile_1/input/ReadVariableOp
noisy_pqc_1/Tile_1/inputPack/noisy_pqc_1/Tile_1/input/ReadVariableOp:value:0*
N*
T0*
_output_shapes

:K2
noisy_pqc_1/Tile_1/input
noisy_pqc_1/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2 
noisy_pqc_1/Tile_1/multiples/1ş
noisy_pqc_1/Tile_1/multiplesPacknoisy_pqc_1/GatherV2:output:0'noisy_pqc_1/Tile_1/multiples/1:output:0*
N*
T0*
_output_shapes
:2
noisy_pqc_1/Tile_1/multiplesŹ
noisy_pqc_1/Tile_1Tile!noisy_pqc_1/Tile_1/input:output:0%noisy_pqc_1/Tile_1/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙K2
noisy_pqc_1/Tile_1
noisy_pqc_1/Tile_2/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2 
noisy_pqc_1/Tile_2/multiples/1ş
noisy_pqc_1/Tile_2/multiplesPacknoisy_pqc_1/GatherV2:output:0'noisy_pqc_1/Tile_2/multiples/1:output:0*
N*
T0*
_output_shapes
:2
noisy_pqc_1/Tile_2/multiplesŁ
noisy_pqc_1/Tile_2Tilenoisy_pqc_1_tile_2_input%noisy_pqc_1/Tile_2/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/Tile_2
noisy_pqc_1/Tile_3/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2 
noisy_pqc_1/Tile_3/multiples/1ş
noisy_pqc_1/Tile_3/multiplesPacknoisy_pqc_1/GatherV2:output:0'noisy_pqc_1/Tile_3/multiples/1:output:0*
N*
T0*
_output_shapes
:2
noisy_pqc_1/Tile_3/multiplesŁ
noisy_pqc_1/Tile_3Tilenoisy_pqc_1_tile_3_input%noisy_pqc_1/Tile_3/multiples:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/Tile_3Ť
noisy_pqc_1/TfqNoisyExpectationTfqNoisyExpectation>noisy_pqc_1/add_circuit_1/TfqAppendCircuit:programs_extended:0noisy_pqc_1_9574noisy_pqc_1/Tile_1:output:0noisy_pqc_1/Tile_2:output:0noisy_pqc_1/Tile_3:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2!
noisy_pqc_1/TfqNoisyExpectation
noisy_pqc_1/IdentityIdentity.noisy_pqc_1/TfqNoisyExpectation:expectations:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/IdentityČ
noisy_pqc_1/IdentityN	IdentityN.noisy_pqc_1/TfqNoisyExpectation:expectations:0>noisy_pqc_1/add_circuit_1/TfqAppendCircuit:programs_extended:0noisy_pqc_1_9574noisy_pqc_1/Tile_1:output:0noisy_pqc_1/Tile_2:output:0noisy_pqc_1/Tile_3:output:0*
T

2**
_gradient_op_typeCustomGradient-9573*u
_output_shapesc
a:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:K:˙˙˙˙˙˙˙˙˙K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙2
noisy_pqc_1/IdentityNˇ
tf.__operators__.add_1/AddV2AddV2noisy_pqc_1/IdentityN:output:0tf___operators___add_1_addv2_y*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.__operators__.add_1/AddV2Ľ
tf.math.multiply_1/MulMultf_math_multiply_1_mul_x tf.__operators__.add_1/AddV2:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
tf.math.multiply_1/Mul
IdentityIdentitytf.math.multiply_1/Mul:z:0(^noisy_pqc_1/Tile_1/input/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 2R
'noisy_pqc_1/Tile_1/input/ReadVariableOp'noisy_pqc_1/Tile_1/input/ReadVariableOp:K G
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: 
Ä	
Ç
&__inference_model_1_layer_call_fn_9477
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
identity˘StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_94602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:˙˙˙˙˙˙˙˙˙:::::K: : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:K:

_output_shapes
: :

_output_shapes
: "ąL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ą
serving_default
7
input_2,
serving_default_input_2:0˙˙˙˙˙˙˙˙˙F
tf.math.multiply_10
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:[

layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
9__call__
:_default_save_signature
*;&call_and_return_all_conditional_losses"ô
_tf_keras_networkŘ{"class_name": "Functional", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "NoisyPQC", "config": {"layer was saved without config": true}, "name": "noisy_pqc_1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_1", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_1", "inbound_nodes": [["noisy_pqc_1", 0, 0, {"y": 1.0, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_1", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_1", "inbound_nodes": [["_CONSTANT_VALUE", -1, 0.5, {"y": ["tf.__operators__.add_1", 0, 0], "name": null}]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["tf.math.multiply_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null]}, "ndim": 1, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": false, "label_smoothing": 0}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.5, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
á"Ţ
_tf_keras_input_layerž{"class_name": "InputLayer", "name": "input_2", "dtype": "string", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null]}, "dtype": "string", "sparse": false, "ragged": false, "name": "input_2"}}
 
_symbols_list
_append_layer

parameters
trainable_variables
regularization_losses
	variables
	keras_api
<__call__
*=&call_and_return_all_conditional_losses"Ű
_tf_keras_layerÁ{"class_name": "NoisyPQC", "name": "noisy_pqc_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
ö
	keras_api"ä
_tf_keras_layerĘ{"class_name": "TFOpLambda", "name": "tf.__operators__.add_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.add_1", "trainable": true, "dtype": "float32", "function": "__operators__.add"}}
ę
	keras_api"Ř
_tf_keras_layerž{"class_name": "TFOpLambda", "name": "tf.math.multiply_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply_1", "trainable": true, "dtype": "float32", "function": "math.multiply"}}
e
iter

beta_1

beta_2
	decay
learning_ratem7v8"
	optimizer
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
Ę
trainable_variables
layer_metrics
metrics
regularization_losses
non_trainable_variables
	variables

layers
layer_regularization_losses
9__call__
:_default_save_signature
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
,
>serving_default"
signature_map
 "
trackable_list_wrapper
Á
trainable_variables
regularization_losses
 	variables
!	keras_api
?__call__
*@&call_and_return_all_conditional_losses"˛
_tf_keras_layer{"class_name": "AddCircuit", "name": "add_circuit_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add_circuit_1", "trainable": true, "dtype": "float32"}}
:K2
parameters
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
"layer_metrics
trainable_variables
#metrics
regularization_losses
$non_trainable_variables
	variables

%layers
&layer_regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
)layer_metrics
trainable_variables
*metrics
regularization_losses
+non_trainable_variables
 	variables

,layers
-layer_regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
ť
	.total
	/count
0	variables
1	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ú
	2total
	3count
4
_fn_kwargs
5	variables
6	keras_api"ł
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
.0
/1"
trackable_list_wrapper
-
0	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
20
31"
trackable_list_wrapper
-
5	variables"
_generic_user_object
:K2Adam/parameters/m
:K2Adam/parameters/v
ć2ă
&__inference_model_1_layer_call_fn_9653
&__inference_model_1_layer_call_fn_9672
&__inference_model_1_layer_call_fn_9515
&__inference_model_1_layer_call_fn_9477Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ů2Ö
__inference__wrapped_model_9341˛
˛
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *"˘

input_2˙˙˙˙˙˙˙˙˙
Ň2Ď
A__inference_model_1_layer_call_and_return_conditional_losses_9419
A__inference_model_1_layer_call_and_return_conditional_losses_9634
A__inference_model_1_layer_call_and_return_conditional_losses_9438
A__inference_model_1_layer_call_and_return_conditional_losses_9589Ŕ
ˇ˛ł
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŞ 
annotationsŞ *
 
Ô2Ń
*__inference_noisy_pqc_1_layer_call_fn_9728˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ď2ě
E__inference_noisy_pqc_1_layer_call_and_return_conditional_losses_9713˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ÉBĆ
"__inference_signature_wrapper_9544input_2"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ű2ŘŐ
Ě˛Č
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 &

kwonlyargs
jappend
	jprepend2
kwonlydefaults Ş

append
 

prepend
 
annotationsŞ *
 
Ű2ŘŐ
Ě˛Č
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 &

kwonlyargs
jappend
	jprepend2
kwonlydefaults Ş

append
 

prepend
 
annotationsŞ *
 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5¤
__inference__wrapped_model_9341ABCDEF,˘)
"˘

input_2˙˙˙˙˙˙˙˙˙
Ş "GŞD
B
tf.math.multiply_1,)
tf.math.multiply_1˙˙˙˙˙˙˙˙˙Ť
A__inference_model_1_layer_call_and_return_conditional_losses_9419fABCDEF4˘1
*˘'

input_2˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ť
A__inference_model_1_layer_call_and_return_conditional_losses_9438fABCDEF4˘1
*˘'

input_2˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ş
A__inference_model_1_layer_call_and_return_conditional_losses_9589eABCDEF3˘0
)˘&

inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 Ş
A__inference_model_1_layer_call_and_return_conditional_losses_9634eABCDEF3˘0
)˘&

inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
&__inference_model_1_layer_call_fn_9477YABCDEF4˘1
*˘'

input_2˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
&__inference_model_1_layer_call_fn_9515YABCDEF4˘1
*˘'

input_2˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
&__inference_model_1_layer_call_fn_9653XABCDEF3˘0
)˘&

inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙
&__inference_model_1_layer_call_fn_9672XABCDEF3˘0
)˘&

inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙¤
E__inference_noisy_pqc_1_layer_call_and_return_conditional_losses_9713[ABCD+˘(
!˘

inputs˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
*__inference_noisy_pqc_1_layer_call_fn_9728NABCD+˘(
!˘

inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙˛
"__inference_signature_wrapper_9544ABCDEF7˘4
˘ 
-Ş*
(
input_2
input_2˙˙˙˙˙˙˙˙˙"GŞD
B
tf.math.multiply_1,)
tf.math.multiply_1˙˙˙˙˙˙˙˙˙