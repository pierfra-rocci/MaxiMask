�
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
.
Asinh
x"T
y"T"
Ttype:

2
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring �
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02v2.6.0-rc2-32-g919f693420e8��
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:		*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		 * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:		 *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		 @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:		 @*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		@�* 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:		@�*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:�*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		��* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:		��*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
�
conv2d/p_re_lu/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*%
shared_nameconv2d/p_re_lu/alpha
�
(conv2d/p_re_lu/alpha/Read/ReadVariableOpReadVariableOpconv2d/p_re_lu/alpha*$
_output_shapes
:��*
dtype0
�
conv2d_1/p_re_lu_1/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�� *)
shared_nameconv2d_1/p_re_lu_1/alpha
�
,conv2d_1/p_re_lu_1/alpha/Read/ReadVariableOpReadVariableOpconv2d_1/p_re_lu_1/alpha*$
_output_shapes
:�� *
dtype0
�
conv2d_2/p_re_lu_2/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:dd@*)
shared_nameconv2d_2/p_re_lu_2/alpha
�
,conv2d_2/p_re_lu_2/alpha/Read/ReadVariableOpReadVariableOpconv2d_2/p_re_lu_2/alpha*"
_output_shapes
:dd@*
dtype0
�
conv2d_3/p_re_lu_3/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:22�*)
shared_nameconv2d_3/p_re_lu_3/alpha
�
,conv2d_3/p_re_lu_3/alpha/Read/ReadVariableOpReadVariableOpconv2d_3/p_re_lu_3/alpha*#
_output_shapes
:22�*
dtype0
�
conv2d_4/p_re_lu_4/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameconv2d_4/p_re_lu_4/alpha
�
,conv2d_4/p_re_lu_4/alpha/Read/ReadVariableOpReadVariableOpconv2d_4/p_re_lu_4/alpha*#
_output_shapes
:�*
dtype0
�
dense/p_re_lu_5/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_namedense/p_re_lu_5/alpha
{
)dense/p_re_lu_5/alpha/Read/ReadVariableOpReadVariableOpdense/p_re_lu_5/alpha*
_output_shapes
:@*
dtype0
�
dense_1/p_re_lu_6/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namedense_1/p_re_lu_6/alpha

+dense_1/p_re_lu_6/alpha/Read/ReadVariableOpReadVariableOpdense_1/p_re_lu_6/alpha*
_output_shapes
:@*
dtype0

NoOpNoOp
�O
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�N
value�NB�N B�N
�
	conv1
	pool1
	conv2
	pool2
	conv3
	pool3
	conv4
	pool4
		conv5
	
pool5
flat

dense1
	drop1

dense2
	drop2

dense3
regularization_losses
	variables
trainable_variables
	keras_api

signatures
x

activation

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
 	keras_api
x
!
activation

"kernel
#bias
$regularization_losses
%	variables
&trainable_variables
'	keras_api
R
(regularization_losses
)	variables
*trainable_variables
+	keras_api
x
,
activation

-kernel
.bias
/regularization_losses
0	variables
1trainable_variables
2	keras_api
R
3regularization_losses
4	variables
5trainable_variables
6	keras_api
x
7
activation

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
R
>regularization_losses
?	variables
@trainable_variables
A	keras_api
x
B
activation

Ckernel
Dbias
Eregularization_losses
F	variables
Gtrainable_variables
H	keras_api
R
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
R
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
x
Q
activation

Rkernel
Sbias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
R
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
x
\
activation

]kernel
^bias
_regularization_losses
`	variables
atrainable_variables
b	keras_api
R
cregularization_losses
d	variables
etrainable_variables
f	keras_api
h

gkernel
hbias
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
 
�
0
1
m2
"3
#4
n5
-6
.7
o8
89
910
p11
C12
D13
q14
R15
S16
r17
]18
^19
s20
g21
h22
�
0
1
m2
"3
#4
n5
-6
.7
o8
89
910
p11
C12
D13
q14
R15
S16
r17
]18
^19
s20
g21
h22
�
regularization_losses
tmetrics
ulayer_regularization_losses
vlayer_metrics
wnon_trainable_variables
	variables
trainable_variables

xlayers
 
]
	malpha
yregularization_losses
z	variables
{trainable_variables
|	keras_api
JH
VARIABLE_VALUEconv2d/kernel'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUEconv2d/bias%conv1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
m2

0
1
m2
�
regularization_losses
}metrics
~layer_regularization_losses
non_trainable_variables
�layer_metrics
	variables
trainable_variables
�layers
 
 
 
�
regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
	variables
trainable_variables
�layers
a
	nalpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
LJ
VARIABLE_VALUEconv2d_1/kernel'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEconv2d_1/bias%conv2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

"0
#1
n2

"0
#1
n2
�
$regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
%	variables
&trainable_variables
�layers
 
 
 
�
(regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
)	variables
*trainable_variables
�layers
a
	oalpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
LJ
VARIABLE_VALUEconv2d_2/kernel'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEconv2d_2/bias%conv3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

-0
.1
o2

-0
.1
o2
�
/regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
0	variables
1trainable_variables
�layers
 
 
 
�
3regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
4	variables
5trainable_variables
�layers
a
	palpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
LJ
VARIABLE_VALUEconv2d_3/kernel'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEconv2d_3/bias%conv4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91
p2

80
91
p2
�
:regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
;	variables
<trainable_variables
�layers
 
 
 
�
>regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
?	variables
@trainable_variables
�layers
a
	qalpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
LJ
VARIABLE_VALUEconv2d_4/kernel'conv5/kernel/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEconv2d_4/bias%conv5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1
q2

C0
D1
q2
�
Eregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
F	variables
Gtrainable_variables
�layers
 
 
 
�
Iregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
J	variables
Ktrainable_variables
�layers
 
 
 
�
Mregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
N	variables
Otrainable_variables
�layers
a
	ralpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
JH
VARIABLE_VALUEdense/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
dense/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1
r2

R0
S1
r2
�
Tregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
U	variables
Vtrainable_variables
�layers
 
 
 
�
Xregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
Y	variables
Ztrainable_variables
�layers
a
	salpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
LJ
VARIABLE_VALUEdense_1/kernel(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_1/bias&dense2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

]0
^1
s2

]0
^1
s2
�
_regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
`	variables
atrainable_variables
�layers
 
 
 
�
cregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
d	variables
etrainable_variables
�layers
LJ
VARIABLE_VALUEdense_2/kernel(dense3/kernel/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_2/bias&dense3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

g0
h1

g0
h1
�
iregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
j	variables
ktrainable_variables
�layers
PN
VARIABLE_VALUEconv2d/p_re_lu/alpha&variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_1/p_re_lu_1/alpha&variables/5/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_2/p_re_lu_2/alpha&variables/8/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_3/p_re_lu_3/alpha'variables/11/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_4/p_re_lu_4/alpha'variables/14/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense/p_re_lu_5/alpha'variables/17/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_1/p_re_lu_6/alpha'variables/20/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
 

m0

m0
�
yregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
z	variables
{trainable_variables
�layers
 
 
 
 

0
 
 
 
 
 
 

n0

n0
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
 
 
 
 

!0
 
 
 
 
 
 

o0

o0
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
 
 
 
 

,0
 
 
 
 
 
 

p0

p0
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
 
 
 
 

70
 
 
 
 
 
 

q0

q0
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
 
 
 
 

B0
 
 
 
 
 
 
 
 
 
 
 

r0

r0
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
 
 
 
 

Q0
 
 
 
 
 
 

s0

s0
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
 
 
 
 

\0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d/p_re_lu/alphaconv2d_1/kernelconv2d_1/biasconv2d_1/p_re_lu_1/alphaconv2d_2/kernelconv2d_2/biasconv2d_2/p_re_lu_2/alphaconv2d_3/kernelconv2d_3/biasconv2d_3/p_re_lu_3/alphaconv2d_4/kernelconv2d_4/biasconv2d_4/p_re_lu_4/alphadense/kernel
dense/biasdense/p_re_lu_5/alphadense_1/kerneldense_1/biasdense_1/p_re_lu_6/alphadense_2/kerneldense_2/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*9
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *0
f+R)
'__inference_signature_wrapper_989257380
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp(conv2d/p_re_lu/alpha/Read/ReadVariableOp,conv2d_1/p_re_lu_1/alpha/Read/ReadVariableOp,conv2d_2/p_re_lu_2/alpha/Read/ReadVariableOp,conv2d_3/p_re_lu_3/alpha/Read/ReadVariableOp,conv2d_4/p_re_lu_4/alpha/Read/ReadVariableOp)dense/p_re_lu_5/alpha/Read/ReadVariableOp+dense_1/p_re_lu_6/alpha/Read/ReadVariableOpConst*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_save_989259068
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasconv2d/p_re_lu/alphaconv2d_1/p_re_lu_1/alphaconv2d_2/p_re_lu_2/alphaconv2d_3/p_re_lu_3/alphaconv2d_4/p_re_lu_4/alphadense/p_re_lu_5/alphadense_1/p_re_lu_6/alpha*#
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference__traced_restore_989259147��
�
j
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_989258642

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������22�:X T
0
_output_shapes
:���������22�
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_989256399

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257499

inputs?
%conv2d_conv2d_readvariableop_resource:		4
&conv2d_biasadd_readvariableop_resource:>
&conv2d_p_re_lu_readvariableop_resource:��A
'conv2d_1_conv2d_readvariableop_resource:		 6
(conv2d_1_biasadd_readvariableop_resource: B
*conv2d_1_p_re_lu_1_readvariableop_resource:�� A
'conv2d_2_conv2d_readvariableop_resource:		 @6
(conv2d_2_biasadd_readvariableop_resource:@@
*conv2d_2_p_re_lu_2_readvariableop_resource:dd@B
'conv2d_3_conv2d_readvariableop_resource:		@�7
(conv2d_3_biasadd_readvariableop_resource:	�A
*conv2d_3_p_re_lu_3_readvariableop_resource:22�C
'conv2d_4_conv2d_readvariableop_resource:		��7
(conv2d_4_biasadd_readvariableop_resource:	�A
*conv2d_4_p_re_lu_4_readvariableop_resource:�8
$dense_matmul_readvariableop_resource:
��@3
%dense_biasadd_readvariableop_resource:@5
'dense_p_re_lu_5_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@7
)dense_1_p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d/p_re_lu/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�!conv2d_1/p_re_lu_1/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�!conv2d_2/p_re_lu_2/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�!conv2d_3/p_re_lu_3/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�!conv2d_4/p_re_lu_4/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense/p_re_lu_5/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp� dense_1/p_re_lu_6/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp[
AsinhAsinhinputs*
T0*1
_output_shapes
:�����������2
Asinh�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2D	Asinh:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������2
conv2d/BiasAdd�
conv2d/p_re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu�
conv2d/p_re_lu/ReadVariableOpReadVariableOp&conv2d_p_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
conv2d/p_re_lu/ReadVariableOp�
conv2d/p_re_lu/NegNeg%conv2d/p_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
conv2d/p_re_lu/Neg�
conv2d/p_re_lu/Neg_1Negconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Neg_1�
conv2d/p_re_lu/Relu_1Reluconv2d/p_re_lu/Neg_1:y:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu_1�
conv2d/p_re_lu/mulMulconv2d/p_re_lu/Neg:y:0#conv2d/p_re_lu/Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/mul�
conv2d/p_re_lu/addAddV2!conv2d/p_re_lu/Relu:activations:0conv2d/p_re_lu/mul:z:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/add�
max_pooling2d/MaxPoolMaxPoolconv2d/p_re_lu/add:z:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/BiasAdd�
conv2d_1/p_re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu�
!conv2d_1/p_re_lu_1/ReadVariableOpReadVariableOp*conv2d_1_p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02#
!conv2d_1/p_re_lu_1/ReadVariableOp�
conv2d_1/p_re_lu_1/NegNeg)conv2d_1/p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg�
conv2d_1/p_re_lu_1/Neg_1Negconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Neg_1�
conv2d_1/p_re_lu_1/Relu_1Reluconv2d_1/p_re_lu_1/Neg_1:y:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu_1�
conv2d_1/p_re_lu_1/mulMulconv2d_1/p_re_lu_1/Neg:y:0'conv2d_1/p_re_lu_1/Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/mul�
conv2d_1/p_re_lu_1/addAddV2%conv2d_1/p_re_lu_1/Relu:activations:0conv2d_1/p_re_lu_1/mul:z:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/add�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/p_re_lu_1/add:z:0*/
_output_shapes
:���������dd *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/BiasAdd�
conv2d_2/p_re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu�
!conv2d_2/p_re_lu_2/ReadVariableOpReadVariableOp*conv2d_2_p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02#
!conv2d_2/p_re_lu_2/ReadVariableOp�
conv2d_2/p_re_lu_2/NegNeg)conv2d_2/p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg�
conv2d_2/p_re_lu_2/Neg_1Negconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Neg_1�
conv2d_2/p_re_lu_2/Relu_1Reluconv2d_2/p_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu_1�
conv2d_2/p_re_lu_2/mulMulconv2d_2/p_re_lu_2/Neg:y:0'conv2d_2/p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/mul�
conv2d_2/p_re_lu_2/addAddV2%conv2d_2/p_re_lu_2/Relu:activations:0conv2d_2/p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/add�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/p_re_lu_2/add:z:0*/
_output_shapes
:���������22@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/BiasAdd�
conv2d_3/p_re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu�
!conv2d_3/p_re_lu_3/ReadVariableOpReadVariableOp*conv2d_3_p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02#
!conv2d_3/p_re_lu_3/ReadVariableOp�
conv2d_3/p_re_lu_3/NegNeg)conv2d_3/p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg�
conv2d_3/p_re_lu_3/Neg_1Negconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Neg_1�
conv2d_3/p_re_lu_3/Relu_1Reluconv2d_3/p_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu_1�
conv2d_3/p_re_lu_3/mulMulconv2d_3/p_re_lu_3/Neg:y:0'conv2d_3/p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/mul�
conv2d_3/p_re_lu_3/addAddV2%conv2d_3/p_re_lu_3/Relu:activations:0conv2d_3/p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/add�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/p_re_lu_3/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_4/BiasAdd�
conv2d_4/p_re_lu_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu�
!conv2d_4/p_re_lu_4/ReadVariableOpReadVariableOp*conv2d_4_p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02#
!conv2d_4/p_re_lu_4/ReadVariableOp�
conv2d_4/p_re_lu_4/NegNeg)conv2d_4/p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg�
conv2d_4/p_re_lu_4/Neg_1Negconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Neg_1�
conv2d_4/p_re_lu_4/Relu_1Reluconv2d_4/p_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu_1�
conv2d_4/p_re_lu_4/mulMulconv2d_4/p_re_lu_4/Neg:y:0'conv2d_4/p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/mul�
conv2d_4/p_re_lu_4/addAddV2%conv2d_4/p_re_lu_4/Relu:activations:0conv2d_4/p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/add�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/p_re_lu_4/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:�����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/BiasAdd~
dense/p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu�
dense/p_re_lu_5/ReadVariableOpReadVariableOp'dense_p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense/p_re_lu_5/ReadVariableOp~
dense/p_re_lu_5/NegNeg&dense/p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense/p_re_lu_5/Neg
dense/p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Neg_1�
dense/p_re_lu_5/Relu_1Reludense/p_re_lu_5/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu_1�
dense/p_re_lu_5/mulMuldense/p_re_lu_5/Neg:y:0$dense/p_re_lu_5/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/mul�
dense/p_re_lu_5/addAddV2"dense/p_re_lu_5/Relu:activations:0dense/p_re_lu_5/mul:z:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/add{
dropout/IdentityIdentitydense/p_re_lu_5/add:z:0*
T0*'
_output_shapes
:���������@2
dropout/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/BiasAdd�
dense_1/p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu�
 dense_1/p_re_lu_6/ReadVariableOpReadVariableOp)dense_1_p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_1/p_re_lu_6/ReadVariableOp�
dense_1/p_re_lu_6/NegNeg(dense_1/p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense_1/p_re_lu_6/Neg�
dense_1/p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Neg_1�
dense_1/p_re_lu_6/Relu_1Reludense_1/p_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu_1�
dense_1/p_re_lu_6/mulMuldense_1/p_re_lu_6/Neg:y:0&dense_1/p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/mul�
dense_1/p_re_lu_6/addAddV2$dense_1/p_re_lu_6/Relu:activations:0dense_1/p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/add�
dropout_1/IdentityIdentitydense_1/p_re_lu_6/add:z:0*
T0*'
_output_shapes
:���������@2
dropout_1/Identity�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAddi
SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp^conv2d/p_re_lu/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp"^conv2d_1/p_re_lu_1/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp"^conv2d_2/p_re_lu_2/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp"^conv2d_3/p_re_lu_3/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp"^conv2d_4/p_re_lu_4/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/p_re_lu_5/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp!^dense_1/p_re_lu_6/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2>
conv2d/p_re_lu/ReadVariableOpconv2d/p_re_lu/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2F
!conv2d_1/p_re_lu_1/ReadVariableOp!conv2d_1/p_re_lu_1/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2F
!conv2d_2/p_re_lu_2/ReadVariableOp!conv2d_2/p_re_lu_2/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2F
!conv2d_3/p_re_lu_3/ReadVariableOp!conv2d_3/p_re_lu_3/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2F
!conv2d_4/p_re_lu_4/ReadVariableOp!conv2d_4/p_re_lu_4/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense/p_re_lu_5/ReadVariableOpdense/p_re_lu_5/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2D
 dense_1/p_re_lu_6/ReadVariableOp dense_1/p_re_lu_6/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
ܩ
�
__inference_call_989258218

inputs?
%conv2d_conv2d_readvariableop_resource:		4
&conv2d_biasadd_readvariableop_resource:>
&conv2d_p_re_lu_readvariableop_resource:��A
'conv2d_1_conv2d_readvariableop_resource:		 6
(conv2d_1_biasadd_readvariableop_resource: B
*conv2d_1_p_re_lu_1_readvariableop_resource:�� A
'conv2d_2_conv2d_readvariableop_resource:		 @6
(conv2d_2_biasadd_readvariableop_resource:@@
*conv2d_2_p_re_lu_2_readvariableop_resource:dd@B
'conv2d_3_conv2d_readvariableop_resource:		@�7
(conv2d_3_biasadd_readvariableop_resource:	�A
*conv2d_3_p_re_lu_3_readvariableop_resource:22�C
'conv2d_4_conv2d_readvariableop_resource:		��7
(conv2d_4_biasadd_readvariableop_resource:	�A
*conv2d_4_p_re_lu_4_readvariableop_resource:�8
$dense_matmul_readvariableop_resource:
��@3
%dense_biasadd_readvariableop_resource:@5
'dense_p_re_lu_5_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@7
)dense_1_p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d/p_re_lu/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�!conv2d_1/p_re_lu_1/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�!conv2d_2/p_re_lu_2/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�!conv2d_3/p_re_lu_3/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�!conv2d_4/p_re_lu_4/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense/p_re_lu_5/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp� dense_1/p_re_lu_6/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpR
AsinhAsinhinputs*
T0*(
_output_shapes
:��2
Asinh�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2D	Asinh:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��2
conv2d/BiasAdd~
conv2d/p_re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/Relu�
conv2d/p_re_lu/ReadVariableOpReadVariableOp&conv2d_p_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
conv2d/p_re_lu/ReadVariableOp�
conv2d/p_re_lu/NegNeg%conv2d/p_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
conv2d/p_re_lu/Neg
conv2d/p_re_lu/Neg_1Negconv2d/BiasAdd:output:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/Neg_1�
conv2d/p_re_lu/Relu_1Reluconv2d/p_re_lu/Neg_1:y:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/Relu_1�
conv2d/p_re_lu/mulMulconv2d/p_re_lu/Neg:y:0#conv2d/p_re_lu/Relu_1:activations:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/mul�
conv2d/p_re_lu/addAddV2!conv2d/p_re_lu/Relu:activations:0conv2d/p_re_lu/mul:z:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/add�
max_pooling2d/MaxPoolMaxPoolconv2d/p_re_lu/add:z:0*(
_output_shapes
:��*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� 2
conv2d_1/BiasAdd�
conv2d_1/p_re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Relu�
!conv2d_1/p_re_lu_1/ReadVariableOpReadVariableOp*conv2d_1_p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02#
!conv2d_1/p_re_lu_1/ReadVariableOp�
conv2d_1/p_re_lu_1/NegNeg)conv2d_1/p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg�
conv2d_1/p_re_lu_1/Neg_1Negconv2d_1/BiasAdd:output:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg_1�
conv2d_1/p_re_lu_1/Relu_1Reluconv2d_1/p_re_lu_1/Neg_1:y:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Relu_1�
conv2d_1/p_re_lu_1/mulMulconv2d_1/p_re_lu_1/Neg:y:0'conv2d_1/p_re_lu_1/Relu_1:activations:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/mul�
conv2d_1/p_re_lu_1/addAddV2%conv2d_1/p_re_lu_1/Relu:activations:0conv2d_1/p_re_lu_1/mul:z:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/add�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/p_re_lu_1/add:z:0*&
_output_shapes
:dd *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:dd@*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:dd@2
conv2d_2/BiasAdd�
conv2d_2/p_re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Relu�
!conv2d_2/p_re_lu_2/ReadVariableOpReadVariableOp*conv2d_2_p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02#
!conv2d_2/p_re_lu_2/ReadVariableOp�
conv2d_2/p_re_lu_2/NegNeg)conv2d_2/p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg�
conv2d_2/p_re_lu_2/Neg_1Negconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg_1�
conv2d_2/p_re_lu_2/Relu_1Reluconv2d_2/p_re_lu_2/Neg_1:y:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Relu_1�
conv2d_2/p_re_lu_2/mulMulconv2d_2/p_re_lu_2/Neg:y:0'conv2d_2/p_re_lu_2/Relu_1:activations:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/mul�
conv2d_2/p_re_lu_2/addAddV2%conv2d_2/p_re_lu_2/Relu:activations:0conv2d_2/p_re_lu_2/mul:z:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/add�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/p_re_lu_2/add:z:0*&
_output_shapes
:22@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:22�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:22�2
conv2d_3/BiasAdd�
conv2d_3/p_re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Relu�
!conv2d_3/p_re_lu_3/ReadVariableOpReadVariableOp*conv2d_3_p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02#
!conv2d_3/p_re_lu_3/ReadVariableOp�
conv2d_3/p_re_lu_3/NegNeg)conv2d_3/p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg�
conv2d_3/p_re_lu_3/Neg_1Negconv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg_1�
conv2d_3/p_re_lu_3/Relu_1Reluconv2d_3/p_re_lu_3/Neg_1:y:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Relu_1�
conv2d_3/p_re_lu_3/mulMulconv2d_3/p_re_lu_3/Neg:y:0'conv2d_3/p_re_lu_3/Relu_1:activations:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/mul�
conv2d_3/p_re_lu_3/addAddV2%conv2d_3/p_re_lu_3/Relu:activations:0conv2d_3/p_re_lu_3/mul:z:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/add�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/p_re_lu_3/add:z:0*'
_output_shapes
:�*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:�*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:�2
conv2d_4/BiasAdd�
conv2d_4/p_re_lu_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/Relu�
!conv2d_4/p_re_lu_4/ReadVariableOpReadVariableOp*conv2d_4_p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02#
!conv2d_4/p_re_lu_4/ReadVariableOp�
conv2d_4/p_re_lu_4/NegNeg)conv2d_4/p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg�
conv2d_4/p_re_lu_4/Neg_1Negconv2d_4/BiasAdd:output:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg_1�
conv2d_4/p_re_lu_4/Relu_1Reluconv2d_4/p_re_lu_4/Neg_1:y:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/Relu_1�
conv2d_4/p_re_lu_4/mulMulconv2d_4/p_re_lu_4/Neg:y:0'conv2d_4/p_re_lu_4/Relu_1:activations:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/mul�
conv2d_4/p_re_lu_4/addAddV2%conv2d_4/p_re_lu_4/Relu:activations:0conv2d_4/p_re_lu_4/mul:z:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/add�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/p_re_lu_4/add:z:0*'
_output_shapes
:�*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0* 
_output_shapes
:
��2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
dense/BiasAddu
dense/p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/Relu�
dense/p_re_lu_5/ReadVariableOpReadVariableOp'dense_p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense/p_re_lu_5/ReadVariableOp~
dense/p_re_lu_5/NegNeg&dense/p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense/p_re_lu_5/Negv
dense/p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/Neg_1|
dense/p_re_lu_5/Relu_1Reludense/p_re_lu_5/Neg_1:y:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/Relu_1�
dense/p_re_lu_5/mulMuldense/p_re_lu_5/Neg:y:0$dense/p_re_lu_5/Relu_1:activations:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/mul�
dense/p_re_lu_5/addAddV2"dense/p_re_lu_5/Relu:activations:0dense/p_re_lu_5/mul:z:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/adds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/dropout/Const�
dropout/dropout/MulMuldense/p_re_lu_5/add:z:0dropout/dropout/Const:output:0*
T0*
_output_shapes

:@2
dropout/dropout/Mul
dropout/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   @   2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*
_output_shapes

:@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:@2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:@2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*
_output_shapes

:@2
dropout/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
dense_1/BiasAdd{
dense_1/p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/Relu�
 dense_1/p_re_lu_6/ReadVariableOpReadVariableOp)dense_1_p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_1/p_re_lu_6/ReadVariableOp�
dense_1/p_re_lu_6/NegNeg(dense_1/p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense_1/p_re_lu_6/Neg|
dense_1/p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/Neg_1�
dense_1/p_re_lu_6/Relu_1Reludense_1/p_re_lu_6/Neg_1:y:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/Relu_1�
dense_1/p_re_lu_6/mulMuldense_1/p_re_lu_6/Neg:y:0&dense_1/p_re_lu_6/Relu_1:activations:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/mul�
dense_1/p_re_lu_6/addAddV2$dense_1/p_re_lu_6/Relu:activations:0dense_1/p_re_lu_6/mul:z:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/addw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMuldense_1/p_re_lu_6/add:z:0 dropout_1/dropout/Const:output:0*
T0*
_output_shapes

:@2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   @   2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*
_output_shapes

:@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes

:@2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes

:@2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*
_output_shapes

:@2
dropout_1/dropout/Mul_1�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_2/BiasAddj
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp^conv2d/p_re_lu/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp"^conv2d_1/p_re_lu_1/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp"^conv2d_2/p_re_lu_2/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp"^conv2d_3/p_re_lu_3/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp"^conv2d_4/p_re_lu_4/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/p_re_lu_5/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp!^dense_1/p_re_lu_6/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:��: : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2>
conv2d/p_re_lu/ReadVariableOpconv2d/p_re_lu/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2F
!conv2d_1/p_re_lu_1/ReadVariableOp!conv2d_1/p_re_lu_1/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2F
!conv2d_2/p_re_lu_2/ReadVariableOp!conv2d_2/p_re_lu_2/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2F
!conv2d_3/p_re_lu_3/ReadVariableOp!conv2d_3/p_re_lu_3/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2F
!conv2d_4/p_re_lu_4/ReadVariableOp!conv2d_4/p_re_lu_4/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense/p_re_lu_5/ReadVariableOpdense/p_re_lu_5/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2D
 dense_1/p_re_lu_6/ReadVariableOp dense_1/p_re_lu_6/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:��
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_989258490

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_p_re_lu_4_layer_call_and_return_conditional_losses_989258931

inputs.
readvariableop_resource:�
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:�*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:�2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1k
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:����������2
mulk
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:����������2
addk
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:����������2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_p_re_lu_2_layer_call_and_return_conditional_losses_989258893

inputs-
readvariableop_resource:dd@
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:dd@*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1j
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
mulj
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:���������dd@2
addj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:���������dd@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_dense_layer_call_and_return_conditional_losses_989258730

inputs2
matmul_readvariableop_resource:
��@-
biasadd_readvariableop_resource:@/
!p_re_lu_5_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�p_re_lu_5/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddl
p_re_lu_5/ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/Relu�
p_re_lu_5/ReadVariableOpReadVariableOp!p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02
p_re_lu_5/ReadVariableOpl
p_re_lu_5/NegNeg p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
p_re_lu_5/Negm
p_re_lu_5/Neg_1NegBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/Neg_1s
p_re_lu_5/Relu_1Relup_re_lu_5/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/Relu_1�
p_re_lu_5/mulMulp_re_lu_5/Neg:y:0p_re_lu_5/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/mul�
p_re_lu_5/addAddV2p_re_lu_5/Relu:activations:0p_re_lu_5/mul:z:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/addl
IdentityIdentityp_re_lu_5/add:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^p_re_lu_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:�����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp24
p_re_lu_5/ReadVariableOpp_re_lu_5/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_conv2d_3_layer_call_fn_989258632

inputs"
unknown:		@�
	unknown_0:	� 
	unknown_1:22�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������22�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_9892566142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������22�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������22@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������22@
 
_user_specified_nameinputs
��
�
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257631

inputs?
%conv2d_conv2d_readvariableop_resource:		4
&conv2d_biasadd_readvariableop_resource:>
&conv2d_p_re_lu_readvariableop_resource:��A
'conv2d_1_conv2d_readvariableop_resource:		 6
(conv2d_1_biasadd_readvariableop_resource: B
*conv2d_1_p_re_lu_1_readvariableop_resource:�� A
'conv2d_2_conv2d_readvariableop_resource:		 @6
(conv2d_2_biasadd_readvariableop_resource:@@
*conv2d_2_p_re_lu_2_readvariableop_resource:dd@B
'conv2d_3_conv2d_readvariableop_resource:		@�7
(conv2d_3_biasadd_readvariableop_resource:	�A
*conv2d_3_p_re_lu_3_readvariableop_resource:22�C
'conv2d_4_conv2d_readvariableop_resource:		��7
(conv2d_4_biasadd_readvariableop_resource:	�A
*conv2d_4_p_re_lu_4_readvariableop_resource:�8
$dense_matmul_readvariableop_resource:
��@3
%dense_biasadd_readvariableop_resource:@5
'dense_p_re_lu_5_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@7
)dense_1_p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d/p_re_lu/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�!conv2d_1/p_re_lu_1/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�!conv2d_2/p_re_lu_2/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�!conv2d_3/p_re_lu_3/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�!conv2d_4/p_re_lu_4/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense/p_re_lu_5/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp� dense_1/p_re_lu_6/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp[
AsinhAsinhinputs*
T0*1
_output_shapes
:�����������2
Asinh�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2D	Asinh:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������2
conv2d/BiasAdd�
conv2d/p_re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu�
conv2d/p_re_lu/ReadVariableOpReadVariableOp&conv2d_p_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
conv2d/p_re_lu/ReadVariableOp�
conv2d/p_re_lu/NegNeg%conv2d/p_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
conv2d/p_re_lu/Neg�
conv2d/p_re_lu/Neg_1Negconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Neg_1�
conv2d/p_re_lu/Relu_1Reluconv2d/p_re_lu/Neg_1:y:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu_1�
conv2d/p_re_lu/mulMulconv2d/p_re_lu/Neg:y:0#conv2d/p_re_lu/Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/mul�
conv2d/p_re_lu/addAddV2!conv2d/p_re_lu/Relu:activations:0conv2d/p_re_lu/mul:z:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/add�
max_pooling2d/MaxPoolMaxPoolconv2d/p_re_lu/add:z:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/BiasAdd�
conv2d_1/p_re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu�
!conv2d_1/p_re_lu_1/ReadVariableOpReadVariableOp*conv2d_1_p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02#
!conv2d_1/p_re_lu_1/ReadVariableOp�
conv2d_1/p_re_lu_1/NegNeg)conv2d_1/p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg�
conv2d_1/p_re_lu_1/Neg_1Negconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Neg_1�
conv2d_1/p_re_lu_1/Relu_1Reluconv2d_1/p_re_lu_1/Neg_1:y:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu_1�
conv2d_1/p_re_lu_1/mulMulconv2d_1/p_re_lu_1/Neg:y:0'conv2d_1/p_re_lu_1/Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/mul�
conv2d_1/p_re_lu_1/addAddV2%conv2d_1/p_re_lu_1/Relu:activations:0conv2d_1/p_re_lu_1/mul:z:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/add�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/p_re_lu_1/add:z:0*/
_output_shapes
:���������dd *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/BiasAdd�
conv2d_2/p_re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu�
!conv2d_2/p_re_lu_2/ReadVariableOpReadVariableOp*conv2d_2_p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02#
!conv2d_2/p_re_lu_2/ReadVariableOp�
conv2d_2/p_re_lu_2/NegNeg)conv2d_2/p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg�
conv2d_2/p_re_lu_2/Neg_1Negconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Neg_1�
conv2d_2/p_re_lu_2/Relu_1Reluconv2d_2/p_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu_1�
conv2d_2/p_re_lu_2/mulMulconv2d_2/p_re_lu_2/Neg:y:0'conv2d_2/p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/mul�
conv2d_2/p_re_lu_2/addAddV2%conv2d_2/p_re_lu_2/Relu:activations:0conv2d_2/p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/add�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/p_re_lu_2/add:z:0*/
_output_shapes
:���������22@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/BiasAdd�
conv2d_3/p_re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu�
!conv2d_3/p_re_lu_3/ReadVariableOpReadVariableOp*conv2d_3_p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02#
!conv2d_3/p_re_lu_3/ReadVariableOp�
conv2d_3/p_re_lu_3/NegNeg)conv2d_3/p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg�
conv2d_3/p_re_lu_3/Neg_1Negconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Neg_1�
conv2d_3/p_re_lu_3/Relu_1Reluconv2d_3/p_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu_1�
conv2d_3/p_re_lu_3/mulMulconv2d_3/p_re_lu_3/Neg:y:0'conv2d_3/p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/mul�
conv2d_3/p_re_lu_3/addAddV2%conv2d_3/p_re_lu_3/Relu:activations:0conv2d_3/p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/add�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/p_re_lu_3/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_4/BiasAdd�
conv2d_4/p_re_lu_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu�
!conv2d_4/p_re_lu_4/ReadVariableOpReadVariableOp*conv2d_4_p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02#
!conv2d_4/p_re_lu_4/ReadVariableOp�
conv2d_4/p_re_lu_4/NegNeg)conv2d_4/p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg�
conv2d_4/p_re_lu_4/Neg_1Negconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Neg_1�
conv2d_4/p_re_lu_4/Relu_1Reluconv2d_4/p_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu_1�
conv2d_4/p_re_lu_4/mulMulconv2d_4/p_re_lu_4/Neg:y:0'conv2d_4/p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/mul�
conv2d_4/p_re_lu_4/addAddV2%conv2d_4/p_re_lu_4/Relu:activations:0conv2d_4/p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/add�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/p_re_lu_4/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:�����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/BiasAdd~
dense/p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu�
dense/p_re_lu_5/ReadVariableOpReadVariableOp'dense_p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense/p_re_lu_5/ReadVariableOp~
dense/p_re_lu_5/NegNeg&dense/p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense/p_re_lu_5/Neg
dense/p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Neg_1�
dense/p_re_lu_5/Relu_1Reludense/p_re_lu_5/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu_1�
dense/p_re_lu_5/mulMuldense/p_re_lu_5/Neg:y:0$dense/p_re_lu_5/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/mul�
dense/p_re_lu_5/addAddV2"dense/p_re_lu_5/Relu:activations:0dense/p_re_lu_5/mul:z:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/adds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/dropout/Const�
dropout/dropout/MulMuldense/p_re_lu_5/add:z:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/dropout/Mulu
dropout/dropout/ShapeShapedense/p_re_lu_5/add:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/BiasAdd�
dense_1/p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu�
 dense_1/p_re_lu_6/ReadVariableOpReadVariableOp)dense_1_p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_1/p_re_lu_6/ReadVariableOp�
dense_1/p_re_lu_6/NegNeg(dense_1/p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense_1/p_re_lu_6/Neg�
dense_1/p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Neg_1�
dense_1/p_re_lu_6/Relu_1Reludense_1/p_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu_1�
dense_1/p_re_lu_6/mulMuldense_1/p_re_lu_6/Neg:y:0&dense_1/p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/mul�
dense_1/p_re_lu_6/addAddV2$dense_1/p_re_lu_6/Relu:activations:0dense_1/p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/addw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMuldense_1/p_re_lu_6/add:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout_1/dropout/Mul{
dropout_1/dropout/ShapeShapedense_1/p_re_lu_6/add:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout_1/dropout/Mul_1�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAdds
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp^conv2d/p_re_lu/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp"^conv2d_1/p_re_lu_1/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp"^conv2d_2/p_re_lu_2/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp"^conv2d_3/p_re_lu_3/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp"^conv2d_4/p_re_lu_4/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/p_re_lu_5/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp!^dense_1/p_re_lu_6/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2>
conv2d/p_re_lu/ReadVariableOpconv2d/p_re_lu/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2F
!conv2d_1/p_re_lu_1/ReadVariableOp!conv2d_1/p_re_lu_1/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2F
!conv2d_2/p_re_lu_2/ReadVariableOp!conv2d_2/p_re_lu_2/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2F
!conv2d_3/p_re_lu_3/ReadVariableOp!conv2d_3/p_re_lu_3/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2F
!conv2d_4/p_re_lu_4/ReadVariableOp!conv2d_4/p_re_lu_4/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense/p_re_lu_5/ReadVariableOpdense/p_re_lu_5/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2D
 dense_1/p_re_lu_6/ReadVariableOp dense_1/p_re_lu_6/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_989258495

inputs
identity�
MaxPoolMaxPoolinputs*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
2	
MaxPooln
IdentityIdentityMaxPool:output:0*
T0*1
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
}
-__inference_p_re_lu_6_layer_call_fn_989258976

inputs
unknown:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_p_re_lu_6_layer_call_and_return_conditional_losses_9892564682
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
d
F__inference_dropout_layer_call_and_return_conditional_losses_989258746

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_flatten_layer_call_fn_989258712

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_layer_call_and_return_conditional_losses_9892566662
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�a
�
%__inference__traced_restore_989259147
file_prefix8
assignvariableop_conv2d_kernel:		,
assignvariableop_1_conv2d_bias:<
"assignvariableop_2_conv2d_1_kernel:		 .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel:		 @.
 assignvariableop_5_conv2d_2_bias:@=
"assignvariableop_6_conv2d_3_kernel:		@�/
 assignvariableop_7_conv2d_3_bias:	�>
"assignvariableop_8_conv2d_4_kernel:		��/
 assignvariableop_9_conv2d_4_bias:	�4
 assignvariableop_10_dense_kernel:
��@,
assignvariableop_11_dense_bias:@4
"assignvariableop_12_dense_1_kernel:@@.
 assignvariableop_13_dense_1_bias:@4
"assignvariableop_14_dense_2_kernel:@.
 assignvariableop_15_dense_2_bias:@
(assignvariableop_16_conv2d_p_re_lu_alpha:��D
,assignvariableop_17_conv2d_1_p_re_lu_1_alpha:�� B
,assignvariableop_18_conv2d_2_p_re_lu_2_alpha:dd@C
,assignvariableop_19_conv2d_3_p_re_lu_3_alpha:22�C
,assignvariableop_20_conv2d_4_p_re_lu_4_alpha:�7
)assignvariableop_21_dense_p_re_lu_5_alpha:@9
+assignvariableop_22_dense_1_p_re_lu_6_alpha:@
identity_24��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv5/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv5/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense3/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_4_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_4_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_dense_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp(assignvariableop_16_conv2d_p_re_lu_alphaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_conv2d_1_p_re_lu_1_alphaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp,assignvariableop_18_conv2d_2_p_re_lu_2_alphaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_conv2d_3_p_re_lu_3_alphaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp,assignvariableop_20_conv2d_4_p_re_lu_4_alphaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_dense_p_re_lu_5_alphaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_dense_1_p_re_lu_6_alphaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_229
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_23Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_23f
Identity_24IdentityIdentity_23:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_24�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_24Identity_24:output:0*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222(
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
�
�
F__inference_dense_1_layer_call_and_return_conditional_losses_989256719

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@/
!p_re_lu_6_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�p_re_lu_6/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddl
p_re_lu_6/ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/Relu�
p_re_lu_6/ReadVariableOpReadVariableOp!p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02
p_re_lu_6/ReadVariableOpl
p_re_lu_6/NegNeg p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
p_re_lu_6/Negm
p_re_lu_6/Neg_1NegBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/Neg_1s
p_re_lu_6/Relu_1Relup_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/Relu_1�
p_re_lu_6/mulMulp_re_lu_6/Neg:y:0p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/mul�
p_re_lu_6/addAddV2p_re_lu_6/Relu:activations:0p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/addl
IdentityIdentityp_re_lu_6/add:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^p_re_lu_6/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp24
p_re_lu_6/ReadVariableOpp_re_lu_6/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_989258593

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������22@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������22@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dd@:W S
/
_output_shapes
:���������dd@
 
_user_specified_nameinputs
�
�
,__inference_conv2d_2_layer_call_fn_989258583

inputs!
unknown:		 @
	unknown_0:@
	unknown_1:dd@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_9892565822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������dd@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������dd 
 
_user_specified_nameinputs
�
�
G__inference_conv2d_3_layer_call_and_return_conditional_losses_989256614

inputs9
conv2d_readvariableop_resource:		@�.
biasadd_readvariableop_resource:	�8
!p_re_lu_3_readvariableop_resource:22�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu_3/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�2	
BiasAddu
p_re_lu_3/ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/Relu�
p_re_lu_3/ReadVariableOpReadVariableOp!p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02
p_re_lu_3/ReadVariableOpu
p_re_lu_3/NegNeg p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
p_re_lu_3/Negv
p_re_lu_3/Neg_1NegBiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/Neg_1|
p_re_lu_3/Relu_1Relup_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/Relu_1�
p_re_lu_3/mulMulp_re_lu_3/Neg:y:0p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/mul�
p_re_lu_3/addAddV2p_re_lu_3/Relu:activations:0p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/addu
IdentityIdentityp_re_lu_3/add:z:0^NoOp*
T0*0
_output_shapes
:���������22�2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������22@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp24
p_re_lu_3/ReadVariableOpp_re_lu_3/ReadVariableOp:W S
/
_output_shapes
:���������22@
 
_user_specified_nameinputs
�
f
H__inference_dropout_1_layer_call_and_return_conditional_losses_989258802

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
G__inference_conv2d_4_layer_call_and_return_conditional_losses_989256646

inputs:
conv2d_readvariableop_resource:		��.
biasadd_readvariableop_resource:	�8
!p_re_lu_4_readvariableop_resource:�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu_4/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAddu
p_re_lu_4/ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/Relu�
p_re_lu_4/ReadVariableOpReadVariableOp!p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02
p_re_lu_4/ReadVariableOpu
p_re_lu_4/NegNeg p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
p_re_lu_4/Negv
p_re_lu_4/Neg_1NegBiasAdd:output:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/Neg_1|
p_re_lu_4/Relu_1Relup_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/Relu_1�
p_re_lu_4/mulMulp_re_lu_4/Neg:y:0p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/mul�
p_re_lu_4/addAddV2p_re_lu_4/Relu:activations:0p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/addu
IdentityIdentityp_re_lu_4/add:z:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp24
p_re_lu_4/ReadVariableOpp_re_lu_4/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
H__inference_p_re_lu_5_layer_call_and_return_conditional_losses_989258950

inputs%
readvariableop_resource:@
identity��ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:������������������2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:@2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:������������������2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:������������������2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:���������@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
H__inference_p_re_lu_3_layer_call_and_return_conditional_losses_989256304

inputs.
readvariableop_resource:22�
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:22�*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1k
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
mulk
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:���������22�2
addk
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:���������22�2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257750
input_1?
%conv2d_conv2d_readvariableop_resource:		4
&conv2d_biasadd_readvariableop_resource:>
&conv2d_p_re_lu_readvariableop_resource:��A
'conv2d_1_conv2d_readvariableop_resource:		 6
(conv2d_1_biasadd_readvariableop_resource: B
*conv2d_1_p_re_lu_1_readvariableop_resource:�� A
'conv2d_2_conv2d_readvariableop_resource:		 @6
(conv2d_2_biasadd_readvariableop_resource:@@
*conv2d_2_p_re_lu_2_readvariableop_resource:dd@B
'conv2d_3_conv2d_readvariableop_resource:		@�7
(conv2d_3_biasadd_readvariableop_resource:	�A
*conv2d_3_p_re_lu_3_readvariableop_resource:22�C
'conv2d_4_conv2d_readvariableop_resource:		��7
(conv2d_4_biasadd_readvariableop_resource:	�A
*conv2d_4_p_re_lu_4_readvariableop_resource:�8
$dense_matmul_readvariableop_resource:
��@3
%dense_biasadd_readvariableop_resource:@5
'dense_p_re_lu_5_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@7
)dense_1_p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d/p_re_lu/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�!conv2d_1/p_re_lu_1/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�!conv2d_2/p_re_lu_2/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�!conv2d_3/p_re_lu_3/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�!conv2d_4/p_re_lu_4/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense/p_re_lu_5/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp� dense_1/p_re_lu_6/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp\
AsinhAsinhinput_1*
T0*1
_output_shapes
:�����������2
Asinh�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2D	Asinh:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������2
conv2d/BiasAdd�
conv2d/p_re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu�
conv2d/p_re_lu/ReadVariableOpReadVariableOp&conv2d_p_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
conv2d/p_re_lu/ReadVariableOp�
conv2d/p_re_lu/NegNeg%conv2d/p_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
conv2d/p_re_lu/Neg�
conv2d/p_re_lu/Neg_1Negconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Neg_1�
conv2d/p_re_lu/Relu_1Reluconv2d/p_re_lu/Neg_1:y:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu_1�
conv2d/p_re_lu/mulMulconv2d/p_re_lu/Neg:y:0#conv2d/p_re_lu/Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/mul�
conv2d/p_re_lu/addAddV2!conv2d/p_re_lu/Relu:activations:0conv2d/p_re_lu/mul:z:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/add�
max_pooling2d/MaxPoolMaxPoolconv2d/p_re_lu/add:z:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/BiasAdd�
conv2d_1/p_re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu�
!conv2d_1/p_re_lu_1/ReadVariableOpReadVariableOp*conv2d_1_p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02#
!conv2d_1/p_re_lu_1/ReadVariableOp�
conv2d_1/p_re_lu_1/NegNeg)conv2d_1/p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg�
conv2d_1/p_re_lu_1/Neg_1Negconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Neg_1�
conv2d_1/p_re_lu_1/Relu_1Reluconv2d_1/p_re_lu_1/Neg_1:y:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu_1�
conv2d_1/p_re_lu_1/mulMulconv2d_1/p_re_lu_1/Neg:y:0'conv2d_1/p_re_lu_1/Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/mul�
conv2d_1/p_re_lu_1/addAddV2%conv2d_1/p_re_lu_1/Relu:activations:0conv2d_1/p_re_lu_1/mul:z:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/add�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/p_re_lu_1/add:z:0*/
_output_shapes
:���������dd *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/BiasAdd�
conv2d_2/p_re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu�
!conv2d_2/p_re_lu_2/ReadVariableOpReadVariableOp*conv2d_2_p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02#
!conv2d_2/p_re_lu_2/ReadVariableOp�
conv2d_2/p_re_lu_2/NegNeg)conv2d_2/p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg�
conv2d_2/p_re_lu_2/Neg_1Negconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Neg_1�
conv2d_2/p_re_lu_2/Relu_1Reluconv2d_2/p_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu_1�
conv2d_2/p_re_lu_2/mulMulconv2d_2/p_re_lu_2/Neg:y:0'conv2d_2/p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/mul�
conv2d_2/p_re_lu_2/addAddV2%conv2d_2/p_re_lu_2/Relu:activations:0conv2d_2/p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/add�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/p_re_lu_2/add:z:0*/
_output_shapes
:���������22@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/BiasAdd�
conv2d_3/p_re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu�
!conv2d_3/p_re_lu_3/ReadVariableOpReadVariableOp*conv2d_3_p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02#
!conv2d_3/p_re_lu_3/ReadVariableOp�
conv2d_3/p_re_lu_3/NegNeg)conv2d_3/p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg�
conv2d_3/p_re_lu_3/Neg_1Negconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Neg_1�
conv2d_3/p_re_lu_3/Relu_1Reluconv2d_3/p_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu_1�
conv2d_3/p_re_lu_3/mulMulconv2d_3/p_re_lu_3/Neg:y:0'conv2d_3/p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/mul�
conv2d_3/p_re_lu_3/addAddV2%conv2d_3/p_re_lu_3/Relu:activations:0conv2d_3/p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/add�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/p_re_lu_3/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_4/BiasAdd�
conv2d_4/p_re_lu_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu�
!conv2d_4/p_re_lu_4/ReadVariableOpReadVariableOp*conv2d_4_p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02#
!conv2d_4/p_re_lu_4/ReadVariableOp�
conv2d_4/p_re_lu_4/NegNeg)conv2d_4/p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg�
conv2d_4/p_re_lu_4/Neg_1Negconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Neg_1�
conv2d_4/p_re_lu_4/Relu_1Reluconv2d_4/p_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu_1�
conv2d_4/p_re_lu_4/mulMulconv2d_4/p_re_lu_4/Neg:y:0'conv2d_4/p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/mul�
conv2d_4/p_re_lu_4/addAddV2%conv2d_4/p_re_lu_4/Relu:activations:0conv2d_4/p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/add�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/p_re_lu_4/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:�����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/BiasAdd~
dense/p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu�
dense/p_re_lu_5/ReadVariableOpReadVariableOp'dense_p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense/p_re_lu_5/ReadVariableOp~
dense/p_re_lu_5/NegNeg&dense/p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense/p_re_lu_5/Neg
dense/p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Neg_1�
dense/p_re_lu_5/Relu_1Reludense/p_re_lu_5/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu_1�
dense/p_re_lu_5/mulMuldense/p_re_lu_5/Neg:y:0$dense/p_re_lu_5/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/mul�
dense/p_re_lu_5/addAddV2"dense/p_re_lu_5/Relu:activations:0dense/p_re_lu_5/mul:z:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/add{
dropout/IdentityIdentitydense/p_re_lu_5/add:z:0*
T0*'
_output_shapes
:���������@2
dropout/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/BiasAdd�
dense_1/p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu�
 dense_1/p_re_lu_6/ReadVariableOpReadVariableOp)dense_1_p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_1/p_re_lu_6/ReadVariableOp�
dense_1/p_re_lu_6/NegNeg(dense_1/p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense_1/p_re_lu_6/Neg�
dense_1/p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Neg_1�
dense_1/p_re_lu_6/Relu_1Reludense_1/p_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu_1�
dense_1/p_re_lu_6/mulMuldense_1/p_re_lu_6/Neg:y:0&dense_1/p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/mul�
dense_1/p_re_lu_6/addAddV2$dense_1/p_re_lu_6/Relu:activations:0dense_1/p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/add�
dropout_1/IdentityIdentitydense_1/p_re_lu_6/add:z:0*
T0*'
_output_shapes
:���������@2
dropout_1/Identity�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAddi
SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp^conv2d/p_re_lu/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp"^conv2d_1/p_re_lu_1/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp"^conv2d_2/p_re_lu_2/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp"^conv2d_3/p_re_lu_3/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp"^conv2d_4/p_re_lu_4/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/p_re_lu_5/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp!^dense_1/p_re_lu_6/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2>
conv2d/p_re_lu/ReadVariableOpconv2d/p_re_lu/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2F
!conv2d_1/p_re_lu_1/ReadVariableOp!conv2d_1/p_re_lu_1/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2F
!conv2d_2/p_re_lu_2/ReadVariableOp!conv2d_2/p_re_lu_2/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2F
!conv2d_3/p_re_lu_3/ReadVariableOp!conv2d_3/p_re_lu_3/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2F
!conv2d_4/p_re_lu_4/ReadVariableOp!conv2d_4/p_re_lu_4/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense/p_re_lu_5/ReadVariableOpdense/p_re_lu_5/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2D
 dense_1/p_re_lu_6/ReadVariableOp dense_1/p_re_lu_6/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
O
3__inference_max_pooling2d_1_layer_call_fn_989258549

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9892562132
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
+__inference_dense_2_layer_call_fn_989258843

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_9892567442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_989258544

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������dd *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
d
F__inference_dropout_layer_call_and_return_conditional_losses_989256699

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
b
F__inference_flatten_layer_call_and_return_conditional_losses_989256666

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
.__inference_maxi_track_layer_call_fn_989258035

inputs!
unknown:		
	unknown_0:!
	unknown_1:��#
	unknown_2:		 
	unknown_3: !
	unknown_4:�� #
	unknown_5:		 @
	unknown_6:@
	unknown_7:dd@$
	unknown_8:		@�
	unknown_9:	�!

unknown_10:22�&

unknown_11:		��

unknown_12:	�!

unknown_13:�

unknown_14:
��@

unknown_15:@

unknown_16:@

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*9
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_maxi_track_layer_call_and_return_conditional_losses_9892570922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
.__inference_maxi_track_layer_call_fn_989257984

inputs!
unknown:		
	unknown_0:!
	unknown_1:��#
	unknown_2:		 
	unknown_3: !
	unknown_4:�� #
	unknown_5:		 @
	unknown_6:@
	unknown_7:dd@$
	unknown_8:		@�
	unknown_9:	�!

unknown_10:22�&

unknown_11:		��

unknown_12:	�!

unknown_13:�

unknown_14:
��@

unknown_15:@

unknown_16:@

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*9
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_maxi_track_layer_call_and_return_conditional_losses_9892567522
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
g
H__inference_dropout_1_layer_call_and_return_conditional_losses_989258814

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�5
�	
"__inference__traced_save_989259068
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop3
/savev2_conv2d_p_re_lu_alpha_read_readvariableop7
3savev2_conv2d_1_p_re_lu_1_alpha_read_readvariableop7
3savev2_conv2d_2_p_re_lu_2_alpha_read_readvariableop7
3savev2_conv2d_3_p_re_lu_3_alpha_read_readvariableop7
3savev2_conv2d_4_p_re_lu_4_alpha_read_readvariableop4
0savev2_dense_p_re_lu_5_alpha_read_readvariableop6
2savev2_dense_1_p_re_lu_6_alpha_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B'conv1/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv2/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv3/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv4/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB'conv5/kernel/.ATTRIBUTES/VARIABLE_VALUEB%conv5/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense3/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop/savev2_conv2d_p_re_lu_alpha_read_readvariableop3savev2_conv2d_1_p_re_lu_1_alpha_read_readvariableop3savev2_conv2d_2_p_re_lu_2_alpha_read_readvariableop3savev2_conv2d_3_p_re_lu_3_alpha_read_readvariableop3savev2_conv2d_4_p_re_lu_4_alpha_read_readvariableop0savev2_dense_p_re_lu_5_alpha_read_readvariableop2savev2_dense_1_p_re_lu_6_alpha_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *&
dtypes
22
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :		::		 : :		 @:@:		@�:�:		��:�:
��@:@:@@:@:@::��:�� :dd@:22�:�:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:		: 

_output_shapes
::,(
&
_output_shapes
:		 : 

_output_shapes
: :,(
&
_output_shapes
:		 @: 

_output_shapes
:@:-)
'
_output_shapes
:		@�:!

_output_shapes	
:�:.	*
(
_output_shapes
:		��:!


_output_shapes	
:�:&"
 
_output_shapes
:
��@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::*&
$
_output_shapes
:��:*&
$
_output_shapes
:�� :($
"
_output_shapes
:dd@:)%
#
_output_shapes
:22�:)%
#
_output_shapes
:�: 

_output_shapes
:@: 

_output_shapes
:@:

_output_shapes
: 
�
�
'__inference_signature_wrapper_989257380
input_1!
unknown:		
	unknown_0:!
	unknown_1:��#
	unknown_2:		 
	unknown_3: !
	unknown_4:�� #
	unknown_5:		 @
	unknown_6:@
	unknown_7:dd@$
	unknown_8:		@�
	unknown_9:	�!

unknown_10:22�&

unknown_11:		��

unknown_12:	�!

unknown_13:�

unknown_14:
��@

unknown_15:@

unknown_16:@

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*9
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference__wrapped_model_9892561022
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
��
�
__inference_call_989256053

inputs?
%conv2d_conv2d_readvariableop_resource:		4
&conv2d_biasadd_readvariableop_resource:>
&conv2d_p_re_lu_readvariableop_resource:��A
'conv2d_1_conv2d_readvariableop_resource:		 6
(conv2d_1_biasadd_readvariableop_resource: B
*conv2d_1_p_re_lu_1_readvariableop_resource:�� A
'conv2d_2_conv2d_readvariableop_resource:		 @6
(conv2d_2_biasadd_readvariableop_resource:@@
*conv2d_2_p_re_lu_2_readvariableop_resource:dd@B
'conv2d_3_conv2d_readvariableop_resource:		@�7
(conv2d_3_biasadd_readvariableop_resource:	�A
*conv2d_3_p_re_lu_3_readvariableop_resource:22�C
'conv2d_4_conv2d_readvariableop_resource:		��7
(conv2d_4_biasadd_readvariableop_resource:	�A
*conv2d_4_p_re_lu_4_readvariableop_resource:�8
$dense_matmul_readvariableop_resource:
��@3
%dense_biasadd_readvariableop_resource:@5
'dense_p_re_lu_5_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@7
)dense_1_p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d/p_re_lu/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�!conv2d_1/p_re_lu_1/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�!conv2d_2/p_re_lu_2/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�!conv2d_3/p_re_lu_3/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�!conv2d_4/p_re_lu_4/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense/p_re_lu_5/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp� dense_1/p_re_lu_6/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp[
AsinhAsinhinputs*
T0*1
_output_shapes
:�����������2
Asinh�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2D	Asinh:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������2
conv2d/BiasAdd�
conv2d/p_re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu�
conv2d/p_re_lu/ReadVariableOpReadVariableOp&conv2d_p_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
conv2d/p_re_lu/ReadVariableOp�
conv2d/p_re_lu/NegNeg%conv2d/p_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
conv2d/p_re_lu/Neg�
conv2d/p_re_lu/Neg_1Negconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Neg_1�
conv2d/p_re_lu/Relu_1Reluconv2d/p_re_lu/Neg_1:y:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu_1�
conv2d/p_re_lu/mulMulconv2d/p_re_lu/Neg:y:0#conv2d/p_re_lu/Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/mul�
conv2d/p_re_lu/addAddV2!conv2d/p_re_lu/Relu:activations:0conv2d/p_re_lu/mul:z:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/add�
max_pooling2d/MaxPoolMaxPoolconv2d/p_re_lu/add:z:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/BiasAdd�
conv2d_1/p_re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu�
!conv2d_1/p_re_lu_1/ReadVariableOpReadVariableOp*conv2d_1_p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02#
!conv2d_1/p_re_lu_1/ReadVariableOp�
conv2d_1/p_re_lu_1/NegNeg)conv2d_1/p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg�
conv2d_1/p_re_lu_1/Neg_1Negconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Neg_1�
conv2d_1/p_re_lu_1/Relu_1Reluconv2d_1/p_re_lu_1/Neg_1:y:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu_1�
conv2d_1/p_re_lu_1/mulMulconv2d_1/p_re_lu_1/Neg:y:0'conv2d_1/p_re_lu_1/Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/mul�
conv2d_1/p_re_lu_1/addAddV2%conv2d_1/p_re_lu_1/Relu:activations:0conv2d_1/p_re_lu_1/mul:z:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/add�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/p_re_lu_1/add:z:0*/
_output_shapes
:���������dd *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/BiasAdd�
conv2d_2/p_re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu�
!conv2d_2/p_re_lu_2/ReadVariableOpReadVariableOp*conv2d_2_p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02#
!conv2d_2/p_re_lu_2/ReadVariableOp�
conv2d_2/p_re_lu_2/NegNeg)conv2d_2/p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg�
conv2d_2/p_re_lu_2/Neg_1Negconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Neg_1�
conv2d_2/p_re_lu_2/Relu_1Reluconv2d_2/p_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu_1�
conv2d_2/p_re_lu_2/mulMulconv2d_2/p_re_lu_2/Neg:y:0'conv2d_2/p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/mul�
conv2d_2/p_re_lu_2/addAddV2%conv2d_2/p_re_lu_2/Relu:activations:0conv2d_2/p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/add�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/p_re_lu_2/add:z:0*/
_output_shapes
:���������22@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/BiasAdd�
conv2d_3/p_re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu�
!conv2d_3/p_re_lu_3/ReadVariableOpReadVariableOp*conv2d_3_p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02#
!conv2d_3/p_re_lu_3/ReadVariableOp�
conv2d_3/p_re_lu_3/NegNeg)conv2d_3/p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg�
conv2d_3/p_re_lu_3/Neg_1Negconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Neg_1�
conv2d_3/p_re_lu_3/Relu_1Reluconv2d_3/p_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu_1�
conv2d_3/p_re_lu_3/mulMulconv2d_3/p_re_lu_3/Neg:y:0'conv2d_3/p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/mul�
conv2d_3/p_re_lu_3/addAddV2%conv2d_3/p_re_lu_3/Relu:activations:0conv2d_3/p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/add�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/p_re_lu_3/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_4/BiasAdd�
conv2d_4/p_re_lu_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu�
!conv2d_4/p_re_lu_4/ReadVariableOpReadVariableOp*conv2d_4_p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02#
!conv2d_4/p_re_lu_4/ReadVariableOp�
conv2d_4/p_re_lu_4/NegNeg)conv2d_4/p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg�
conv2d_4/p_re_lu_4/Neg_1Negconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Neg_1�
conv2d_4/p_re_lu_4/Relu_1Reluconv2d_4/p_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu_1�
conv2d_4/p_re_lu_4/mulMulconv2d_4/p_re_lu_4/Neg:y:0'conv2d_4/p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/mul�
conv2d_4/p_re_lu_4/addAddV2%conv2d_4/p_re_lu_4/Relu:activations:0conv2d_4/p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/add�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/p_re_lu_4/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:�����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/BiasAdd~
dense/p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu�
dense/p_re_lu_5/ReadVariableOpReadVariableOp'dense_p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense/p_re_lu_5/ReadVariableOp~
dense/p_re_lu_5/NegNeg&dense/p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense/p_re_lu_5/Neg
dense/p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Neg_1�
dense/p_re_lu_5/Relu_1Reludense/p_re_lu_5/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu_1�
dense/p_re_lu_5/mulMuldense/p_re_lu_5/Neg:y:0$dense/p_re_lu_5/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/mul�
dense/p_re_lu_5/addAddV2"dense/p_re_lu_5/Relu:activations:0dense/p_re_lu_5/mul:z:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/add{
dropout/IdentityIdentitydense/p_re_lu_5/add:z:0*
T0*'
_output_shapes
:���������@2
dropout/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/BiasAdd�
dense_1/p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu�
 dense_1/p_re_lu_6/ReadVariableOpReadVariableOp)dense_1_p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_1/p_re_lu_6/ReadVariableOp�
dense_1/p_re_lu_6/NegNeg(dense_1/p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense_1/p_re_lu_6/Neg�
dense_1/p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Neg_1�
dense_1/p_re_lu_6/Relu_1Reludense_1/p_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu_1�
dense_1/p_re_lu_6/mulMuldense_1/p_re_lu_6/Neg:y:0&dense_1/p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/mul�
dense_1/p_re_lu_6/addAddV2$dense_1/p_re_lu_6/Relu:activations:0dense_1/p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/add�
dropout_1/IdentityIdentitydense_1/p_re_lu_6/add:z:0*
T0*'
_output_shapes
:���������@2
dropout_1/Identity�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAddi
SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp^conv2d/p_re_lu/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp"^conv2d_1/p_re_lu_1/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp"^conv2d_2/p_re_lu_2/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp"^conv2d_3/p_re_lu_3/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp"^conv2d_4/p_re_lu_4/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/p_re_lu_5/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp!^dense_1/p_re_lu_6/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2>
conv2d/p_re_lu/ReadVariableOpconv2d/p_re_lu/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2F
!conv2d_1/p_re_lu_1/ReadVariableOp!conv2d_1/p_re_lu_1/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2F
!conv2d_2/p_re_lu_2/ReadVariableOp!conv2d_2/p_re_lu_2/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2F
!conv2d_3/p_re_lu_3/ReadVariableOp!conv2d_3/p_re_lu_3/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2F
!conv2d_4/p_re_lu_4/ReadVariableOp!conv2d_4/p_re_lu_4/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense/p_re_lu_5/ReadVariableOpdense/p_re_lu_5/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2D
 dense_1/p_re_lu_6/ReadVariableOp dense_1/p_re_lu_6/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_989258686

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_989256151

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
H__inference_p_re_lu_6_layer_call_and_return_conditional_losses_989256468

inputs%
readvariableop_resource:@
identity��ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:������������������2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:@2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:������������������2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:������������������2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:���������@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_989256594

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������22@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������22@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dd@:W S
/
_output_shapes
:���������dd@
 
_user_specified_nameinputs
�
�
.__inference_maxi_track_layer_call_fn_989257933
input_1!
unknown:		
	unknown_0:!
	unknown_1:��#
	unknown_2:		 
	unknown_3: !
	unknown_4:�� #
	unknown_5:		 @
	unknown_6:@
	unknown_7:dd@$
	unknown_8:		@�
	unknown_9:	�!

unknown_10:22�&

unknown_11:		��

unknown_12:	�!

unknown_13:�

unknown_14:
��@

unknown_15:@

unknown_16:@

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*9
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_maxi_track_layer_call_and_return_conditional_losses_9892567522
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
-__inference_p_re_lu_3_layer_call_fn_989258919

inputs
unknown:22�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������22�*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_p_re_lu_3_layer_call_and_return_conditional_losses_9892563042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������22�2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_p_re_lu_1_layer_call_and_return_conditional_losses_989256180

inputs/
readvariableop_resource:�� 
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu~
ReadVariableOpReadVariableOpreadvariableop_resource*$
_output_shapes
:�� *
dtype02
ReadVariableOpX
NegNegReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1l
mulMulNeg:y:0Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
mull
addAddV2Relu:activations:0mul:z:0*
T0*1
_output_shapes
:����������� 2
addl
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:����������� 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
e
F__inference_dropout_layer_call_and_return_conditional_losses_989256866

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_989256337

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
I
-__inference_dropout_1_layer_call_fn_989258819

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_9892567322
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_989256562

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������dd *
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
E__inference_conv2d_layer_call_and_return_conditional_losses_989258474

inputs8
conv2d_readvariableop_resource:		-
biasadd_readvariableop_resource:7
p_re_lu_readvariableop_resource:��
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������2	
BiasAddr
p_re_lu/ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������2
p_re_lu/Relu�
p_re_lu/ReadVariableOpReadVariableOpp_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
p_re_lu/ReadVariableOpp
p_re_lu/NegNegp_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
p_re_lu/Negs
p_re_lu/Neg_1NegBiasAdd:output:0*
T0*1
_output_shapes
:�����������2
p_re_lu/Neg_1w
p_re_lu/Relu_1Relup_re_lu/Neg_1:y:0*
T0*1
_output_shapes
:�����������2
p_re_lu/Relu_1�
p_re_lu/mulMulp_re_lu/Neg:y:0p_re_lu/Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
p_re_lu/mul�
p_re_lu/addAddV2p_re_lu/Relu:activations:0p_re_lu/mul:z:0*
T0*1
_output_shapes
:�����������2
p_re_lu/addt
IdentityIdentityp_re_lu/add:z:0^NoOp*
T0*1
_output_shapes
:�����������2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:�����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
p_re_lu/ReadVariableOpp_re_lu/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_989258539

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_1_layer_call_and_return_conditional_losses_989258523

inputs8
conv2d_readvariableop_resource:		 -
biasadd_readvariableop_resource: 9
!p_re_lu_1_readvariableop_resource:�� 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu_1/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� 2	
BiasAddv
p_re_lu_1/ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/Relu�
p_re_lu_1/ReadVariableOpReadVariableOp!p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02
p_re_lu_1/ReadVariableOpv
p_re_lu_1/NegNeg p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
p_re_lu_1/Negw
p_re_lu_1/Neg_1NegBiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/Neg_1}
p_re_lu_1/Relu_1Relup_re_lu_1/Neg_1:y:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/Relu_1�
p_re_lu_1/mulMulp_re_lu_1/Neg:y:0p_re_lu_1/Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/mul�
p_re_lu_1/addAddV2p_re_lu_1/Relu:activations:0p_re_lu_1/mul:z:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/addv
IdentityIdentityp_re_lu_1/add:z:0^NoOp*
T0*1
_output_shapes
:����������� 2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:�����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp24
p_re_lu_1/ReadVariableOpp_re_lu_1/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
__inference_call_989258456

inputs?
%conv2d_conv2d_readvariableop_resource:		4
&conv2d_biasadd_readvariableop_resource:>
&conv2d_p_re_lu_readvariableop_resource:��A
'conv2d_1_conv2d_readvariableop_resource:		 6
(conv2d_1_biasadd_readvariableop_resource: B
*conv2d_1_p_re_lu_1_readvariableop_resource:�� A
'conv2d_2_conv2d_readvariableop_resource:		 @6
(conv2d_2_biasadd_readvariableop_resource:@@
*conv2d_2_p_re_lu_2_readvariableop_resource:dd@B
'conv2d_3_conv2d_readvariableop_resource:		@�7
(conv2d_3_biasadd_readvariableop_resource:	�A
*conv2d_3_p_re_lu_3_readvariableop_resource:22�C
'conv2d_4_conv2d_readvariableop_resource:		��7
(conv2d_4_biasadd_readvariableop_resource:	�A
*conv2d_4_p_re_lu_4_readvariableop_resource:�8
$dense_matmul_readvariableop_resource:
��@3
%dense_biasadd_readvariableop_resource:@5
'dense_p_re_lu_5_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@7
)dense_1_p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d/p_re_lu/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�!conv2d_1/p_re_lu_1/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�!conv2d_2/p_re_lu_2/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�!conv2d_3/p_re_lu_3/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�!conv2d_4/p_re_lu_4/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense/p_re_lu_5/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp� dense_1/p_re_lu_6/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp[
AsinhAsinhinputs*
T0*1
_output_shapes
:�����������2
Asinh�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2D	Asinh:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������2
conv2d/BiasAdd�
conv2d/p_re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu�
conv2d/p_re_lu/ReadVariableOpReadVariableOp&conv2d_p_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
conv2d/p_re_lu/ReadVariableOp�
conv2d/p_re_lu/NegNeg%conv2d/p_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
conv2d/p_re_lu/Neg�
conv2d/p_re_lu/Neg_1Negconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Neg_1�
conv2d/p_re_lu/Relu_1Reluconv2d/p_re_lu/Neg_1:y:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu_1�
conv2d/p_re_lu/mulMulconv2d/p_re_lu/Neg:y:0#conv2d/p_re_lu/Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/mul�
conv2d/p_re_lu/addAddV2!conv2d/p_re_lu/Relu:activations:0conv2d/p_re_lu/mul:z:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/add�
max_pooling2d/MaxPoolMaxPoolconv2d/p_re_lu/add:z:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/BiasAdd�
conv2d_1/p_re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu�
!conv2d_1/p_re_lu_1/ReadVariableOpReadVariableOp*conv2d_1_p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02#
!conv2d_1/p_re_lu_1/ReadVariableOp�
conv2d_1/p_re_lu_1/NegNeg)conv2d_1/p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg�
conv2d_1/p_re_lu_1/Neg_1Negconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Neg_1�
conv2d_1/p_re_lu_1/Relu_1Reluconv2d_1/p_re_lu_1/Neg_1:y:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu_1�
conv2d_1/p_re_lu_1/mulMulconv2d_1/p_re_lu_1/Neg:y:0'conv2d_1/p_re_lu_1/Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/mul�
conv2d_1/p_re_lu_1/addAddV2%conv2d_1/p_re_lu_1/Relu:activations:0conv2d_1/p_re_lu_1/mul:z:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/add�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/p_re_lu_1/add:z:0*/
_output_shapes
:���������dd *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/BiasAdd�
conv2d_2/p_re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu�
!conv2d_2/p_re_lu_2/ReadVariableOpReadVariableOp*conv2d_2_p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02#
!conv2d_2/p_re_lu_2/ReadVariableOp�
conv2d_2/p_re_lu_2/NegNeg)conv2d_2/p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg�
conv2d_2/p_re_lu_2/Neg_1Negconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Neg_1�
conv2d_2/p_re_lu_2/Relu_1Reluconv2d_2/p_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu_1�
conv2d_2/p_re_lu_2/mulMulconv2d_2/p_re_lu_2/Neg:y:0'conv2d_2/p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/mul�
conv2d_2/p_re_lu_2/addAddV2%conv2d_2/p_re_lu_2/Relu:activations:0conv2d_2/p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/add�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/p_re_lu_2/add:z:0*/
_output_shapes
:���������22@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/BiasAdd�
conv2d_3/p_re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu�
!conv2d_3/p_re_lu_3/ReadVariableOpReadVariableOp*conv2d_3_p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02#
!conv2d_3/p_re_lu_3/ReadVariableOp�
conv2d_3/p_re_lu_3/NegNeg)conv2d_3/p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg�
conv2d_3/p_re_lu_3/Neg_1Negconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Neg_1�
conv2d_3/p_re_lu_3/Relu_1Reluconv2d_3/p_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu_1�
conv2d_3/p_re_lu_3/mulMulconv2d_3/p_re_lu_3/Neg:y:0'conv2d_3/p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/mul�
conv2d_3/p_re_lu_3/addAddV2%conv2d_3/p_re_lu_3/Relu:activations:0conv2d_3/p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/add�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/p_re_lu_3/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_4/BiasAdd�
conv2d_4/p_re_lu_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu�
!conv2d_4/p_re_lu_4/ReadVariableOpReadVariableOp*conv2d_4_p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02#
!conv2d_4/p_re_lu_4/ReadVariableOp�
conv2d_4/p_re_lu_4/NegNeg)conv2d_4/p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg�
conv2d_4/p_re_lu_4/Neg_1Negconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Neg_1�
conv2d_4/p_re_lu_4/Relu_1Reluconv2d_4/p_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu_1�
conv2d_4/p_re_lu_4/mulMulconv2d_4/p_re_lu_4/Neg:y:0'conv2d_4/p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/mul�
conv2d_4/p_re_lu_4/addAddV2%conv2d_4/p_re_lu_4/Relu:activations:0conv2d_4/p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/add�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/p_re_lu_4/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:�����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/BiasAdd~
dense/p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu�
dense/p_re_lu_5/ReadVariableOpReadVariableOp'dense_p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense/p_re_lu_5/ReadVariableOp~
dense/p_re_lu_5/NegNeg&dense/p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense/p_re_lu_5/Neg
dense/p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Neg_1�
dense/p_re_lu_5/Relu_1Reludense/p_re_lu_5/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu_1�
dense/p_re_lu_5/mulMuldense/p_re_lu_5/Neg:y:0$dense/p_re_lu_5/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/mul�
dense/p_re_lu_5/addAddV2"dense/p_re_lu_5/Relu:activations:0dense/p_re_lu_5/mul:z:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/add{
dropout/IdentityIdentitydense/p_re_lu_5/add:z:0*
T0*'
_output_shapes
:���������@2
dropout/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/BiasAdd�
dense_1/p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu�
 dense_1/p_re_lu_6/ReadVariableOpReadVariableOp)dense_1_p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_1/p_re_lu_6/ReadVariableOp�
dense_1/p_re_lu_6/NegNeg(dense_1/p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense_1/p_re_lu_6/Neg�
dense_1/p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Neg_1�
dense_1/p_re_lu_6/Relu_1Reludense_1/p_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu_1�
dense_1/p_re_lu_6/mulMuldense_1/p_re_lu_6/Neg:y:0&dense_1/p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/mul�
dense_1/p_re_lu_6/addAddV2$dense_1/p_re_lu_6/Relu:activations:0dense_1/p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/add�
dropout_1/IdentityIdentitydense_1/p_re_lu_6/add:z:0*
T0*'
_output_shapes
:���������@2
dropout_1/Identity�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAddi
SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp^conv2d/p_re_lu/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp"^conv2d_1/p_re_lu_1/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp"^conv2d_2/p_re_lu_2/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp"^conv2d_3/p_re_lu_3/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp"^conv2d_4/p_re_lu_4/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/p_re_lu_5/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp!^dense_1/p_re_lu_6/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2>
conv2d/p_re_lu/ReadVariableOpconv2d/p_re_lu/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2F
!conv2d_1/p_re_lu_1/ReadVariableOp!conv2d_1/p_re_lu_1/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2F
!conv2d_2/p_re_lu_2/ReadVariableOp!conv2d_2/p_re_lu_2/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2F
!conv2d_3/p_re_lu_3/ReadVariableOp!conv2d_3/p_re_lu_3/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2F
!conv2d_4/p_re_lu_4/ReadVariableOp!conv2d_4/p_re_lu_4/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense/p_re_lu_5/ReadVariableOpdense/p_re_lu_5/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2D
 dense_1/p_re_lu_6/ReadVariableOp dense_1/p_re_lu_6/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_989258691

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_layer_call_fn_989258500

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_9892561512
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_989256275

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_989256530

inputs
identity�
MaxPoolMaxPoolinputs*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
2	
MaxPooln
IdentityIdentityMaxPool:output:0*
T0*1
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_1_layer_call_and_return_conditional_losses_989256550

inputs8
conv2d_readvariableop_resource:		 -
biasadd_readvariableop_resource: 9
!p_re_lu_1_readvariableop_resource:�� 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu_1/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� 2	
BiasAddv
p_re_lu_1/ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/Relu�
p_re_lu_1/ReadVariableOpReadVariableOp!p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02
p_re_lu_1/ReadVariableOpv
p_re_lu_1/NegNeg p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
p_re_lu_1/Negw
p_re_lu_1/Neg_1NegBiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/Neg_1}
p_re_lu_1/Relu_1Relup_re_lu_1/Neg_1:y:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/Relu_1�
p_re_lu_1/mulMulp_re_lu_1/Neg:y:0p_re_lu_1/Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/mul�
p_re_lu_1/addAddV2p_re_lu_1/Relu:activations:0p_re_lu_1/mul:z:0*
T0*1
_output_shapes
:����������� 2
p_re_lu_1/addv
IdentityIdentityp_re_lu_1/add:z:0^NoOp*
T0*1
_output_shapes
:����������� 2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:�����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp24
p_re_lu_1/ReadVariableOpp_re_lu_1/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_dense_1_layer_call_and_return_conditional_losses_989258786

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@/
!p_re_lu_6_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�p_re_lu_6/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddl
p_re_lu_6/ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/Relu�
p_re_lu_6/ReadVariableOpReadVariableOp!p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02
p_re_lu_6/ReadVariableOpl
p_re_lu_6/NegNeg p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
p_re_lu_6/Negm
p_re_lu_6/Neg_1NegBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/Neg_1s
p_re_lu_6/Relu_1Relup_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/Relu_1�
p_re_lu_6/mulMulp_re_lu_6/Neg:y:0p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/mul�
p_re_lu_6/addAddV2p_re_lu_6/Relu:activations:0p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:���������@2
p_re_lu_6/addl
IdentityIdentityp_re_lu_6/add:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^p_re_lu_6/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp24
p_re_lu_6/ReadVariableOpp_re_lu_6/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
F__inference_dense_2_layer_call_and_return_conditional_losses_989258834

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
G__inference_conv2d_3_layer_call_and_return_conditional_losses_989258621

inputs9
conv2d_readvariableop_resource:		@�.
biasadd_readvariableop_resource:	�8
!p_re_lu_3_readvariableop_resource:22�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu_3/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�2	
BiasAddu
p_re_lu_3/ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/Relu�
p_re_lu_3/ReadVariableOpReadVariableOp!p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02
p_re_lu_3/ReadVariableOpu
p_re_lu_3/NegNeg p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
p_re_lu_3/Negv
p_re_lu_3/Neg_1NegBiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/Neg_1|
p_re_lu_3/Relu_1Relup_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/Relu_1�
p_re_lu_3/mulMulp_re_lu_3/Neg:y:0p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/mul�
p_re_lu_3/addAddV2p_re_lu_3/Relu:activations:0p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:���������22�2
p_re_lu_3/addu
IdentityIdentityp_re_lu_3/add:z:0^NoOp*
T0*0
_output_shapes
:���������22�2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������22@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp24
p_re_lu_3/ReadVariableOpp_re_lu_3/ReadVariableOp:W S
/
_output_shapes
:���������22@
 
_user_specified_nameinputs
�
�
,__inference_conv2d_4_layer_call_fn_989258681

inputs#
unknown:		��
	unknown_0:	� 
	unknown_1:�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_9892566462
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
O
3__inference_max_pooling2d_4_layer_call_fn_989258701

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_9892566582
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_dense_layer_call_and_return_conditional_losses_989256686

inputs2
matmul_readvariableop_resource:
��@-
biasadd_readvariableop_resource:@/
!p_re_lu_5_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�p_re_lu_5/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddl
p_re_lu_5/ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/Relu�
p_re_lu_5/ReadVariableOpReadVariableOp!p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02
p_re_lu_5/ReadVariableOpl
p_re_lu_5/NegNeg p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
p_re_lu_5/Negm
p_re_lu_5/Neg_1NegBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/Neg_1s
p_re_lu_5/Relu_1Relup_re_lu_5/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/Relu_1�
p_re_lu_5/mulMulp_re_lu_5/Neg:y:0p_re_lu_5/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/mul�
p_re_lu_5/addAddV2p_re_lu_5/Relu:activations:0p_re_lu_5/mul:z:0*
T0*'
_output_shapes
:���������@2
p_re_lu_5/addl
IdentityIdentityp_re_lu_5/add:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^p_re_lu_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:�����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp24
p_re_lu_5/ReadVariableOpp_re_lu_5/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
O
3__inference_max_pooling2d_3_layer_call_fn_989258652

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_9892566262
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������22�:X T
0
_output_shapes
:���������22�
 
_user_specified_nameinputs
�
�
,__inference_conv2d_1_layer_call_fn_989258534

inputs!
unknown:		 
	unknown_0: !
	unknown_1:�� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_9892565502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:�����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
H__inference_p_re_lu_3_layer_call_and_return_conditional_losses_989258912

inputs.
readvariableop_resource:22�
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:22�*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1k
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
mulk
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:���������22�2
addk
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:���������22�2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
$__inference__wrapped_model_989256102
input_1.
maxi_track_989256054:		"
maxi_track_989256056:,
maxi_track_989256058:��.
maxi_track_989256060:		 "
maxi_track_989256062: ,
maxi_track_989256064:�� .
maxi_track_989256066:		 @"
maxi_track_989256068:@*
maxi_track_989256070:dd@/
maxi_track_989256072:		@�#
maxi_track_989256074:	�+
maxi_track_989256076:22�0
maxi_track_989256078:		��#
maxi_track_989256080:	�+
maxi_track_989256082:�(
maxi_track_989256084:
��@"
maxi_track_989256086:@"
maxi_track_989256088:@&
maxi_track_989256090:@@"
maxi_track_989256092:@"
maxi_track_989256094:@&
maxi_track_989256096:@"
maxi_track_989256098:
identity��"maxi_track/StatefulPartitionedCall�
"maxi_track/StatefulPartitionedCallStatefulPartitionedCallinput_1maxi_track_989256054maxi_track_989256056maxi_track_989256058maxi_track_989256060maxi_track_989256062maxi_track_989256064maxi_track_989256066maxi_track_989256068maxi_track_989256070maxi_track_989256072maxi_track_989256074maxi_track_989256076maxi_track_989256078maxi_track_989256080maxi_track_989256082maxi_track_989256084maxi_track_989256086maxi_track_989256088maxi_track_989256090maxi_track_989256092maxi_track_989256094maxi_track_989256096maxi_track_989256098*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*9
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *#
fR
__inference_call_9892560532$
"maxi_track/StatefulPartitionedCall�
IdentityIdentity+maxi_track/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identitys
NoOpNoOp#^maxi_track/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 2H
"maxi_track/StatefulPartitionedCall"maxi_track/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
+__inference_p_re_lu_layer_call_fn_989258862

inputs
unknown:��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_p_re_lu_layer_call_and_return_conditional_losses_9892561182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�K
�	
I__inference_maxi_track_layer_call_and_return_conditional_losses_989256752

inputs*
conv2d_989256519:		
conv2d_989256521:(
conv2d_989256523:��,
conv2d_1_989256551:		  
conv2d_1_989256553: *
conv2d_1_989256555:�� ,
conv2d_2_989256583:		 @ 
conv2d_2_989256585:@(
conv2d_2_989256587:dd@-
conv2d_3_989256615:		@�!
conv2d_3_989256617:	�)
conv2d_3_989256619:22�.
conv2d_4_989256647:		��!
conv2d_4_989256649:	�)
conv2d_4_989256651:�#
dense_989256687:
��@
dense_989256689:@
dense_989256691:@#
dense_1_989256720:@@
dense_1_989256722:@
dense_1_989256724:@#
dense_2_989256745:@
dense_2_989256747:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall[
AsinhAsinhinputs*
T0*1
_output_shapes
:�����������2
Asinh�
conv2d/StatefulPartitionedCallStatefulPartitionedCall	Asinh:y:0conv2d_989256519conv2d_989256521conv2d_989256523*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_layer_call_and_return_conditional_losses_9892565182 
conv2d/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_9892565302
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_989256551conv2d_1_989256553conv2d_1_989256555*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_9892565502"
 conv2d_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9892565622!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_989256583conv2d_2_989256585conv2d_2_989256587*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_9892565822"
 conv2d_2/StatefulPartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_9892565942!
max_pooling2d_2/PartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_989256615conv2d_3_989256617conv2d_3_989256619*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������22�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_9892566142"
 conv2d_3/StatefulPartitionedCall�
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_9892566262!
max_pooling2d_3/PartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_989256647conv2d_4_989256649conv2d_4_989256651*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_9892566462"
 conv2d_4/StatefulPartitionedCall�
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_9892566582!
max_pooling2d_4/PartitionedCall�
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_layer_call_and_return_conditional_losses_9892566662
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_989256687dense_989256689dense_989256691*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_9892566862
dense/StatefulPartitionedCall�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_9892566992
dropout/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_989256720dense_1_989256722dense_1_989256724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_9892567192!
dense_1/StatefulPartitionedCall�
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_9892567322
dropout_1/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_989256745dense_2_989256747*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_9892567442!
dense_2/StatefulPartitionedCally
SoftmaxSoftmax(dense_2/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_layer_call_fn_989258505

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_9892565302
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_989256213

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_4_layer_call_and_return_conditional_losses_989258670

inputs:
conv2d_readvariableop_resource:		��.
biasadd_readvariableop_resource:	�8
!p_re_lu_4_readvariableop_resource:�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu_4/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAddu
p_re_lu_4/ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/Relu�
p_re_lu_4/ReadVariableOpReadVariableOp!p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02
p_re_lu_4/ReadVariableOpu
p_re_lu_4/NegNeg p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
p_re_lu_4/Negv
p_re_lu_4/Neg_1NegBiasAdd:output:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/Neg_1|
p_re_lu_4/Relu_1Relup_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/Relu_1�
p_re_lu_4/mulMulp_re_lu_4/Neg:y:0p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/mul�
p_re_lu_4/addAddV2p_re_lu_4/Relu:activations:0p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:����������2
p_re_lu_4/addu
IdentityIdentityp_re_lu_4/add:z:0^NoOp*
T0*0
_output_shapes
:����������2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp24
p_re_lu_4/ReadVariableOpp_re_lu_4/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
Ƙ
�
__inference_call_989258337

inputs?
%conv2d_conv2d_readvariableop_resource:		4
&conv2d_biasadd_readvariableop_resource:>
&conv2d_p_re_lu_readvariableop_resource:��A
'conv2d_1_conv2d_readvariableop_resource:		 6
(conv2d_1_biasadd_readvariableop_resource: B
*conv2d_1_p_re_lu_1_readvariableop_resource:�� A
'conv2d_2_conv2d_readvariableop_resource:		 @6
(conv2d_2_biasadd_readvariableop_resource:@@
*conv2d_2_p_re_lu_2_readvariableop_resource:dd@B
'conv2d_3_conv2d_readvariableop_resource:		@�7
(conv2d_3_biasadd_readvariableop_resource:	�A
*conv2d_3_p_re_lu_3_readvariableop_resource:22�C
'conv2d_4_conv2d_readvariableop_resource:		��7
(conv2d_4_biasadd_readvariableop_resource:	�A
*conv2d_4_p_re_lu_4_readvariableop_resource:�8
$dense_matmul_readvariableop_resource:
��@3
%dense_biasadd_readvariableop_resource:@5
'dense_p_re_lu_5_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@7
)dense_1_p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d/p_re_lu/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�!conv2d_1/p_re_lu_1/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�!conv2d_2/p_re_lu_2/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�!conv2d_3/p_re_lu_3/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�!conv2d_4/p_re_lu_4/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense/p_re_lu_5/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp� dense_1/p_re_lu_6/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOpR
AsinhAsinhinputs*
T0*(
_output_shapes
:��2
Asinh�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2D	Asinh:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��2
conv2d/BiasAdd~
conv2d/p_re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/Relu�
conv2d/p_re_lu/ReadVariableOpReadVariableOp&conv2d_p_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
conv2d/p_re_lu/ReadVariableOp�
conv2d/p_re_lu/NegNeg%conv2d/p_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
conv2d/p_re_lu/Neg
conv2d/p_re_lu/Neg_1Negconv2d/BiasAdd:output:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/Neg_1�
conv2d/p_re_lu/Relu_1Reluconv2d/p_re_lu/Neg_1:y:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/Relu_1�
conv2d/p_re_lu/mulMulconv2d/p_re_lu/Neg:y:0#conv2d/p_re_lu/Relu_1:activations:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/mul�
conv2d/p_re_lu/addAddV2!conv2d/p_re_lu/Relu:activations:0conv2d/p_re_lu/mul:z:0*
T0*(
_output_shapes
:��2
conv2d/p_re_lu/add�
max_pooling2d/MaxPoolMaxPoolconv2d/p_re_lu/add:z:0*(
_output_shapes
:��*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� 2
conv2d_1/BiasAdd�
conv2d_1/p_re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Relu�
!conv2d_1/p_re_lu_1/ReadVariableOpReadVariableOp*conv2d_1_p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02#
!conv2d_1/p_re_lu_1/ReadVariableOp�
conv2d_1/p_re_lu_1/NegNeg)conv2d_1/p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg�
conv2d_1/p_re_lu_1/Neg_1Negconv2d_1/BiasAdd:output:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg_1�
conv2d_1/p_re_lu_1/Relu_1Reluconv2d_1/p_re_lu_1/Neg_1:y:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Relu_1�
conv2d_1/p_re_lu_1/mulMulconv2d_1/p_re_lu_1/Neg:y:0'conv2d_1/p_re_lu_1/Relu_1:activations:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/mul�
conv2d_1/p_re_lu_1/addAddV2%conv2d_1/p_re_lu_1/Relu:activations:0conv2d_1/p_re_lu_1/mul:z:0*
T0*(
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/add�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/p_re_lu_1/add:z:0*&
_output_shapes
:dd *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:dd@*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:dd@2
conv2d_2/BiasAdd�
conv2d_2/p_re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Relu�
!conv2d_2/p_re_lu_2/ReadVariableOpReadVariableOp*conv2d_2_p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02#
!conv2d_2/p_re_lu_2/ReadVariableOp�
conv2d_2/p_re_lu_2/NegNeg)conv2d_2/p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg�
conv2d_2/p_re_lu_2/Neg_1Negconv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg_1�
conv2d_2/p_re_lu_2/Relu_1Reluconv2d_2/p_re_lu_2/Neg_1:y:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Relu_1�
conv2d_2/p_re_lu_2/mulMulconv2d_2/p_re_lu_2/Neg:y:0'conv2d_2/p_re_lu_2/Relu_1:activations:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/mul�
conv2d_2/p_re_lu_2/addAddV2%conv2d_2/p_re_lu_2/Relu:activations:0conv2d_2/p_re_lu_2/mul:z:0*
T0*&
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/add�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/p_re_lu_2/add:z:0*&
_output_shapes
:22@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:22�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:22�2
conv2d_3/BiasAdd�
conv2d_3/p_re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Relu�
!conv2d_3/p_re_lu_3/ReadVariableOpReadVariableOp*conv2d_3_p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02#
!conv2d_3/p_re_lu_3/ReadVariableOp�
conv2d_3/p_re_lu_3/NegNeg)conv2d_3/p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg�
conv2d_3/p_re_lu_3/Neg_1Negconv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg_1�
conv2d_3/p_re_lu_3/Relu_1Reluconv2d_3/p_re_lu_3/Neg_1:y:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Relu_1�
conv2d_3/p_re_lu_3/mulMulconv2d_3/p_re_lu_3/Neg:y:0'conv2d_3/p_re_lu_3/Relu_1:activations:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/mul�
conv2d_3/p_re_lu_3/addAddV2%conv2d_3/p_re_lu_3/Relu:activations:0conv2d_3/p_re_lu_3/mul:z:0*
T0*'
_output_shapes
:22�2
conv2d_3/p_re_lu_3/add�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/p_re_lu_3/add:z:0*'
_output_shapes
:�*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:�*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:�2
conv2d_4/BiasAdd�
conv2d_4/p_re_lu_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/Relu�
!conv2d_4/p_re_lu_4/ReadVariableOpReadVariableOp*conv2d_4_p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02#
!conv2d_4/p_re_lu_4/ReadVariableOp�
conv2d_4/p_re_lu_4/NegNeg)conv2d_4/p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg�
conv2d_4/p_re_lu_4/Neg_1Negconv2d_4/BiasAdd:output:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg_1�
conv2d_4/p_re_lu_4/Relu_1Reluconv2d_4/p_re_lu_4/Neg_1:y:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/Relu_1�
conv2d_4/p_re_lu_4/mulMulconv2d_4/p_re_lu_4/Neg:y:0'conv2d_4/p_re_lu_4/Relu_1:activations:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/mul�
conv2d_4/p_re_lu_4/addAddV2%conv2d_4/p_re_lu_4/Relu:activations:0conv2d_4/p_re_lu_4/mul:z:0*
T0*'
_output_shapes
:�2
conv2d_4/p_re_lu_4/add�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/p_re_lu_4/add:z:0*'
_output_shapes
:�*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0* 
_output_shapes
:
��2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
dense/BiasAddu
dense/p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/Relu�
dense/p_re_lu_5/ReadVariableOpReadVariableOp'dense_p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense/p_re_lu_5/ReadVariableOp~
dense/p_re_lu_5/NegNeg&dense/p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense/p_re_lu_5/Negv
dense/p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/Neg_1|
dense/p_re_lu_5/Relu_1Reludense/p_re_lu_5/Neg_1:y:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/Relu_1�
dense/p_re_lu_5/mulMuldense/p_re_lu_5/Neg:y:0$dense/p_re_lu_5/Relu_1:activations:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/mul�
dense/p_re_lu_5/addAddV2"dense/p_re_lu_5/Relu:activations:0dense/p_re_lu_5/mul:z:0*
T0*
_output_shapes

:@2
dense/p_re_lu_5/addr
dropout/IdentityIdentitydense/p_re_lu_5/add:z:0*
T0*
_output_shapes

:@2
dropout/Identity�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
dense_1/BiasAdd{
dense_1/p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/Relu�
 dense_1/p_re_lu_6/ReadVariableOpReadVariableOp)dense_1_p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_1/p_re_lu_6/ReadVariableOp�
dense_1/p_re_lu_6/NegNeg(dense_1/p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense_1/p_re_lu_6/Neg|
dense_1/p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/Neg_1�
dense_1/p_re_lu_6/Relu_1Reludense_1/p_re_lu_6/Neg_1:y:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/Relu_1�
dense_1/p_re_lu_6/mulMuldense_1/p_re_lu_6/Neg:y:0&dense_1/p_re_lu_6/Relu_1:activations:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/mul�
dense_1/p_re_lu_6/addAddV2$dense_1/p_re_lu_6/Relu:activations:0dense_1/p_re_lu_6/mul:z:0*
T0*
_output_shapes

:@2
dense_1/p_re_lu_6/addx
dropout_1/IdentityIdentitydense_1/p_re_lu_6/add:z:0*
T0*
_output_shapes

:@2
dropout_1/Identity�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
dense_2/BiasAdd`
SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*
_output_shapes

:2	
Softmaxc
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*
_output_shapes

:2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp^conv2d/p_re_lu/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp"^conv2d_1/p_re_lu_1/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp"^conv2d_2/p_re_lu_2/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp"^conv2d_3/p_re_lu_3/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp"^conv2d_4/p_re_lu_4/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/p_re_lu_5/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp!^dense_1/p_re_lu_6/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:��: : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2>
conv2d/p_re_lu/ReadVariableOpconv2d/p_re_lu/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2F
!conv2d_1/p_re_lu_1/ReadVariableOp!conv2d_1/p_re_lu_1/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2F
!conv2d_2/p_re_lu_2/ReadVariableOp!conv2d_2/p_re_lu_2/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2F
!conv2d_3/p_re_lu_3/ReadVariableOp!conv2d_3/p_re_lu_3/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2F
!conv2d_4/p_re_lu_4/ReadVariableOp!conv2d_4/p_re_lu_4/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense/p_re_lu_5/ReadVariableOpdense/p_re_lu_5/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2D
 dense_1/p_re_lu_6/ReadVariableOp dense_1/p_re_lu_6/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:��
 
_user_specified_nameinputs
�
�
-__inference_p_re_lu_1_layer_call_fn_989258881

inputs
unknown:�� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_p_re_lu_1_layer_call_and_return_conditional_losses_9892561802
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
}
-__inference_p_re_lu_5_layer_call_fn_989258957

inputs
unknown:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_p_re_lu_5_layer_call_and_return_conditional_losses_9892564282
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
.__inference_maxi_track_layer_call_fn_989258086
input_1!
unknown:		
	unknown_0:!
	unknown_1:��#
	unknown_2:		 
	unknown_3: !
	unknown_4:�� #
	unknown_5:		 @
	unknown_6:@
	unknown_7:dd@$
	unknown_8:		@�
	unknown_9:	�!

unknown_10:22�&

unknown_11:		��

unknown_12:	�!

unknown_13:�

unknown_14:
��@

unknown_15:@

unknown_16:@

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*9
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_maxi_track_layer_call_and_return_conditional_losses_9892570922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
+__inference_dense_1_layer_call_fn_989258797

inputs
unknown:@@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_9892567192
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
H__inference_p_re_lu_4_layer_call_and_return_conditional_losses_989256366

inputs.
readvariableop_resource:�
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu}
ReadVariableOpReadVariableOpreadvariableop_resource*#
_output_shapes
:�*
dtype02
ReadVariableOpW
NegNegReadVariableOp:value:0*
T0*#
_output_shapes
:�2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1k
mulMulNeg:y:0Relu_1:activations:0*
T0*0
_output_shapes
:����������2
mulk
addAddV2Relu:activations:0mul:z:0*
T0*0
_output_shapes
:����������2
addk
IdentityIdentityadd:z:0^NoOp*
T0*0
_output_shapes
:����������2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
O
3__inference_max_pooling2d_2_layer_call_fn_989258603

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_9892565942
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������22@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������dd@:W S
/
_output_shapes
:���������dd@
 
_user_specified_nameinputs
�
G
+__inference_dropout_layer_call_fn_989258763

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_9892566992
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
O
3__inference_max_pooling2d_4_layer_call_fn_989258696

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_9892563992
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
e
F__inference_dropout_layer_call_and_return_conditional_losses_989258758

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_989258588

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_layer_call_and_return_conditional_losses_989256518

inputs8
conv2d_readvariableop_resource:		-
biasadd_readvariableop_resource:7
p_re_lu_readvariableop_resource:��
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������2	
BiasAddr
p_re_lu/ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������2
p_re_lu/Relu�
p_re_lu/ReadVariableOpReadVariableOpp_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
p_re_lu/ReadVariableOpp
p_re_lu/NegNegp_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
p_re_lu/Negs
p_re_lu/Neg_1NegBiasAdd:output:0*
T0*1
_output_shapes
:�����������2
p_re_lu/Neg_1w
p_re_lu/Relu_1Relup_re_lu/Neg_1:y:0*
T0*1
_output_shapes
:�����������2
p_re_lu/Relu_1�
p_re_lu/mulMulp_re_lu/Neg:y:0p_re_lu/Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
p_re_lu/mul�
p_re_lu/addAddV2p_re_lu/Relu:activations:0p_re_lu/mul:z:0*
T0*1
_output_shapes
:�����������2
p_re_lu/addt
IdentityIdentityp_re_lu/add:z:0^NoOp*
T0*1
_output_shapes
:�����������2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:�����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp20
p_re_lu/ReadVariableOpp_re_lu/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_989256658

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_989258637

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
f
-__inference_dropout_1_layer_call_fn_989258824

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_9892568312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
j
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_989256626

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������22�:X T
0
_output_shapes
:���������22�
 
_user_specified_nameinputs
�
b
F__inference_flatten_layer_call_and_return_conditional_losses_989258707

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
H__inference_p_re_lu_5_layer_call_and_return_conditional_losses_989256428

inputs%
readvariableop_resource:@
identity��ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:������������������2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:@2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:������������������2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:������������������2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:���������@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
G__inference_conv2d_2_layer_call_and_return_conditional_losses_989256582

inputs8
conv2d_readvariableop_resource:		 @-
biasadd_readvariableop_resource:@7
!p_re_lu_2_readvariableop_resource:dd@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu_2/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@2	
BiasAddt
p_re_lu_2/ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/Relu�
p_re_lu_2/ReadVariableOpReadVariableOp!p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02
p_re_lu_2/ReadVariableOpt
p_re_lu_2/NegNeg p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
p_re_lu_2/Negu
p_re_lu_2/Neg_1NegBiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/Neg_1{
p_re_lu_2/Relu_1Relup_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/Relu_1�
p_re_lu_2/mulMulp_re_lu_2/Neg:y:0p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/mul�
p_re_lu_2/addAddV2p_re_lu_2/Relu:activations:0p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/addt
IdentityIdentityp_re_lu_2/add:z:0^NoOp*
T0*/
_output_shapes
:���������dd@2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������dd : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp24
p_re_lu_2/ReadVariableOpp_re_lu_2/ReadVariableOp:W S
/
_output_shapes
:���������dd 
 
_user_specified_nameinputs
�

�
F__inference_dense_2_layer_call_and_return_conditional_losses_989256744

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
-__inference_p_re_lu_2_layer_call_fn_989258900

inputs
unknown:dd@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_p_re_lu_2_layer_call_and_return_conditional_losses_9892562422
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������dd@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�M
�

I__inference_maxi_track_layer_call_and_return_conditional_losses_989257092

inputs*
conv2d_989257029:		
conv2d_989257031:(
conv2d_989257033:��,
conv2d_1_989257037:		  
conv2d_1_989257039: *
conv2d_1_989257041:�� ,
conv2d_2_989257045:		 @ 
conv2d_2_989257047:@(
conv2d_2_989257049:dd@-
conv2d_3_989257053:		@�!
conv2d_3_989257055:	�)
conv2d_3_989257057:22�.
conv2d_4_989257061:		��!
conv2d_4_989257063:	�)
conv2d_4_989257065:�#
dense_989257070:
��@
dense_989257072:@
dense_989257074:@#
dense_1_989257078:@@
dense_1_989257080:@
dense_1_989257082:@#
dense_2_989257086:@
dense_2_989257088:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dense_2/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall[
AsinhAsinhinputs*
T0*1
_output_shapes
:�����������2
Asinh�
conv2d/StatefulPartitionedCallStatefulPartitionedCall	Asinh:y:0conv2d_989257029conv2d_989257031conv2d_989257033*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_layer_call_and_return_conditional_losses_9892565182 
conv2d/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_9892565302
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_989257037conv2d_1_989257039conv2d_1_989257041*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_1_layer_call_and_return_conditional_losses_9892565502"
 conv2d_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9892565622!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_989257045conv2d_2_989257047conv2d_2_989257049*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_2_layer_call_and_return_conditional_losses_9892565822"
 conv2d_2/StatefulPartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_9892565942!
max_pooling2d_2/PartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_3_989257053conv2d_3_989257055conv2d_3_989257057*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������22�*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_3_layer_call_and_return_conditional_losses_9892566142"
 conv2d_3/StatefulPartitionedCall�
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_9892566262!
max_pooling2d_3/PartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_989257061conv2d_4_989257063conv2d_4_989257065*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_conv2d_4_layer_call_and_return_conditional_losses_9892566462"
 conv2d_4/StatefulPartitionedCall�
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_9892566582!
max_pooling2d_4/PartitionedCall�
flatten/PartitionedCallPartitionedCall(max_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_layer_call_and_return_conditional_losses_9892566662
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_989257070dense_989257072dense_989257074*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_9892566862
dense/StatefulPartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_9892568662!
dropout/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_989257078dense_1_989257080dense_1_989257082*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_9892567192!
dense_1/StatefulPartitionedCall�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_9892568312#
!dropout_1/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_989257086dense_2_989257088*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_9892567442!
dense_2/StatefulPartitionedCall�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
O
3__inference_max_pooling2d_1_layer_call_fn_989258554

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_9892565622
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
*__inference_conv2d_layer_call_fn_989258485

inputs!
unknown:		
	unknown_0:!
	unknown_1:��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_layer_call_and_return_conditional_losses_9892565182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:�����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257882
input_1?
%conv2d_conv2d_readvariableop_resource:		4
&conv2d_biasadd_readvariableop_resource:>
&conv2d_p_re_lu_readvariableop_resource:��A
'conv2d_1_conv2d_readvariableop_resource:		 6
(conv2d_1_biasadd_readvariableop_resource: B
*conv2d_1_p_re_lu_1_readvariableop_resource:�� A
'conv2d_2_conv2d_readvariableop_resource:		 @6
(conv2d_2_biasadd_readvariableop_resource:@@
*conv2d_2_p_re_lu_2_readvariableop_resource:dd@B
'conv2d_3_conv2d_readvariableop_resource:		@�7
(conv2d_3_biasadd_readvariableop_resource:	�A
*conv2d_3_p_re_lu_3_readvariableop_resource:22�C
'conv2d_4_conv2d_readvariableop_resource:		��7
(conv2d_4_biasadd_readvariableop_resource:	�A
*conv2d_4_p_re_lu_4_readvariableop_resource:�8
$dense_matmul_readvariableop_resource:
��@3
%dense_biasadd_readvariableop_resource:@5
'dense_p_re_lu_5_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@7
)dense_1_p_re_lu_6_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d/p_re_lu/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�!conv2d_1/p_re_lu_1/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�!conv2d_2/p_re_lu_2/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�!conv2d_3/p_re_lu_3/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�!conv2d_4/p_re_lu_4/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense/p_re_lu_5/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp� dense_1/p_re_lu_6/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp\
AsinhAsinhinput_1*
T0*1
_output_shapes
:�����������2
Asinh�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:		*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2D	Asinh:y:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������2
conv2d/BiasAdd�
conv2d/p_re_lu/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu�
conv2d/p_re_lu/ReadVariableOpReadVariableOp&conv2d_p_re_lu_readvariableop_resource*$
_output_shapes
:��*
dtype02
conv2d/p_re_lu/ReadVariableOp�
conv2d/p_re_lu/NegNeg%conv2d/p_re_lu/ReadVariableOp:value:0*
T0*$
_output_shapes
:��2
conv2d/p_re_lu/Neg�
conv2d/p_re_lu/Neg_1Negconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Neg_1�
conv2d/p_re_lu/Relu_1Reluconv2d/p_re_lu/Neg_1:y:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/Relu_1�
conv2d/p_re_lu/mulMulconv2d/p_re_lu/Neg:y:0#conv2d/p_re_lu/Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/mul�
conv2d/p_re_lu/addAddV2!conv2d/p_re_lu/Relu:activations:0conv2d/p_re_lu/mul:z:0*
T0*1
_output_shapes
:�����������2
conv2d/p_re_lu/add�
max_pooling2d/MaxPoolMaxPoolconv2d/p_re_lu/add:z:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/BiasAdd�
conv2d_1/p_re_lu_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu�
!conv2d_1/p_re_lu_1/ReadVariableOpReadVariableOp*conv2d_1_p_re_lu_1_readvariableop_resource*$
_output_shapes
:�� *
dtype02#
!conv2d_1/p_re_lu_1/ReadVariableOp�
conv2d_1/p_re_lu_1/NegNeg)conv2d_1/p_re_lu_1/ReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
conv2d_1/p_re_lu_1/Neg�
conv2d_1/p_re_lu_1/Neg_1Negconv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Neg_1�
conv2d_1/p_re_lu_1/Relu_1Reluconv2d_1/p_re_lu_1/Neg_1:y:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/Relu_1�
conv2d_1/p_re_lu_1/mulMulconv2d_1/p_re_lu_1/Neg:y:0'conv2d_1/p_re_lu_1/Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/mul�
conv2d_1/p_re_lu_1/addAddV2%conv2d_1/p_re_lu_1/Relu:activations:0conv2d_1/p_re_lu_1/mul:z:0*
T0*1
_output_shapes
:����������� 2
conv2d_1/p_re_lu_1/add�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/p_re_lu_1/add:z:0*/
_output_shapes
:���������dd *
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/BiasAdd�
conv2d_2/p_re_lu_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu�
!conv2d_2/p_re_lu_2/ReadVariableOpReadVariableOp*conv2d_2_p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02#
!conv2d_2/p_re_lu_2/ReadVariableOp�
conv2d_2/p_re_lu_2/NegNeg)conv2d_2/p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
conv2d_2/p_re_lu_2/Neg�
conv2d_2/p_re_lu_2/Neg_1Negconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Neg_1�
conv2d_2/p_re_lu_2/Relu_1Reluconv2d_2/p_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/Relu_1�
conv2d_2/p_re_lu_2/mulMulconv2d_2/p_re_lu_2/Neg:y:0'conv2d_2/p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/mul�
conv2d_2/p_re_lu_2/addAddV2%conv2d_2/p_re_lu_2/Relu:activations:0conv2d_2/p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:���������dd@2
conv2d_2/p_re_lu_2/add�
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/p_re_lu_2/add:z:0*/
_output_shapes
:���������22@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:		@�*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�*
paddingSAME*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/BiasAdd�
conv2d_3/p_re_lu_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu�
!conv2d_3/p_re_lu_3/ReadVariableOpReadVariableOp*conv2d_3_p_re_lu_3_readvariableop_resource*#
_output_shapes
:22�*
dtype02#
!conv2d_3/p_re_lu_3/ReadVariableOp�
conv2d_3/p_re_lu_3/NegNeg)conv2d_3/p_re_lu_3/ReadVariableOp:value:0*
T0*#
_output_shapes
:22�2
conv2d_3/p_re_lu_3/Neg�
conv2d_3/p_re_lu_3/Neg_1Negconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Neg_1�
conv2d_3/p_re_lu_3/Relu_1Reluconv2d_3/p_re_lu_3/Neg_1:y:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/Relu_1�
conv2d_3/p_re_lu_3/mulMulconv2d_3/p_re_lu_3/Neg:y:0'conv2d_3/p_re_lu_3/Relu_1:activations:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/mul�
conv2d_3/p_re_lu_3/addAddV2%conv2d_3/p_re_lu_3/Relu:activations:0conv2d_3/p_re_lu_3/mul:z:0*
T0*0
_output_shapes
:���������22�2
conv2d_3/p_re_lu_3/add�
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/p_re_lu_3/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:		��*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_4/BiasAdd�
conv2d_4/p_re_lu_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu�
!conv2d_4/p_re_lu_4/ReadVariableOpReadVariableOp*conv2d_4_p_re_lu_4_readvariableop_resource*#
_output_shapes
:�*
dtype02#
!conv2d_4/p_re_lu_4/ReadVariableOp�
conv2d_4/p_re_lu_4/NegNeg)conv2d_4/p_re_lu_4/ReadVariableOp:value:0*
T0*#
_output_shapes
:�2
conv2d_4/p_re_lu_4/Neg�
conv2d_4/p_re_lu_4/Neg_1Negconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Neg_1�
conv2d_4/p_re_lu_4/Relu_1Reluconv2d_4/p_re_lu_4/Neg_1:y:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/Relu_1�
conv2d_4/p_re_lu_4/mulMulconv2d_4/p_re_lu_4/Neg:y:0'conv2d_4/p_re_lu_4/Relu_1:activations:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/mul�
conv2d_4/p_re_lu_4/addAddV2%conv2d_4/p_re_lu_4/Relu:activations:0conv2d_4/p_re_lu_4/mul:z:0*
T0*0
_output_shapes
:����������2
conv2d_4/p_re_lu_4/add�
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/p_re_lu_4/add:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� H  2
flatten/Const�
flatten/ReshapeReshape max_pooling2d_4/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:�����������2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense/BiasAdd~
dense/p_re_lu_5/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu�
dense/p_re_lu_5/ReadVariableOpReadVariableOp'dense_p_re_lu_5_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense/p_re_lu_5/ReadVariableOp~
dense/p_re_lu_5/NegNeg&dense/p_re_lu_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense/p_re_lu_5/Neg
dense/p_re_lu_5/Neg_1Negdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Neg_1�
dense/p_re_lu_5/Relu_1Reludense/p_re_lu_5/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/Relu_1�
dense/p_re_lu_5/mulMuldense/p_re_lu_5/Neg:y:0$dense/p_re_lu_5/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/mul�
dense/p_re_lu_5/addAddV2"dense/p_re_lu_5/Relu:activations:0dense/p_re_lu_5/mul:z:0*
T0*'
_output_shapes
:���������@2
dense/p_re_lu_5/adds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/dropout/Const�
dropout/dropout/MulMuldense/p_re_lu_5/add:z:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/dropout/Mulu
dropout/dropout/ShapeShapedense/p_re_lu_5/add:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/dropout/Mul_1�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_1/BiasAdd�
dense_1/p_re_lu_6/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu�
 dense_1/p_re_lu_6/ReadVariableOpReadVariableOp)dense_1_p_re_lu_6_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_1/p_re_lu_6/ReadVariableOp�
dense_1/p_re_lu_6/NegNeg(dense_1/p_re_lu_6/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
dense_1/p_re_lu_6/Neg�
dense_1/p_re_lu_6/Neg_1Negdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Neg_1�
dense_1/p_re_lu_6/Relu_1Reludense_1/p_re_lu_6/Neg_1:y:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/Relu_1�
dense_1/p_re_lu_6/mulMuldense_1/p_re_lu_6/Neg:y:0&dense_1/p_re_lu_6/Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/mul�
dense_1/p_re_lu_6/addAddV2$dense_1/p_re_lu_6/Relu:activations:0dense_1/p_re_lu_6/mul:z:0*
T0*'
_output_shapes
:���������@2
dense_1/p_re_lu_6/addw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMuldense_1/p_re_lu_6/add:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout_1/dropout/Mul{
dropout_1/dropout/ShapeShapedense_1/p_re_lu_6/add:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout_1/dropout/Mul_1�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAdds
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp^conv2d/p_re_lu/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp"^conv2d_1/p_re_lu_1/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp"^conv2d_2/p_re_lu_2/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp"^conv2d_3/p_re_lu_3/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp"^conv2d_4/p_re_lu_4/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense/p_re_lu_5/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp!^dense_1/p_re_lu_6/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:�����������: : : : : : : : : : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2>
conv2d/p_re_lu/ReadVariableOpconv2d/p_re_lu/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2F
!conv2d_1/p_re_lu_1/ReadVariableOp!conv2d_1/p_re_lu_1/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2F
!conv2d_2/p_re_lu_2/ReadVariableOp!conv2d_2/p_re_lu_2/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2F
!conv2d_3/p_re_lu_3/ReadVariableOp!conv2d_3/p_re_lu_3/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2F
!conv2d_4/p_re_lu_4/ReadVariableOp!conv2d_4/p_re_lu_4/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense/p_re_lu_5/ReadVariableOpdense/p_re_lu_5/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2D
 dense_1/p_re_lu_6/ReadVariableOp dense_1/p_re_lu_6/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
G__inference_conv2d_2_layer_call_and_return_conditional_losses_989258572

inputs8
conv2d_readvariableop_resource:		 @-
biasadd_readvariableop_resource:@7
!p_re_lu_2_readvariableop_resource:dd@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�p_re_lu_2/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:		 @*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������dd@2	
BiasAddt
p_re_lu_2/ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/Relu�
p_re_lu_2/ReadVariableOpReadVariableOp!p_re_lu_2_readvariableop_resource*"
_output_shapes
:dd@*
dtype02
p_re_lu_2/ReadVariableOpt
p_re_lu_2/NegNeg p_re_lu_2/ReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
p_re_lu_2/Negu
p_re_lu_2/Neg_1NegBiasAdd:output:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/Neg_1{
p_re_lu_2/Relu_1Relup_re_lu_2/Neg_1:y:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/Relu_1�
p_re_lu_2/mulMulp_re_lu_2/Neg:y:0p_re_lu_2/Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/mul�
p_re_lu_2/addAddV2p_re_lu_2/Relu:activations:0p_re_lu_2/mul:z:0*
T0*/
_output_shapes
:���������dd@2
p_re_lu_2/addt
IdentityIdentityp_re_lu_2/add:z:0^NoOp*
T0*/
_output_shapes
:���������dd@2

Identity�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp^p_re_lu_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:���������dd : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp24
p_re_lu_2/ReadVariableOpp_re_lu_2/ReadVariableOp:W S
/
_output_shapes
:���������dd 
 
_user_specified_nameinputs
�

�
H__inference_p_re_lu_6_layer_call_and_return_conditional_losses_989258969

inputs%
readvariableop_resource:@
identity��ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:������������������2
Relut
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpN
NegNegReadVariableOp:value:0*
T0*
_output_shapes
:@2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:������������������2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:������������������2
Relu_1b
mulMulNeg:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������@2
mulb
addAddV2Relu:activations:0mul:z:0*
T0*'
_output_shapes
:���������@2
addb
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:���������@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:������������������: 2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
H__inference_p_re_lu_1_layer_call_and_return_conditional_losses_989258874

inputs/
readvariableop_resource:�� 
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu~
ReadVariableOpReadVariableOpreadvariableop_resource*$
_output_shapes
:�� *
dtype02
ReadVariableOpX
NegNegReadVariableOp:value:0*
T0*$
_output_shapes
:�� 2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1l
mulMulNeg:y:0Relu_1:activations:0*
T0*1
_output_shapes
:����������� 2
mull
addAddV2Relu:activations:0mul:z:0*
T0*1
_output_shapes
:����������� 2
addl
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:����������� 2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
f
H__inference_dropout_1_layer_call_and_return_conditional_losses_989256732

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
O
3__inference_max_pooling2d_3_layer_call_fn_989258647

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_9892563372
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
-__inference_p_re_lu_4_layer_call_fn_989258938

inputs
unknown:�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_p_re_lu_4_layer_call_and_return_conditional_losses_9892563662
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 22
StatefulPartitionedCallStatefulPartitionedCall:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
O
3__inference_max_pooling2d_2_layer_call_fn_989258598

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_9892562752
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
H__inference_p_re_lu_2_layer_call_and_return_conditional_losses_989256242

inputs-
readvariableop_resource:dd@
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu|
ReadVariableOpReadVariableOpreadvariableop_resource*"
_output_shapes
:dd@*
dtype02
ReadVariableOpV
NegNegReadVariableOp:value:0*
T0*"
_output_shapes
:dd@2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1j
mulMulNeg:y:0Relu_1:activations:0*
T0*/
_output_shapes
:���������dd@2
mulj
addAddV2Relu:activations:0mul:z:0*
T0*/
_output_shapes
:���������dd@2
addj
IdentityIdentityadd:z:0^NoOp*
T0*/
_output_shapes
:���������dd@2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_p_re_lu_layer_call_and_return_conditional_losses_989258855

inputs/
readvariableop_resource:��
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu~
ReadVariableOpReadVariableOpreadvariableop_resource*$
_output_shapes
:��*
dtype02
ReadVariableOpX
NegNegReadVariableOp:value:0*
T0*$
_output_shapes
:��2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1l
mulMulNeg:y:0Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
mull
addAddV2Relu:activations:0mul:z:0*
T0*1
_output_shapes
:�����������2
addl
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:�����������2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
+__inference_dropout_layer_call_fn_989258768

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_9892568662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
g
H__inference_dropout_1_layer_call_and_return_conditional_losses_989256831

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_dense_layer_call_fn_989258741

inputs
unknown:
��@
	unknown_0:@
	unknown_1:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_9892566862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:�����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_p_re_lu_layer_call_and_return_conditional_losses_989256118

inputs/
readvariableop_resource:��
identity��ReadVariableOpq
ReluReluinputs*
T0*J
_output_shapes8
6:4������������������������������������2
Relu~
ReadVariableOpReadVariableOpreadvariableop_resource*$
_output_shapes
:��*
dtype02
ReadVariableOpX
NegNegReadVariableOp:value:0*
T0*$
_output_shapes
:��2
Negr
Neg_1Neginputs*
T0*J
_output_shapes8
6:4������������������������������������2
Neg_1x
Relu_1Relu	Neg_1:y:0*
T0*J
_output_shapes8
6:4������������������������������������2
Relu_1l
mulMulNeg:y:0Relu_1:activations:0*
T0*1
_output_shapes
:�����������2
mull
addAddV2Relu:activations:0mul:z:0*
T0*1
_output_shapes
:�����������2
addl
IdentityIdentityadd:z:0^NoOp*
T0*1
_output_shapes
:�����������2

Identity_
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:4������������������������������������: 2 
ReadVariableOpReadVariableOp:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	conv1
	pool1
	conv2
	pool2
	conv3
	pool3
	conv4
	pool4
		conv5
	
pool5
flat

dense1
	drop1

dense2
	drop2

dense3
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+�&call_and_return_all_conditional_losses
�__call__
�_default_save_signature
	�call"
_tf_keras_model
�

activation

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
regularization_losses
	variables
trainable_variables
 	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
!
activation

"kernel
#bias
$regularization_losses
%	variables
&trainable_variables
'	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
(regularization_losses
)	variables
*trainable_variables
+	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
,
activation

-kernel
.bias
/regularization_losses
0	variables
1trainable_variables
2	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
3regularization_losses
4	variables
5trainable_variables
6	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
7
activation

8kernel
9bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
>regularization_losses
?	variables
@trainable_variables
A	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
B
activation

Ckernel
Dbias
Eregularization_losses
F	variables
Gtrainable_variables
H	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
Q
activation

Rkernel
Sbias
Tregularization_losses
U	variables
Vtrainable_variables
W	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
Xregularization_losses
Y	variables
Ztrainable_variables
[	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
\
activation

]kernel
^bias
_regularization_losses
`	variables
atrainable_variables
b	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�
cregularization_losses
d	variables
etrainable_variables
f	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
�

gkernel
hbias
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
 "
trackable_list_wrapper
�
0
1
m2
"3
#4
n5
-6
.7
o8
89
910
p11
C12
D13
q14
R15
S16
r17
]18
^19
s20
g21
h22"
trackable_list_wrapper
�
0
1
m2
"3
#4
n5
-6
.7
o8
89
910
p11
C12
D13
q14
R15
S16
r17
]18
^19
s20
g21
h22"
trackable_list_wrapper
�
regularization_losses
tmetrics
ulayer_regularization_losses
vlayer_metrics
wnon_trainable_variables
	variables
trainable_variables

xlayers
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�
	malpha
yregularization_losses
z	variables
{trainable_variables
|	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
':%		2conv2d/kernel
:2conv2d/bias
 "
trackable_list_wrapper
5
0
1
m2"
trackable_list_wrapper
5
0
1
m2"
trackable_list_wrapper
�
regularization_losses
}metrics
~layer_regularization_losses
non_trainable_variables
�layer_metrics
	variables
trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
	variables
trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
	nalpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
):'		 2conv2d_1/kernel
: 2conv2d_1/bias
 "
trackable_list_wrapper
5
"0
#1
n2"
trackable_list_wrapper
5
"0
#1
n2"
trackable_list_wrapper
�
$regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
%	variables
&trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
(regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
)	variables
*trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
	oalpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
):'		 @2conv2d_2/kernel
:@2conv2d_2/bias
 "
trackable_list_wrapper
5
-0
.1
o2"
trackable_list_wrapper
5
-0
.1
o2"
trackable_list_wrapper
�
/regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
0	variables
1trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
3regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
4	variables
5trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
	palpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
*:(		@�2conv2d_3/kernel
:�2conv2d_3/bias
 "
trackable_list_wrapper
5
80
91
p2"
trackable_list_wrapper
5
80
91
p2"
trackable_list_wrapper
�
:regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
;	variables
<trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
>regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
?	variables
@trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
	qalpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
+:)		��2conv2d_4/kernel
:�2conv2d_4/bias
 "
trackable_list_wrapper
5
C0
D1
q2"
trackable_list_wrapper
5
C0
D1
q2"
trackable_list_wrapper
�
Eregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
F	variables
Gtrainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Iregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
J	variables
Ktrainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Mregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
N	variables
Otrainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
	ralpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
 :
��@2dense/kernel
:@2
dense/bias
 "
trackable_list_wrapper
5
R0
S1
r2"
trackable_list_wrapper
5
R0
S1
r2"
trackable_list_wrapper
�
Tregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
U	variables
Vtrainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
Y	variables
Ztrainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
	salpha
�regularization_losses
�	variables
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
 :@@2dense_1/kernel
:@2dense_1/bias
 "
trackable_list_wrapper
5
]0
^1
s2"
trackable_list_wrapper
5
]0
^1
s2"
trackable_list_wrapper
�
_regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
`	variables
atrainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
cregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
d	variables
etrainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
�
iregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
j	variables
ktrainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
,:*��2conv2d/p_re_lu/alpha
0:.�� 2conv2d_1/p_re_lu_1/alpha
.:,dd@2conv2d_2/p_re_lu_2/alpha
/:-22�2conv2d_3/p_re_lu_3/alpha
/:-�2conv2d_4/p_re_lu_4/alpha
#:!@2dense/p_re_lu_5/alpha
%:#@2dense_1/p_re_lu_6/alpha
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
'
m0"
trackable_list_wrapper
'
m0"
trackable_list_wrapper
�
yregularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
z	variables
{trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
n0"
trackable_list_wrapper
'
n0"
trackable_list_wrapper
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
!0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
o0"
trackable_list_wrapper
'
o0"
trackable_list_wrapper
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
,0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
p0"
trackable_list_wrapper
'
p0"
trackable_list_wrapper
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
70"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
q0"
trackable_list_wrapper
'
q0"
trackable_list_wrapper
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
B0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
r0"
trackable_list_wrapper
'
r0"
trackable_list_wrapper
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
Q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
s0"
trackable_list_wrapper
'
s0"
trackable_list_wrapper
�
�regularization_losses
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�	variables
�trainable_variables
�layers
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�2�
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257499
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257631
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257750
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257882�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
.__inference_maxi_track_layer_call_fn_989257933
.__inference_maxi_track_layer_call_fn_989257984
.__inference_maxi_track_layer_call_fn_989258035
.__inference_maxi_track_layer_call_fn_989258086�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
$__inference__wrapped_model_989256102input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_call_989258218
__inference_call_989258337
__inference_call_989258456�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_conv2d_layer_call_and_return_conditional_losses_989258474�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_conv2d_layer_call_fn_989258485�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_989258490
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_989258495�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
1__inference_max_pooling2d_layer_call_fn_989258500
1__inference_max_pooling2d_layer_call_fn_989258505�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_conv2d_1_layer_call_and_return_conditional_losses_989258523�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_conv2d_1_layer_call_fn_989258534�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_989258539
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_989258544�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
3__inference_max_pooling2d_1_layer_call_fn_989258549
3__inference_max_pooling2d_1_layer_call_fn_989258554�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_conv2d_2_layer_call_and_return_conditional_losses_989258572�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_conv2d_2_layer_call_fn_989258583�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_989258588
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_989258593�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
3__inference_max_pooling2d_2_layer_call_fn_989258598
3__inference_max_pooling2d_2_layer_call_fn_989258603�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_conv2d_3_layer_call_and_return_conditional_losses_989258621�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_conv2d_3_layer_call_fn_989258632�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_989258637
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_989258642�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
3__inference_max_pooling2d_3_layer_call_fn_989258647
3__inference_max_pooling2d_3_layer_call_fn_989258652�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_conv2d_4_layer_call_and_return_conditional_losses_989258670�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_conv2d_4_layer_call_fn_989258681�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_989258686
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_989258691�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
3__inference_max_pooling2d_4_layer_call_fn_989258696
3__inference_max_pooling2d_4_layer_call_fn_989258701�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_flatten_layer_call_and_return_conditional_losses_989258707�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_flatten_layer_call_fn_989258712�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_layer_call_and_return_conditional_losses_989258730�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_layer_call_fn_989258741�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_dropout_layer_call_and_return_conditional_losses_989258746
F__inference_dropout_layer_call_and_return_conditional_losses_989258758�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
+__inference_dropout_layer_call_fn_989258763
+__inference_dropout_layer_call_fn_989258768�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_dense_1_layer_call_and_return_conditional_losses_989258786�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_dense_1_layer_call_fn_989258797�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_dropout_1_layer_call_and_return_conditional_losses_989258802
H__inference_dropout_1_layer_call_and_return_conditional_losses_989258814�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_dropout_1_layer_call_fn_989258819
-__inference_dropout_1_layer_call_fn_989258824�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_dense_2_layer_call_and_return_conditional_losses_989258834�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_dense_2_layer_call_fn_989258843�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_signature_wrapper_989257380input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_p_re_lu_layer_call_and_return_conditional_losses_989258855�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_p_re_lu_layer_call_fn_989258862�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_p_re_lu_1_layer_call_and_return_conditional_losses_989258874�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_p_re_lu_1_layer_call_fn_989258881�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_p_re_lu_2_layer_call_and_return_conditional_losses_989258893�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_p_re_lu_2_layer_call_fn_989258900�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_p_re_lu_3_layer_call_and_return_conditional_losses_989258912�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_p_re_lu_3_layer_call_fn_989258919�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_p_re_lu_4_layer_call_and_return_conditional_losses_989258931�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_p_re_lu_4_layer_call_fn_989258938�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_p_re_lu_5_layer_call_and_return_conditional_losses_989258950�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_p_re_lu_5_layer_call_fn_989258957�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_p_re_lu_6_layer_call_and_return_conditional_losses_989258969�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_p_re_lu_6_layer_call_fn_989258976�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
$__inference__wrapped_model_989256102�m"#n-.o89pCDqRSr]^sgh:�7
0�-
+�(
input_1�����������
� "3�0
.
output_1"�
output_1���������~
__inference_call_989258218`m"#n-.o89pCDqRSr]^sgh4�1
*�'
!�
inputs��
p
� "�~
__inference_call_989258337`m"#n-.o89pCDqRSr]^sgh4�1
*�'
!�
inputs��
p 
� "��
__inference_call_989258456rm"#n-.o89pCDqRSr]^sgh=�:
3�0
*�'
inputs�����������
p 
� "�����������
G__inference_conv2d_1_layer_call_and_return_conditional_losses_989258523q"#n9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0����������� 
� �
,__inference_conv2d_1_layer_call_fn_989258534d"#n9�6
/�,
*�'
inputs�����������
� ""������������ �
G__inference_conv2d_2_layer_call_and_return_conditional_losses_989258572m-.o7�4
-�*
(�%
inputs���������dd 
� "-�*
#� 
0���������dd@
� �
,__inference_conv2d_2_layer_call_fn_989258583`-.o7�4
-�*
(�%
inputs���������dd 
� " ����������dd@�
G__inference_conv2d_3_layer_call_and_return_conditional_losses_989258621n89p7�4
-�*
(�%
inputs���������22@
� ".�+
$�!
0���������22�
� �
,__inference_conv2d_3_layer_call_fn_989258632a89p7�4
-�*
(�%
inputs���������22@
� "!����������22��
G__inference_conv2d_4_layer_call_and_return_conditional_losses_989258670oCDq8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
,__inference_conv2d_4_layer_call_fn_989258681bCDq8�5
.�+
)�&
inputs����������
� "!������������
E__inference_conv2d_layer_call_and_return_conditional_losses_989258474qm9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
*__inference_conv2d_layer_call_fn_989258485dm9�6
/�,
*�'
inputs�����������
� ""�������������
F__inference_dense_1_layer_call_and_return_conditional_losses_989258786]]^s/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� 
+__inference_dense_1_layer_call_fn_989258797P]^s/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_dense_2_layer_call_and_return_conditional_losses_989258834\gh/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� ~
+__inference_dense_2_layer_call_fn_989258843Ogh/�,
%�"
 �
inputs���������@
� "�����������
D__inference_dense_layer_call_and_return_conditional_losses_989258730_RSr1�.
'�$
"�
inputs�����������
� "%�"
�
0���������@
� 
)__inference_dense_layer_call_fn_989258741RRSr1�.
'�$
"�
inputs�����������
� "����������@�
H__inference_dropout_1_layer_call_and_return_conditional_losses_989258802\3�0
)�&
 �
inputs���������@
p 
� "%�"
�
0���������@
� �
H__inference_dropout_1_layer_call_and_return_conditional_losses_989258814\3�0
)�&
 �
inputs���������@
p
� "%�"
�
0���������@
� �
-__inference_dropout_1_layer_call_fn_989258819O3�0
)�&
 �
inputs���������@
p 
� "����������@�
-__inference_dropout_1_layer_call_fn_989258824O3�0
)�&
 �
inputs���������@
p
� "����������@�
F__inference_dropout_layer_call_and_return_conditional_losses_989258746\3�0
)�&
 �
inputs���������@
p 
� "%�"
�
0���������@
� �
F__inference_dropout_layer_call_and_return_conditional_losses_989258758\3�0
)�&
 �
inputs���������@
p
� "%�"
�
0���������@
� ~
+__inference_dropout_layer_call_fn_989258763O3�0
)�&
 �
inputs���������@
p 
� "����������@~
+__inference_dropout_layer_call_fn_989258768O3�0
)�&
 �
inputs���������@
p
� "����������@�
F__inference_flatten_layer_call_and_return_conditional_losses_989258707c8�5
.�+
)�&
inputs����������
� "'�$
�
0�����������
� �
+__inference_flatten_layer_call_fn_989258712V8�5
.�+
)�&
inputs����������
� "�������������
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_989258539�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
N__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_989258544j9�6
/�,
*�'
inputs����������� 
� "-�*
#� 
0���������dd 
� �
3__inference_max_pooling2d_1_layer_call_fn_989258549�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
3__inference_max_pooling2d_1_layer_call_fn_989258554]9�6
/�,
*�'
inputs����������� 
� " ����������dd �
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_989258588�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
N__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_989258593h7�4
-�*
(�%
inputs���������dd@
� "-�*
#� 
0���������22@
� �
3__inference_max_pooling2d_2_layer_call_fn_989258598�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
3__inference_max_pooling2d_2_layer_call_fn_989258603[7�4
-�*
(�%
inputs���������dd@
� " ����������22@�
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_989258637�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
N__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_989258642j8�5
.�+
)�&
inputs���������22�
� ".�+
$�!
0����������
� �
3__inference_max_pooling2d_3_layer_call_fn_989258647�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
3__inference_max_pooling2d_3_layer_call_fn_989258652]8�5
.�+
)�&
inputs���������22�
� "!������������
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_989258686�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
N__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_989258691j8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
3__inference_max_pooling2d_4_layer_call_fn_989258696�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
3__inference_max_pooling2d_4_layer_call_fn_989258701]8�5
.�+
)�&
inputs����������
� "!������������
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_989258490�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
L__inference_max_pooling2d_layer_call_and_return_conditional_losses_989258495l9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
1__inference_max_pooling2d_layer_call_fn_989258500�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
1__inference_max_pooling2d_layer_call_fn_989258505_9�6
/�,
*�'
inputs�����������
� ""�������������
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257499m"#n-.o89pCDqRSr]^sgh=�:
3�0
*�'
inputs�����������
p 
� "%�"
�
0���������
� �
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257631m"#n-.o89pCDqRSr]^sgh=�:
3�0
*�'
inputs�����������
p
� "%�"
�
0���������
� �
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257750�m"#n-.o89pCDqRSr]^sgh>�;
4�1
+�(
input_1�����������
p 
� "%�"
�
0���������
� �
I__inference_maxi_track_layer_call_and_return_conditional_losses_989257882�m"#n-.o89pCDqRSr]^sgh>�;
4�1
+�(
input_1�����������
p
� "%�"
�
0���������
� �
.__inference_maxi_track_layer_call_fn_989257933sm"#n-.o89pCDqRSr]^sgh>�;
4�1
+�(
input_1�����������
p 
� "�����������
.__inference_maxi_track_layer_call_fn_989257984rm"#n-.o89pCDqRSr]^sgh=�:
3�0
*�'
inputs�����������
p 
� "�����������
.__inference_maxi_track_layer_call_fn_989258035rm"#n-.o89pCDqRSr]^sgh=�:
3�0
*�'
inputs�����������
p
� "�����������
.__inference_maxi_track_layer_call_fn_989258086sm"#n-.o89pCDqRSr]^sgh>�;
4�1
+�(
input_1�����������
p
� "�����������
H__inference_p_re_lu_1_layer_call_and_return_conditional_losses_989258874�nR�O
H�E
C�@
inputs4������������������������������������
� "/�,
%�"
0����������� 
� �
-__inference_p_re_lu_1_layer_call_fn_989258881{nR�O
H�E
C�@
inputs4������������������������������������
� ""������������ �
H__inference_p_re_lu_2_layer_call_and_return_conditional_losses_989258893�oR�O
H�E
C�@
inputs4������������������������������������
� "-�*
#� 
0���������dd@
� �
-__inference_p_re_lu_2_layer_call_fn_989258900yoR�O
H�E
C�@
inputs4������������������������������������
� " ����������dd@�
H__inference_p_re_lu_3_layer_call_and_return_conditional_losses_989258912�pR�O
H�E
C�@
inputs4������������������������������������
� ".�+
$�!
0���������22�
� �
-__inference_p_re_lu_3_layer_call_fn_989258919zpR�O
H�E
C�@
inputs4������������������������������������
� "!����������22��
H__inference_p_re_lu_4_layer_call_and_return_conditional_losses_989258931�qR�O
H�E
C�@
inputs4������������������������������������
� ".�+
$�!
0����������
� �
-__inference_p_re_lu_4_layer_call_fn_989258938zqR�O
H�E
C�@
inputs4������������������������������������
� "!������������
H__inference_p_re_lu_5_layer_call_and_return_conditional_losses_989258950dr8�5
.�+
)�&
inputs������������������
� "%�"
�
0���������@
� �
-__inference_p_re_lu_5_layer_call_fn_989258957Wr8�5
.�+
)�&
inputs������������������
� "����������@�
H__inference_p_re_lu_6_layer_call_and_return_conditional_losses_989258969ds8�5
.�+
)�&
inputs������������������
� "%�"
�
0���������@
� �
-__inference_p_re_lu_6_layer_call_fn_989258976Ws8�5
.�+
)�&
inputs������������������
� "����������@�
F__inference_p_re_lu_layer_call_and_return_conditional_losses_989258855�mR�O
H�E
C�@
inputs4������������������������������������
� "/�,
%�"
0�����������
� �
+__inference_p_re_lu_layer_call_fn_989258862{mR�O
H�E
C�@
inputs4������������������������������������
� ""�������������
'__inference_signature_wrapper_989257380�m"#n-.o89pCDqRSr]^sghE�B
� 
;�8
6
input_1+�(
input_1�����������"3�0
.
output_1"�
output_1���������