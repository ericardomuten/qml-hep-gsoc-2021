ٛ<
?#?#
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
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
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
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
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
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
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??/
?
ParticleNet_fts_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameParticleNet_fts_bn/gamma
?
,ParticleNet_fts_bn/gamma/Read/ReadVariableOpReadVariableOpParticleNet_fts_bn/gamma*
_output_shapes
:*
dtype0
?
ParticleNet_fts_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameParticleNet_fts_bn/beta

+ParticleNet_fts_bn/beta/Read/ReadVariableOpReadVariableOpParticleNet_fts_bn/beta*
_output_shapes
:*
dtype0
?
ParticleNet_fts_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name ParticleNet_fts_bn/moving_mean
?
2ParticleNet_fts_bn/moving_mean/Read/ReadVariableOpReadVariableOpParticleNet_fts_bn/moving_mean*
_output_shapes
:*
dtype0
?
"ParticleNet_fts_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"ParticleNet_fts_bn/moving_variance
?
6ParticleNet_fts_bn/moving_variance/Read/ReadVariableOpReadVariableOp"ParticleNet_fts_bn/moving_variance*
_output_shapes
:*
dtype0
?
"ParticleNet_EdgeConv0_conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"ParticleNet_EdgeConv0_conv0/kernel
?
6ParticleNet_EdgeConv0_conv0/kernel/Read/ReadVariableOpReadVariableOp"ParticleNet_EdgeConv0_conv0/kernel*&
_output_shapes
: *
dtype0
?
ParticleNet_EdgeConv0_bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!ParticleNet_EdgeConv0_bn0/gamma
?
3ParticleNet_EdgeConv0_bn0/gamma/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv0_bn0/gamma*
_output_shapes
: *
dtype0
?
ParticleNet_EdgeConv0_bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name ParticleNet_EdgeConv0_bn0/beta
?
2ParticleNet_EdgeConv0_bn0/beta/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv0_bn0/beta*
_output_shapes
: *
dtype0
?
%ParticleNet_EdgeConv0_bn0/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%ParticleNet_EdgeConv0_bn0/moving_mean
?
9ParticleNet_EdgeConv0_bn0/moving_mean/Read/ReadVariableOpReadVariableOp%ParticleNet_EdgeConv0_bn0/moving_mean*
_output_shapes
: *
dtype0
?
)ParticleNet_EdgeConv0_bn0/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)ParticleNet_EdgeConv0_bn0/moving_variance
?
=ParticleNet_EdgeConv0_bn0/moving_variance/Read/ReadVariableOpReadVariableOp)ParticleNet_EdgeConv0_bn0/moving_variance*
_output_shapes
: *
dtype0
?
"ParticleNet_EdgeConv0_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *3
shared_name$"ParticleNet_EdgeConv0_conv1/kernel
?
6ParticleNet_EdgeConv0_conv1/kernel/Read/ReadVariableOpReadVariableOp"ParticleNet_EdgeConv0_conv1/kernel*&
_output_shapes
:  *
dtype0
?
ParticleNet_EdgeConv0_bn1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!ParticleNet_EdgeConv0_bn1/gamma
?
3ParticleNet_EdgeConv0_bn1/gamma/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv0_bn1/gamma*
_output_shapes
: *
dtype0
?
ParticleNet_EdgeConv0_bn1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name ParticleNet_EdgeConv0_bn1/beta
?
2ParticleNet_EdgeConv0_bn1/beta/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv0_bn1/beta*
_output_shapes
: *
dtype0
?
%ParticleNet_EdgeConv0_bn1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%ParticleNet_EdgeConv0_bn1/moving_mean
?
9ParticleNet_EdgeConv0_bn1/moving_mean/Read/ReadVariableOpReadVariableOp%ParticleNet_EdgeConv0_bn1/moving_mean*
_output_shapes
: *
dtype0
?
)ParticleNet_EdgeConv0_bn1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)ParticleNet_EdgeConv0_bn1/moving_variance
?
=ParticleNet_EdgeConv0_bn1/moving_variance/Read/ReadVariableOpReadVariableOp)ParticleNet_EdgeConv0_bn1/moving_variance*
_output_shapes
: *
dtype0
?
"ParticleNet_EdgeConv0_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *3
shared_name$"ParticleNet_EdgeConv0_conv2/kernel
?
6ParticleNet_EdgeConv0_conv2/kernel/Read/ReadVariableOpReadVariableOp"ParticleNet_EdgeConv0_conv2/kernel*&
_output_shapes
:  *
dtype0
?
$ParticleNet_EdgeConv0_sc_conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$ParticleNet_EdgeConv0_sc_conv/kernel
?
8ParticleNet_EdgeConv0_sc_conv/kernel/Read/ReadVariableOpReadVariableOp$ParticleNet_EdgeConv0_sc_conv/kernel*&
_output_shapes
: *
dtype0
?
ParticleNet_EdgeConv0_bn2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!ParticleNet_EdgeConv0_bn2/gamma
?
3ParticleNet_EdgeConv0_bn2/gamma/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv0_bn2/gamma*
_output_shapes
: *
dtype0
?
ParticleNet_EdgeConv0_bn2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name ParticleNet_EdgeConv0_bn2/beta
?
2ParticleNet_EdgeConv0_bn2/beta/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv0_bn2/beta*
_output_shapes
: *
dtype0
?
%ParticleNet_EdgeConv0_bn2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%ParticleNet_EdgeConv0_bn2/moving_mean
?
9ParticleNet_EdgeConv0_bn2/moving_mean/Read/ReadVariableOpReadVariableOp%ParticleNet_EdgeConv0_bn2/moving_mean*
_output_shapes
: *
dtype0
?
)ParticleNet_EdgeConv0_bn2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)ParticleNet_EdgeConv0_bn2/moving_variance
?
=ParticleNet_EdgeConv0_bn2/moving_variance/Read/ReadVariableOpReadVariableOp)ParticleNet_EdgeConv0_bn2/moving_variance*
_output_shapes
: *
dtype0
?
!ParticleNet_EdgeConv0_sc_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!ParticleNet_EdgeConv0_sc_bn/gamma
?
5ParticleNet_EdgeConv0_sc_bn/gamma/Read/ReadVariableOpReadVariableOp!ParticleNet_EdgeConv0_sc_bn/gamma*
_output_shapes
: *
dtype0
?
 ParticleNet_EdgeConv0_sc_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" ParticleNet_EdgeConv0_sc_bn/beta
?
4ParticleNet_EdgeConv0_sc_bn/beta/Read/ReadVariableOpReadVariableOp ParticleNet_EdgeConv0_sc_bn/beta*
_output_shapes
: *
dtype0
?
'ParticleNet_EdgeConv0_sc_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'ParticleNet_EdgeConv0_sc_bn/moving_mean
?
;ParticleNet_EdgeConv0_sc_bn/moving_mean/Read/ReadVariableOpReadVariableOp'ParticleNet_EdgeConv0_sc_bn/moving_mean*
_output_shapes
: *
dtype0
?
+ParticleNet_EdgeConv0_sc_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+ParticleNet_EdgeConv0_sc_bn/moving_variance
?
?ParticleNet_EdgeConv0_sc_bn/moving_variance/Read/ReadVariableOpReadVariableOp+ParticleNet_EdgeConv0_sc_bn/moving_variance*
_output_shapes
: *
dtype0
?
"ParticleNet_EdgeConv1_conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"ParticleNet_EdgeConv1_conv0/kernel
?
6ParticleNet_EdgeConv1_conv0/kernel/Read/ReadVariableOpReadVariableOp"ParticleNet_EdgeConv1_conv0/kernel*&
_output_shapes
:@@*
dtype0
?
ParticleNet_EdgeConv1_bn0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!ParticleNet_EdgeConv1_bn0/gamma
?
3ParticleNet_EdgeConv1_bn0/gamma/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv1_bn0/gamma*
_output_shapes
:@*
dtype0
?
ParticleNet_EdgeConv1_bn0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name ParticleNet_EdgeConv1_bn0/beta
?
2ParticleNet_EdgeConv1_bn0/beta/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv1_bn0/beta*
_output_shapes
:@*
dtype0
?
%ParticleNet_EdgeConv1_bn0/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%ParticleNet_EdgeConv1_bn0/moving_mean
?
9ParticleNet_EdgeConv1_bn0/moving_mean/Read/ReadVariableOpReadVariableOp%ParticleNet_EdgeConv1_bn0/moving_mean*
_output_shapes
:@*
dtype0
?
)ParticleNet_EdgeConv1_bn0/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)ParticleNet_EdgeConv1_bn0/moving_variance
?
=ParticleNet_EdgeConv1_bn0/moving_variance/Read/ReadVariableOpReadVariableOp)ParticleNet_EdgeConv1_bn0/moving_variance*
_output_shapes
:@*
dtype0
?
"ParticleNet_EdgeConv1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"ParticleNet_EdgeConv1_conv1/kernel
?
6ParticleNet_EdgeConv1_conv1/kernel/Read/ReadVariableOpReadVariableOp"ParticleNet_EdgeConv1_conv1/kernel*&
_output_shapes
:@@*
dtype0
?
ParticleNet_EdgeConv1_bn1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!ParticleNet_EdgeConv1_bn1/gamma
?
3ParticleNet_EdgeConv1_bn1/gamma/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv1_bn1/gamma*
_output_shapes
:@*
dtype0
?
ParticleNet_EdgeConv1_bn1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name ParticleNet_EdgeConv1_bn1/beta
?
2ParticleNet_EdgeConv1_bn1/beta/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv1_bn1/beta*
_output_shapes
:@*
dtype0
?
%ParticleNet_EdgeConv1_bn1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%ParticleNet_EdgeConv1_bn1/moving_mean
?
9ParticleNet_EdgeConv1_bn1/moving_mean/Read/ReadVariableOpReadVariableOp%ParticleNet_EdgeConv1_bn1/moving_mean*
_output_shapes
:@*
dtype0
?
)ParticleNet_EdgeConv1_bn1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)ParticleNet_EdgeConv1_bn1/moving_variance
?
=ParticleNet_EdgeConv1_bn1/moving_variance/Read/ReadVariableOpReadVariableOp)ParticleNet_EdgeConv1_bn1/moving_variance*
_output_shapes
:@*
dtype0
?
"ParticleNet_EdgeConv1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"ParticleNet_EdgeConv1_conv2/kernel
?
6ParticleNet_EdgeConv1_conv2/kernel/Read/ReadVariableOpReadVariableOp"ParticleNet_EdgeConv1_conv2/kernel*&
_output_shapes
:@@*
dtype0
?
$ParticleNet_EdgeConv1_sc_conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*5
shared_name&$ParticleNet_EdgeConv1_sc_conv/kernel
?
8ParticleNet_EdgeConv1_sc_conv/kernel/Read/ReadVariableOpReadVariableOp$ParticleNet_EdgeConv1_sc_conv/kernel*&
_output_shapes
: @*
dtype0
?
ParticleNet_EdgeConv1_bn2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!ParticleNet_EdgeConv1_bn2/gamma
?
3ParticleNet_EdgeConv1_bn2/gamma/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv1_bn2/gamma*
_output_shapes
:@*
dtype0
?
ParticleNet_EdgeConv1_bn2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name ParticleNet_EdgeConv1_bn2/beta
?
2ParticleNet_EdgeConv1_bn2/beta/Read/ReadVariableOpReadVariableOpParticleNet_EdgeConv1_bn2/beta*
_output_shapes
:@*
dtype0
?
%ParticleNet_EdgeConv1_bn2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%ParticleNet_EdgeConv1_bn2/moving_mean
?
9ParticleNet_EdgeConv1_bn2/moving_mean/Read/ReadVariableOpReadVariableOp%ParticleNet_EdgeConv1_bn2/moving_mean*
_output_shapes
:@*
dtype0
?
)ParticleNet_EdgeConv1_bn2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)ParticleNet_EdgeConv1_bn2/moving_variance
?
=ParticleNet_EdgeConv1_bn2/moving_variance/Read/ReadVariableOpReadVariableOp)ParticleNet_EdgeConv1_bn2/moving_variance*
_output_shapes
:@*
dtype0
?
!ParticleNet_EdgeConv1_sc_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!ParticleNet_EdgeConv1_sc_bn/gamma
?
5ParticleNet_EdgeConv1_sc_bn/gamma/Read/ReadVariableOpReadVariableOp!ParticleNet_EdgeConv1_sc_bn/gamma*
_output_shapes
:@*
dtype0
?
 ParticleNet_EdgeConv1_sc_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" ParticleNet_EdgeConv1_sc_bn/beta
?
4ParticleNet_EdgeConv1_sc_bn/beta/Read/ReadVariableOpReadVariableOp ParticleNet_EdgeConv1_sc_bn/beta*
_output_shapes
:@*
dtype0
?
'ParticleNet_EdgeConv1_sc_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'ParticleNet_EdgeConv1_sc_bn/moving_mean
?
;ParticleNet_EdgeConv1_sc_bn/moving_mean/Read/ReadVariableOpReadVariableOp'ParticleNet_EdgeConv1_sc_bn/moving_mean*
_output_shapes
:@*
dtype0
?
+ParticleNet_EdgeConv1_sc_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*<
shared_name-+ParticleNet_EdgeConv1_sc_bn/moving_variance
?
?ParticleNet_EdgeConv1_sc_bn/moving_variance/Read/ReadVariableOpReadVariableOp+ParticleNet_EdgeConv1_sc_bn/moving_variance*
_output_shapes
:@*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@?*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
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
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:?*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:?*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:?*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:?*
dtype0
?
Adam/ParticleNet_fts_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/ParticleNet_fts_bn/gamma/m
?
3Adam/ParticleNet_fts_bn/gamma/m/Read/ReadVariableOpReadVariableOpAdam/ParticleNet_fts_bn/gamma/m*
_output_shapes
:*
dtype0
?
Adam/ParticleNet_fts_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/ParticleNet_fts_bn/beta/m
?
2Adam/ParticleNet_fts_bn/beta/m/Read/ReadVariableOpReadVariableOpAdam/ParticleNet_fts_bn/beta/m*
_output_shapes
:*
dtype0
?
)Adam/ParticleNet_EdgeConv0_conv0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)Adam/ParticleNet_EdgeConv0_conv0/kernel/m
?
=Adam/ParticleNet_EdgeConv0_conv0/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv0_conv0/kernel/m*&
_output_shapes
: *
dtype0
?
&Adam/ParticleNet_EdgeConv0_bn0/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&Adam/ParticleNet_EdgeConv0_bn0/gamma/m
?
:Adam/ParticleNet_EdgeConv0_bn0/gamma/m/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv0_bn0/gamma/m*
_output_shapes
: *
dtype0
?
%Adam/ParticleNet_EdgeConv0_bn0/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/ParticleNet_EdgeConv0_bn0/beta/m
?
9Adam/ParticleNet_EdgeConv0_bn0/beta/m/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv0_bn0/beta/m*
_output_shapes
: *
dtype0
?
)Adam/ParticleNet_EdgeConv0_conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *:
shared_name+)Adam/ParticleNet_EdgeConv0_conv1/kernel/m
?
=Adam/ParticleNet_EdgeConv0_conv1/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv0_conv1/kernel/m*&
_output_shapes
:  *
dtype0
?
&Adam/ParticleNet_EdgeConv0_bn1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&Adam/ParticleNet_EdgeConv0_bn1/gamma/m
?
:Adam/ParticleNet_EdgeConv0_bn1/gamma/m/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv0_bn1/gamma/m*
_output_shapes
: *
dtype0
?
%Adam/ParticleNet_EdgeConv0_bn1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/ParticleNet_EdgeConv0_bn1/beta/m
?
9Adam/ParticleNet_EdgeConv0_bn1/beta/m/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv0_bn1/beta/m*
_output_shapes
: *
dtype0
?
)Adam/ParticleNet_EdgeConv0_conv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *:
shared_name+)Adam/ParticleNet_EdgeConv0_conv2/kernel/m
?
=Adam/ParticleNet_EdgeConv0_conv2/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv0_conv2/kernel/m*&
_output_shapes
:  *
dtype0
?
+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/m
?
?Adam/ParticleNet_EdgeConv0_sc_conv/kernel/m/Read/ReadVariableOpReadVariableOp+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/m*&
_output_shapes
: *
dtype0
?
&Adam/ParticleNet_EdgeConv0_bn2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&Adam/ParticleNet_EdgeConv0_bn2/gamma/m
?
:Adam/ParticleNet_EdgeConv0_bn2/gamma/m/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv0_bn2/gamma/m*
_output_shapes
: *
dtype0
?
%Adam/ParticleNet_EdgeConv0_bn2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/ParticleNet_EdgeConv0_bn2/beta/m
?
9Adam/ParticleNet_EdgeConv0_bn2/beta/m/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv0_bn2/beta/m*
_output_shapes
: *
dtype0
?
(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/m
?
<Adam/ParticleNet_EdgeConv0_sc_bn/gamma/m/Read/ReadVariableOpReadVariableOp(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/m*
_output_shapes
: *
dtype0
?
'Adam/ParticleNet_EdgeConv0_sc_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/ParticleNet_EdgeConv0_sc_bn/beta/m
?
;Adam/ParticleNet_EdgeConv0_sc_bn/beta/m/Read/ReadVariableOpReadVariableOp'Adam/ParticleNet_EdgeConv0_sc_bn/beta/m*
_output_shapes
: *
dtype0
?
)Adam/ParticleNet_EdgeConv1_conv0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*:
shared_name+)Adam/ParticleNet_EdgeConv1_conv0/kernel/m
?
=Adam/ParticleNet_EdgeConv1_conv0/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv1_conv0/kernel/m*&
_output_shapes
:@@*
dtype0
?
&Adam/ParticleNet_EdgeConv1_bn0/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/ParticleNet_EdgeConv1_bn0/gamma/m
?
:Adam/ParticleNet_EdgeConv1_bn0/gamma/m/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv1_bn0/gamma/m*
_output_shapes
:@*
dtype0
?
%Adam/ParticleNet_EdgeConv1_bn0/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/ParticleNet_EdgeConv1_bn0/beta/m
?
9Adam/ParticleNet_EdgeConv1_bn0/beta/m/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv1_bn0/beta/m*
_output_shapes
:@*
dtype0
?
)Adam/ParticleNet_EdgeConv1_conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*:
shared_name+)Adam/ParticleNet_EdgeConv1_conv1/kernel/m
?
=Adam/ParticleNet_EdgeConv1_conv1/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv1_conv1/kernel/m*&
_output_shapes
:@@*
dtype0
?
&Adam/ParticleNet_EdgeConv1_bn1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/ParticleNet_EdgeConv1_bn1/gamma/m
?
:Adam/ParticleNet_EdgeConv1_bn1/gamma/m/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv1_bn1/gamma/m*
_output_shapes
:@*
dtype0
?
%Adam/ParticleNet_EdgeConv1_bn1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/ParticleNet_EdgeConv1_bn1/beta/m
?
9Adam/ParticleNet_EdgeConv1_bn1/beta/m/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv1_bn1/beta/m*
_output_shapes
:@*
dtype0
?
)Adam/ParticleNet_EdgeConv1_conv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*:
shared_name+)Adam/ParticleNet_EdgeConv1_conv2/kernel/m
?
=Adam/ParticleNet_EdgeConv1_conv2/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv1_conv2/kernel/m*&
_output_shapes
:@@*
dtype0
?
+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*<
shared_name-+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/m
?
?Adam/ParticleNet_EdgeConv1_sc_conv/kernel/m/Read/ReadVariableOpReadVariableOp+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/m*&
_output_shapes
: @*
dtype0
?
&Adam/ParticleNet_EdgeConv1_bn2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/ParticleNet_EdgeConv1_bn2/gamma/m
?
:Adam/ParticleNet_EdgeConv1_bn2/gamma/m/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv1_bn2/gamma/m*
_output_shapes
:@*
dtype0
?
%Adam/ParticleNet_EdgeConv1_bn2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/ParticleNet_EdgeConv1_bn2/beta/m
?
9Adam/ParticleNet_EdgeConv1_bn2/beta/m/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv1_bn2/beta/m*
_output_shapes
:@*
dtype0
?
(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/m
?
<Adam/ParticleNet_EdgeConv1_sc_bn/gamma/m/Read/ReadVariableOpReadVariableOp(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/m*
_output_shapes
:@*
dtype0
?
'Adam/ParticleNet_EdgeConv1_sc_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/ParticleNet_EdgeConv1_sc_bn/beta/m
?
;Adam/ParticleNet_EdgeConv1_sc_bn/beta/m/Read/ReadVariableOpReadVariableOp'Adam/ParticleNet_EdgeConv1_sc_bn/beta/m*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	@?*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/ParticleNet_fts_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/ParticleNet_fts_bn/gamma/v
?
3Adam/ParticleNet_fts_bn/gamma/v/Read/ReadVariableOpReadVariableOpAdam/ParticleNet_fts_bn/gamma/v*
_output_shapes
:*
dtype0
?
Adam/ParticleNet_fts_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/ParticleNet_fts_bn/beta/v
?
2Adam/ParticleNet_fts_bn/beta/v/Read/ReadVariableOpReadVariableOpAdam/ParticleNet_fts_bn/beta/v*
_output_shapes
:*
dtype0
?
)Adam/ParticleNet_EdgeConv0_conv0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)Adam/ParticleNet_EdgeConv0_conv0/kernel/v
?
=Adam/ParticleNet_EdgeConv0_conv0/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv0_conv0/kernel/v*&
_output_shapes
: *
dtype0
?
&Adam/ParticleNet_EdgeConv0_bn0/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&Adam/ParticleNet_EdgeConv0_bn0/gamma/v
?
:Adam/ParticleNet_EdgeConv0_bn0/gamma/v/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv0_bn0/gamma/v*
_output_shapes
: *
dtype0
?
%Adam/ParticleNet_EdgeConv0_bn0/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/ParticleNet_EdgeConv0_bn0/beta/v
?
9Adam/ParticleNet_EdgeConv0_bn0/beta/v/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv0_bn0/beta/v*
_output_shapes
: *
dtype0
?
)Adam/ParticleNet_EdgeConv0_conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *:
shared_name+)Adam/ParticleNet_EdgeConv0_conv1/kernel/v
?
=Adam/ParticleNet_EdgeConv0_conv1/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv0_conv1/kernel/v*&
_output_shapes
:  *
dtype0
?
&Adam/ParticleNet_EdgeConv0_bn1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&Adam/ParticleNet_EdgeConv0_bn1/gamma/v
?
:Adam/ParticleNet_EdgeConv0_bn1/gamma/v/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv0_bn1/gamma/v*
_output_shapes
: *
dtype0
?
%Adam/ParticleNet_EdgeConv0_bn1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/ParticleNet_EdgeConv0_bn1/beta/v
?
9Adam/ParticleNet_EdgeConv0_bn1/beta/v/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv0_bn1/beta/v*
_output_shapes
: *
dtype0
?
)Adam/ParticleNet_EdgeConv0_conv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *:
shared_name+)Adam/ParticleNet_EdgeConv0_conv2/kernel/v
?
=Adam/ParticleNet_EdgeConv0_conv2/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv0_conv2/kernel/v*&
_output_shapes
:  *
dtype0
?
+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/v
?
?Adam/ParticleNet_EdgeConv0_sc_conv/kernel/v/Read/ReadVariableOpReadVariableOp+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/v*&
_output_shapes
: *
dtype0
?
&Adam/ParticleNet_EdgeConv0_bn2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&Adam/ParticleNet_EdgeConv0_bn2/gamma/v
?
:Adam/ParticleNet_EdgeConv0_bn2/gamma/v/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv0_bn2/gamma/v*
_output_shapes
: *
dtype0
?
%Adam/ParticleNet_EdgeConv0_bn2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%Adam/ParticleNet_EdgeConv0_bn2/beta/v
?
9Adam/ParticleNet_EdgeConv0_bn2/beta/v/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv0_bn2/beta/v*
_output_shapes
: *
dtype0
?
(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/v
?
<Adam/ParticleNet_EdgeConv0_sc_bn/gamma/v/Read/ReadVariableOpReadVariableOp(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/v*
_output_shapes
: *
dtype0
?
'Adam/ParticleNet_EdgeConv0_sc_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adam/ParticleNet_EdgeConv0_sc_bn/beta/v
?
;Adam/ParticleNet_EdgeConv0_sc_bn/beta/v/Read/ReadVariableOpReadVariableOp'Adam/ParticleNet_EdgeConv0_sc_bn/beta/v*
_output_shapes
: *
dtype0
?
)Adam/ParticleNet_EdgeConv1_conv0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*:
shared_name+)Adam/ParticleNet_EdgeConv1_conv0/kernel/v
?
=Adam/ParticleNet_EdgeConv1_conv0/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv1_conv0/kernel/v*&
_output_shapes
:@@*
dtype0
?
&Adam/ParticleNet_EdgeConv1_bn0/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/ParticleNet_EdgeConv1_bn0/gamma/v
?
:Adam/ParticleNet_EdgeConv1_bn0/gamma/v/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv1_bn0/gamma/v*
_output_shapes
:@*
dtype0
?
%Adam/ParticleNet_EdgeConv1_bn0/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/ParticleNet_EdgeConv1_bn0/beta/v
?
9Adam/ParticleNet_EdgeConv1_bn0/beta/v/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv1_bn0/beta/v*
_output_shapes
:@*
dtype0
?
)Adam/ParticleNet_EdgeConv1_conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*:
shared_name+)Adam/ParticleNet_EdgeConv1_conv1/kernel/v
?
=Adam/ParticleNet_EdgeConv1_conv1/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv1_conv1/kernel/v*&
_output_shapes
:@@*
dtype0
?
&Adam/ParticleNet_EdgeConv1_bn1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/ParticleNet_EdgeConv1_bn1/gamma/v
?
:Adam/ParticleNet_EdgeConv1_bn1/gamma/v/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv1_bn1/gamma/v*
_output_shapes
:@*
dtype0
?
%Adam/ParticleNet_EdgeConv1_bn1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/ParticleNet_EdgeConv1_bn1/beta/v
?
9Adam/ParticleNet_EdgeConv1_bn1/beta/v/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv1_bn1/beta/v*
_output_shapes
:@*
dtype0
?
)Adam/ParticleNet_EdgeConv1_conv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*:
shared_name+)Adam/ParticleNet_EdgeConv1_conv2/kernel/v
?
=Adam/ParticleNet_EdgeConv1_conv2/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/ParticleNet_EdgeConv1_conv2/kernel/v*&
_output_shapes
:@@*
dtype0
?
+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*<
shared_name-+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/v
?
?Adam/ParticleNet_EdgeConv1_sc_conv/kernel/v/Read/ReadVariableOpReadVariableOp+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/v*&
_output_shapes
: @*
dtype0
?
&Adam/ParticleNet_EdgeConv1_bn2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/ParticleNet_EdgeConv1_bn2/gamma/v
?
:Adam/ParticleNet_EdgeConv1_bn2/gamma/v/Read/ReadVariableOpReadVariableOp&Adam/ParticleNet_EdgeConv1_bn2/gamma/v*
_output_shapes
:@*
dtype0
?
%Adam/ParticleNet_EdgeConv1_bn2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%Adam/ParticleNet_EdgeConv1_bn2/beta/v
?
9Adam/ParticleNet_EdgeConv1_bn2/beta/v/Read/ReadVariableOpReadVariableOp%Adam/ParticleNet_EdgeConv1_bn2/beta/v*
_output_shapes
:@*
dtype0
?
(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/v
?
<Adam/ParticleNet_EdgeConv1_sc_bn/gamma/v/Read/ReadVariableOpReadVariableOp(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/v*
_output_shapes
:@*
dtype0
?
'Adam/ParticleNet_EdgeConv1_sc_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adam/ParticleNet_EdgeConv1_sc_bn/beta/v
?
;Adam/ParticleNet_EdgeConv1_sc_bn/beta/v/Read/ReadVariableOpReadVariableOp'Adam/ParticleNet_EdgeConv1_sc_bn/beta/v*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	@?*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 * ?yD
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   @

NoOpNoOp
??
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-0
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer-29
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer_with_weights-1
&layer-37
'layer_with_weights-2
'layer-38
(layer-39
)layer_with_weights-3
)layer-40
*layer_with_weights-4
*layer-41
+layer-42
,layer-43
-layer_with_weights-5
-layer-44
.layer_with_weights-6
.layer-45
/layer_with_weights-7
/layer-46
0layer_with_weights-8
0layer-47
1layer-48
2layer-49
3layer-50
4layer-51
5layer-52
6layer-53
7layer-54
8layer-55
9layer-56
:layer-57
;layer-58
<layer-59
=layer-60
>layer-61
?layer-62
@layer-63
Alayer-64
Blayer_with_weights-9
Blayer-65
Clayer_with_weights-10
Clayer-66
Dlayer-67
Elayer_with_weights-11
Elayer-68
Flayer_with_weights-12
Flayer-69
Glayer-70
Hlayer-71
Ilayer_with_weights-13
Ilayer-72
Jlayer_with_weights-14
Jlayer-73
Klayer_with_weights-15
Klayer-74
Llayer_with_weights-16
Llayer-75
Mlayer-76
Nlayer-77
Olayer-78
Player-79
Qlayer-80
Rlayer-81
Slayer-82
Tlayer_with_weights-17
Tlayer-83
Ulayer-84
Vlayer_with_weights-18
Vlayer-85
W	optimizer
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\
signatures
 

]	keras_api

^	keras_api

_	keras_api

`	keras_api

a	keras_api
 

b	keras_api
 

c	keras_api

d	keras_api

e	keras_api

f	keras_api

g	keras_api
?
haxis
	igamma
jbeta
kmoving_mean
lmoving_variance
m	variables
ntrainable_variables
oregularization_losses
p	keras_api

q	keras_api

r	keras_api

s	keras_api

t	keras_api

u	keras_api

v	keras_api

w	keras_api

x	keras_api

y	keras_api

z	keras_api

{	keras_api

|	keras_api

}	keras_api

~	keras_api

	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api
c
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
c
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

?	keras_api
c
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
c
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api

?	keras_api
c
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
c
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

?	keras_api
c
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
c
?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api

?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api

?	keras_api

?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
n
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
?beta_1
?beta_2

?decay
?learning_rate
	?iterim?jm?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?iv?jv?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?
?
i0
j1
k2
l3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?
i0
j1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
 
?
?metrics
X	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
Ytrainable_variables
Zregularization_losses
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
ca
VARIABLE_VALUEParticleNet_fts_bn/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEParticleNet_fts_bn/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEParticleNet_fts_bn/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE"ParticleNet_fts_bn/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

i0
j1
k2
l3

i0
j1
 
?
?metrics
m	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
ntrainable_variables
oregularization_losses
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
nl
VARIABLE_VALUE"ParticleNet_EdgeConv0_conv0/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0

?0
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
jh
VARIABLE_VALUEParticleNet_EdgeConv0_bn0/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEParticleNet_EdgeConv0_bn0/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE%ParticleNet_EdgeConv0_bn0/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE)ParticleNet_EdgeConv0_bn0/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
nl
VARIABLE_VALUE"ParticleNet_EdgeConv0_conv1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0

?0
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
jh
VARIABLE_VALUEParticleNet_EdgeConv0_bn1/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEParticleNet_EdgeConv0_bn1/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE%ParticleNet_EdgeConv0_bn1/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE)ParticleNet_EdgeConv0_bn1/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
nl
VARIABLE_VALUE"ParticleNet_EdgeConv0_conv2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0

?0
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
pn
VARIABLE_VALUE$ParticleNet_EdgeConv0_sc_conv/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0

?0
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
jh
VARIABLE_VALUEParticleNet_EdgeConv0_bn2/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEParticleNet_EdgeConv0_bn2/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE%ParticleNet_EdgeConv0_bn2/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE)ParticleNet_EdgeConv0_bn2/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
lj
VARIABLE_VALUE!ParticleNet_EdgeConv0_sc_bn/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE ParticleNet_EdgeConv0_sc_bn/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE'ParticleNet_EdgeConv0_sc_bn/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUE+ParticleNet_EdgeConv0_sc_bn/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
 
 
 
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
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
nl
VARIABLE_VALUE"ParticleNet_EdgeConv1_conv0/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0

?0
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
ki
VARIABLE_VALUEParticleNet_EdgeConv1_bn0/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEParticleNet_EdgeConv1_bn0/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE%ParticleNet_EdgeConv1_bn0/moving_mean<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE)ParticleNet_EdgeConv1_bn0/moving_variance@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
om
VARIABLE_VALUE"ParticleNet_EdgeConv1_conv1/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0

?0
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
ki
VARIABLE_VALUEParticleNet_EdgeConv1_bn1/gamma6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEParticleNet_EdgeConv1_bn1/beta5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE%ParticleNet_EdgeConv1_bn1/moving_mean<layer_with_weights-12/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE)ParticleNet_EdgeConv1_bn1/moving_variance@layer_with_weights-12/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
om
VARIABLE_VALUE"ParticleNet_EdgeConv1_conv2/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0

?0
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
qo
VARIABLE_VALUE$ParticleNet_EdgeConv1_sc_conv/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE

?0

?0
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
ki
VARIABLE_VALUEParticleNet_EdgeConv1_bn2/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEParticleNet_EdgeConv1_bn2/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE%ParticleNet_EdgeConv1_bn2/moving_mean<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE)ParticleNet_EdgeConv1_bn2/moving_variance@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
mk
VARIABLE_VALUE!ParticleNet_EdgeConv1_sc_bn/gamma6layer_with_weights-16/gamma/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE ParticleNet_EdgeConv1_sc_bn/beta5layer_with_weights-16/beta/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE'ParticleNet_EdgeConv1_sc_bn/moving_mean<layer_with_weights-16/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUE+ParticleNet_EdgeConv1_sc_bn/moving_variance@layer_with_weights-16/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
 
 
 
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
 
 
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?0
?1
 
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
?2
 
?
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
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754
855
956
:57
;58
<59
=60
>61
?62
@63
A64
B65
C66
D67
E68
F69
G70
H71
I72
J73
K74
L75
M76
N77
O78
P79
Q80
R81
S82
T83
U84
V85
?
k0
l1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
 
 
 
 

k0
l1
 
 
 
 
 
 
 
 
 

?0
?1
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

?0
?1
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

?0
?1
 
 
 
 

?0
?1
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

?0
?1
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

?0
?1
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

?0
?1
 
 
 
 

?0
?1
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
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
??
VARIABLE_VALUEAdam/ParticleNet_fts_bn/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/ParticleNet_fts_bn/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv0_conv0/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv0_bn0/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv0_bn0/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv0_conv1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv0_bn1/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv0_bn1/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv0_conv2/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv0_bn2/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv0_bn2/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/mQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/ParticleNet_EdgeConv0_sc_bn/beta/mPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv1_conv0/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv1_bn0/gamma/mRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv1_bn0/beta/mQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv1_conv1/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv1_bn1/gamma/mRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv1_bn1/beta/mQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv1_conv2/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv1_bn2/gamma/mRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv1_bn2/beta/mQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/mRlayer_with_weights-16/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/ParticleNet_EdgeConv1_sc_bn/beta/mQlayer_with_weights-16/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/ParticleNet_fts_bn/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/ParticleNet_fts_bn/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv0_conv0/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv0_bn0/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv0_bn0/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv0_conv1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv0_bn1/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv0_bn1/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv0_conv2/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv0_bn2/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv0_bn2/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/vQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/ParticleNet_EdgeConv0_sc_bn/beta/vPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv1_conv0/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv1_bn0/gamma/vRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv1_bn0/beta/vQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv1_conv1/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv1_bn1/gamma/vRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv1_bn1/beta/vQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)Adam/ParticleNet_EdgeConv1_conv2/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&Adam/ParticleNet_EdgeConv1_bn2/gamma/vRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%Adam/ParticleNet_EdgeConv1_bn2/beta/vQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/vRlayer_with_weights-16/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'Adam/ParticleNet_EdgeConv1_sc_bn/beta/vQlayer_with_weights-16/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_featuresPlaceholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
serving_default_maskPlaceholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
serving_default_pointsPlaceholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_featuresserving_default_maskserving_default_pointsConstConst_1ParticleNet_fts_bn/gammaParticleNet_fts_bn/betaParticleNet_fts_bn/moving_mean"ParticleNet_fts_bn/moving_variance"ParticleNet_EdgeConv0_conv0/kernelParticleNet_EdgeConv0_bn0/gammaParticleNet_EdgeConv0_bn0/beta%ParticleNet_EdgeConv0_bn0/moving_mean)ParticleNet_EdgeConv0_bn0/moving_variance"ParticleNet_EdgeConv0_conv1/kernelParticleNet_EdgeConv0_bn1/gammaParticleNet_EdgeConv0_bn1/beta%ParticleNet_EdgeConv0_bn1/moving_mean)ParticleNet_EdgeConv0_bn1/moving_variance"ParticleNet_EdgeConv0_conv2/kernelParticleNet_EdgeConv0_bn2/gammaParticleNet_EdgeConv0_bn2/beta%ParticleNet_EdgeConv0_bn2/moving_mean)ParticleNet_EdgeConv0_bn2/moving_variance$ParticleNet_EdgeConv0_sc_conv/kernel!ParticleNet_EdgeConv0_sc_bn/gamma ParticleNet_EdgeConv0_sc_bn/beta'ParticleNet_EdgeConv0_sc_bn/moving_mean+ParticleNet_EdgeConv0_sc_bn/moving_variance"ParticleNet_EdgeConv1_conv0/kernelParticleNet_EdgeConv1_bn0/gammaParticleNet_EdgeConv1_bn0/beta%ParticleNet_EdgeConv1_bn0/moving_mean)ParticleNet_EdgeConv1_bn0/moving_variance"ParticleNet_EdgeConv1_conv1/kernelParticleNet_EdgeConv1_bn1/gammaParticleNet_EdgeConv1_bn1/beta%ParticleNet_EdgeConv1_bn1/moving_mean)ParticleNet_EdgeConv1_bn1/moving_variance"ParticleNet_EdgeConv1_conv2/kernelParticleNet_EdgeConv1_bn2/gammaParticleNet_EdgeConv1_bn2/beta%ParticleNet_EdgeConv1_bn2/moving_mean)ParticleNet_EdgeConv1_bn2/moving_variance$ParticleNet_EdgeConv1_sc_conv/kernel!ParticleNet_EdgeConv1_sc_bn/gamma ParticleNet_EdgeConv1_sc_bn/beta'ParticleNet_EdgeConv1_sc_bn/moving_mean+ParticleNet_EdgeConv1_sc_bn/moving_variancedense/kernel
dense/biasdense_1/kerneldense_1/bias*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./01234*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_55266
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?5
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,ParticleNet_fts_bn/gamma/Read/ReadVariableOp+ParticleNet_fts_bn/beta/Read/ReadVariableOp2ParticleNet_fts_bn/moving_mean/Read/ReadVariableOp6ParticleNet_fts_bn/moving_variance/Read/ReadVariableOp6ParticleNet_EdgeConv0_conv0/kernel/Read/ReadVariableOp3ParticleNet_EdgeConv0_bn0/gamma/Read/ReadVariableOp2ParticleNet_EdgeConv0_bn0/beta/Read/ReadVariableOp9ParticleNet_EdgeConv0_bn0/moving_mean/Read/ReadVariableOp=ParticleNet_EdgeConv0_bn0/moving_variance/Read/ReadVariableOp6ParticleNet_EdgeConv0_conv1/kernel/Read/ReadVariableOp3ParticleNet_EdgeConv0_bn1/gamma/Read/ReadVariableOp2ParticleNet_EdgeConv0_bn1/beta/Read/ReadVariableOp9ParticleNet_EdgeConv0_bn1/moving_mean/Read/ReadVariableOp=ParticleNet_EdgeConv0_bn1/moving_variance/Read/ReadVariableOp6ParticleNet_EdgeConv0_conv2/kernel/Read/ReadVariableOp8ParticleNet_EdgeConv0_sc_conv/kernel/Read/ReadVariableOp3ParticleNet_EdgeConv0_bn2/gamma/Read/ReadVariableOp2ParticleNet_EdgeConv0_bn2/beta/Read/ReadVariableOp9ParticleNet_EdgeConv0_bn2/moving_mean/Read/ReadVariableOp=ParticleNet_EdgeConv0_bn2/moving_variance/Read/ReadVariableOp5ParticleNet_EdgeConv0_sc_bn/gamma/Read/ReadVariableOp4ParticleNet_EdgeConv0_sc_bn/beta/Read/ReadVariableOp;ParticleNet_EdgeConv0_sc_bn/moving_mean/Read/ReadVariableOp?ParticleNet_EdgeConv0_sc_bn/moving_variance/Read/ReadVariableOp6ParticleNet_EdgeConv1_conv0/kernel/Read/ReadVariableOp3ParticleNet_EdgeConv1_bn0/gamma/Read/ReadVariableOp2ParticleNet_EdgeConv1_bn0/beta/Read/ReadVariableOp9ParticleNet_EdgeConv1_bn0/moving_mean/Read/ReadVariableOp=ParticleNet_EdgeConv1_bn0/moving_variance/Read/ReadVariableOp6ParticleNet_EdgeConv1_conv1/kernel/Read/ReadVariableOp3ParticleNet_EdgeConv1_bn1/gamma/Read/ReadVariableOp2ParticleNet_EdgeConv1_bn1/beta/Read/ReadVariableOp9ParticleNet_EdgeConv1_bn1/moving_mean/Read/ReadVariableOp=ParticleNet_EdgeConv1_bn1/moving_variance/Read/ReadVariableOp6ParticleNet_EdgeConv1_conv2/kernel/Read/ReadVariableOp8ParticleNet_EdgeConv1_sc_conv/kernel/Read/ReadVariableOp3ParticleNet_EdgeConv1_bn2/gamma/Read/ReadVariableOp2ParticleNet_EdgeConv1_bn2/beta/Read/ReadVariableOp9ParticleNet_EdgeConv1_bn2/moving_mean/Read/ReadVariableOp=ParticleNet_EdgeConv1_bn2/moving_variance/Read/ReadVariableOp5ParticleNet_EdgeConv1_sc_bn/gamma/Read/ReadVariableOp4ParticleNet_EdgeConv1_sc_bn/beta/Read/ReadVariableOp;ParticleNet_EdgeConv1_sc_bn/moving_mean/Read/ReadVariableOp?ParticleNet_EdgeConv1_sc_bn/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp3Adam/ParticleNet_fts_bn/gamma/m/Read/ReadVariableOp2Adam/ParticleNet_fts_bn/beta/m/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv0_conv0/kernel/m/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv0_bn0/gamma/m/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv0_bn0/beta/m/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv0_conv1/kernel/m/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv0_bn1/gamma/m/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv0_bn1/beta/m/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv0_conv2/kernel/m/Read/ReadVariableOp?Adam/ParticleNet_EdgeConv0_sc_conv/kernel/m/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv0_bn2/gamma/m/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv0_bn2/beta/m/Read/ReadVariableOp<Adam/ParticleNet_EdgeConv0_sc_bn/gamma/m/Read/ReadVariableOp;Adam/ParticleNet_EdgeConv0_sc_bn/beta/m/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv1_conv0/kernel/m/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv1_bn0/gamma/m/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv1_bn0/beta/m/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv1_conv1/kernel/m/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv1_bn1/gamma/m/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv1_bn1/beta/m/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv1_conv2/kernel/m/Read/ReadVariableOp?Adam/ParticleNet_EdgeConv1_sc_conv/kernel/m/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv1_bn2/gamma/m/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv1_bn2/beta/m/Read/ReadVariableOp<Adam/ParticleNet_EdgeConv1_sc_bn/gamma/m/Read/ReadVariableOp;Adam/ParticleNet_EdgeConv1_sc_bn/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp3Adam/ParticleNet_fts_bn/gamma/v/Read/ReadVariableOp2Adam/ParticleNet_fts_bn/beta/v/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv0_conv0/kernel/v/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv0_bn0/gamma/v/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv0_bn0/beta/v/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv0_conv1/kernel/v/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv0_bn1/gamma/v/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv0_bn1/beta/v/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv0_conv2/kernel/v/Read/ReadVariableOp?Adam/ParticleNet_EdgeConv0_sc_conv/kernel/v/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv0_bn2/gamma/v/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv0_bn2/beta/v/Read/ReadVariableOp<Adam/ParticleNet_EdgeConv0_sc_bn/gamma/v/Read/ReadVariableOp;Adam/ParticleNet_EdgeConv0_sc_bn/beta/v/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv1_conv0/kernel/v/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv1_bn0/gamma/v/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv1_bn0/beta/v/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv1_conv1/kernel/v/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv1_bn1/gamma/v/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv1_bn1/beta/v/Read/ReadVariableOp=Adam/ParticleNet_EdgeConv1_conv2/kernel/v/Read/ReadVariableOp?Adam/ParticleNet_EdgeConv1_sc_conv/kernel/v/Read/ReadVariableOp:Adam/ParticleNet_EdgeConv1_bn2/gamma/v/Read/ReadVariableOp9Adam/ParticleNet_EdgeConv1_bn2/beta/v/Read/ReadVariableOp<Adam/ParticleNet_EdgeConv1_sc_bn/gamma/v/Read/ReadVariableOp;Adam/ParticleNet_EdgeConv1_sc_bn/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst_2*?
Tin
}2{	*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_57860
?#
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameParticleNet_fts_bn/gammaParticleNet_fts_bn/betaParticleNet_fts_bn/moving_mean"ParticleNet_fts_bn/moving_variance"ParticleNet_EdgeConv0_conv0/kernelParticleNet_EdgeConv0_bn0/gammaParticleNet_EdgeConv0_bn0/beta%ParticleNet_EdgeConv0_bn0/moving_mean)ParticleNet_EdgeConv0_bn0/moving_variance"ParticleNet_EdgeConv0_conv1/kernelParticleNet_EdgeConv0_bn1/gammaParticleNet_EdgeConv0_bn1/beta%ParticleNet_EdgeConv0_bn1/moving_mean)ParticleNet_EdgeConv0_bn1/moving_variance"ParticleNet_EdgeConv0_conv2/kernel$ParticleNet_EdgeConv0_sc_conv/kernelParticleNet_EdgeConv0_bn2/gammaParticleNet_EdgeConv0_bn2/beta%ParticleNet_EdgeConv0_bn2/moving_mean)ParticleNet_EdgeConv0_bn2/moving_variance!ParticleNet_EdgeConv0_sc_bn/gamma ParticleNet_EdgeConv0_sc_bn/beta'ParticleNet_EdgeConv0_sc_bn/moving_mean+ParticleNet_EdgeConv0_sc_bn/moving_variance"ParticleNet_EdgeConv1_conv0/kernelParticleNet_EdgeConv1_bn0/gammaParticleNet_EdgeConv1_bn0/beta%ParticleNet_EdgeConv1_bn0/moving_mean)ParticleNet_EdgeConv1_bn0/moving_variance"ParticleNet_EdgeConv1_conv1/kernelParticleNet_EdgeConv1_bn1/gammaParticleNet_EdgeConv1_bn1/beta%ParticleNet_EdgeConv1_bn1/moving_mean)ParticleNet_EdgeConv1_bn1/moving_variance"ParticleNet_EdgeConv1_conv2/kernel$ParticleNet_EdgeConv1_sc_conv/kernelParticleNet_EdgeConv1_bn2/gammaParticleNet_EdgeConv1_bn2/beta%ParticleNet_EdgeConv1_bn2/moving_mean)ParticleNet_EdgeConv1_bn2/moving_variance!ParticleNet_EdgeConv1_sc_bn/gamma ParticleNet_EdgeConv1_sc_bn/beta'ParticleNet_EdgeConv1_sc_bn/moving_mean+ParticleNet_EdgeConv1_sc_bn/moving_variancedense/kernel
dense/biasdense_1/kerneldense_1/biasbeta_1beta_2decaylearning_rate	Adam/itertotalcounttotal_1count_1true_positivestrue_negativesfalse_positivesfalse_negativesAdam/ParticleNet_fts_bn/gamma/mAdam/ParticleNet_fts_bn/beta/m)Adam/ParticleNet_EdgeConv0_conv0/kernel/m&Adam/ParticleNet_EdgeConv0_bn0/gamma/m%Adam/ParticleNet_EdgeConv0_bn0/beta/m)Adam/ParticleNet_EdgeConv0_conv1/kernel/m&Adam/ParticleNet_EdgeConv0_bn1/gamma/m%Adam/ParticleNet_EdgeConv0_bn1/beta/m)Adam/ParticleNet_EdgeConv0_conv2/kernel/m+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/m&Adam/ParticleNet_EdgeConv0_bn2/gamma/m%Adam/ParticleNet_EdgeConv0_bn2/beta/m(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/m'Adam/ParticleNet_EdgeConv0_sc_bn/beta/m)Adam/ParticleNet_EdgeConv1_conv0/kernel/m&Adam/ParticleNet_EdgeConv1_bn0/gamma/m%Adam/ParticleNet_EdgeConv1_bn0/beta/m)Adam/ParticleNet_EdgeConv1_conv1/kernel/m&Adam/ParticleNet_EdgeConv1_bn1/gamma/m%Adam/ParticleNet_EdgeConv1_bn1/beta/m)Adam/ParticleNet_EdgeConv1_conv2/kernel/m+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/m&Adam/ParticleNet_EdgeConv1_bn2/gamma/m%Adam/ParticleNet_EdgeConv1_bn2/beta/m(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/m'Adam/ParticleNet_EdgeConv1_sc_bn/beta/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/ParticleNet_fts_bn/gamma/vAdam/ParticleNet_fts_bn/beta/v)Adam/ParticleNet_EdgeConv0_conv0/kernel/v&Adam/ParticleNet_EdgeConv0_bn0/gamma/v%Adam/ParticleNet_EdgeConv0_bn0/beta/v)Adam/ParticleNet_EdgeConv0_conv1/kernel/v&Adam/ParticleNet_EdgeConv0_bn1/gamma/v%Adam/ParticleNet_EdgeConv0_bn1/beta/v)Adam/ParticleNet_EdgeConv0_conv2/kernel/v+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/v&Adam/ParticleNet_EdgeConv0_bn2/gamma/v%Adam/ParticleNet_EdgeConv0_bn2/beta/v(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/v'Adam/ParticleNet_EdgeConv0_sc_bn/beta/v)Adam/ParticleNet_EdgeConv1_conv0/kernel/v&Adam/ParticleNet_EdgeConv1_bn0/gamma/v%Adam/ParticleNet_EdgeConv1_bn0/beta/v)Adam/ParticleNet_EdgeConv1_conv1/kernel/v&Adam/ParticleNet_EdgeConv1_bn1/gamma/v%Adam/ParticleNet_EdgeConv1_bn1/beta/v)Adam/ParticleNet_EdgeConv1_conv2/kernel/v+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/v&Adam/ParticleNet_EdgeConv1_bn2/gamma/v%Adam/ParticleNet_EdgeConv1_bn2/beta/v(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/v'Adam/ParticleNet_EdgeConv1_sc_bn/beta/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*?
Tin~
|2z*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_58233??*
?
?
V__inference_ParticleNet_EdgeConv0_conv0_layer_call_and_return_conditional_losses_53293

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
V
:__inference_ParticleNet_EdgeConv0_act2_layer_call_fn_56785

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act2_layer_call_and_return_conditional_losses_536142
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57293

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_57435

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_53002

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?L
!__inference__traced_restore_58233
file_prefix-
)assignvariableop_particlenet_fts_bn_gamma.
*assignvariableop_1_particlenet_fts_bn_beta5
1assignvariableop_2_particlenet_fts_bn_moving_mean9
5assignvariableop_3_particlenet_fts_bn_moving_variance9
5assignvariableop_4_particlenet_edgeconv0_conv0_kernel6
2assignvariableop_5_particlenet_edgeconv0_bn0_gamma5
1assignvariableop_6_particlenet_edgeconv0_bn0_beta<
8assignvariableop_7_particlenet_edgeconv0_bn0_moving_mean@
<assignvariableop_8_particlenet_edgeconv0_bn0_moving_variance9
5assignvariableop_9_particlenet_edgeconv0_conv1_kernel7
3assignvariableop_10_particlenet_edgeconv0_bn1_gamma6
2assignvariableop_11_particlenet_edgeconv0_bn1_beta=
9assignvariableop_12_particlenet_edgeconv0_bn1_moving_meanA
=assignvariableop_13_particlenet_edgeconv0_bn1_moving_variance:
6assignvariableop_14_particlenet_edgeconv0_conv2_kernel<
8assignvariableop_15_particlenet_edgeconv0_sc_conv_kernel7
3assignvariableop_16_particlenet_edgeconv0_bn2_gamma6
2assignvariableop_17_particlenet_edgeconv0_bn2_beta=
9assignvariableop_18_particlenet_edgeconv0_bn2_moving_meanA
=assignvariableop_19_particlenet_edgeconv0_bn2_moving_variance9
5assignvariableop_20_particlenet_edgeconv0_sc_bn_gamma8
4assignvariableop_21_particlenet_edgeconv0_sc_bn_beta?
;assignvariableop_22_particlenet_edgeconv0_sc_bn_moving_meanC
?assignvariableop_23_particlenet_edgeconv0_sc_bn_moving_variance:
6assignvariableop_24_particlenet_edgeconv1_conv0_kernel7
3assignvariableop_25_particlenet_edgeconv1_bn0_gamma6
2assignvariableop_26_particlenet_edgeconv1_bn0_beta=
9assignvariableop_27_particlenet_edgeconv1_bn0_moving_meanA
=assignvariableop_28_particlenet_edgeconv1_bn0_moving_variance:
6assignvariableop_29_particlenet_edgeconv1_conv1_kernel7
3assignvariableop_30_particlenet_edgeconv1_bn1_gamma6
2assignvariableop_31_particlenet_edgeconv1_bn1_beta=
9assignvariableop_32_particlenet_edgeconv1_bn1_moving_meanA
=assignvariableop_33_particlenet_edgeconv1_bn1_moving_variance:
6assignvariableop_34_particlenet_edgeconv1_conv2_kernel<
8assignvariableop_35_particlenet_edgeconv1_sc_conv_kernel7
3assignvariableop_36_particlenet_edgeconv1_bn2_gamma6
2assignvariableop_37_particlenet_edgeconv1_bn2_beta=
9assignvariableop_38_particlenet_edgeconv1_bn2_moving_meanA
=assignvariableop_39_particlenet_edgeconv1_bn2_moving_variance9
5assignvariableop_40_particlenet_edgeconv1_sc_bn_gamma8
4assignvariableop_41_particlenet_edgeconv1_sc_bn_beta?
;assignvariableop_42_particlenet_edgeconv1_sc_bn_moving_meanC
?assignvariableop_43_particlenet_edgeconv1_sc_bn_moving_variance$
 assignvariableop_44_dense_kernel"
assignvariableop_45_dense_bias&
"assignvariableop_46_dense_1_kernel$
 assignvariableop_47_dense_1_bias
assignvariableop_48_beta_1
assignvariableop_49_beta_2
assignvariableop_50_decay%
!assignvariableop_51_learning_rate!
assignvariableop_52_adam_iter
assignvariableop_53_total
assignvariableop_54_count
assignvariableop_55_total_1
assignvariableop_56_count_1&
"assignvariableop_57_true_positives&
"assignvariableop_58_true_negatives'
#assignvariableop_59_false_positives'
#assignvariableop_60_false_negatives7
3assignvariableop_61_adam_particlenet_fts_bn_gamma_m6
2assignvariableop_62_adam_particlenet_fts_bn_beta_mA
=assignvariableop_63_adam_particlenet_edgeconv0_conv0_kernel_m>
:assignvariableop_64_adam_particlenet_edgeconv0_bn0_gamma_m=
9assignvariableop_65_adam_particlenet_edgeconv0_bn0_beta_mA
=assignvariableop_66_adam_particlenet_edgeconv0_conv1_kernel_m>
:assignvariableop_67_adam_particlenet_edgeconv0_bn1_gamma_m=
9assignvariableop_68_adam_particlenet_edgeconv0_bn1_beta_mA
=assignvariableop_69_adam_particlenet_edgeconv0_conv2_kernel_mC
?assignvariableop_70_adam_particlenet_edgeconv0_sc_conv_kernel_m>
:assignvariableop_71_adam_particlenet_edgeconv0_bn2_gamma_m=
9assignvariableop_72_adam_particlenet_edgeconv0_bn2_beta_m@
<assignvariableop_73_adam_particlenet_edgeconv0_sc_bn_gamma_m?
;assignvariableop_74_adam_particlenet_edgeconv0_sc_bn_beta_mA
=assignvariableop_75_adam_particlenet_edgeconv1_conv0_kernel_m>
:assignvariableop_76_adam_particlenet_edgeconv1_bn0_gamma_m=
9assignvariableop_77_adam_particlenet_edgeconv1_bn0_beta_mA
=assignvariableop_78_adam_particlenet_edgeconv1_conv1_kernel_m>
:assignvariableop_79_adam_particlenet_edgeconv1_bn1_gamma_m=
9assignvariableop_80_adam_particlenet_edgeconv1_bn1_beta_mA
=assignvariableop_81_adam_particlenet_edgeconv1_conv2_kernel_mC
?assignvariableop_82_adam_particlenet_edgeconv1_sc_conv_kernel_m>
:assignvariableop_83_adam_particlenet_edgeconv1_bn2_gamma_m=
9assignvariableop_84_adam_particlenet_edgeconv1_bn2_beta_m@
<assignvariableop_85_adam_particlenet_edgeconv1_sc_bn_gamma_m?
;assignvariableop_86_adam_particlenet_edgeconv1_sc_bn_beta_m+
'assignvariableop_87_adam_dense_kernel_m)
%assignvariableop_88_adam_dense_bias_m-
)assignvariableop_89_adam_dense_1_kernel_m+
'assignvariableop_90_adam_dense_1_bias_m7
3assignvariableop_91_adam_particlenet_fts_bn_gamma_v6
2assignvariableop_92_adam_particlenet_fts_bn_beta_vA
=assignvariableop_93_adam_particlenet_edgeconv0_conv0_kernel_v>
:assignvariableop_94_adam_particlenet_edgeconv0_bn0_gamma_v=
9assignvariableop_95_adam_particlenet_edgeconv0_bn0_beta_vA
=assignvariableop_96_adam_particlenet_edgeconv0_conv1_kernel_v>
:assignvariableop_97_adam_particlenet_edgeconv0_bn1_gamma_v=
9assignvariableop_98_adam_particlenet_edgeconv0_bn1_beta_vA
=assignvariableop_99_adam_particlenet_edgeconv0_conv2_kernel_vD
@assignvariableop_100_adam_particlenet_edgeconv0_sc_conv_kernel_v?
;assignvariableop_101_adam_particlenet_edgeconv0_bn2_gamma_v>
:assignvariableop_102_adam_particlenet_edgeconv0_bn2_beta_vA
=assignvariableop_103_adam_particlenet_edgeconv0_sc_bn_gamma_v@
<assignvariableop_104_adam_particlenet_edgeconv0_sc_bn_beta_vB
>assignvariableop_105_adam_particlenet_edgeconv1_conv0_kernel_v?
;assignvariableop_106_adam_particlenet_edgeconv1_bn0_gamma_v>
:assignvariableop_107_adam_particlenet_edgeconv1_bn0_beta_vB
>assignvariableop_108_adam_particlenet_edgeconv1_conv1_kernel_v?
;assignvariableop_109_adam_particlenet_edgeconv1_bn1_gamma_v>
:assignvariableop_110_adam_particlenet_edgeconv1_bn1_beta_vB
>assignvariableop_111_adam_particlenet_edgeconv1_conv2_kernel_vD
@assignvariableop_112_adam_particlenet_edgeconv1_sc_conv_kernel_v?
;assignvariableop_113_adam_particlenet_edgeconv1_bn2_gamma_v>
:assignvariableop_114_adam_particlenet_edgeconv1_bn2_beta_vA
=assignvariableop_115_adam_particlenet_edgeconv1_sc_bn_gamma_v@
<assignvariableop_116_adam_particlenet_edgeconv1_sc_bn_beta_v,
(assignvariableop_117_adam_dense_kernel_v*
&assignvariableop_118_adam_dense_bias_v.
*assignvariableop_119_adam_dense_1_kernel_v,
(assignvariableop_120_adam_dense_1_bias_v
identity_122??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?C
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:z*
dtype0*?B
value?BB?BzB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-12/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-12/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-16/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-16/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-16/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-16/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-16/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:z*
dtype0*?
value?B?zB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes~
|2z	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp)assignvariableop_particlenet_fts_bn_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp*assignvariableop_1_particlenet_fts_bn_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp1assignvariableop_2_particlenet_fts_bn_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp5assignvariableop_3_particlenet_fts_bn_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_particlenet_edgeconv0_conv0_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp2assignvariableop_5_particlenet_edgeconv0_bn0_gammaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp1assignvariableop_6_particlenet_edgeconv0_bn0_betaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp8assignvariableop_7_particlenet_edgeconv0_bn0_moving_meanIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp<assignvariableop_8_particlenet_edgeconv0_bn0_moving_varianceIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp5assignvariableop_9_particlenet_edgeconv0_conv1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp3assignvariableop_10_particlenet_edgeconv0_bn1_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp2assignvariableop_11_particlenet_edgeconv0_bn1_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp9assignvariableop_12_particlenet_edgeconv0_bn1_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp=assignvariableop_13_particlenet_edgeconv0_bn1_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp6assignvariableop_14_particlenet_edgeconv0_conv2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp8assignvariableop_15_particlenet_edgeconv0_sc_conv_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp3assignvariableop_16_particlenet_edgeconv0_bn2_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp2assignvariableop_17_particlenet_edgeconv0_bn2_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp9assignvariableop_18_particlenet_edgeconv0_bn2_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp=assignvariableop_19_particlenet_edgeconv0_bn2_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp5assignvariableop_20_particlenet_edgeconv0_sc_bn_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_particlenet_edgeconv0_sc_bn_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp;assignvariableop_22_particlenet_edgeconv0_sc_bn_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp?assignvariableop_23_particlenet_edgeconv0_sc_bn_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp6assignvariableop_24_particlenet_edgeconv1_conv0_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp3assignvariableop_25_particlenet_edgeconv1_bn0_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp2assignvariableop_26_particlenet_edgeconv1_bn0_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp9assignvariableop_27_particlenet_edgeconv1_bn0_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp=assignvariableop_28_particlenet_edgeconv1_bn0_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp6assignvariableop_29_particlenet_edgeconv1_conv1_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp3assignvariableop_30_particlenet_edgeconv1_bn1_gammaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp2assignvariableop_31_particlenet_edgeconv1_bn1_betaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp9assignvariableop_32_particlenet_edgeconv1_bn1_moving_meanIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp=assignvariableop_33_particlenet_edgeconv1_bn1_moving_varianceIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp6assignvariableop_34_particlenet_edgeconv1_conv2_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp8assignvariableop_35_particlenet_edgeconv1_sc_conv_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp3assignvariableop_36_particlenet_edgeconv1_bn2_gammaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp2assignvariableop_37_particlenet_edgeconv1_bn2_betaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp9assignvariableop_38_particlenet_edgeconv1_bn2_moving_meanIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp=assignvariableop_39_particlenet_edgeconv1_bn2_moving_varianceIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp5assignvariableop_40_particlenet_edgeconv1_sc_bn_gammaIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp4assignvariableop_41_particlenet_edgeconv1_sc_bn_betaIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp;assignvariableop_42_particlenet_edgeconv1_sc_bn_moving_meanIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp?assignvariableop_43_particlenet_edgeconv1_sc_bn_moving_varianceIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp assignvariableop_44_dense_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOpassignvariableop_45_dense_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp"assignvariableop_46_dense_1_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp assignvariableop_47_dense_1_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOpassignvariableop_48_beta_1Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOpassignvariableop_49_beta_2Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOpassignvariableop_50_decayIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp!assignvariableop_51_learning_rateIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOpassignvariableop_52_adam_iterIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOpassignvariableop_53_totalIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOpassignvariableop_54_countIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_1Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_1Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp"assignvariableop_57_true_positivesIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp"assignvariableop_58_true_negativesIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp#assignvariableop_59_false_positivesIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp#assignvariableop_60_false_negativesIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp3assignvariableop_61_adam_particlenet_fts_bn_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp2assignvariableop_62_adam_particlenet_fts_bn_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp=assignvariableop_63_adam_particlenet_edgeconv0_conv0_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp:assignvariableop_64_adam_particlenet_edgeconv0_bn0_gamma_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp9assignvariableop_65_adam_particlenet_edgeconv0_bn0_beta_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp=assignvariableop_66_adam_particlenet_edgeconv0_conv1_kernel_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp:assignvariableop_67_adam_particlenet_edgeconv0_bn1_gamma_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp9assignvariableop_68_adam_particlenet_edgeconv0_bn1_beta_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp=assignvariableop_69_adam_particlenet_edgeconv0_conv2_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp?assignvariableop_70_adam_particlenet_edgeconv0_sc_conv_kernel_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp:assignvariableop_71_adam_particlenet_edgeconv0_bn2_gamma_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp9assignvariableop_72_adam_particlenet_edgeconv0_bn2_beta_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp<assignvariableop_73_adam_particlenet_edgeconv0_sc_bn_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp;assignvariableop_74_adam_particlenet_edgeconv0_sc_bn_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp=assignvariableop_75_adam_particlenet_edgeconv1_conv0_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp:assignvariableop_76_adam_particlenet_edgeconv1_bn0_gamma_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp9assignvariableop_77_adam_particlenet_edgeconv1_bn0_beta_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp=assignvariableop_78_adam_particlenet_edgeconv1_conv1_kernel_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp:assignvariableop_79_adam_particlenet_edgeconv1_bn1_gamma_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp9assignvariableop_80_adam_particlenet_edgeconv1_bn1_beta_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp=assignvariableop_81_adam_particlenet_edgeconv1_conv2_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp?assignvariableop_82_adam_particlenet_edgeconv1_sc_conv_kernel_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp:assignvariableop_83_adam_particlenet_edgeconv1_bn2_gamma_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp9assignvariableop_84_adam_particlenet_edgeconv1_bn2_beta_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp<assignvariableop_85_adam_particlenet_edgeconv1_sc_bn_gamma_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp;assignvariableop_86_adam_particlenet_edgeconv1_sc_bn_beta_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp'assignvariableop_87_adam_dense_kernel_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp%assignvariableop_88_adam_dense_bias_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp)assignvariableop_89_adam_dense_1_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp'assignvariableop_90_adam_dense_1_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp3assignvariableop_91_adam_particlenet_fts_bn_gamma_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp2assignvariableop_92_adam_particlenet_fts_bn_beta_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp=assignvariableop_93_adam_particlenet_edgeconv0_conv0_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp:assignvariableop_94_adam_particlenet_edgeconv0_bn0_gamma_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp9assignvariableop_95_adam_particlenet_edgeconv0_bn0_beta_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp=assignvariableop_96_adam_particlenet_edgeconv0_conv1_kernel_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp:assignvariableop_97_adam_particlenet_edgeconv0_bn1_gamma_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp9assignvariableop_98_adam_particlenet_edgeconv0_bn1_beta_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp=assignvariableop_99_adam_particlenet_edgeconv0_conv2_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp@assignvariableop_100_adam_particlenet_edgeconv0_sc_conv_kernel_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOp;assignvariableop_101_adam_particlenet_edgeconv0_bn2_gamma_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOp:assignvariableop_102_adam_particlenet_edgeconv0_bn2_beta_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp=assignvariableop_103_adam_particlenet_edgeconv0_sc_bn_gamma_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp<assignvariableop_104_adam_particlenet_edgeconv0_sc_bn_beta_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp>assignvariableop_105_adam_particlenet_edgeconv1_conv0_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp;assignvariableop_106_adam_particlenet_edgeconv1_bn0_gamma_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp:assignvariableop_107_adam_particlenet_edgeconv1_bn0_beta_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp>assignvariableop_108_adam_particlenet_edgeconv1_conv1_kernel_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp;assignvariableop_109_adam_particlenet_edgeconv1_bn1_gamma_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp:assignvariableop_110_adam_particlenet_edgeconv1_bn1_beta_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp>assignvariableop_111_adam_particlenet_edgeconv1_conv2_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp@assignvariableop_112_adam_particlenet_edgeconv1_sc_conv_kernel_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113?
AssignVariableOp_113AssignVariableOp;assignvariableop_113_adam_particlenet_edgeconv1_bn2_gamma_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114?
AssignVariableOp_114AssignVariableOp:assignvariableop_114_adam_particlenet_edgeconv1_bn2_beta_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115?
AssignVariableOp_115AssignVariableOp=assignvariableop_115_adam_particlenet_edgeconv1_sc_bn_gamma_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116?
AssignVariableOp_116AssignVariableOp<assignvariableop_116_adam_particlenet_edgeconv1_sc_bn_beta_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117?
AssignVariableOp_117AssignVariableOp(assignvariableop_117_adam_dense_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118?
AssignVariableOp_118AssignVariableOp&assignvariableop_118_adam_dense_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119?
AssignVariableOp_119AssignVariableOp*assignvariableop_119_adam_dense_1_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120?
AssignVariableOp_120AssignVariableOp(assignvariableop_120_adam_dense_1_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_121Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_121?
Identity_122IdentityIdentity_121:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_122"%
identity_122Identity_122:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202*
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
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
??
?
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_54250

points
features
mask
tf_math_multiply_mul_x
tf_math_multiply_3_mul_x
particlenet_fts_bn_53240
particlenet_fts_bn_53242
particlenet_fts_bn_53244
particlenet_fts_bn_53246%
!particlenet_edgeconv0_conv0_53302#
particlenet_edgeconv0_bn0_53369#
particlenet_edgeconv0_bn0_53371#
particlenet_edgeconv0_bn0_53373#
particlenet_edgeconv0_bn0_53375%
!particlenet_edgeconv0_conv1_53407#
particlenet_edgeconv0_bn1_53474#
particlenet_edgeconv0_bn1_53476#
particlenet_edgeconv0_bn1_53478#
particlenet_edgeconv0_bn1_53480%
!particlenet_edgeconv0_conv2_53512#
particlenet_edgeconv0_bn2_53581#
particlenet_edgeconv0_bn2_53583#
particlenet_edgeconv0_bn2_53585#
particlenet_edgeconv0_bn2_53587'
#particlenet_edgeconv0_sc_conv_53606%
!particlenet_edgeconv0_sc_bn_53686%
!particlenet_edgeconv0_sc_bn_53688%
!particlenet_edgeconv0_sc_bn_53690%
!particlenet_edgeconv0_sc_bn_53692%
!particlenet_edgeconv1_conv0_53752#
particlenet_edgeconv1_bn0_53819#
particlenet_edgeconv1_bn0_53821#
particlenet_edgeconv1_bn0_53823#
particlenet_edgeconv1_bn0_53825%
!particlenet_edgeconv1_conv1_53857#
particlenet_edgeconv1_bn1_53924#
particlenet_edgeconv1_bn1_53926#
particlenet_edgeconv1_bn1_53928#
particlenet_edgeconv1_bn1_53930%
!particlenet_edgeconv1_conv2_53962#
particlenet_edgeconv1_bn2_54031#
particlenet_edgeconv1_bn2_54033#
particlenet_edgeconv1_bn2_54035#
particlenet_edgeconv1_bn2_54037'
#particlenet_edgeconv1_sc_conv_54056%
!particlenet_edgeconv1_sc_bn_54136%
!particlenet_edgeconv1_sc_bn_54138%
!particlenet_edgeconv1_sc_bn_54140%
!particlenet_edgeconv1_sc_bn_54142
dense_54187
dense_54189
dense_1_54244
dense_1_54246
identity??1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall?1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall?1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall?3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall?5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall?3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall?5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall?*ParticleNet_fts_bn/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?
tf.math.not_equal/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.not_equal/NotEqual/y?
tf.math.not_equal/NotEqualNotEqualmask%tf.math.not_equal/NotEqual/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.not_equal/NotEqual?
tf.cast/CastCasttf.math.not_equal/NotEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast/Casts
tf.math.equal/Equal/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.equal/Equal/y?
tf.math.equal/EqualEqualtf.cast/Cast:y:0tf.math.equal/Equal/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.equal/Equal?
tf.cast_1/CastCasttf.math.equal/Equal:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast_1/Cast?
tf.math.multiply/MulMultf_math_multiply_mul_xtf.cast_1/Cast:y:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply/Mul?
tf.math.add/AddAddtf.math.multiply/Mul:z:0points*
T0*,
_output_shapes
:??????????2
tf.math.add/Add?
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm?
 tf.compat.v1.transpose/transpose	Transposetf.math.add/Add:z:0.tf.compat.v1.transpose/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2"
 tf.compat.v1.transpose/transpose?
tf.math.multiply_2/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_2/Mul?
tf.linalg.matmul/MatMulBatchMatMulV2tf.math.add/Add:z:0$tf.compat.v1.transpose/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.linalg.matmul/MatMul?
tf.math.multiply_1/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_1/Mul?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDimsfeatures&tf.expand_dims/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
*tf.math.reduce_sum_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_1/Sum/reduction_indices?
tf.math.reduce_sum_1/SumSumtf.math.multiply_2/Mul:z:03tf.math.reduce_sum_1/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum_1/Sum?
(tf.math.reduce_sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(tf.math.reduce_sum/Sum/reduction_indices?
tf.math.reduce_sum/SumSumtf.math.multiply_1/Mul:z:01tf.math.reduce_sum/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum/Sum?
tf.math.multiply_3/MulMultf_math_multiply_3_mul_x tf.linalg.matmul/MatMul:output:0*
T0*-
_output_shapes
:???????????2
tf.math.multiply_3/Mul?
*ParticleNet_fts_bn/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0particlenet_fts_bn_53240particlenet_fts_bn_53242particlenet_fts_bn_53244particlenet_fts_bn_53246*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_531952,
*ParticleNet_fts_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze/SqueezeSqueeze3ParticleNet_fts_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
2
tf.compat.v1.squeeze/Squeeze?
tf.math.subtract/SubSubtf.math.reduce_sum/Sum:output:0tf.math.multiply_3/Mul:z:0*
T0*-
_output_shapes
:???????????2
tf.math.subtract/Sub?
'tf.compat.v1.transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'tf.compat.v1.transpose_1/transpose/perm?
"tf.compat.v1.transpose_1/transpose	Transpose!tf.math.reduce_sum_1/Sum:output:00tf.compat.v1.transpose_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2$
"tf.compat.v1.transpose_1/transpose?
tf.__operators__.add/AddV2AddV2tf.math.subtract/Sub:z:0&tf.compat.v1.transpose_1/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.__operators__.add/AddV2?
tf.compat.v1.shape/ShapeShape%tf.compat.v1.squeeze/Squeeze:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape/Shape?
tf.math.negative/NegNegtf.__operators__.add/AddV2:z:0*
T0*-
_output_shapes
:???????????2
tf.math.negative/Neg?
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_1/strided_slice/stack?
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_1?
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_2?
(tf.__operators__.getitem_1/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_1/strided_slicer
tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :2
tf.math.top_k/TopKV2/k?
tf.math.top_k/TopKV2TopKV2tf.math.negative/Neg:y:0tf.math.top_k/TopKV2/k:output:0*
T0*D
_output_shapes2
0:??????????:??????????2
tf.math.top_k/TopKV2n
tf.range/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range/range/startn
tf.range/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range/range/delta?
tf.range/rangeRangetf.range/range/start:output:01tf.__operators__.getitem_1/strided_slice:output:0tf.range/range/delta:output:0*#
_output_shapes
:?????????2
tf.range/range?
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2.
,tf.__operators__.getitem/strided_slice/stack?
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            20
.tf.__operators__.getitem/strided_slice/stack_1?
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         20
.tf.__operators__.getitem/strided_slice/stack_2?
&tf.__operators__.getitem/strided_sliceStridedSlicetf.math.top_k/TopKV2:indices:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice?
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape/Reshape/shape?
tf.reshape/ReshapeReshapetf.range/range:output:0!tf.reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape/Reshape?
tf.tile/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile/Tile/multiples?
tf.tile/TileTiletf.reshape/Reshape:output:0tf.tile/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile/Tile?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDimsp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis?
tf.concat/concatConcatV2tf.tile/Tile:output:0$tf.expand_dims_1/ExpandDims:output:0tf.concat/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat/concat?
tf.expand_dims_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_2/ExpandDims/dim?
tf.expand_dims_2/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_2/ExpandDims?
tf.tile_1/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_1/Tile/multiples?
tf.tile_1/TileTile$tf.expand_dims_2/ExpandDims:output:0!tf.tile_1/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_1/Tile?
tf.compat.v1.gather_nd/GatherNdGatherNd%tf.compat.v1.squeeze/Squeeze:output:0tf.concat/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:??????????2!
tf.compat.v1.gather_nd/GatherNd?
tf.math.subtract_1/SubSub(tf.compat.v1.gather_nd/GatherNd:output:0tf.tile_1/Tile:output:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_1/Sub}
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_1/concat/axis?
tf.concat_1/concatConcatV2tf.tile_1/Tile:output:0tf.math.subtract_1/Sub:z:0 tf.concat_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_1/concat?
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCallStatefulPartitionedCalltf.concat_1/concat:output:0!particlenet_edgeconv0_conv0_53302*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv0_layer_call_and_return_conditional_losses_5329325
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall?
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn0_53369particlenet_edgeconv0_bn0_53371particlenet_edgeconv0_bn0_53373particlenet_edgeconv0_bn0_53375*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_5332423
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act0/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act0_layer_call_and_return_conditional_losses_533832,
*ParticleNet_EdgeConv0_act0/PartitionedCall?
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv0_act0/PartitionedCall:output:0!particlenet_edgeconv0_conv1_53407*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv1_layer_call_and_return_conditional_losses_5339825
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall?
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn1_53474particlenet_edgeconv0_bn1_53476particlenet_edgeconv0_bn1_53478particlenet_edgeconv0_bn1_53480*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_5342923
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act1/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act1_layer_call_and_return_conditional_losses_534882,
*ParticleNet_EdgeConv0_act1/PartitionedCall?
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv0_act1/PartitionedCall:output:0!particlenet_edgeconv0_conv2_53512*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv2_layer_call_and_return_conditional_losses_5350325
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn2_53581particlenet_edgeconv0_bn2_53583particlenet_edgeconv0_bn2_53585particlenet_edgeconv0_bn2_53587*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_5353623
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall?
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_3/ExpandDims:output:0#particlenet_edgeconv0_sc_conv_53606*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_and_return_conditional_losses_5359727
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act2/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act2_layer_call_and_return_conditional_losses_536142,
*ParticleNet_EdgeConv0_act2/PartitionedCall?
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCallStatefulPartitionedCall>ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall:output:0!particlenet_edgeconv0_sc_bn_53686!particlenet_edgeconv0_sc_bn_53688!particlenet_edgeconv0_sc_bn_53690!particlenet_edgeconv0_sc_bn_53692*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_5364125
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze_1/SqueezeSqueeze<ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
2 
tf.compat.v1.squeeze_1/Squeeze?
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_mean/Mean/reduction_indices?
tf.math.reduce_mean/MeanMean3ParticleNet_EdgeConv0_act2/PartitionedCall:output:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????? 2
tf.math.reduce_mean/Mean?
tf.__operators__.add_1/AddV2AddV2'tf.compat.v1.squeeze_1/Squeeze:output:0!tf.math.reduce_mean/Mean:output:0*
T0*,
_output_shapes
:?????????? 2
tf.__operators__.add_1/AddV2?
,ParticleNet_EdgeConv0_sc_act/PartitionedCallPartitionedCall tf.__operators__.add_1/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv0_sc_act_layer_call_and_return_conditional_losses_537042.
,ParticleNet_EdgeConv0_sc_act/PartitionedCall?
tf.compat.v1.shape_1/ShapeShape5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_1/Shape?
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_2/strided_slice/stack?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_1?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_2?
(tf.__operators__.getitem_2/strided_sliceStridedSlice#tf.compat.v1.shape_1/Shape:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_2/strided_slicer
tf.range_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range_1/range/startr
tf.range_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range_1/range/delta?
tf.range_1/rangeRangetf.range_1/range/start:output:01tf.__operators__.getitem_2/strided_slice:output:0tf.range_1/range/delta:output:0*#
_output_shapes
:?????????2
tf.range_1/range?
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape_1/Reshape/shape?
tf.reshape_1/ReshapeReshapetf.range_1/range:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape_1/Reshape?
tf.tile_2/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile_2/Tile/multiples?
tf.tile_2/TileTiletf.reshape_1/Reshape:output:0!tf.tile_2/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_2/Tile?
tf.expand_dims_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_4/ExpandDims/dim?
tf.expand_dims_4/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_4/ExpandDimst
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_2/concat/axis?
tf.concat_2/concatConcatV2tf.tile_2/Tile:output:0$tf.expand_dims_4/ExpandDims:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_2/concat?
tf.expand_dims_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_5/ExpandDims/dim?
tf.expand_dims_5/ExpandDims
ExpandDims5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0(tf.expand_dims_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_5/ExpandDims?
tf.tile_3/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_3/Tile/multiples?
tf.tile_3/TileTile$tf.expand_dims_5/ExpandDims:output:0!tf.tile_3/Tile/multiples:output:0*
T0*0
_output_shapes
:?????????? 2
tf.tile_3/Tile?
!tf.compat.v1.gather_nd_1/GatherNdGatherNd5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0tf.concat_2/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:?????????? 2#
!tf.compat.v1.gather_nd_1/GatherNd?
tf.math.subtract_2/SubSub*tf.compat.v1.gather_nd_1/GatherNd:output:0tf.tile_3/Tile:output:0*
T0*0
_output_shapes
:?????????? 2
tf.math.subtract_2/Sub}
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_3/concat/axis?
tf.concat_3/concatConcatV2tf.tile_3/Tile:output:0tf.math.subtract_2/Sub:z:0 tf.concat_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????@2
tf.concat_3/concat?
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCallStatefulPartitionedCalltf.concat_3/concat:output:0!particlenet_edgeconv1_conv0_53752*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv0_layer_call_and_return_conditional_losses_5374325
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall?
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn0_53819particlenet_edgeconv1_bn0_53821particlenet_edgeconv1_bn0_53823particlenet_edgeconv1_bn0_53825*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_5377423
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act0/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act0_layer_call_and_return_conditional_losses_538332,
*ParticleNet_EdgeConv1_act0/PartitionedCall?
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv1_act0/PartitionedCall:output:0!particlenet_edgeconv1_conv1_53857*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv1_layer_call_and_return_conditional_losses_5384825
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall?
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn1_53924particlenet_edgeconv1_bn1_53926particlenet_edgeconv1_bn1_53928particlenet_edgeconv1_bn1_53930*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_5387923
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act1/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act1_layer_call_and_return_conditional_losses_539382,
*ParticleNet_EdgeConv1_act1/PartitionedCall?
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv1_act1/PartitionedCall:output:0!particlenet_edgeconv1_conv2_53962*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv2_layer_call_and_return_conditional_losses_5395325
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall?
tf.expand_dims_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_6/ExpandDims/dim?
tf.expand_dims_6/ExpandDims
ExpandDims5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0(tf.expand_dims_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_6/ExpandDims?
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn2_54031particlenet_edgeconv1_bn2_54033particlenet_edgeconv1_bn2_54035particlenet_edgeconv1_bn2_54037*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_5398623
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall?
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_6/ExpandDims:output:0#particlenet_edgeconv1_sc_conv_54056*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_and_return_conditional_losses_5404727
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act2/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act2_layer_call_and_return_conditional_losses_540642,
*ParticleNet_EdgeConv1_act2/PartitionedCall?
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCallStatefulPartitionedCall>ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall:output:0!particlenet_edgeconv1_sc_bn_54136!particlenet_edgeconv1_sc_bn_54138!particlenet_edgeconv1_sc_bn_54140!particlenet_edgeconv1_sc_bn_54142*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_5409125
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze_2/SqueezeSqueeze<ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2 
tf.compat.v1.squeeze_2/Squeeze?
,tf.math.reduce_mean_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_1/Mean/reduction_indices?
tf.math.reduce_mean_1/MeanMean3ParticleNet_EdgeConv1_act2/PartitionedCall:output:05tf.math.reduce_mean_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????@2
tf.math.reduce_mean_1/Mean?
tf.__operators__.add_2/AddV2AddV2'tf.compat.v1.squeeze_2/Squeeze:output:0#tf.math.reduce_mean_1/Mean:output:0*
T0*,
_output_shapes
:??????????@2
tf.__operators__.add_2/AddV2?
,ParticleNet_EdgeConv1_sc_act/PartitionedCallPartitionedCall tf.__operators__.add_2/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv1_sc_act_layer_call_and_return_conditional_losses_541542.
,ParticleNet_EdgeConv1_sc_act/PartitionedCall?
tf.math.multiply_4/MulMul5ParticleNet_EdgeConv1_sc_act/PartitionedCall:output:0tf.cast/Cast:y:0*
T0*,
_output_shapes
:??????????@2
tf.math.multiply_4/Mul?
,tf.math.reduce_mean_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_2/Mean/reduction_indices?
tf.math.reduce_mean_2/MeanMeantf.math.multiply_4/Mul:z:05tf.math.reduce_mean_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
tf.math.reduce_mean_2/Mean?
dense/StatefulPartitionedCallStatefulPartitionedCall#tf.math.reduce_mean_2/Mean:output:0dense_54187dense_54189*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_541762
dense/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_542042!
dropout/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_54244dense_1_54246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_542332!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:02^ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall2^ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall2^ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall4^ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall6^ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall4^ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall6^ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall+^ParticleNet_fts_bn/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::2f
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall2f
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall2f
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall2n
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall2n
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall2X
*ParticleNet_fts_bn/StatefulPartitionedCall*ParticleNet_fts_bn/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_namepoints:VR
,
_output_shapes
:??????????
"
_user_specified_name
features:RN
,
_output_shapes
:??????????

_user_specified_namemask:

_output_shapes
: :

_output_shapes
: 
?
?
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56762

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_536412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56873

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_528252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56455

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57319

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_531372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_57440

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
X
<__inference_ParticleNet_EdgeConv0_sc_act_layer_call_fn_56795

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv0_sc_act_layer_call_and_return_conditional_losses_537042
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
s
W__inference_ParticleNet_EdgeConv0_sc_act_layer_call_and_return_conditional_losses_53704

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:?????????? 2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56404

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_534292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57229

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv0_act0_layer_call_and_return_conditional_losses_53383

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????? 2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_54711

inputs
inputs_1
inputs_2
tf_math_multiply_mul_x
tf_math_multiply_3_mul_x
particlenet_fts_bn_54510
particlenet_fts_bn_54512
particlenet_fts_bn_54514
particlenet_fts_bn_54516%
!particlenet_edgeconv0_conv0_54556#
particlenet_edgeconv0_bn0_54559#
particlenet_edgeconv0_bn0_54561#
particlenet_edgeconv0_bn0_54563#
particlenet_edgeconv0_bn0_54565%
!particlenet_edgeconv0_conv1_54569#
particlenet_edgeconv0_bn1_54572#
particlenet_edgeconv0_bn1_54574#
particlenet_edgeconv0_bn1_54576#
particlenet_edgeconv0_bn1_54578%
!particlenet_edgeconv0_conv2_54582#
particlenet_edgeconv0_bn2_54587#
particlenet_edgeconv0_bn2_54589#
particlenet_edgeconv0_bn2_54591#
particlenet_edgeconv0_bn2_54593'
#particlenet_edgeconv0_sc_conv_54596%
!particlenet_edgeconv0_sc_bn_54600%
!particlenet_edgeconv0_sc_bn_54602%
!particlenet_edgeconv0_sc_bn_54604%
!particlenet_edgeconv0_sc_bn_54606%
!particlenet_edgeconv1_conv0_54638#
particlenet_edgeconv1_bn0_54641#
particlenet_edgeconv1_bn0_54643#
particlenet_edgeconv1_bn0_54645#
particlenet_edgeconv1_bn0_54647%
!particlenet_edgeconv1_conv1_54651#
particlenet_edgeconv1_bn1_54654#
particlenet_edgeconv1_bn1_54656#
particlenet_edgeconv1_bn1_54658#
particlenet_edgeconv1_bn1_54660%
!particlenet_edgeconv1_conv2_54664#
particlenet_edgeconv1_bn2_54669#
particlenet_edgeconv1_bn2_54671#
particlenet_edgeconv1_bn2_54673#
particlenet_edgeconv1_bn2_54675'
#particlenet_edgeconv1_sc_conv_54678%
!particlenet_edgeconv1_sc_bn_54682%
!particlenet_edgeconv1_sc_bn_54684%
!particlenet_edgeconv1_sc_bn_54686%
!particlenet_edgeconv1_sc_bn_54688
dense_54699
dense_54701
dense_1_54705
dense_1_54707
identity??1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall?1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall?1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall?3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall?5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall?3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall?5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall?*ParticleNet_fts_bn/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?
tf.math.not_equal/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.not_equal/NotEqual/y?
tf.math.not_equal/NotEqualNotEqualinputs_2%tf.math.not_equal/NotEqual/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.not_equal/NotEqual?
tf.cast/CastCasttf.math.not_equal/NotEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast/Casts
tf.math.equal/Equal/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.equal/Equal/y?
tf.math.equal/EqualEqualtf.cast/Cast:y:0tf.math.equal/Equal/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.equal/Equal?
tf.cast_1/CastCasttf.math.equal/Equal:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast_1/Cast?
tf.math.multiply/MulMultf_math_multiply_mul_xtf.cast_1/Cast:y:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply/Mul?
tf.math.add/AddAddtf.math.multiply/Mul:z:0inputs*
T0*,
_output_shapes
:??????????2
tf.math.add/Add?
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm?
 tf.compat.v1.transpose/transpose	Transposetf.math.add/Add:z:0.tf.compat.v1.transpose/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2"
 tf.compat.v1.transpose/transpose?
tf.math.multiply_2/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_2/Mul?
tf.linalg.matmul/MatMulBatchMatMulV2tf.math.add/Add:z:0$tf.compat.v1.transpose/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.linalg.matmul/MatMul?
tf.math.multiply_1/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_1/Mul?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDimsinputs_1&tf.expand_dims/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
*tf.math.reduce_sum_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_1/Sum/reduction_indices?
tf.math.reduce_sum_1/SumSumtf.math.multiply_2/Mul:z:03tf.math.reduce_sum_1/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum_1/Sum?
(tf.math.reduce_sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(tf.math.reduce_sum/Sum/reduction_indices?
tf.math.reduce_sum/SumSumtf.math.multiply_1/Mul:z:01tf.math.reduce_sum/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum/Sum?
tf.math.multiply_3/MulMultf_math_multiply_3_mul_x tf.linalg.matmul/MatMul:output:0*
T0*-
_output_shapes
:???????????2
tf.math.multiply_3/Mul?
*ParticleNet_fts_bn/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0particlenet_fts_bn_54510particlenet_fts_bn_54512particlenet_fts_bn_54514particlenet_fts_bn_54516*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_531952,
*ParticleNet_fts_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze/SqueezeSqueeze3ParticleNet_fts_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
2
tf.compat.v1.squeeze/Squeeze?
tf.math.subtract/SubSubtf.math.reduce_sum/Sum:output:0tf.math.multiply_3/Mul:z:0*
T0*-
_output_shapes
:???????????2
tf.math.subtract/Sub?
'tf.compat.v1.transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'tf.compat.v1.transpose_1/transpose/perm?
"tf.compat.v1.transpose_1/transpose	Transpose!tf.math.reduce_sum_1/Sum:output:00tf.compat.v1.transpose_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2$
"tf.compat.v1.transpose_1/transpose?
tf.__operators__.add/AddV2AddV2tf.math.subtract/Sub:z:0&tf.compat.v1.transpose_1/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.__operators__.add/AddV2?
tf.compat.v1.shape/ShapeShape%tf.compat.v1.squeeze/Squeeze:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape/Shape?
tf.math.negative/NegNegtf.__operators__.add/AddV2:z:0*
T0*-
_output_shapes
:???????????2
tf.math.negative/Neg?
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_1/strided_slice/stack?
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_1?
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_2?
(tf.__operators__.getitem_1/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_1/strided_slicer
tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :2
tf.math.top_k/TopKV2/k?
tf.math.top_k/TopKV2TopKV2tf.math.negative/Neg:y:0tf.math.top_k/TopKV2/k:output:0*
T0*D
_output_shapes2
0:??????????:??????????2
tf.math.top_k/TopKV2n
tf.range/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range/range/startn
tf.range/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range/range/delta?
tf.range/rangeRangetf.range/range/start:output:01tf.__operators__.getitem_1/strided_slice:output:0tf.range/range/delta:output:0*#
_output_shapes
:?????????2
tf.range/range?
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2.
,tf.__operators__.getitem/strided_slice/stack?
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            20
.tf.__operators__.getitem/strided_slice/stack_1?
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         20
.tf.__operators__.getitem/strided_slice/stack_2?
&tf.__operators__.getitem/strided_sliceStridedSlicetf.math.top_k/TopKV2:indices:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice?
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape/Reshape/shape?
tf.reshape/ReshapeReshapetf.range/range:output:0!tf.reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape/Reshape?
tf.tile/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile/Tile/multiples?
tf.tile/TileTiletf.reshape/Reshape:output:0tf.tile/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile/Tile?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDimsp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis?
tf.concat/concatConcatV2tf.tile/Tile:output:0$tf.expand_dims_1/ExpandDims:output:0tf.concat/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat/concat?
tf.expand_dims_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_2/ExpandDims/dim?
tf.expand_dims_2/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_2/ExpandDims?
tf.tile_1/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_1/Tile/multiples?
tf.tile_1/TileTile$tf.expand_dims_2/ExpandDims:output:0!tf.tile_1/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_1/Tile?
tf.compat.v1.gather_nd/GatherNdGatherNd%tf.compat.v1.squeeze/Squeeze:output:0tf.concat/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:??????????2!
tf.compat.v1.gather_nd/GatherNd?
tf.math.subtract_1/SubSub(tf.compat.v1.gather_nd/GatherNd:output:0tf.tile_1/Tile:output:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_1/Sub}
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_1/concat/axis?
tf.concat_1/concatConcatV2tf.tile_1/Tile:output:0tf.math.subtract_1/Sub:z:0 tf.concat_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_1/concat?
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCallStatefulPartitionedCalltf.concat_1/concat:output:0!particlenet_edgeconv0_conv0_54556*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv0_layer_call_and_return_conditional_losses_5329325
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall?
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn0_54559particlenet_edgeconv0_bn0_54561particlenet_edgeconv0_bn0_54563particlenet_edgeconv0_bn0_54565*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_5332423
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act0/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act0_layer_call_and_return_conditional_losses_533832,
*ParticleNet_EdgeConv0_act0/PartitionedCall?
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv0_act0/PartitionedCall:output:0!particlenet_edgeconv0_conv1_54569*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv1_layer_call_and_return_conditional_losses_5339825
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall?
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn1_54572particlenet_edgeconv0_bn1_54574particlenet_edgeconv0_bn1_54576particlenet_edgeconv0_bn1_54578*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_5342923
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act1/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act1_layer_call_and_return_conditional_losses_534882,
*ParticleNet_EdgeConv0_act1/PartitionedCall?
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv0_act1/PartitionedCall:output:0!particlenet_edgeconv0_conv2_54582*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv2_layer_call_and_return_conditional_losses_5350325
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn2_54587particlenet_edgeconv0_bn2_54589particlenet_edgeconv0_bn2_54591particlenet_edgeconv0_bn2_54593*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_5353623
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall?
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_3/ExpandDims:output:0#particlenet_edgeconv0_sc_conv_54596*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_and_return_conditional_losses_5359727
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act2/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act2_layer_call_and_return_conditional_losses_536142,
*ParticleNet_EdgeConv0_act2/PartitionedCall?
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCallStatefulPartitionedCall>ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall:output:0!particlenet_edgeconv0_sc_bn_54600!particlenet_edgeconv0_sc_bn_54602!particlenet_edgeconv0_sc_bn_54604!particlenet_edgeconv0_sc_bn_54606*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_5364125
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze_1/SqueezeSqueeze<ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
2 
tf.compat.v1.squeeze_1/Squeeze?
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_mean/Mean/reduction_indices?
tf.math.reduce_mean/MeanMean3ParticleNet_EdgeConv0_act2/PartitionedCall:output:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????? 2
tf.math.reduce_mean/Mean?
tf.__operators__.add_1/AddV2AddV2'tf.compat.v1.squeeze_1/Squeeze:output:0!tf.math.reduce_mean/Mean:output:0*
T0*,
_output_shapes
:?????????? 2
tf.__operators__.add_1/AddV2?
,ParticleNet_EdgeConv0_sc_act/PartitionedCallPartitionedCall tf.__operators__.add_1/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv0_sc_act_layer_call_and_return_conditional_losses_537042.
,ParticleNet_EdgeConv0_sc_act/PartitionedCall?
tf.compat.v1.shape_1/ShapeShape5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_1/Shape?
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_2/strided_slice/stack?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_1?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_2?
(tf.__operators__.getitem_2/strided_sliceStridedSlice#tf.compat.v1.shape_1/Shape:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_2/strided_slicer
tf.range_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range_1/range/startr
tf.range_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range_1/range/delta?
tf.range_1/rangeRangetf.range_1/range/start:output:01tf.__operators__.getitem_2/strided_slice:output:0tf.range_1/range/delta:output:0*#
_output_shapes
:?????????2
tf.range_1/range?
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape_1/Reshape/shape?
tf.reshape_1/ReshapeReshapetf.range_1/range:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape_1/Reshape?
tf.tile_2/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile_2/Tile/multiples?
tf.tile_2/TileTiletf.reshape_1/Reshape:output:0!tf.tile_2/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_2/Tile?
tf.expand_dims_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_4/ExpandDims/dim?
tf.expand_dims_4/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_4/ExpandDimst
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_2/concat/axis?
tf.concat_2/concatConcatV2tf.tile_2/Tile:output:0$tf.expand_dims_4/ExpandDims:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_2/concat?
tf.expand_dims_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_5/ExpandDims/dim?
tf.expand_dims_5/ExpandDims
ExpandDims5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0(tf.expand_dims_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_5/ExpandDims?
tf.tile_3/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_3/Tile/multiples?
tf.tile_3/TileTile$tf.expand_dims_5/ExpandDims:output:0!tf.tile_3/Tile/multiples:output:0*
T0*0
_output_shapes
:?????????? 2
tf.tile_3/Tile?
!tf.compat.v1.gather_nd_1/GatherNdGatherNd5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0tf.concat_2/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:?????????? 2#
!tf.compat.v1.gather_nd_1/GatherNd?
tf.math.subtract_2/SubSub*tf.compat.v1.gather_nd_1/GatherNd:output:0tf.tile_3/Tile:output:0*
T0*0
_output_shapes
:?????????? 2
tf.math.subtract_2/Sub}
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_3/concat/axis?
tf.concat_3/concatConcatV2tf.tile_3/Tile:output:0tf.math.subtract_2/Sub:z:0 tf.concat_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????@2
tf.concat_3/concat?
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCallStatefulPartitionedCalltf.concat_3/concat:output:0!particlenet_edgeconv1_conv0_54638*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv0_layer_call_and_return_conditional_losses_5374325
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall?
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn0_54641particlenet_edgeconv1_bn0_54643particlenet_edgeconv1_bn0_54645particlenet_edgeconv1_bn0_54647*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_5377423
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act0/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act0_layer_call_and_return_conditional_losses_538332,
*ParticleNet_EdgeConv1_act0/PartitionedCall?
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv1_act0/PartitionedCall:output:0!particlenet_edgeconv1_conv1_54651*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv1_layer_call_and_return_conditional_losses_5384825
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall?
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn1_54654particlenet_edgeconv1_bn1_54656particlenet_edgeconv1_bn1_54658particlenet_edgeconv1_bn1_54660*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_5387923
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act1/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act1_layer_call_and_return_conditional_losses_539382,
*ParticleNet_EdgeConv1_act1/PartitionedCall?
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv1_act1/PartitionedCall:output:0!particlenet_edgeconv1_conv2_54664*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv2_layer_call_and_return_conditional_losses_5395325
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall?
tf.expand_dims_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_6/ExpandDims/dim?
tf.expand_dims_6/ExpandDims
ExpandDims5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0(tf.expand_dims_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_6/ExpandDims?
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn2_54669particlenet_edgeconv1_bn2_54671particlenet_edgeconv1_bn2_54673particlenet_edgeconv1_bn2_54675*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_5398623
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall?
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_6/ExpandDims:output:0#particlenet_edgeconv1_sc_conv_54678*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_and_return_conditional_losses_5404727
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act2/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act2_layer_call_and_return_conditional_losses_540642,
*ParticleNet_EdgeConv1_act2/PartitionedCall?
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCallStatefulPartitionedCall>ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall:output:0!particlenet_edgeconv1_sc_bn_54682!particlenet_edgeconv1_sc_bn_54684!particlenet_edgeconv1_sc_bn_54686!particlenet_edgeconv1_sc_bn_54688*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_5409125
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze_2/SqueezeSqueeze<ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2 
tf.compat.v1.squeeze_2/Squeeze?
,tf.math.reduce_mean_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_1/Mean/reduction_indices?
tf.math.reduce_mean_1/MeanMean3ParticleNet_EdgeConv1_act2/PartitionedCall:output:05tf.math.reduce_mean_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????@2
tf.math.reduce_mean_1/Mean?
tf.__operators__.add_2/AddV2AddV2'tf.compat.v1.squeeze_2/Squeeze:output:0#tf.math.reduce_mean_1/Mean:output:0*
T0*,
_output_shapes
:??????????@2
tf.__operators__.add_2/AddV2?
,ParticleNet_EdgeConv1_sc_act/PartitionedCallPartitionedCall tf.__operators__.add_2/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv1_sc_act_layer_call_and_return_conditional_losses_541542.
,ParticleNet_EdgeConv1_sc_act/PartitionedCall?
tf.math.multiply_4/MulMul5ParticleNet_EdgeConv1_sc_act/PartitionedCall:output:0tf.cast/Cast:y:0*
T0*,
_output_shapes
:??????????@2
tf.math.multiply_4/Mul?
,tf.math.reduce_mean_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_2/Mean/reduction_indices?
tf.math.reduce_mean_2/MeanMeantf.math.multiply_4/Mul:z:05tf.math.reduce_mean_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
tf.math.reduce_mean_2/Mean?
dense/StatefulPartitionedCallStatefulPartitionedCall#tf.math.reduce_mean_2/Mean:output:0dense_54699dense_54701*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_541762
dense/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_542042!
dropout/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_54705dense_1_54707*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_542332!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:02^ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall2^ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall2^ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall4^ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall6^ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall4^ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall6^ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall+^ParticleNet_fts_bn/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::2f
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall2f
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall2f
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall2n
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall2n
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall2X
*ParticleNet_fts_bn/StatefulPartitionedCall*ParticleNet_fts_bn/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:TP
,
_output_shapes
:??????????
 
_user_specified_nameinputs:TP
,
_output_shapes
:??????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
7__inference_ParticleNet_Lite_Static_layer_call_fn_55952
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*@
_read_only_resource_inputs"
 	
"#$'(),-.1234*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_547112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/1:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/2:

_output_shapes
: :

_output_shapes
: 
?
?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56079

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_53324

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_52794

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56316

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_533242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_conv1_layer_call_and_return_conditional_losses_53398

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? :2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_53137

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
V
:__inference_ParticleNet_EdgeConv1_act2_layer_call_fn_57393

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act2_layer_call_and_return_conditional_losses_540642
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_53774

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_53554

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_54109

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56143

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57012

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_528982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv0_act2_layer_call_and_return_conditional_losses_56780

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????? 2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_53213

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_52378

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57178

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_539862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56698

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_526902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_55266
features
mask

points
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallpointsfeaturesmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./01234*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_522122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:??????????
"
_user_specified_name
features:RN
,
_output_shapes
:??????????

_user_specified_namemask:TP
,
_output_shapes
:??????????
 
_user_specified_namepoints:

_output_shapes
: :

_output_shapes
: 
?
?
;__inference_ParticleNet_EdgeConv1_conv0_layer_call_fn_56809

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv0_layer_call_and_return_conditional_losses_537432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
s
W__inference_ParticleNet_EdgeConv0_sc_act_layer_call_and_return_conditional_losses_56790

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:?????????? 2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*+
_input_shapes
:?????????? :T P
,
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
`
'__inference_dropout_layer_call_fn_57445

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_542042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
X__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_and_return_conditional_losses_53597

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_53986

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_52690

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_53033

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56557

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv0_act1_layer_call_and_return_conditional_losses_56486

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????? 2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv1_act1_layer_call_and_return_conditional_losses_53938

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????@2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_conv1_layer_call_and_return_conditional_losses_56346

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? :2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
V
:__inference_ParticleNet_EdgeConv0_act1_layer_call_fn_56491

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act1_layer_call_and_return_conditional_losses_534882
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56621

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_54209

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56749

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_57414

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56239

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv1_conv1_layer_call_fn_56961

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv1_layer_call_and_return_conditional_losses_538482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_conv0_layer_call_and_return_conditional_losses_56802

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57076

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_538792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
V
:__inference_ParticleNet_EdgeConv1_act1_layer_call_fn_57099

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act1_layer_call_and_return_conditional_losses_539382
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_52274

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57306

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_531062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_53342

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_54176

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_52617

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56097

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_conv0_layer_call_and_return_conditional_losses_56194

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_57063

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56329

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_533422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56685

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv1_act0_layer_call_and_return_conditional_losses_53833

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????@2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57242

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_530022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56924

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_537742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57089

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_538972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
??
?>
__inference__traced_save_57860
file_prefix7
3savev2_particlenet_fts_bn_gamma_read_readvariableop6
2savev2_particlenet_fts_bn_beta_read_readvariableop=
9savev2_particlenet_fts_bn_moving_mean_read_readvariableopA
=savev2_particlenet_fts_bn_moving_variance_read_readvariableopA
=savev2_particlenet_edgeconv0_conv0_kernel_read_readvariableop>
:savev2_particlenet_edgeconv0_bn0_gamma_read_readvariableop=
9savev2_particlenet_edgeconv0_bn0_beta_read_readvariableopD
@savev2_particlenet_edgeconv0_bn0_moving_mean_read_readvariableopH
Dsavev2_particlenet_edgeconv0_bn0_moving_variance_read_readvariableopA
=savev2_particlenet_edgeconv0_conv1_kernel_read_readvariableop>
:savev2_particlenet_edgeconv0_bn1_gamma_read_readvariableop=
9savev2_particlenet_edgeconv0_bn1_beta_read_readvariableopD
@savev2_particlenet_edgeconv0_bn1_moving_mean_read_readvariableopH
Dsavev2_particlenet_edgeconv0_bn1_moving_variance_read_readvariableopA
=savev2_particlenet_edgeconv0_conv2_kernel_read_readvariableopC
?savev2_particlenet_edgeconv0_sc_conv_kernel_read_readvariableop>
:savev2_particlenet_edgeconv0_bn2_gamma_read_readvariableop=
9savev2_particlenet_edgeconv0_bn2_beta_read_readvariableopD
@savev2_particlenet_edgeconv0_bn2_moving_mean_read_readvariableopH
Dsavev2_particlenet_edgeconv0_bn2_moving_variance_read_readvariableop@
<savev2_particlenet_edgeconv0_sc_bn_gamma_read_readvariableop?
;savev2_particlenet_edgeconv0_sc_bn_beta_read_readvariableopF
Bsavev2_particlenet_edgeconv0_sc_bn_moving_mean_read_readvariableopJ
Fsavev2_particlenet_edgeconv0_sc_bn_moving_variance_read_readvariableopA
=savev2_particlenet_edgeconv1_conv0_kernel_read_readvariableop>
:savev2_particlenet_edgeconv1_bn0_gamma_read_readvariableop=
9savev2_particlenet_edgeconv1_bn0_beta_read_readvariableopD
@savev2_particlenet_edgeconv1_bn0_moving_mean_read_readvariableopH
Dsavev2_particlenet_edgeconv1_bn0_moving_variance_read_readvariableopA
=savev2_particlenet_edgeconv1_conv1_kernel_read_readvariableop>
:savev2_particlenet_edgeconv1_bn1_gamma_read_readvariableop=
9savev2_particlenet_edgeconv1_bn1_beta_read_readvariableopD
@savev2_particlenet_edgeconv1_bn1_moving_mean_read_readvariableopH
Dsavev2_particlenet_edgeconv1_bn1_moving_variance_read_readvariableopA
=savev2_particlenet_edgeconv1_conv2_kernel_read_readvariableopC
?savev2_particlenet_edgeconv1_sc_conv_kernel_read_readvariableop>
:savev2_particlenet_edgeconv1_bn2_gamma_read_readvariableop=
9savev2_particlenet_edgeconv1_bn2_beta_read_readvariableopD
@savev2_particlenet_edgeconv1_bn2_moving_mean_read_readvariableopH
Dsavev2_particlenet_edgeconv1_bn2_moving_variance_read_readvariableop@
<savev2_particlenet_edgeconv1_sc_bn_gamma_read_readvariableop?
;savev2_particlenet_edgeconv1_sc_bn_beta_read_readvariableopF
Bsavev2_particlenet_edgeconv1_sc_bn_moving_mean_read_readvariableopJ
Fsavev2_particlenet_edgeconv1_sc_bn_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop>
:savev2_adam_particlenet_fts_bn_gamma_m_read_readvariableop=
9savev2_adam_particlenet_fts_bn_beta_m_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv0_conv0_kernel_m_read_readvariableopE
Asavev2_adam_particlenet_edgeconv0_bn0_gamma_m_read_readvariableopD
@savev2_adam_particlenet_edgeconv0_bn0_beta_m_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv0_conv1_kernel_m_read_readvariableopE
Asavev2_adam_particlenet_edgeconv0_bn1_gamma_m_read_readvariableopD
@savev2_adam_particlenet_edgeconv0_bn1_beta_m_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv0_conv2_kernel_m_read_readvariableopJ
Fsavev2_adam_particlenet_edgeconv0_sc_conv_kernel_m_read_readvariableopE
Asavev2_adam_particlenet_edgeconv0_bn2_gamma_m_read_readvariableopD
@savev2_adam_particlenet_edgeconv0_bn2_beta_m_read_readvariableopG
Csavev2_adam_particlenet_edgeconv0_sc_bn_gamma_m_read_readvariableopF
Bsavev2_adam_particlenet_edgeconv0_sc_bn_beta_m_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv1_conv0_kernel_m_read_readvariableopE
Asavev2_adam_particlenet_edgeconv1_bn0_gamma_m_read_readvariableopD
@savev2_adam_particlenet_edgeconv1_bn0_beta_m_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv1_conv1_kernel_m_read_readvariableopE
Asavev2_adam_particlenet_edgeconv1_bn1_gamma_m_read_readvariableopD
@savev2_adam_particlenet_edgeconv1_bn1_beta_m_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv1_conv2_kernel_m_read_readvariableopJ
Fsavev2_adam_particlenet_edgeconv1_sc_conv_kernel_m_read_readvariableopE
Asavev2_adam_particlenet_edgeconv1_bn2_gamma_m_read_readvariableopD
@savev2_adam_particlenet_edgeconv1_bn2_beta_m_read_readvariableopG
Csavev2_adam_particlenet_edgeconv1_sc_bn_gamma_m_read_readvariableopF
Bsavev2_adam_particlenet_edgeconv1_sc_bn_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop>
:savev2_adam_particlenet_fts_bn_gamma_v_read_readvariableop=
9savev2_adam_particlenet_fts_bn_beta_v_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv0_conv0_kernel_v_read_readvariableopE
Asavev2_adam_particlenet_edgeconv0_bn0_gamma_v_read_readvariableopD
@savev2_adam_particlenet_edgeconv0_bn0_beta_v_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv0_conv1_kernel_v_read_readvariableopE
Asavev2_adam_particlenet_edgeconv0_bn1_gamma_v_read_readvariableopD
@savev2_adam_particlenet_edgeconv0_bn1_beta_v_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv0_conv2_kernel_v_read_readvariableopJ
Fsavev2_adam_particlenet_edgeconv0_sc_conv_kernel_v_read_readvariableopE
Asavev2_adam_particlenet_edgeconv0_bn2_gamma_v_read_readvariableopD
@savev2_adam_particlenet_edgeconv0_bn2_beta_v_read_readvariableopG
Csavev2_adam_particlenet_edgeconv0_sc_bn_gamma_v_read_readvariableopF
Bsavev2_adam_particlenet_edgeconv0_sc_bn_beta_v_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv1_conv0_kernel_v_read_readvariableopE
Asavev2_adam_particlenet_edgeconv1_bn0_gamma_v_read_readvariableopD
@savev2_adam_particlenet_edgeconv1_bn0_beta_v_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv1_conv1_kernel_v_read_readvariableopE
Asavev2_adam_particlenet_edgeconv1_bn1_gamma_v_read_readvariableopD
@savev2_adam_particlenet_edgeconv1_bn1_beta_v_read_readvariableopH
Dsavev2_adam_particlenet_edgeconv1_conv2_kernel_v_read_readvariableopJ
Fsavev2_adam_particlenet_edgeconv1_sc_conv_kernel_v_read_readvariableopE
Asavev2_adam_particlenet_edgeconv1_bn2_gamma_v_read_readvariableopD
@savev2_adam_particlenet_edgeconv1_bn2_beta_v_read_readvariableopG
Csavev2_adam_particlenet_edgeconv1_sc_bn_gamma_v_read_readvariableopF
Bsavev2_adam_particlenet_edgeconv1_sc_bn_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const_2

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?C
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:z*
dtype0*?B
value?BB?BzB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-12/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-12/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-12/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-16/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-16/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-16/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-16/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-12/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-16/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:z*
dtype0*?
value?B?zB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?;
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_particlenet_fts_bn_gamma_read_readvariableop2savev2_particlenet_fts_bn_beta_read_readvariableop9savev2_particlenet_fts_bn_moving_mean_read_readvariableop=savev2_particlenet_fts_bn_moving_variance_read_readvariableop=savev2_particlenet_edgeconv0_conv0_kernel_read_readvariableop:savev2_particlenet_edgeconv0_bn0_gamma_read_readvariableop9savev2_particlenet_edgeconv0_bn0_beta_read_readvariableop@savev2_particlenet_edgeconv0_bn0_moving_mean_read_readvariableopDsavev2_particlenet_edgeconv0_bn0_moving_variance_read_readvariableop=savev2_particlenet_edgeconv0_conv1_kernel_read_readvariableop:savev2_particlenet_edgeconv0_bn1_gamma_read_readvariableop9savev2_particlenet_edgeconv0_bn1_beta_read_readvariableop@savev2_particlenet_edgeconv0_bn1_moving_mean_read_readvariableopDsavev2_particlenet_edgeconv0_bn1_moving_variance_read_readvariableop=savev2_particlenet_edgeconv0_conv2_kernel_read_readvariableop?savev2_particlenet_edgeconv0_sc_conv_kernel_read_readvariableop:savev2_particlenet_edgeconv0_bn2_gamma_read_readvariableop9savev2_particlenet_edgeconv0_bn2_beta_read_readvariableop@savev2_particlenet_edgeconv0_bn2_moving_mean_read_readvariableopDsavev2_particlenet_edgeconv0_bn2_moving_variance_read_readvariableop<savev2_particlenet_edgeconv0_sc_bn_gamma_read_readvariableop;savev2_particlenet_edgeconv0_sc_bn_beta_read_readvariableopBsavev2_particlenet_edgeconv0_sc_bn_moving_mean_read_readvariableopFsavev2_particlenet_edgeconv0_sc_bn_moving_variance_read_readvariableop=savev2_particlenet_edgeconv1_conv0_kernel_read_readvariableop:savev2_particlenet_edgeconv1_bn0_gamma_read_readvariableop9savev2_particlenet_edgeconv1_bn0_beta_read_readvariableop@savev2_particlenet_edgeconv1_bn0_moving_mean_read_readvariableopDsavev2_particlenet_edgeconv1_bn0_moving_variance_read_readvariableop=savev2_particlenet_edgeconv1_conv1_kernel_read_readvariableop:savev2_particlenet_edgeconv1_bn1_gamma_read_readvariableop9savev2_particlenet_edgeconv1_bn1_beta_read_readvariableop@savev2_particlenet_edgeconv1_bn1_moving_mean_read_readvariableopDsavev2_particlenet_edgeconv1_bn1_moving_variance_read_readvariableop=savev2_particlenet_edgeconv1_conv2_kernel_read_readvariableop?savev2_particlenet_edgeconv1_sc_conv_kernel_read_readvariableop:savev2_particlenet_edgeconv1_bn2_gamma_read_readvariableop9savev2_particlenet_edgeconv1_bn2_beta_read_readvariableop@savev2_particlenet_edgeconv1_bn2_moving_mean_read_readvariableopDsavev2_particlenet_edgeconv1_bn2_moving_variance_read_readvariableop<savev2_particlenet_edgeconv1_sc_bn_gamma_read_readvariableop;savev2_particlenet_edgeconv1_sc_bn_beta_read_readvariableopBsavev2_particlenet_edgeconv1_sc_bn_moving_mean_read_readvariableopFsavev2_particlenet_edgeconv1_sc_bn_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop:savev2_adam_particlenet_fts_bn_gamma_m_read_readvariableop9savev2_adam_particlenet_fts_bn_beta_m_read_readvariableopDsavev2_adam_particlenet_edgeconv0_conv0_kernel_m_read_readvariableopAsavev2_adam_particlenet_edgeconv0_bn0_gamma_m_read_readvariableop@savev2_adam_particlenet_edgeconv0_bn0_beta_m_read_readvariableopDsavev2_adam_particlenet_edgeconv0_conv1_kernel_m_read_readvariableopAsavev2_adam_particlenet_edgeconv0_bn1_gamma_m_read_readvariableop@savev2_adam_particlenet_edgeconv0_bn1_beta_m_read_readvariableopDsavev2_adam_particlenet_edgeconv0_conv2_kernel_m_read_readvariableopFsavev2_adam_particlenet_edgeconv0_sc_conv_kernel_m_read_readvariableopAsavev2_adam_particlenet_edgeconv0_bn2_gamma_m_read_readvariableop@savev2_adam_particlenet_edgeconv0_bn2_beta_m_read_readvariableopCsavev2_adam_particlenet_edgeconv0_sc_bn_gamma_m_read_readvariableopBsavev2_adam_particlenet_edgeconv0_sc_bn_beta_m_read_readvariableopDsavev2_adam_particlenet_edgeconv1_conv0_kernel_m_read_readvariableopAsavev2_adam_particlenet_edgeconv1_bn0_gamma_m_read_readvariableop@savev2_adam_particlenet_edgeconv1_bn0_beta_m_read_readvariableopDsavev2_adam_particlenet_edgeconv1_conv1_kernel_m_read_readvariableopAsavev2_adam_particlenet_edgeconv1_bn1_gamma_m_read_readvariableop@savev2_adam_particlenet_edgeconv1_bn1_beta_m_read_readvariableopDsavev2_adam_particlenet_edgeconv1_conv2_kernel_m_read_readvariableopFsavev2_adam_particlenet_edgeconv1_sc_conv_kernel_m_read_readvariableopAsavev2_adam_particlenet_edgeconv1_bn2_gamma_m_read_readvariableop@savev2_adam_particlenet_edgeconv1_bn2_beta_m_read_readvariableopCsavev2_adam_particlenet_edgeconv1_sc_bn_gamma_m_read_readvariableopBsavev2_adam_particlenet_edgeconv1_sc_bn_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop:savev2_adam_particlenet_fts_bn_gamma_v_read_readvariableop9savev2_adam_particlenet_fts_bn_beta_v_read_readvariableopDsavev2_adam_particlenet_edgeconv0_conv0_kernel_v_read_readvariableopAsavev2_adam_particlenet_edgeconv0_bn0_gamma_v_read_readvariableop@savev2_adam_particlenet_edgeconv0_bn0_beta_v_read_readvariableopDsavev2_adam_particlenet_edgeconv0_conv1_kernel_v_read_readvariableopAsavev2_adam_particlenet_edgeconv0_bn1_gamma_v_read_readvariableop@savev2_adam_particlenet_edgeconv0_bn1_beta_v_read_readvariableopDsavev2_adam_particlenet_edgeconv0_conv2_kernel_v_read_readvariableopFsavev2_adam_particlenet_edgeconv0_sc_conv_kernel_v_read_readvariableopAsavev2_adam_particlenet_edgeconv0_bn2_gamma_v_read_readvariableop@savev2_adam_particlenet_edgeconv0_bn2_beta_v_read_readvariableopCsavev2_adam_particlenet_edgeconv0_sc_bn_gamma_v_read_readvariableopBsavev2_adam_particlenet_edgeconv0_sc_bn_beta_v_read_readvariableopDsavev2_adam_particlenet_edgeconv1_conv0_kernel_v_read_readvariableopAsavev2_adam_particlenet_edgeconv1_bn0_gamma_v_read_readvariableop@savev2_adam_particlenet_edgeconv1_bn0_beta_v_read_readvariableopDsavev2_adam_particlenet_edgeconv1_conv1_kernel_v_read_readvariableopAsavev2_adam_particlenet_edgeconv1_bn1_gamma_v_read_readvariableop@savev2_adam_particlenet_edgeconv1_bn1_beta_v_read_readvariableopDsavev2_adam_particlenet_edgeconv1_conv2_kernel_v_read_readvariableopFsavev2_adam_particlenet_edgeconv1_sc_conv_kernel_v_read_readvariableopAsavev2_adam_particlenet_edgeconv1_bn2_gamma_v_read_readvariableop@savev2_adam_particlenet_edgeconv1_bn2_beta_v_read_readvariableopCsavev2_adam_particlenet_edgeconv1_sc_bn_gamma_v_read_readvariableopBsavev2_adam_particlenet_edgeconv1_sc_bn_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *?
dtypes~
|2z	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::: : : : : :  : : : : :  : : : : : : : : : :@@:@:@:@:@:@@:@:@:@:@:@@: @:@:@:@:@:@:@:@:@:	@?:?:	?:: : : : : : : : : :?:?:?:?::: : : :  : : :  : : : : : :@@:@:@:@@:@:@:@@: @:@:@:@:@:	@?:?:	?:::: : : :  : : :  : : : : : :@@:@:@:@@:@:@:@@: @:@:@:@:@:	@?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: :,
(
&
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:  

_output_shapes
:@: !

_output_shapes
:@: "

_output_shapes
:@:,#(
&
_output_shapes
:@@:,$(
&
_output_shapes
: @: %

_output_shapes
:@: &

_output_shapes
:@: '

_output_shapes
:@: (

_output_shapes
:@: )

_output_shapes
:@: *

_output_shapes
:@: +

_output_shapes
:@: ,

_output_shapes
:@:%-!

_output_shapes
:	@?:!.

_output_shapes	
:?:%/!

_output_shapes
:	?: 0

_output_shapes
::1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: :!:

_output_shapes	
:?:!;

_output_shapes	
:?:!<

_output_shapes	
:?:!=

_output_shapes	
:?: >

_output_shapes
:: ?

_output_shapes
::,@(
&
_output_shapes
: : A

_output_shapes
: : B

_output_shapes
: :,C(
&
_output_shapes
:  : D

_output_shapes
: : E

_output_shapes
: :,F(
&
_output_shapes
:  :,G(
&
_output_shapes
: : H

_output_shapes
: : I

_output_shapes
: : J

_output_shapes
: : K

_output_shapes
: :,L(
&
_output_shapes
:@@: M

_output_shapes
:@: N

_output_shapes
:@:,O(
&
_output_shapes
:@@: P

_output_shapes
:@: Q

_output_shapes
:@:,R(
&
_output_shapes
:@@:,S(
&
_output_shapes
: @: T

_output_shapes
:@: U

_output_shapes
:@: V

_output_shapes
:@: W

_output_shapes
:@:%X!

_output_shapes
:	@?:!Y

_output_shapes	
:?:%Z!

_output_shapes
:	?: [

_output_shapes
:: \

_output_shapes
:: ]

_output_shapes
::,^(
&
_output_shapes
: : _

_output_shapes
: : `

_output_shapes
: :,a(
&
_output_shapes
:  : b

_output_shapes
: : c

_output_shapes
: :,d(
&
_output_shapes
:  :,e(
&
_output_shapes
: : f

_output_shapes
: : g

_output_shapes
: : h

_output_shapes
: : i

_output_shapes
: :,j(
&
_output_shapes
:@@: k

_output_shapes
:@: l

_output_shapes
:@:,m(
&
_output_shapes
:@@: n

_output_shapes
:@: o

_output_shapes
:@:,p(
&
_output_shapes
:@@:,q(
&
_output_shapes
: @: r

_output_shapes
:@: s

_output_shapes
:@: t

_output_shapes
:@: u

_output_shapes
:@:%v!

_output_shapes
:	@?:!w

_output_shapes	
:?:%x!

_output_shapes
:	?: y

_output_shapes
::z

_output_shapes
: 
?
?
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56634

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_535362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56667

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57211

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_conv0_layer_call_and_return_conditional_losses_53743

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57275

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56161

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
ߋ
?+
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_55845
inputs_0
inputs_1
inputs_2
tf_math_multiply_mul_x
tf_math_multiply_3_mul_x.
*particlenet_fts_bn_readvariableop_resource0
,particlenet_fts_bn_readvariableop_1_resource?
;particlenet_fts_bn_fusedbatchnormv3_readvariableop_resourceA
=particlenet_fts_bn_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv0_conv0_conv2d_readvariableop_resource5
1particlenet_edgeconv0_bn0_readvariableop_resource7
3particlenet_edgeconv0_bn0_readvariableop_1_resourceF
Bparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv0_conv1_conv2d_readvariableop_resource5
1particlenet_edgeconv0_bn1_readvariableop_resource7
3particlenet_edgeconv0_bn1_readvariableop_1_resourceF
Bparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv0_conv2_conv2d_readvariableop_resource5
1particlenet_edgeconv0_bn2_readvariableop_resource7
3particlenet_edgeconv0_bn2_readvariableop_1_resourceF
Bparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_1_resource@
<particlenet_edgeconv0_sc_conv_conv2d_readvariableop_resource7
3particlenet_edgeconv0_sc_bn_readvariableop_resource9
5particlenet_edgeconv0_sc_bn_readvariableop_1_resourceH
Dparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_resourceJ
Fparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv1_conv0_conv2d_readvariableop_resource5
1particlenet_edgeconv1_bn0_readvariableop_resource7
3particlenet_edgeconv1_bn0_readvariableop_1_resourceF
Bparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv1_conv1_conv2d_readvariableop_resource5
1particlenet_edgeconv1_bn1_readvariableop_resource7
3particlenet_edgeconv1_bn1_readvariableop_1_resourceF
Bparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv1_conv2_conv2d_readvariableop_resource5
1particlenet_edgeconv1_bn2_readvariableop_resource7
3particlenet_edgeconv1_bn2_readvariableop_1_resourceF
Bparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_1_resource@
<particlenet_edgeconv1_sc_conv_conv2d_readvariableop_resource7
3particlenet_edgeconv1_sc_bn_readvariableop_resource9
5particlenet_edgeconv1_sc_bn_readvariableop_1_resourceH
Dparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_resourceJ
Fparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_1_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv0_bn0/ReadVariableOp?*ParticleNet_EdgeConv0_bn0/ReadVariableOp_1?9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv0_bn1/ReadVariableOp?*ParticleNet_EdgeConv0_bn1/ReadVariableOp_1?9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv0_bn2/ReadVariableOp?*ParticleNet_EdgeConv0_bn2/ReadVariableOp_1?1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp?1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp?1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp?;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp?=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1?*ParticleNet_EdgeConv0_sc_bn/ReadVariableOp?,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1?3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp?9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv1_bn0/ReadVariableOp?*ParticleNet_EdgeConv1_bn0/ReadVariableOp_1?9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv1_bn1/ReadVariableOp?*ParticleNet_EdgeConv1_bn1/ReadVariableOp_1?9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv1_bn2/ReadVariableOp?*ParticleNet_EdgeConv1_bn2/ReadVariableOp_1?1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp?1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp?1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp?;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp?=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1?*ParticleNet_EdgeConv1_sc_bn/ReadVariableOp?,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1?3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp?2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp?4ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1?!ParticleNet_fts_bn/ReadVariableOp?#ParticleNet_fts_bn/ReadVariableOp_1?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
tf.math.not_equal/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.not_equal/NotEqual/y?
tf.math.not_equal/NotEqualNotEqualinputs_2%tf.math.not_equal/NotEqual/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.not_equal/NotEqual?
tf.cast/CastCasttf.math.not_equal/NotEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast/Casts
tf.math.equal/Equal/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.equal/Equal/y?
tf.math.equal/EqualEqualtf.cast/Cast:y:0tf.math.equal/Equal/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.equal/Equal?
tf.cast_1/CastCasttf.math.equal/Equal:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast_1/Cast?
tf.math.multiply/MulMultf_math_multiply_mul_xtf.cast_1/Cast:y:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply/Mul?
tf.math.add/AddAddtf.math.multiply/Mul:z:0inputs_0*
T0*,
_output_shapes
:??????????2
tf.math.add/Add?
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm?
 tf.compat.v1.transpose/transpose	Transposetf.math.add/Add:z:0.tf.compat.v1.transpose/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2"
 tf.compat.v1.transpose/transpose?
tf.math.multiply_2/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_2/Mul?
tf.linalg.matmul/MatMulBatchMatMulV2tf.math.add/Add:z:0$tf.compat.v1.transpose/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.linalg.matmul/MatMul?
tf.math.multiply_1/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_1/Mul?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDimsinputs_1&tf.expand_dims/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
*tf.math.reduce_sum_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_1/Sum/reduction_indices?
tf.math.reduce_sum_1/SumSumtf.math.multiply_2/Mul:z:03tf.math.reduce_sum_1/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum_1/Sum?
(tf.math.reduce_sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(tf.math.reduce_sum/Sum/reduction_indices?
tf.math.reduce_sum/SumSumtf.math.multiply_1/Mul:z:01tf.math.reduce_sum/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum/Sum?
tf.math.multiply_3/MulMultf_math_multiply_3_mul_x tf.linalg.matmul/MatMul:output:0*
T0*-
_output_shapes
:???????????2
tf.math.multiply_3/Mul?
!ParticleNet_fts_bn/ReadVariableOpReadVariableOp*particlenet_fts_bn_readvariableop_resource*
_output_shapes
:*
dtype02#
!ParticleNet_fts_bn/ReadVariableOp?
#ParticleNet_fts_bn/ReadVariableOp_1ReadVariableOp,particlenet_fts_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02%
#ParticleNet_fts_bn/ReadVariableOp_1?
2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp;particlenet_fts_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype024
2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp?
4ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp=particlenet_fts_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype026
4ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1?
#ParticleNet_fts_bn/FusedBatchNormV3FusedBatchNormV3"tf.expand_dims/ExpandDims:output:0)ParticleNet_fts_bn/ReadVariableOp:value:0+ParticleNet_fts_bn/ReadVariableOp_1:value:0:ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp:value:0<ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????:::::*
epsilon%o?:*
is_training( 2%
#ParticleNet_fts_bn/FusedBatchNormV3?
tf.compat.v1.squeeze/SqueezeSqueeze'ParticleNet_fts_bn/FusedBatchNormV3:y:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
2
tf.compat.v1.squeeze/Squeeze?
tf.math.subtract/SubSubtf.math.reduce_sum/Sum:output:0tf.math.multiply_3/Mul:z:0*
T0*-
_output_shapes
:???????????2
tf.math.subtract/Sub?
'tf.compat.v1.transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'tf.compat.v1.transpose_1/transpose/perm?
"tf.compat.v1.transpose_1/transpose	Transpose!tf.math.reduce_sum_1/Sum:output:00tf.compat.v1.transpose_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2$
"tf.compat.v1.transpose_1/transpose?
tf.__operators__.add/AddV2AddV2tf.math.subtract/Sub:z:0&tf.compat.v1.transpose_1/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.__operators__.add/AddV2?
tf.compat.v1.shape/ShapeShape%tf.compat.v1.squeeze/Squeeze:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape/Shape?
tf.math.negative/NegNegtf.__operators__.add/AddV2:z:0*
T0*-
_output_shapes
:???????????2
tf.math.negative/Neg?
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_1/strided_slice/stack?
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_1?
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_2?
(tf.__operators__.getitem_1/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_1/strided_slicer
tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :2
tf.math.top_k/TopKV2/k?
tf.math.top_k/TopKV2TopKV2tf.math.negative/Neg:y:0tf.math.top_k/TopKV2/k:output:0*
T0*D
_output_shapes2
0:??????????:??????????2
tf.math.top_k/TopKV2n
tf.range/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range/range/startn
tf.range/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range/range/delta?
tf.range/rangeRangetf.range/range/start:output:01tf.__operators__.getitem_1/strided_slice:output:0tf.range/range/delta:output:0*#
_output_shapes
:?????????2
tf.range/range?
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2.
,tf.__operators__.getitem/strided_slice/stack?
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            20
.tf.__operators__.getitem/strided_slice/stack_1?
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         20
.tf.__operators__.getitem/strided_slice/stack_2?
&tf.__operators__.getitem/strided_sliceStridedSlicetf.math.top_k/TopKV2:indices:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice?
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape/Reshape/shape?
tf.reshape/ReshapeReshapetf.range/range:output:0!tf.reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape/Reshape?
tf.tile/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile/Tile/multiples?
tf.tile/TileTiletf.reshape/Reshape:output:0tf.tile/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile/Tile?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDimsp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis?
tf.concat/concatConcatV2tf.tile/Tile:output:0$tf.expand_dims_1/ExpandDims:output:0tf.concat/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat/concat?
tf.expand_dims_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_2/ExpandDims/dim?
tf.expand_dims_2/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_2/ExpandDims?
tf.tile_1/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_1/Tile/multiples?
tf.tile_1/TileTile$tf.expand_dims_2/ExpandDims:output:0!tf.tile_1/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_1/Tile?
tf.compat.v1.gather_nd/GatherNdGatherNd%tf.compat.v1.squeeze/Squeeze:output:0tf.concat/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:??????????2!
tf.compat.v1.gather_nd/GatherNd?
tf.math.subtract_1/SubSub(tf.compat.v1.gather_nd/GatherNd:output:0tf.tile_1/Tile:output:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_1/Sub}
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_1/concat/axis?
tf.concat_1/concatConcatV2tf.tile_1/Tile:output:0tf.math.subtract_1/Sub:z:0 tf.concat_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_1/concat?
1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv0_conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv0_conv0/Conv2DConv2Dtf.concat_1/concat:output:09ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2$
"ParticleNet_EdgeConv0_conv0/Conv2D?
(ParticleNet_EdgeConv0_bn0/ReadVariableOpReadVariableOp1particlenet_edgeconv0_bn0_readvariableop_resource*
_output_shapes
: *
dtype02*
(ParticleNet_EdgeConv0_bn0/ReadVariableOp?
*ParticleNet_EdgeConv0_bn0/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv0_bn0_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*ParticleNet_EdgeConv0_bn0/ReadVariableOp_1?
9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02;
9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv0_bn0/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv0_conv0/Conv2D:output:00ParticleNet_EdgeConv0_bn0/ReadVariableOp:value:02ParticleNet_EdgeConv0_bn0/ReadVariableOp_1:value:0AParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2,
*ParticleNet_EdgeConv0_bn0/FusedBatchNormV3?
ParticleNet_EdgeConv0_act0/ReluRelu.ParticleNet_EdgeConv0_bn0/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????? 2!
ParticleNet_EdgeConv0_act0/Relu?
1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv0_conv1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype023
1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv0_conv1/Conv2DConv2D-ParticleNet_EdgeConv0_act0/Relu:activations:09ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2$
"ParticleNet_EdgeConv0_conv1/Conv2D?
(ParticleNet_EdgeConv0_bn1/ReadVariableOpReadVariableOp1particlenet_edgeconv0_bn1_readvariableop_resource*
_output_shapes
: *
dtype02*
(ParticleNet_EdgeConv0_bn1/ReadVariableOp?
*ParticleNet_EdgeConv0_bn1/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv0_bn1_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*ParticleNet_EdgeConv0_bn1/ReadVariableOp_1?
9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02;
9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv0_bn1/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv0_conv1/Conv2D:output:00ParticleNet_EdgeConv0_bn1/ReadVariableOp:value:02ParticleNet_EdgeConv0_bn1/ReadVariableOp_1:value:0AParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2,
*ParticleNet_EdgeConv0_bn1/FusedBatchNormV3?
ParticleNet_EdgeConv0_act1/ReluRelu.ParticleNet_EdgeConv0_bn1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????? 2!
ParticleNet_EdgeConv0_act1/Relu?
1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv0_conv2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype023
1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv0_conv2/Conv2DConv2D-ParticleNet_EdgeConv0_act1/Relu:activations:09ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2$
"ParticleNet_EdgeConv0_conv2/Conv2D?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
(ParticleNet_EdgeConv0_bn2/ReadVariableOpReadVariableOp1particlenet_edgeconv0_bn2_readvariableop_resource*
_output_shapes
: *
dtype02*
(ParticleNet_EdgeConv0_bn2/ReadVariableOp?
*ParticleNet_EdgeConv0_bn2/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv0_bn2_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*ParticleNet_EdgeConv0_bn2/ReadVariableOp_1?
9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02;
9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv0_bn2/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv0_conv2/Conv2D:output:00ParticleNet_EdgeConv0_bn2/ReadVariableOp:value:02ParticleNet_EdgeConv0_bn2/ReadVariableOp_1:value:0AParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2,
*ParticleNet_EdgeConv0_bn2/FusedBatchNormV3?
3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOpReadVariableOp<particlenet_edgeconv0_sc_conv_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp?
$ParticleNet_EdgeConv0_sc_conv/Conv2DConv2D$tf.expand_dims_3/ExpandDims:output:0;ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2&
$ParticleNet_EdgeConv0_sc_conv/Conv2D?
ParticleNet_EdgeConv0_act2/ReluRelu.ParticleNet_EdgeConv0_bn2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????? 2!
ParticleNet_EdgeConv0_act2/Relu?
*ParticleNet_EdgeConv0_sc_bn/ReadVariableOpReadVariableOp3particlenet_edgeconv0_sc_bn_readvariableop_resource*
_output_shapes
: *
dtype02,
*ParticleNet_EdgeConv0_sc_bn/ReadVariableOp?
,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1ReadVariableOp5particlenet_edgeconv0_sc_bn_readvariableop_1_resource*
_output_shapes
: *
dtype02.
,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1?
;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOpReadVariableOpDparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02=
;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp?
=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02?
=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1?
,ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3FusedBatchNormV3-ParticleNet_EdgeConv0_sc_conv/Conv2D:output:02ParticleNet_EdgeConv0_sc_bn/ReadVariableOp:value:04ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1:value:0CParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp:value:0EParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2.
,ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3?
tf.compat.v1.squeeze_1/SqueezeSqueeze0ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3:y:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
2 
tf.compat.v1.squeeze_1/Squeeze?
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_mean/Mean/reduction_indices?
tf.math.reduce_mean/MeanMean-ParticleNet_EdgeConv0_act2/Relu:activations:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????? 2
tf.math.reduce_mean/Mean?
tf.__operators__.add_1/AddV2AddV2'tf.compat.v1.squeeze_1/Squeeze:output:0!tf.math.reduce_mean/Mean:output:0*
T0*,
_output_shapes
:?????????? 2
tf.__operators__.add_1/AddV2?
!ParticleNet_EdgeConv0_sc_act/ReluRelu tf.__operators__.add_1/AddV2:z:0*
T0*,
_output_shapes
:?????????? 2#
!ParticleNet_EdgeConv0_sc_act/Relu?
tf.compat.v1.shape_1/ShapeShape/ParticleNet_EdgeConv0_sc_act/Relu:activations:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_1/Shape?
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_2/strided_slice/stack?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_1?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_2?
(tf.__operators__.getitem_2/strided_sliceStridedSlice#tf.compat.v1.shape_1/Shape:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_2/strided_slicer
tf.range_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range_1/range/startr
tf.range_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range_1/range/delta?
tf.range_1/rangeRangetf.range_1/range/start:output:01tf.__operators__.getitem_2/strided_slice:output:0tf.range_1/range/delta:output:0*#
_output_shapes
:?????????2
tf.range_1/range?
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape_1/Reshape/shape?
tf.reshape_1/ReshapeReshapetf.range_1/range:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape_1/Reshape?
tf.tile_2/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile_2/Tile/multiples?
tf.tile_2/TileTiletf.reshape_1/Reshape:output:0!tf.tile_2/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_2/Tile?
tf.expand_dims_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_4/ExpandDims/dim?
tf.expand_dims_4/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_4/ExpandDimst
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_2/concat/axis?
tf.concat_2/concatConcatV2tf.tile_2/Tile:output:0$tf.expand_dims_4/ExpandDims:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_2/concat?
tf.expand_dims_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_5/ExpandDims/dim?
tf.expand_dims_5/ExpandDims
ExpandDims/ParticleNet_EdgeConv0_sc_act/Relu:activations:0(tf.expand_dims_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_5/ExpandDims?
tf.tile_3/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_3/Tile/multiples?
tf.tile_3/TileTile$tf.expand_dims_5/ExpandDims:output:0!tf.tile_3/Tile/multiples:output:0*
T0*0
_output_shapes
:?????????? 2
tf.tile_3/Tile?
!tf.compat.v1.gather_nd_1/GatherNdGatherNd/ParticleNet_EdgeConv0_sc_act/Relu:activations:0tf.concat_2/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:?????????? 2#
!tf.compat.v1.gather_nd_1/GatherNd?
tf.math.subtract_2/SubSub*tf.compat.v1.gather_nd_1/GatherNd:output:0tf.tile_3/Tile:output:0*
T0*0
_output_shapes
:?????????? 2
tf.math.subtract_2/Sub}
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_3/concat/axis?
tf.concat_3/concatConcatV2tf.tile_3/Tile:output:0tf.math.subtract_2/Sub:z:0 tf.concat_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????@2
tf.concat_3/concat?
1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv1_conv0_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype023
1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv1_conv0/Conv2DConv2Dtf.concat_3/concat:output:09ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2$
"ParticleNet_EdgeConv1_conv0/Conv2D?
(ParticleNet_EdgeConv1_bn0/ReadVariableOpReadVariableOp1particlenet_edgeconv1_bn0_readvariableop_resource*
_output_shapes
:@*
dtype02*
(ParticleNet_EdgeConv1_bn0/ReadVariableOp?
*ParticleNet_EdgeConv1_bn0/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv1_bn0_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*ParticleNet_EdgeConv1_bn0/ReadVariableOp_1?
9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02;
9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv1_bn0/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv1_conv0/Conv2D:output:00ParticleNet_EdgeConv1_bn0/ReadVariableOp:value:02ParticleNet_EdgeConv1_bn0/ReadVariableOp_1:value:0AParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2,
*ParticleNet_EdgeConv1_bn0/FusedBatchNormV3?
ParticleNet_EdgeConv1_act0/ReluRelu.ParticleNet_EdgeConv1_bn0/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????@2!
ParticleNet_EdgeConv1_act0/Relu?
1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype023
1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv1_conv1/Conv2DConv2D-ParticleNet_EdgeConv1_act0/Relu:activations:09ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2$
"ParticleNet_EdgeConv1_conv1/Conv2D?
(ParticleNet_EdgeConv1_bn1/ReadVariableOpReadVariableOp1particlenet_edgeconv1_bn1_readvariableop_resource*
_output_shapes
:@*
dtype02*
(ParticleNet_EdgeConv1_bn1/ReadVariableOp?
*ParticleNet_EdgeConv1_bn1/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv1_bn1_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*ParticleNet_EdgeConv1_bn1/ReadVariableOp_1?
9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02;
9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv1_bn1/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv1_conv1/Conv2D:output:00ParticleNet_EdgeConv1_bn1/ReadVariableOp:value:02ParticleNet_EdgeConv1_bn1/ReadVariableOp_1:value:0AParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2,
*ParticleNet_EdgeConv1_bn1/FusedBatchNormV3?
ParticleNet_EdgeConv1_act1/ReluRelu.ParticleNet_EdgeConv1_bn1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????@2!
ParticleNet_EdgeConv1_act1/Relu?
1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype023
1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv1_conv2/Conv2DConv2D-ParticleNet_EdgeConv1_act1/Relu:activations:09ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2$
"ParticleNet_EdgeConv1_conv2/Conv2D?
tf.expand_dims_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_6/ExpandDims/dim?
tf.expand_dims_6/ExpandDims
ExpandDims/ParticleNet_EdgeConv0_sc_act/Relu:activations:0(tf.expand_dims_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_6/ExpandDims?
(ParticleNet_EdgeConv1_bn2/ReadVariableOpReadVariableOp1particlenet_edgeconv1_bn2_readvariableop_resource*
_output_shapes
:@*
dtype02*
(ParticleNet_EdgeConv1_bn2/ReadVariableOp?
*ParticleNet_EdgeConv1_bn2/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv1_bn2_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*ParticleNet_EdgeConv1_bn2/ReadVariableOp_1?
9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02;
9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv1_bn2/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv1_conv2/Conv2D:output:00ParticleNet_EdgeConv1_bn2/ReadVariableOp:value:02ParticleNet_EdgeConv1_bn2/ReadVariableOp_1:value:0AParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2,
*ParticleNet_EdgeConv1_bn2/FusedBatchNormV3?
3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOpReadVariableOp<particlenet_edgeconv1_sc_conv_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp?
$ParticleNet_EdgeConv1_sc_conv/Conv2DConv2D$tf.expand_dims_6/ExpandDims:output:0;ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2&
$ParticleNet_EdgeConv1_sc_conv/Conv2D?
ParticleNet_EdgeConv1_act2/ReluRelu.ParticleNet_EdgeConv1_bn2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????@2!
ParticleNet_EdgeConv1_act2/Relu?
*ParticleNet_EdgeConv1_sc_bn/ReadVariableOpReadVariableOp3particlenet_edgeconv1_sc_bn_readvariableop_resource*
_output_shapes
:@*
dtype02,
*ParticleNet_EdgeConv1_sc_bn/ReadVariableOp?
,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1ReadVariableOp5particlenet_edgeconv1_sc_bn_readvariableop_1_resource*
_output_shapes
:@*
dtype02.
,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1?
;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOpReadVariableOpDparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02=
;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp?
=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1?
,ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3FusedBatchNormV3-ParticleNet_EdgeConv1_sc_conv/Conv2D:output:02ParticleNet_EdgeConv1_sc_bn/ReadVariableOp:value:04ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1:value:0CParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp:value:0EParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2.
,ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3?
tf.compat.v1.squeeze_2/SqueezeSqueeze0ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3:y:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2 
tf.compat.v1.squeeze_2/Squeeze?
,tf.math.reduce_mean_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_1/Mean/reduction_indices?
tf.math.reduce_mean_1/MeanMean-ParticleNet_EdgeConv1_act2/Relu:activations:05tf.math.reduce_mean_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????@2
tf.math.reduce_mean_1/Mean?
tf.__operators__.add_2/AddV2AddV2'tf.compat.v1.squeeze_2/Squeeze:output:0#tf.math.reduce_mean_1/Mean:output:0*
T0*,
_output_shapes
:??????????@2
tf.__operators__.add_2/AddV2?
!ParticleNet_EdgeConv1_sc_act/ReluRelu tf.__operators__.add_2/AddV2:z:0*
T0*,
_output_shapes
:??????????@2#
!ParticleNet_EdgeConv1_sc_act/Relu?
tf.math.multiply_4/MulMul/ParticleNet_EdgeConv1_sc_act/Relu:activations:0tf.cast/Cast:y:0*
T0*,
_output_shapes
:??????????@2
tf.math.multiply_4/Mul?
,tf.math.reduce_mean_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_2/Mean/reduction_indices?
tf.math.reduce_mean_2/MeanMeantf.math.multiply_4/Mul:z:05tf.math.reduce_mean_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
tf.math.reduce_mean_2/Mean?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul#tf.math.reduce_mean_2/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relu}
dropout/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout/Identity?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0:^ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv0_bn0/ReadVariableOp+^ParticleNet_EdgeConv0_bn0/ReadVariableOp_1:^ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv0_bn1/ReadVariableOp+^ParticleNet_EdgeConv0_bn1/ReadVariableOp_1:^ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv0_bn2/ReadVariableOp+^ParticleNet_EdgeConv0_bn2/ReadVariableOp_12^ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp2^ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp2^ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp<^ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp>^ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1+^ParticleNet_EdgeConv0_sc_bn/ReadVariableOp-^ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_14^ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp:^ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv1_bn0/ReadVariableOp+^ParticleNet_EdgeConv1_bn0/ReadVariableOp_1:^ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv1_bn1/ReadVariableOp+^ParticleNet_EdgeConv1_bn1/ReadVariableOp_1:^ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv1_bn2/ReadVariableOp+^ParticleNet_EdgeConv1_bn2/ReadVariableOp_12^ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp2^ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp2^ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp<^ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp>^ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1+^ParticleNet_EdgeConv1_sc_bn/ReadVariableOp-^ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_14^ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp3^ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp5^ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1"^ParticleNet_fts_bn/ReadVariableOp$^ParticleNet_fts_bn/ReadVariableOp_1^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::2v
9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv0_bn0/ReadVariableOp(ParticleNet_EdgeConv0_bn0/ReadVariableOp2X
*ParticleNet_EdgeConv0_bn0/ReadVariableOp_1*ParticleNet_EdgeConv0_bn0/ReadVariableOp_12v
9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv0_bn1/ReadVariableOp(ParticleNet_EdgeConv0_bn1/ReadVariableOp2X
*ParticleNet_EdgeConv0_bn1/ReadVariableOp_1*ParticleNet_EdgeConv0_bn1/ReadVariableOp_12v
9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv0_bn2/ReadVariableOp(ParticleNet_EdgeConv0_bn2/ReadVariableOp2X
*ParticleNet_EdgeConv0_bn2/ReadVariableOp_1*ParticleNet_EdgeConv0_bn2/ReadVariableOp_12f
1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp2f
1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp2f
1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp2z
;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp2~
=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_12X
*ParticleNet_EdgeConv0_sc_bn/ReadVariableOp*ParticleNet_EdgeConv0_sc_bn/ReadVariableOp2\
,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_12j
3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp2v
9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv1_bn0/ReadVariableOp(ParticleNet_EdgeConv1_bn0/ReadVariableOp2X
*ParticleNet_EdgeConv1_bn0/ReadVariableOp_1*ParticleNet_EdgeConv1_bn0/ReadVariableOp_12v
9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv1_bn1/ReadVariableOp(ParticleNet_EdgeConv1_bn1/ReadVariableOp2X
*ParticleNet_EdgeConv1_bn1/ReadVariableOp_1*ParticleNet_EdgeConv1_bn1/ReadVariableOp_12v
9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv1_bn2/ReadVariableOp(ParticleNet_EdgeConv1_bn2/ReadVariableOp2X
*ParticleNet_EdgeConv1_bn2/ReadVariableOp_1*ParticleNet_EdgeConv1_bn2/ReadVariableOp_12f
1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp2f
1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp2f
1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp2z
;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp2~
=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_12X
*ParticleNet_EdgeConv1_sc_bn/ReadVariableOp*ParticleNet_EdgeConv1_sc_bn/ReadVariableOp2\
,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_12j
3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp2h
2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp2l
4ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_14ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_12F
!ParticleNet_fts_bn/ReadVariableOp!ParticleNet_fts_bn/ReadVariableOp2J
#ParticleNet_fts_bn/ReadVariableOp_1#ParticleNet_fts_bn/ReadVariableOp_12<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/1:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/2:

_output_shapes
: :

_output_shapes
: 
?
?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56391

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
s
W__inference_ParticleNet_EdgeConv1_sc_act_layer_call_and_return_conditional_losses_54154

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:??????????@2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
??
?2
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_55568
inputs_0
inputs_1
inputs_2
tf_math_multiply_mul_x
tf_math_multiply_3_mul_x.
*particlenet_fts_bn_readvariableop_resource0
,particlenet_fts_bn_readvariableop_1_resource?
;particlenet_fts_bn_fusedbatchnormv3_readvariableop_resourceA
=particlenet_fts_bn_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv0_conv0_conv2d_readvariableop_resource5
1particlenet_edgeconv0_bn0_readvariableop_resource7
3particlenet_edgeconv0_bn0_readvariableop_1_resourceF
Bparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv0_conv1_conv2d_readvariableop_resource5
1particlenet_edgeconv0_bn1_readvariableop_resource7
3particlenet_edgeconv0_bn1_readvariableop_1_resourceF
Bparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv0_conv2_conv2d_readvariableop_resource5
1particlenet_edgeconv0_bn2_readvariableop_resource7
3particlenet_edgeconv0_bn2_readvariableop_1_resourceF
Bparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_1_resource@
<particlenet_edgeconv0_sc_conv_conv2d_readvariableop_resource7
3particlenet_edgeconv0_sc_bn_readvariableop_resource9
5particlenet_edgeconv0_sc_bn_readvariableop_1_resourceH
Dparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_resourceJ
Fparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv1_conv0_conv2d_readvariableop_resource5
1particlenet_edgeconv1_bn0_readvariableop_resource7
3particlenet_edgeconv1_bn0_readvariableop_1_resourceF
Bparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv1_conv1_conv2d_readvariableop_resource5
1particlenet_edgeconv1_bn1_readvariableop_resource7
3particlenet_edgeconv1_bn1_readvariableop_1_resourceF
Bparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_1_resource>
:particlenet_edgeconv1_conv2_conv2d_readvariableop_resource5
1particlenet_edgeconv1_bn2_readvariableop_resource7
3particlenet_edgeconv1_bn2_readvariableop_1_resourceF
Bparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_resourceH
Dparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_1_resource@
<particlenet_edgeconv1_sc_conv_conv2d_readvariableop_resource7
3particlenet_edgeconv1_sc_bn_readvariableop_resource9
5particlenet_edgeconv1_sc_bn_readvariableop_1_resourceH
Dparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_resourceJ
Fparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_1_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??(ParticleNet_EdgeConv0_bn0/AssignNewValue?*ParticleNet_EdgeConv0_bn0/AssignNewValue_1?9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv0_bn0/ReadVariableOp?*ParticleNet_EdgeConv0_bn0/ReadVariableOp_1?(ParticleNet_EdgeConv0_bn1/AssignNewValue?*ParticleNet_EdgeConv0_bn1/AssignNewValue_1?9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv0_bn1/ReadVariableOp?*ParticleNet_EdgeConv0_bn1/ReadVariableOp_1?(ParticleNet_EdgeConv0_bn2/AssignNewValue?*ParticleNet_EdgeConv0_bn2/AssignNewValue_1?9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv0_bn2/ReadVariableOp?*ParticleNet_EdgeConv0_bn2/ReadVariableOp_1?1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp?1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp?1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp?*ParticleNet_EdgeConv0_sc_bn/AssignNewValue?,ParticleNet_EdgeConv0_sc_bn/AssignNewValue_1?;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp?=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1?*ParticleNet_EdgeConv0_sc_bn/ReadVariableOp?,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1?3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp?(ParticleNet_EdgeConv1_bn0/AssignNewValue?*ParticleNet_EdgeConv1_bn0/AssignNewValue_1?9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv1_bn0/ReadVariableOp?*ParticleNet_EdgeConv1_bn0/ReadVariableOp_1?(ParticleNet_EdgeConv1_bn1/AssignNewValue?*ParticleNet_EdgeConv1_bn1/AssignNewValue_1?9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv1_bn1/ReadVariableOp?*ParticleNet_EdgeConv1_bn1/ReadVariableOp_1?(ParticleNet_EdgeConv1_bn2/AssignNewValue?*ParticleNet_EdgeConv1_bn2/AssignNewValue_1?9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp?;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1?(ParticleNet_EdgeConv1_bn2/ReadVariableOp?*ParticleNet_EdgeConv1_bn2/ReadVariableOp_1?1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp?1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp?1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp?*ParticleNet_EdgeConv1_sc_bn/AssignNewValue?,ParticleNet_EdgeConv1_sc_bn/AssignNewValue_1?;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp?=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1?*ParticleNet_EdgeConv1_sc_bn/ReadVariableOp?,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1?3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp?!ParticleNet_fts_bn/AssignNewValue?#ParticleNet_fts_bn/AssignNewValue_1?2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp?4ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1?!ParticleNet_fts_bn/ReadVariableOp?#ParticleNet_fts_bn/ReadVariableOp_1?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
tf.math.not_equal/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.not_equal/NotEqual/y?
tf.math.not_equal/NotEqualNotEqualinputs_2%tf.math.not_equal/NotEqual/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.not_equal/NotEqual?
tf.cast/CastCasttf.math.not_equal/NotEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast/Casts
tf.math.equal/Equal/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.equal/Equal/y?
tf.math.equal/EqualEqualtf.cast/Cast:y:0tf.math.equal/Equal/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.equal/Equal?
tf.cast_1/CastCasttf.math.equal/Equal:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast_1/Cast?
tf.math.multiply/MulMultf_math_multiply_mul_xtf.cast_1/Cast:y:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply/Mul?
tf.math.add/AddAddtf.math.multiply/Mul:z:0inputs_0*
T0*,
_output_shapes
:??????????2
tf.math.add/Add?
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm?
 tf.compat.v1.transpose/transpose	Transposetf.math.add/Add:z:0.tf.compat.v1.transpose/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2"
 tf.compat.v1.transpose/transpose?
tf.math.multiply_2/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_2/Mul?
tf.linalg.matmul/MatMulBatchMatMulV2tf.math.add/Add:z:0$tf.compat.v1.transpose/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.linalg.matmul/MatMul?
tf.math.multiply_1/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_1/Mul?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDimsinputs_1&tf.expand_dims/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
*tf.math.reduce_sum_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_1/Sum/reduction_indices?
tf.math.reduce_sum_1/SumSumtf.math.multiply_2/Mul:z:03tf.math.reduce_sum_1/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum_1/Sum?
(tf.math.reduce_sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(tf.math.reduce_sum/Sum/reduction_indices?
tf.math.reduce_sum/SumSumtf.math.multiply_1/Mul:z:01tf.math.reduce_sum/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum/Sum?
tf.math.multiply_3/MulMultf_math_multiply_3_mul_x tf.linalg.matmul/MatMul:output:0*
T0*-
_output_shapes
:???????????2
tf.math.multiply_3/Mul?
!ParticleNet_fts_bn/ReadVariableOpReadVariableOp*particlenet_fts_bn_readvariableop_resource*
_output_shapes
:*
dtype02#
!ParticleNet_fts_bn/ReadVariableOp?
#ParticleNet_fts_bn/ReadVariableOp_1ReadVariableOp,particlenet_fts_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02%
#ParticleNet_fts_bn/ReadVariableOp_1?
2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp;particlenet_fts_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype024
2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp?
4ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp=particlenet_fts_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype026
4ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1?
#ParticleNet_fts_bn/FusedBatchNormV3FusedBatchNormV3"tf.expand_dims/ExpandDims:output:0)ParticleNet_fts_bn/ReadVariableOp:value:0+ParticleNet_fts_bn/ReadVariableOp_1:value:0:ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp:value:0<ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2%
#ParticleNet_fts_bn/FusedBatchNormV3?
!ParticleNet_fts_bn/AssignNewValueAssignVariableOp;particlenet_fts_bn_fusedbatchnormv3_readvariableop_resource0ParticleNet_fts_bn/FusedBatchNormV3:batch_mean:03^ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*N
_classD
B@loc:@ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02#
!ParticleNet_fts_bn/AssignNewValue?
#ParticleNet_fts_bn/AssignNewValue_1AssignVariableOp=particlenet_fts_bn_fusedbatchnormv3_readvariableop_1_resource4ParticleNet_fts_bn/FusedBatchNormV3:batch_variance:05^ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*P
_classF
DBloc:@ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02%
#ParticleNet_fts_bn/AssignNewValue_1?
tf.compat.v1.squeeze/SqueezeSqueeze'ParticleNet_fts_bn/FusedBatchNormV3:y:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
2
tf.compat.v1.squeeze/Squeeze?
tf.math.subtract/SubSubtf.math.reduce_sum/Sum:output:0tf.math.multiply_3/Mul:z:0*
T0*-
_output_shapes
:???????????2
tf.math.subtract/Sub?
'tf.compat.v1.transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'tf.compat.v1.transpose_1/transpose/perm?
"tf.compat.v1.transpose_1/transpose	Transpose!tf.math.reduce_sum_1/Sum:output:00tf.compat.v1.transpose_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2$
"tf.compat.v1.transpose_1/transpose?
tf.__operators__.add/AddV2AddV2tf.math.subtract/Sub:z:0&tf.compat.v1.transpose_1/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.__operators__.add/AddV2?
tf.compat.v1.shape/ShapeShape%tf.compat.v1.squeeze/Squeeze:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape/Shape?
tf.math.negative/NegNegtf.__operators__.add/AddV2:z:0*
T0*-
_output_shapes
:???????????2
tf.math.negative/Neg?
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_1/strided_slice/stack?
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_1?
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_2?
(tf.__operators__.getitem_1/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_1/strided_slicer
tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :2
tf.math.top_k/TopKV2/k?
tf.math.top_k/TopKV2TopKV2tf.math.negative/Neg:y:0tf.math.top_k/TopKV2/k:output:0*
T0*D
_output_shapes2
0:??????????:??????????2
tf.math.top_k/TopKV2n
tf.range/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range/range/startn
tf.range/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range/range/delta?
tf.range/rangeRangetf.range/range/start:output:01tf.__operators__.getitem_1/strided_slice:output:0tf.range/range/delta:output:0*#
_output_shapes
:?????????2
tf.range/range?
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2.
,tf.__operators__.getitem/strided_slice/stack?
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            20
.tf.__operators__.getitem/strided_slice/stack_1?
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         20
.tf.__operators__.getitem/strided_slice/stack_2?
&tf.__operators__.getitem/strided_sliceStridedSlicetf.math.top_k/TopKV2:indices:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice?
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape/Reshape/shape?
tf.reshape/ReshapeReshapetf.range/range:output:0!tf.reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape/Reshape?
tf.tile/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile/Tile/multiples?
tf.tile/TileTiletf.reshape/Reshape:output:0tf.tile/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile/Tile?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDimsp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis?
tf.concat/concatConcatV2tf.tile/Tile:output:0$tf.expand_dims_1/ExpandDims:output:0tf.concat/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat/concat?
tf.expand_dims_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_2/ExpandDims/dim?
tf.expand_dims_2/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_2/ExpandDims?
tf.tile_1/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_1/Tile/multiples?
tf.tile_1/TileTile$tf.expand_dims_2/ExpandDims:output:0!tf.tile_1/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_1/Tile?
tf.compat.v1.gather_nd/GatherNdGatherNd%tf.compat.v1.squeeze/Squeeze:output:0tf.concat/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:??????????2!
tf.compat.v1.gather_nd/GatherNd?
tf.math.subtract_1/SubSub(tf.compat.v1.gather_nd/GatherNd:output:0tf.tile_1/Tile:output:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_1/Sub}
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_1/concat/axis?
tf.concat_1/concatConcatV2tf.tile_1/Tile:output:0tf.math.subtract_1/Sub:z:0 tf.concat_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_1/concat?
1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv0_conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype023
1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv0_conv0/Conv2DConv2Dtf.concat_1/concat:output:09ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2$
"ParticleNet_EdgeConv0_conv0/Conv2D?
(ParticleNet_EdgeConv0_bn0/ReadVariableOpReadVariableOp1particlenet_edgeconv0_bn0_readvariableop_resource*
_output_shapes
: *
dtype02*
(ParticleNet_EdgeConv0_bn0/ReadVariableOp?
*ParticleNet_EdgeConv0_bn0/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv0_bn0_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*ParticleNet_EdgeConv0_bn0/ReadVariableOp_1?
9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02;
9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv0_bn0/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv0_conv0/Conv2D:output:00ParticleNet_EdgeConv0_bn0/ReadVariableOp:value:02ParticleNet_EdgeConv0_bn0/ReadVariableOp_1:value:0AParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2,
*ParticleNet_EdgeConv0_bn0/FusedBatchNormV3?
(ParticleNet_EdgeConv0_bn0/AssignNewValueAssignVariableOpBparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_resource7ParticleNet_EdgeConv0_bn0/FusedBatchNormV3:batch_mean:0:^ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02*
(ParticleNet_EdgeConv0_bn0/AssignNewValue?
*ParticleNet_EdgeConv0_bn0/AssignNewValue_1AssignVariableOpDparticlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_1_resource;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3:batch_variance:0<^ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*W
_classM
KIloc:@ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02,
*ParticleNet_EdgeConv0_bn0/AssignNewValue_1?
ParticleNet_EdgeConv0_act0/ReluRelu.ParticleNet_EdgeConv0_bn0/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????? 2!
ParticleNet_EdgeConv0_act0/Relu?
1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv0_conv1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype023
1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv0_conv1/Conv2DConv2D-ParticleNet_EdgeConv0_act0/Relu:activations:09ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2$
"ParticleNet_EdgeConv0_conv1/Conv2D?
(ParticleNet_EdgeConv0_bn1/ReadVariableOpReadVariableOp1particlenet_edgeconv0_bn1_readvariableop_resource*
_output_shapes
: *
dtype02*
(ParticleNet_EdgeConv0_bn1/ReadVariableOp?
*ParticleNet_EdgeConv0_bn1/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv0_bn1_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*ParticleNet_EdgeConv0_bn1/ReadVariableOp_1?
9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02;
9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv0_bn1/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv0_conv1/Conv2D:output:00ParticleNet_EdgeConv0_bn1/ReadVariableOp:value:02ParticleNet_EdgeConv0_bn1/ReadVariableOp_1:value:0AParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2,
*ParticleNet_EdgeConv0_bn1/FusedBatchNormV3?
(ParticleNet_EdgeConv0_bn1/AssignNewValueAssignVariableOpBparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_resource7ParticleNet_EdgeConv0_bn1/FusedBatchNormV3:batch_mean:0:^ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02*
(ParticleNet_EdgeConv0_bn1/AssignNewValue?
*ParticleNet_EdgeConv0_bn1/AssignNewValue_1AssignVariableOpDparticlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_1_resource;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3:batch_variance:0<^ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*W
_classM
KIloc:@ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02,
*ParticleNet_EdgeConv0_bn1/AssignNewValue_1?
ParticleNet_EdgeConv0_act1/ReluRelu.ParticleNet_EdgeConv0_bn1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????? 2!
ParticleNet_EdgeConv0_act1/Relu?
1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv0_conv2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype023
1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv0_conv2/Conv2DConv2D-ParticleNet_EdgeConv0_act1/Relu:activations:09ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2$
"ParticleNet_EdgeConv0_conv2/Conv2D?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
(ParticleNet_EdgeConv0_bn2/ReadVariableOpReadVariableOp1particlenet_edgeconv0_bn2_readvariableop_resource*
_output_shapes
: *
dtype02*
(ParticleNet_EdgeConv0_bn2/ReadVariableOp?
*ParticleNet_EdgeConv0_bn2/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv0_bn2_readvariableop_1_resource*
_output_shapes
: *
dtype02,
*ParticleNet_EdgeConv0_bn2/ReadVariableOp_1?
9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02;
9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv0_bn2/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv0_conv2/Conv2D:output:00ParticleNet_EdgeConv0_bn2/ReadVariableOp:value:02ParticleNet_EdgeConv0_bn2/ReadVariableOp_1:value:0AParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2,
*ParticleNet_EdgeConv0_bn2/FusedBatchNormV3?
(ParticleNet_EdgeConv0_bn2/AssignNewValueAssignVariableOpBparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_resource7ParticleNet_EdgeConv0_bn2/FusedBatchNormV3:batch_mean:0:^ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02*
(ParticleNet_EdgeConv0_bn2/AssignNewValue?
*ParticleNet_EdgeConv0_bn2/AssignNewValue_1AssignVariableOpDparticlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_1_resource;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3:batch_variance:0<^ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*W
_classM
KIloc:@ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02,
*ParticleNet_EdgeConv0_bn2/AssignNewValue_1?
3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOpReadVariableOp<particlenet_edgeconv0_sc_conv_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp?
$ParticleNet_EdgeConv0_sc_conv/Conv2DConv2D$tf.expand_dims_3/ExpandDims:output:0;ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2&
$ParticleNet_EdgeConv0_sc_conv/Conv2D?
ParticleNet_EdgeConv0_act2/ReluRelu.ParticleNet_EdgeConv0_bn2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????? 2!
ParticleNet_EdgeConv0_act2/Relu?
*ParticleNet_EdgeConv0_sc_bn/ReadVariableOpReadVariableOp3particlenet_edgeconv0_sc_bn_readvariableop_resource*
_output_shapes
: *
dtype02,
*ParticleNet_EdgeConv0_sc_bn/ReadVariableOp?
,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1ReadVariableOp5particlenet_edgeconv0_sc_bn_readvariableop_1_resource*
_output_shapes
: *
dtype02.
,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1?
;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOpReadVariableOpDparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02=
;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp?
=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02?
=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1?
,ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3FusedBatchNormV3-ParticleNet_EdgeConv0_sc_conv/Conv2D:output:02ParticleNet_EdgeConv0_sc_bn/ReadVariableOp:value:04ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1:value:0CParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp:value:0EParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2.
,ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3?
*ParticleNet_EdgeConv0_sc_bn/AssignNewValueAssignVariableOpDparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_resource9ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3:batch_mean:0<^ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*W
_classM
KIloc:@ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02,
*ParticleNet_EdgeConv0_sc_bn/AssignNewValue?
,ParticleNet_EdgeConv0_sc_bn/AssignNewValue_1AssignVariableOpFparticlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_1_resource=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3:batch_variance:0>^ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*Y
_classO
MKloc:@ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02.
,ParticleNet_EdgeConv0_sc_bn/AssignNewValue_1?
tf.compat.v1.squeeze_1/SqueezeSqueeze0ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3:y:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
2 
tf.compat.v1.squeeze_1/Squeeze?
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_mean/Mean/reduction_indices?
tf.math.reduce_mean/MeanMean-ParticleNet_EdgeConv0_act2/Relu:activations:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????? 2
tf.math.reduce_mean/Mean?
tf.__operators__.add_1/AddV2AddV2'tf.compat.v1.squeeze_1/Squeeze:output:0!tf.math.reduce_mean/Mean:output:0*
T0*,
_output_shapes
:?????????? 2
tf.__operators__.add_1/AddV2?
!ParticleNet_EdgeConv0_sc_act/ReluRelu tf.__operators__.add_1/AddV2:z:0*
T0*,
_output_shapes
:?????????? 2#
!ParticleNet_EdgeConv0_sc_act/Relu?
tf.compat.v1.shape_1/ShapeShape/ParticleNet_EdgeConv0_sc_act/Relu:activations:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_1/Shape?
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_2/strided_slice/stack?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_1?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_2?
(tf.__operators__.getitem_2/strided_sliceStridedSlice#tf.compat.v1.shape_1/Shape:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_2/strided_slicer
tf.range_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range_1/range/startr
tf.range_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range_1/range/delta?
tf.range_1/rangeRangetf.range_1/range/start:output:01tf.__operators__.getitem_2/strided_slice:output:0tf.range_1/range/delta:output:0*#
_output_shapes
:?????????2
tf.range_1/range?
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape_1/Reshape/shape?
tf.reshape_1/ReshapeReshapetf.range_1/range:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape_1/Reshape?
tf.tile_2/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile_2/Tile/multiples?
tf.tile_2/TileTiletf.reshape_1/Reshape:output:0!tf.tile_2/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_2/Tile?
tf.expand_dims_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_4/ExpandDims/dim?
tf.expand_dims_4/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_4/ExpandDimst
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_2/concat/axis?
tf.concat_2/concatConcatV2tf.tile_2/Tile:output:0$tf.expand_dims_4/ExpandDims:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_2/concat?
tf.expand_dims_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_5/ExpandDims/dim?
tf.expand_dims_5/ExpandDims
ExpandDims/ParticleNet_EdgeConv0_sc_act/Relu:activations:0(tf.expand_dims_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_5/ExpandDims?
tf.tile_3/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_3/Tile/multiples?
tf.tile_3/TileTile$tf.expand_dims_5/ExpandDims:output:0!tf.tile_3/Tile/multiples:output:0*
T0*0
_output_shapes
:?????????? 2
tf.tile_3/Tile?
!tf.compat.v1.gather_nd_1/GatherNdGatherNd/ParticleNet_EdgeConv0_sc_act/Relu:activations:0tf.concat_2/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:?????????? 2#
!tf.compat.v1.gather_nd_1/GatherNd?
tf.math.subtract_2/SubSub*tf.compat.v1.gather_nd_1/GatherNd:output:0tf.tile_3/Tile:output:0*
T0*0
_output_shapes
:?????????? 2
tf.math.subtract_2/Sub}
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_3/concat/axis?
tf.concat_3/concatConcatV2tf.tile_3/Tile:output:0tf.math.subtract_2/Sub:z:0 tf.concat_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????@2
tf.concat_3/concat?
1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv1_conv0_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype023
1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv1_conv0/Conv2DConv2Dtf.concat_3/concat:output:09ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2$
"ParticleNet_EdgeConv1_conv0/Conv2D?
(ParticleNet_EdgeConv1_bn0/ReadVariableOpReadVariableOp1particlenet_edgeconv1_bn0_readvariableop_resource*
_output_shapes
:@*
dtype02*
(ParticleNet_EdgeConv1_bn0/ReadVariableOp?
*ParticleNet_EdgeConv1_bn0/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv1_bn0_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*ParticleNet_EdgeConv1_bn0/ReadVariableOp_1?
9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02;
9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv1_bn0/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv1_conv0/Conv2D:output:00ParticleNet_EdgeConv1_bn0/ReadVariableOp:value:02ParticleNet_EdgeConv1_bn0/ReadVariableOp_1:value:0AParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2,
*ParticleNet_EdgeConv1_bn0/FusedBatchNormV3?
(ParticleNet_EdgeConv1_bn0/AssignNewValueAssignVariableOpBparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_resource7ParticleNet_EdgeConv1_bn0/FusedBatchNormV3:batch_mean:0:^ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02*
(ParticleNet_EdgeConv1_bn0/AssignNewValue?
*ParticleNet_EdgeConv1_bn0/AssignNewValue_1AssignVariableOpDparticlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_1_resource;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3:batch_variance:0<^ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*W
_classM
KIloc:@ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02,
*ParticleNet_EdgeConv1_bn0/AssignNewValue_1?
ParticleNet_EdgeConv1_act0/ReluRelu.ParticleNet_EdgeConv1_bn0/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????@2!
ParticleNet_EdgeConv1_act0/Relu?
1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype023
1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv1_conv1/Conv2DConv2D-ParticleNet_EdgeConv1_act0/Relu:activations:09ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2$
"ParticleNet_EdgeConv1_conv1/Conv2D?
(ParticleNet_EdgeConv1_bn1/ReadVariableOpReadVariableOp1particlenet_edgeconv1_bn1_readvariableop_resource*
_output_shapes
:@*
dtype02*
(ParticleNet_EdgeConv1_bn1/ReadVariableOp?
*ParticleNet_EdgeConv1_bn1/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv1_bn1_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*ParticleNet_EdgeConv1_bn1/ReadVariableOp_1?
9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02;
9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv1_bn1/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv1_conv1/Conv2D:output:00ParticleNet_EdgeConv1_bn1/ReadVariableOp:value:02ParticleNet_EdgeConv1_bn1/ReadVariableOp_1:value:0AParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2,
*ParticleNet_EdgeConv1_bn1/FusedBatchNormV3?
(ParticleNet_EdgeConv1_bn1/AssignNewValueAssignVariableOpBparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_resource7ParticleNet_EdgeConv1_bn1/FusedBatchNormV3:batch_mean:0:^ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02*
(ParticleNet_EdgeConv1_bn1/AssignNewValue?
*ParticleNet_EdgeConv1_bn1/AssignNewValue_1AssignVariableOpDparticlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_1_resource;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3:batch_variance:0<^ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*W
_classM
KIloc:@ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02,
*ParticleNet_EdgeConv1_bn1/AssignNewValue_1?
ParticleNet_EdgeConv1_act1/ReluRelu.ParticleNet_EdgeConv1_bn1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????@2!
ParticleNet_EdgeConv1_act1/Relu?
1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOpReadVariableOp:particlenet_edgeconv1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype023
1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp?
"ParticleNet_EdgeConv1_conv2/Conv2DConv2D-ParticleNet_EdgeConv1_act1/Relu:activations:09ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2$
"ParticleNet_EdgeConv1_conv2/Conv2D?
tf.expand_dims_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_6/ExpandDims/dim?
tf.expand_dims_6/ExpandDims
ExpandDims/ParticleNet_EdgeConv0_sc_act/Relu:activations:0(tf.expand_dims_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_6/ExpandDims?
(ParticleNet_EdgeConv1_bn2/ReadVariableOpReadVariableOp1particlenet_edgeconv1_bn2_readvariableop_resource*
_output_shapes
:@*
dtype02*
(ParticleNet_EdgeConv1_bn2/ReadVariableOp?
*ParticleNet_EdgeConv1_bn2/ReadVariableOp_1ReadVariableOp3particlenet_edgeconv1_bn2_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*ParticleNet_EdgeConv1_bn2/ReadVariableOp_1?
9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOpReadVariableOpBparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02;
9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp?
;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1?
*ParticleNet_EdgeConv1_bn2/FusedBatchNormV3FusedBatchNormV3+ParticleNet_EdgeConv1_conv2/Conv2D:output:00ParticleNet_EdgeConv1_bn2/ReadVariableOp:value:02ParticleNet_EdgeConv1_bn2/ReadVariableOp_1:value:0AParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp:value:0CParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2,
*ParticleNet_EdgeConv1_bn2/FusedBatchNormV3?
(ParticleNet_EdgeConv1_bn2/AssignNewValueAssignVariableOpBparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_resource7ParticleNet_EdgeConv1_bn2/FusedBatchNormV3:batch_mean:0:^ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02*
(ParticleNet_EdgeConv1_bn2/AssignNewValue?
*ParticleNet_EdgeConv1_bn2/AssignNewValue_1AssignVariableOpDparticlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_1_resource;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3:batch_variance:0<^ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*W
_classM
KIloc:@ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02,
*ParticleNet_EdgeConv1_bn2/AssignNewValue_1?
3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOpReadVariableOp<particlenet_edgeconv1_sc_conv_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp?
$ParticleNet_EdgeConv1_sc_conv/Conv2DConv2D$tf.expand_dims_6/ExpandDims:output:0;ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2&
$ParticleNet_EdgeConv1_sc_conv/Conv2D?
ParticleNet_EdgeConv1_act2/ReluRelu.ParticleNet_EdgeConv1_bn2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????@2!
ParticleNet_EdgeConv1_act2/Relu?
*ParticleNet_EdgeConv1_sc_bn/ReadVariableOpReadVariableOp3particlenet_edgeconv1_sc_bn_readvariableop_resource*
_output_shapes
:@*
dtype02,
*ParticleNet_EdgeConv1_sc_bn/ReadVariableOp?
,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1ReadVariableOp5particlenet_edgeconv1_sc_bn_readvariableop_1_resource*
_output_shapes
:@*
dtype02.
,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1?
;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOpReadVariableOpDparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02=
;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp?
=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1?
,ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3FusedBatchNormV3-ParticleNet_EdgeConv1_sc_conv/Conv2D:output:02ParticleNet_EdgeConv1_sc_bn/ReadVariableOp:value:04ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1:value:0CParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp:value:0EParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2.
,ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3?
*ParticleNet_EdgeConv1_sc_bn/AssignNewValueAssignVariableOpDparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_resource9ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3:batch_mean:0<^ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*W
_classM
KIloc:@ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02,
*ParticleNet_EdgeConv1_sc_bn/AssignNewValue?
,ParticleNet_EdgeConv1_sc_bn/AssignNewValue_1AssignVariableOpFparticlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_1_resource=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3:batch_variance:0>^ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*Y
_classO
MKloc:@ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02.
,ParticleNet_EdgeConv1_sc_bn/AssignNewValue_1?
tf.compat.v1.squeeze_2/SqueezeSqueeze0ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3:y:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2 
tf.compat.v1.squeeze_2/Squeeze?
,tf.math.reduce_mean_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_1/Mean/reduction_indices?
tf.math.reduce_mean_1/MeanMean-ParticleNet_EdgeConv1_act2/Relu:activations:05tf.math.reduce_mean_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????@2
tf.math.reduce_mean_1/Mean?
tf.__operators__.add_2/AddV2AddV2'tf.compat.v1.squeeze_2/Squeeze:output:0#tf.math.reduce_mean_1/Mean:output:0*
T0*,
_output_shapes
:??????????@2
tf.__operators__.add_2/AddV2?
!ParticleNet_EdgeConv1_sc_act/ReluRelu tf.__operators__.add_2/AddV2:z:0*
T0*,
_output_shapes
:??????????@2#
!ParticleNet_EdgeConv1_sc_act/Relu?
tf.math.multiply_4/MulMul/ParticleNet_EdgeConv1_sc_act/Relu:activations:0tf.cast/Cast:y:0*
T0*,
_output_shapes
:??????????@2
tf.math.multiply_4/Mul?
,tf.math.reduce_mean_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_2/Mean/reduction_indices?
tf.math.reduce_mean_2/MeanMeantf.math.multiply_4/Mul:z:05tf.math.reduce_mean_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
tf.math.reduce_mean_2/Mean?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMul#tf.math.reduce_mean_2/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddk

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2

dense/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/dropout/Const?
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mulv
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul_1?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0)^ParticleNet_EdgeConv0_bn0/AssignNewValue+^ParticleNet_EdgeConv0_bn0/AssignNewValue_1:^ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv0_bn0/ReadVariableOp+^ParticleNet_EdgeConv0_bn0/ReadVariableOp_1)^ParticleNet_EdgeConv0_bn1/AssignNewValue+^ParticleNet_EdgeConv0_bn1/AssignNewValue_1:^ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv0_bn1/ReadVariableOp+^ParticleNet_EdgeConv0_bn1/ReadVariableOp_1)^ParticleNet_EdgeConv0_bn2/AssignNewValue+^ParticleNet_EdgeConv0_bn2/AssignNewValue_1:^ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv0_bn2/ReadVariableOp+^ParticleNet_EdgeConv0_bn2/ReadVariableOp_12^ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp2^ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp2^ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp+^ParticleNet_EdgeConv0_sc_bn/AssignNewValue-^ParticleNet_EdgeConv0_sc_bn/AssignNewValue_1<^ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp>^ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1+^ParticleNet_EdgeConv0_sc_bn/ReadVariableOp-^ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_14^ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp)^ParticleNet_EdgeConv1_bn0/AssignNewValue+^ParticleNet_EdgeConv1_bn0/AssignNewValue_1:^ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv1_bn0/ReadVariableOp+^ParticleNet_EdgeConv1_bn0/ReadVariableOp_1)^ParticleNet_EdgeConv1_bn1/AssignNewValue+^ParticleNet_EdgeConv1_bn1/AssignNewValue_1:^ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv1_bn1/ReadVariableOp+^ParticleNet_EdgeConv1_bn1/ReadVariableOp_1)^ParticleNet_EdgeConv1_bn2/AssignNewValue+^ParticleNet_EdgeConv1_bn2/AssignNewValue_1:^ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp<^ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1)^ParticleNet_EdgeConv1_bn2/ReadVariableOp+^ParticleNet_EdgeConv1_bn2/ReadVariableOp_12^ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp2^ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp2^ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp+^ParticleNet_EdgeConv1_sc_bn/AssignNewValue-^ParticleNet_EdgeConv1_sc_bn/AssignNewValue_1<^ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp>^ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1+^ParticleNet_EdgeConv1_sc_bn/ReadVariableOp-^ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_14^ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp"^ParticleNet_fts_bn/AssignNewValue$^ParticleNet_fts_bn/AssignNewValue_13^ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp5^ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1"^ParticleNet_fts_bn/ReadVariableOp$^ParticleNet_fts_bn/ReadVariableOp_1^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::2T
(ParticleNet_EdgeConv0_bn0/AssignNewValue(ParticleNet_EdgeConv0_bn0/AssignNewValue2X
*ParticleNet_EdgeConv0_bn0/AssignNewValue_1*ParticleNet_EdgeConv0_bn0/AssignNewValue_12v
9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv0_bn0/ReadVariableOp(ParticleNet_EdgeConv0_bn0/ReadVariableOp2X
*ParticleNet_EdgeConv0_bn0/ReadVariableOp_1*ParticleNet_EdgeConv0_bn0/ReadVariableOp_12T
(ParticleNet_EdgeConv0_bn1/AssignNewValue(ParticleNet_EdgeConv0_bn1/AssignNewValue2X
*ParticleNet_EdgeConv0_bn1/AssignNewValue_1*ParticleNet_EdgeConv0_bn1/AssignNewValue_12v
9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv0_bn1/ReadVariableOp(ParticleNet_EdgeConv0_bn1/ReadVariableOp2X
*ParticleNet_EdgeConv0_bn1/ReadVariableOp_1*ParticleNet_EdgeConv0_bn1/ReadVariableOp_12T
(ParticleNet_EdgeConv0_bn2/AssignNewValue(ParticleNet_EdgeConv0_bn2/AssignNewValue2X
*ParticleNet_EdgeConv0_bn2/AssignNewValue_1*ParticleNet_EdgeConv0_bn2/AssignNewValue_12v
9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv0_bn2/ReadVariableOp(ParticleNet_EdgeConv0_bn2/ReadVariableOp2X
*ParticleNet_EdgeConv0_bn2/ReadVariableOp_1*ParticleNet_EdgeConv0_bn2/ReadVariableOp_12f
1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp1ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp2f
1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp1ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp2f
1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp1ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp2X
*ParticleNet_EdgeConv0_sc_bn/AssignNewValue*ParticleNet_EdgeConv0_sc_bn/AssignNewValue2\
,ParticleNet_EdgeConv0_sc_bn/AssignNewValue_1,ParticleNet_EdgeConv0_sc_bn/AssignNewValue_12z
;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp;ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp2~
=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1=ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_12X
*ParticleNet_EdgeConv0_sc_bn/ReadVariableOp*ParticleNet_EdgeConv0_sc_bn/ReadVariableOp2\
,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1,ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_12j
3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp3ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp2T
(ParticleNet_EdgeConv1_bn0/AssignNewValue(ParticleNet_EdgeConv1_bn0/AssignNewValue2X
*ParticleNet_EdgeConv1_bn0/AssignNewValue_1*ParticleNet_EdgeConv1_bn0/AssignNewValue_12v
9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv1_bn0/ReadVariableOp(ParticleNet_EdgeConv1_bn0/ReadVariableOp2X
*ParticleNet_EdgeConv1_bn0/ReadVariableOp_1*ParticleNet_EdgeConv1_bn0/ReadVariableOp_12T
(ParticleNet_EdgeConv1_bn1/AssignNewValue(ParticleNet_EdgeConv1_bn1/AssignNewValue2X
*ParticleNet_EdgeConv1_bn1/AssignNewValue_1*ParticleNet_EdgeConv1_bn1/AssignNewValue_12v
9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv1_bn1/ReadVariableOp(ParticleNet_EdgeConv1_bn1/ReadVariableOp2X
*ParticleNet_EdgeConv1_bn1/ReadVariableOp_1*ParticleNet_EdgeConv1_bn1/ReadVariableOp_12T
(ParticleNet_EdgeConv1_bn2/AssignNewValue(ParticleNet_EdgeConv1_bn2/AssignNewValue2X
*ParticleNet_EdgeConv1_bn2/AssignNewValue_1*ParticleNet_EdgeConv1_bn2/AssignNewValue_12v
9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp9ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp2z
;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1;ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_12T
(ParticleNet_EdgeConv1_bn2/ReadVariableOp(ParticleNet_EdgeConv1_bn2/ReadVariableOp2X
*ParticleNet_EdgeConv1_bn2/ReadVariableOp_1*ParticleNet_EdgeConv1_bn2/ReadVariableOp_12f
1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp1ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp2f
1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp1ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp2f
1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp1ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp2X
*ParticleNet_EdgeConv1_sc_bn/AssignNewValue*ParticleNet_EdgeConv1_sc_bn/AssignNewValue2\
,ParticleNet_EdgeConv1_sc_bn/AssignNewValue_1,ParticleNet_EdgeConv1_sc_bn/AssignNewValue_12z
;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp;ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp2~
=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1=ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_12X
*ParticleNet_EdgeConv1_sc_bn/ReadVariableOp*ParticleNet_EdgeConv1_sc_bn/ReadVariableOp2\
,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1,ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_12j
3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp3ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp2F
!ParticleNet_fts_bn/AssignNewValue!ParticleNet_fts_bn/AssignNewValue2J
#ParticleNet_fts_bn/AssignNewValue_1#ParticleNet_fts_bn/AssignNewValue_12h
2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp2ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp2l
4ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_14ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_12F
!ParticleNet_fts_bn/ReadVariableOp!ParticleNet_fts_bn/ReadVariableOp2J
#ParticleNet_fts_bn/ReadVariableOp_1#ParticleNet_fts_bn/ReadVariableOp_12<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/1:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/2:

_output_shapes
: :

_output_shapes
: 
?
?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57147

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56647

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_535542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_53536

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56539

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_52482

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv0_act1_layer_call_and_return_conditional_losses_53488

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????? 2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56911

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_52513

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_56981

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_53659

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv0_act2_layer_call_and_return_conditional_losses_53614

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????? 2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
X__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_and_return_conditional_losses_56512

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57025

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_529292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv1_act0_layer_call_and_return_conditional_losses_56942

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????@2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_conv2_layer_call_and_return_conditional_losses_53503

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? :2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56583

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_526172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_57461

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_52825

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56285

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_53641

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_52898

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
=__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_fn_56519

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_and_return_conditional_losses_535972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57370

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_540912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv0_act0_layer_call_and_return_conditional_losses_56334

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:?????????? 2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56711

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_527212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
7__inference_ParticleNet_Lite_Static_layer_call_fn_54814

points
features
mask
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallpointsfeaturesmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*@
_read_only_resource_inputs"
 	
"#$'(),-.1234*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_547112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_namepoints:VR
,
_output_shapes
:??????????
"
_user_specified_name
features:RN
,
_output_shapes
:??????????

_user_specified_namemask:

_output_shapes
: :

_output_shapes
: 
?
?
=__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_fn_57127

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_and_return_conditional_losses_540472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? :22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56603

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
7__inference_ParticleNet_Lite_Static_layer_call_fn_55149

points
features
mask
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallpointsfeaturesmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./01234*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_550462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_namepoints:VR
,
_output_shapes
:??????????
"
_user_specified_name
features:RN
,
_output_shapes
:??????????

_user_specified_namemask:

_output_shapes
: :

_output_shapes
: 
?
?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_53792

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_53447

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56437

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
ҧ
?=
 __inference__wrapped_model_52212

points
features
mask2
.particlenet_lite_static_tf_math_multiply_mul_x4
0particlenet_lite_static_tf_math_multiply_3_mul_xF
Bparticlenet_lite_static_particlenet_fts_bn_readvariableop_resourceH
Dparticlenet_lite_static_particlenet_fts_bn_readvariableop_1_resourceW
Sparticlenet_lite_static_particlenet_fts_bn_fusedbatchnormv3_readvariableop_resourceY
Uparticlenet_lite_static_particlenet_fts_bn_fusedbatchnormv3_readvariableop_1_resourceV
Rparticlenet_lite_static_particlenet_edgeconv0_conv0_conv2d_readvariableop_resourceM
Iparticlenet_lite_static_particlenet_edgeconv0_bn0_readvariableop_resourceO
Kparticlenet_lite_static_particlenet_edgeconv0_bn0_readvariableop_1_resource^
Zparticlenet_lite_static_particlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_resource`
\particlenet_lite_static_particlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_1_resourceV
Rparticlenet_lite_static_particlenet_edgeconv0_conv1_conv2d_readvariableop_resourceM
Iparticlenet_lite_static_particlenet_edgeconv0_bn1_readvariableop_resourceO
Kparticlenet_lite_static_particlenet_edgeconv0_bn1_readvariableop_1_resource^
Zparticlenet_lite_static_particlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_resource`
\particlenet_lite_static_particlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_1_resourceV
Rparticlenet_lite_static_particlenet_edgeconv0_conv2_conv2d_readvariableop_resourceM
Iparticlenet_lite_static_particlenet_edgeconv0_bn2_readvariableop_resourceO
Kparticlenet_lite_static_particlenet_edgeconv0_bn2_readvariableop_1_resource^
Zparticlenet_lite_static_particlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_resource`
\particlenet_lite_static_particlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_1_resourceX
Tparticlenet_lite_static_particlenet_edgeconv0_sc_conv_conv2d_readvariableop_resourceO
Kparticlenet_lite_static_particlenet_edgeconv0_sc_bn_readvariableop_resourceQ
Mparticlenet_lite_static_particlenet_edgeconv0_sc_bn_readvariableop_1_resource`
\particlenet_lite_static_particlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_resourceb
^particlenet_lite_static_particlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_1_resourceV
Rparticlenet_lite_static_particlenet_edgeconv1_conv0_conv2d_readvariableop_resourceM
Iparticlenet_lite_static_particlenet_edgeconv1_bn0_readvariableop_resourceO
Kparticlenet_lite_static_particlenet_edgeconv1_bn0_readvariableop_1_resource^
Zparticlenet_lite_static_particlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_resource`
\particlenet_lite_static_particlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_1_resourceV
Rparticlenet_lite_static_particlenet_edgeconv1_conv1_conv2d_readvariableop_resourceM
Iparticlenet_lite_static_particlenet_edgeconv1_bn1_readvariableop_resourceO
Kparticlenet_lite_static_particlenet_edgeconv1_bn1_readvariableop_1_resource^
Zparticlenet_lite_static_particlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_resource`
\particlenet_lite_static_particlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_1_resourceV
Rparticlenet_lite_static_particlenet_edgeconv1_conv2_conv2d_readvariableop_resourceM
Iparticlenet_lite_static_particlenet_edgeconv1_bn2_readvariableop_resourceO
Kparticlenet_lite_static_particlenet_edgeconv1_bn2_readvariableop_1_resource^
Zparticlenet_lite_static_particlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_resource`
\particlenet_lite_static_particlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_1_resourceX
Tparticlenet_lite_static_particlenet_edgeconv1_sc_conv_conv2d_readvariableop_resourceO
Kparticlenet_lite_static_particlenet_edgeconv1_sc_bn_readvariableop_resourceQ
Mparticlenet_lite_static_particlenet_edgeconv1_sc_bn_readvariableop_1_resource`
\particlenet_lite_static_particlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_resourceb
^particlenet_lite_static_particlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_1_resource@
<particlenet_lite_static_dense_matmul_readvariableop_resourceA
=particlenet_lite_static_dense_biasadd_readvariableop_resourceB
>particlenet_lite_static_dense_1_matmul_readvariableop_resourceC
?particlenet_lite_static_dense_1_biasadd_readvariableop_resource
identity??QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp?SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1?@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp?BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp_1?QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp?SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1?@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp?BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp_1?QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp?SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1?@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp?BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp_1?IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp?IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp?IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp?SParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp?UParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1?BParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp?DParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1?KParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp?QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp?SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1?@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp?BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp_1?QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp?SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1?@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp?BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp_1?QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp?SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1?@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp?BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp_1?IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp?IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp?IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp?SParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp?UParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1?BParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp?DParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1?KParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp?JParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp?LParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1?9ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp?;ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp_1?4ParticleNet_Lite_Static/dense/BiasAdd/ReadVariableOp?3ParticleNet_Lite_Static/dense/MatMul/ReadVariableOp?6ParticleNet_Lite_Static/dense_1/BiasAdd/ReadVariableOp?5ParticleNet_Lite_Static/dense_1/MatMul/ReadVariableOp?
4ParticleNet_Lite_Static/tf.math.not_equal/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4ParticleNet_Lite_Static/tf.math.not_equal/NotEqual/y?
2ParticleNet_Lite_Static/tf.math.not_equal/NotEqualNotEqualmask=ParticleNet_Lite_Static/tf.math.not_equal/NotEqual/y:output:0*
T0*,
_output_shapes
:??????????24
2ParticleNet_Lite_Static/tf.math.not_equal/NotEqual?
$ParticleNet_Lite_Static/tf.cast/CastCast6ParticleNet_Lite_Static/tf.math.not_equal/NotEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2&
$ParticleNet_Lite_Static/tf.cast/Cast?
-ParticleNet_Lite_Static/tf.math.equal/Equal/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-ParticleNet_Lite_Static/tf.math.equal/Equal/y?
+ParticleNet_Lite_Static/tf.math.equal/EqualEqual(ParticleNet_Lite_Static/tf.cast/Cast:y:06ParticleNet_Lite_Static/tf.math.equal/Equal/y:output:0*
T0*,
_output_shapes
:??????????2-
+ParticleNet_Lite_Static/tf.math.equal/Equal?
&ParticleNet_Lite_Static/tf.cast_1/CastCast/ParticleNet_Lite_Static/tf.math.equal/Equal:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2(
&ParticleNet_Lite_Static/tf.cast_1/Cast?
,ParticleNet_Lite_Static/tf.math.multiply/MulMul.particlenet_lite_static_tf_math_multiply_mul_x*ParticleNet_Lite_Static/tf.cast_1/Cast:y:0*
T0*,
_output_shapes
:??????????2.
,ParticleNet_Lite_Static/tf.math.multiply/Mul?
'ParticleNet_Lite_Static/tf.math.add/AddAdd0ParticleNet_Lite_Static/tf.math.multiply/Mul:z:0points*
T0*,
_output_shapes
:??????????2)
'ParticleNet_Lite_Static/tf.math.add/Add?
=ParticleNet_Lite_Static/tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2?
=ParticleNet_Lite_Static/tf.compat.v1.transpose/transpose/perm?
8ParticleNet_Lite_Static/tf.compat.v1.transpose/transpose	Transpose+ParticleNet_Lite_Static/tf.math.add/Add:z:0FParticleNet_Lite_Static/tf.compat.v1.transpose/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2:
8ParticleNet_Lite_Static/tf.compat.v1.transpose/transpose?
.ParticleNet_Lite_Static/tf.math.multiply_2/MulMul+ParticleNet_Lite_Static/tf.math.add/Add:z:0+ParticleNet_Lite_Static/tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????20
.ParticleNet_Lite_Static/tf.math.multiply_2/Mul?
/ParticleNet_Lite_Static/tf.linalg.matmul/MatMulBatchMatMulV2+ParticleNet_Lite_Static/tf.math.add/Add:z:0<ParticleNet_Lite_Static/tf.compat.v1.transpose/transpose:y:0*
T0*-
_output_shapes
:???????????21
/ParticleNet_Lite_Static/tf.linalg.matmul/MatMul?
.ParticleNet_Lite_Static/tf.math.multiply_1/MulMul+ParticleNet_Lite_Static/tf.math.add/Add:z:0+ParticleNet_Lite_Static/tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????20
.ParticleNet_Lite_Static/tf.math.multiply_1/Mul?
5ParticleNet_Lite_Static/tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :27
5ParticleNet_Lite_Static/tf.expand_dims/ExpandDims/dim?
1ParticleNet_Lite_Static/tf.expand_dims/ExpandDims
ExpandDimsfeatures>ParticleNet_Lite_Static/tf.expand_dims/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????23
1ParticleNet_Lite_Static/tf.expand_dims/ExpandDims?
BParticleNet_Lite_Static/tf.math.reduce_sum_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2D
BParticleNet_Lite_Static/tf.math.reduce_sum_1/Sum/reduction_indices?
0ParticleNet_Lite_Static/tf.math.reduce_sum_1/SumSum2ParticleNet_Lite_Static/tf.math.multiply_2/Mul:z:0KParticleNet_Lite_Static/tf.math.reduce_sum_1/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(22
0ParticleNet_Lite_Static/tf.math.reduce_sum_1/Sum?
@ParticleNet_Lite_Static/tf.math.reduce_sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2B
@ParticleNet_Lite_Static/tf.math.reduce_sum/Sum/reduction_indices?
.ParticleNet_Lite_Static/tf.math.reduce_sum/SumSum2ParticleNet_Lite_Static/tf.math.multiply_1/Mul:z:0IParticleNet_Lite_Static/tf.math.reduce_sum/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(20
.ParticleNet_Lite_Static/tf.math.reduce_sum/Sum?
.ParticleNet_Lite_Static/tf.math.multiply_3/MulMul0particlenet_lite_static_tf_math_multiply_3_mul_x8ParticleNet_Lite_Static/tf.linalg.matmul/MatMul:output:0*
T0*-
_output_shapes
:???????????20
.ParticleNet_Lite_Static/tf.math.multiply_3/Mul?
9ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOpReadVariableOpBparticlenet_lite_static_particlenet_fts_bn_readvariableop_resource*
_output_shapes
:*
dtype02;
9ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp?
;ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp_1ReadVariableOpDparticlenet_lite_static_particlenet_fts_bn_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp_1?
JParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOpReadVariableOpSparticlenet_lite_static_particlenet_fts_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02L
JParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp?
LParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUparticlenet_lite_static_particlenet_fts_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02N
LParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1?
;ParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3FusedBatchNormV3:ParticleNet_Lite_Static/tf.expand_dims/ExpandDims:output:0AParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp:value:0CParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp_1:value:0RParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp:value:0TParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????:::::*
epsilon%o?:*
is_training( 2=
;ParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3?
4ParticleNet_Lite_Static/tf.compat.v1.squeeze/SqueezeSqueeze?ParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3:y:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
26
4ParticleNet_Lite_Static/tf.compat.v1.squeeze/Squeeze?
,ParticleNet_Lite_Static/tf.math.subtract/SubSub7ParticleNet_Lite_Static/tf.math.reduce_sum/Sum:output:02ParticleNet_Lite_Static/tf.math.multiply_3/Mul:z:0*
T0*-
_output_shapes
:???????????2.
,ParticleNet_Lite_Static/tf.math.subtract/Sub?
?ParticleNet_Lite_Static/tf.compat.v1.transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2A
?ParticleNet_Lite_Static/tf.compat.v1.transpose_1/transpose/perm?
:ParticleNet_Lite_Static/tf.compat.v1.transpose_1/transpose	Transpose9ParticleNet_Lite_Static/tf.math.reduce_sum_1/Sum:output:0HParticleNet_Lite_Static/tf.compat.v1.transpose_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2<
:ParticleNet_Lite_Static/tf.compat.v1.transpose_1/transpose?
2ParticleNet_Lite_Static/tf.__operators__.add/AddV2AddV20ParticleNet_Lite_Static/tf.math.subtract/Sub:z:0>ParticleNet_Lite_Static/tf.compat.v1.transpose_1/transpose:y:0*
T0*-
_output_shapes
:???????????24
2ParticleNet_Lite_Static/tf.__operators__.add/AddV2?
0ParticleNet_Lite_Static/tf.compat.v1.shape/ShapeShape=ParticleNet_Lite_Static/tf.compat.v1.squeeze/Squeeze:output:0*
T0*
_output_shapes
:22
0ParticleNet_Lite_Static/tf.compat.v1.shape/Shape?
,ParticleNet_Lite_Static/tf.math.negative/NegNeg6ParticleNet_Lite_Static/tf.__operators__.add/AddV2:z:0*
T0*-
_output_shapes
:???????????2.
,ParticleNet_Lite_Static/tf.math.negative/Neg?
FParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2H
FParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice/stack?
HParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
HParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice/stack_1?
HParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
HParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice/stack_2?
@ParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_sliceStridedSlice9ParticleNet_Lite_Static/tf.compat.v1.shape/Shape:output:0OParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice/stack:output:0QParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice/stack_1:output:0QParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2B
@ParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice?
.ParticleNet_Lite_Static/tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :20
.ParticleNet_Lite_Static/tf.math.top_k/TopKV2/k?
,ParticleNet_Lite_Static/tf.math.top_k/TopKV2TopKV20ParticleNet_Lite_Static/tf.math.negative/Neg:y:07ParticleNet_Lite_Static/tf.math.top_k/TopKV2/k:output:0*
T0*D
_output_shapes2
0:??????????:??????????2.
,ParticleNet_Lite_Static/tf.math.top_k/TopKV2?
,ParticleNet_Lite_Static/tf.range/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2.
,ParticleNet_Lite_Static/tf.range/range/start?
,ParticleNet_Lite_Static/tf.range/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2.
,ParticleNet_Lite_Static/tf.range/range/delta?
&ParticleNet_Lite_Static/tf.range/rangeRange5ParticleNet_Lite_Static/tf.range/range/start:output:0IParticleNet_Lite_Static/tf.__operators__.getitem_1/strided_slice:output:05ParticleNet_Lite_Static/tf.range/range/delta:output:0*#
_output_shapes
:?????????2(
&ParticleNet_Lite_Static/tf.range/range?
DParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2F
DParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice/stack?
FParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2H
FParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice/stack_1?
FParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2H
FParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice/stack_2?
>ParticleNet_Lite_Static/tf.__operators__.getitem/strided_sliceStridedSlice6ParticleNet_Lite_Static/tf.math.top_k/TopKV2:indices:0MParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice/stack:output:0OParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice/stack_1:output:0OParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask2@
>ParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice?
0ParticleNet_Lite_Static/tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         22
0ParticleNet_Lite_Static/tf.reshape/Reshape/shape?
*ParticleNet_Lite_Static/tf.reshape/ReshapeReshape/ParticleNet_Lite_Static/tf.range/range:output:09ParticleNet_Lite_Static/tf.reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2,
*ParticleNet_Lite_Static/tf.reshape/Reshape?
.ParticleNet_Lite_Static/tf.tile/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         20
.ParticleNet_Lite_Static/tf.tile/Tile/multiples?
$ParticleNet_Lite_Static/tf.tile/TileTile3ParticleNet_Lite_Static/tf.reshape/Reshape:output:07ParticleNet_Lite_Static/tf.tile/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2&
$ParticleNet_Lite_Static/tf.tile/Tile?
7ParticleNet_Lite_Static/tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :29
7ParticleNet_Lite_Static/tf.expand_dims_1/ExpandDims/dim?
3ParticleNet_Lite_Static/tf.expand_dims_1/ExpandDims
ExpandDimsGParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice:output:0@ParticleNet_Lite_Static/tf.expand_dims_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????25
3ParticleNet_Lite_Static/tf.expand_dims_1/ExpandDims?
-ParticleNet_Lite_Static/tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-ParticleNet_Lite_Static/tf.concat/concat/axis?
(ParticleNet_Lite_Static/tf.concat/concatConcatV2-ParticleNet_Lite_Static/tf.tile/Tile:output:0<ParticleNet_Lite_Static/tf.expand_dims_1/ExpandDims:output:06ParticleNet_Lite_Static/tf.concat/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2*
(ParticleNet_Lite_Static/tf.concat/concat?
7ParticleNet_Lite_Static/tf.expand_dims_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :29
7ParticleNet_Lite_Static/tf.expand_dims_2/ExpandDims/dim?
3ParticleNet_Lite_Static/tf.expand_dims_2/ExpandDims
ExpandDims=ParticleNet_Lite_Static/tf.compat.v1.squeeze/Squeeze:output:0@ParticleNet_Lite_Static/tf.expand_dims_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????25
3ParticleNet_Lite_Static/tf.expand_dims_2/ExpandDims?
0ParticleNet_Lite_Static/tf.tile_1/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            22
0ParticleNet_Lite_Static/tf.tile_1/Tile/multiples?
&ParticleNet_Lite_Static/tf.tile_1/TileTile<ParticleNet_Lite_Static/tf.expand_dims_2/ExpandDims:output:09ParticleNet_Lite_Static/tf.tile_1/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2(
&ParticleNet_Lite_Static/tf.tile_1/Tile?
7ParticleNet_Lite_Static/tf.compat.v1.gather_nd/GatherNdGatherNd=ParticleNet_Lite_Static/tf.compat.v1.squeeze/Squeeze:output:01ParticleNet_Lite_Static/tf.concat/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:??????????29
7ParticleNet_Lite_Static/tf.compat.v1.gather_nd/GatherNd?
.ParticleNet_Lite_Static/tf.math.subtract_1/SubSub@ParticleNet_Lite_Static/tf.compat.v1.gather_nd/GatherNd:output:0/ParticleNet_Lite_Static/tf.tile_1/Tile:output:0*
T0*0
_output_shapes
:??????????20
.ParticleNet_Lite_Static/tf.math.subtract_1/Sub?
/ParticleNet_Lite_Static/tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/ParticleNet_Lite_Static/tf.concat_1/concat/axis?
*ParticleNet_Lite_Static/tf.concat_1/concatConcatV2/ParticleNet_Lite_Static/tf.tile_1/Tile:output:02ParticleNet_Lite_Static/tf.math.subtract_1/Sub:z:08ParticleNet_Lite_Static/tf.concat_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2,
*ParticleNet_Lite_Static/tf.concat_1/concat?
IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOpReadVariableOpRparticlenet_lite_static_particlenet_edgeconv0_conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02K
IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp?
:ParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2DConv2D3ParticleNet_Lite_Static/tf.concat_1/concat:output:0QParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2<
:ParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2D?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOpReadVariableOpIparticlenet_lite_static_particlenet_edgeconv0_bn0_readvariableop_resource*
_output_shapes
: *
dtype02B
@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp_1ReadVariableOpKparticlenet_lite_static_particlenet_edgeconv0_bn0_readvariableop_1_resource*
_output_shapes
: *
dtype02D
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp_1?
QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOpReadVariableOpZparticlenet_lite_static_particlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02S
QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp?
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp\particlenet_lite_static_particlenet_edgeconv0_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02U
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3FusedBatchNormV3CParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2D:output:0HParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp:value:0JParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp_1:value:0YParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp:value:0[ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2D
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3?
7ParticleNet_Lite_Static/ParticleNet_EdgeConv0_act0/ReluReluFParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????? 29
7ParticleNet_Lite_Static/ParticleNet_EdgeConv0_act0/Relu?
IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOpReadVariableOpRparticlenet_lite_static_particlenet_edgeconv0_conv1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02K
IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp?
:ParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2DConv2DEParticleNet_Lite_Static/ParticleNet_EdgeConv0_act0/Relu:activations:0QParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2<
:ParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2D?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOpReadVariableOpIparticlenet_lite_static_particlenet_edgeconv0_bn1_readvariableop_resource*
_output_shapes
: *
dtype02B
@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp_1ReadVariableOpKparticlenet_lite_static_particlenet_edgeconv0_bn1_readvariableop_1_resource*
_output_shapes
: *
dtype02D
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp_1?
QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOpReadVariableOpZparticlenet_lite_static_particlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02S
QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp?
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp\particlenet_lite_static_particlenet_edgeconv0_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02U
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3FusedBatchNormV3CParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2D:output:0HParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp:value:0JParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp_1:value:0YParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp:value:0[ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2D
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3?
7ParticleNet_Lite_Static/ParticleNet_EdgeConv0_act1/ReluReluFParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????? 29
7ParticleNet_Lite_Static/ParticleNet_EdgeConv0_act1/Relu?
IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOpReadVariableOpRparticlenet_lite_static_particlenet_edgeconv0_conv2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02K
IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp?
:ParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2DConv2DEParticleNet_Lite_Static/ParticleNet_EdgeConv0_act1/Relu:activations:0QParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2<
:ParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2D?
7ParticleNet_Lite_Static/tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :29
7ParticleNet_Lite_Static/tf.expand_dims_3/ExpandDims/dim?
3ParticleNet_Lite_Static/tf.expand_dims_3/ExpandDims
ExpandDims=ParticleNet_Lite_Static/tf.compat.v1.squeeze/Squeeze:output:0@ParticleNet_Lite_Static/tf.expand_dims_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????25
3ParticleNet_Lite_Static/tf.expand_dims_3/ExpandDims?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOpReadVariableOpIparticlenet_lite_static_particlenet_edgeconv0_bn2_readvariableop_resource*
_output_shapes
: *
dtype02B
@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp_1ReadVariableOpKparticlenet_lite_static_particlenet_edgeconv0_bn2_readvariableop_1_resource*
_output_shapes
: *
dtype02D
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp_1?
QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOpReadVariableOpZparticlenet_lite_static_particlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02S
QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp?
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp\particlenet_lite_static_particlenet_edgeconv0_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02U
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3FusedBatchNormV3CParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2D:output:0HParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp:value:0JParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp_1:value:0YParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp:value:0[ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2D
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3?
KParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOpReadVariableOpTparticlenet_lite_static_particlenet_edgeconv0_sc_conv_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02M
KParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp?
<ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2DConv2D<ParticleNet_Lite_Static/tf.expand_dims_3/ExpandDims:output:0SParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2>
<ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2D?
7ParticleNet_Lite_Static/ParticleNet_EdgeConv0_act2/ReluReluFParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????? 29
7ParticleNet_Lite_Static/ParticleNet_EdgeConv0_act2/Relu?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOpReadVariableOpKparticlenet_lite_static_particlenet_edgeconv0_sc_bn_readvariableop_resource*
_output_shapes
: *
dtype02D
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp?
DParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1ReadVariableOpMparticlenet_lite_static_particlenet_edgeconv0_sc_bn_readvariableop_1_resource*
_output_shapes
: *
dtype02F
DParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1?
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp\particlenet_lite_static_particlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02U
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp?
UParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^particlenet_lite_static_particlenet_edgeconv0_sc_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02W
UParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1?
DParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3FusedBatchNormV3EParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2D:output:0JParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp:value:0LParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1:value:0[ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp:value:0]ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2F
DParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3?
6ParticleNet_Lite_Static/tf.compat.v1.squeeze_1/SqueezeSqueezeHParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3:y:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
28
6ParticleNet_Lite_Static/tf.compat.v1.squeeze_1/Squeeze?
BParticleNet_Lite_Static/tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2D
BParticleNet_Lite_Static/tf.math.reduce_mean/Mean/reduction_indices?
0ParticleNet_Lite_Static/tf.math.reduce_mean/MeanMeanEParticleNet_Lite_Static/ParticleNet_EdgeConv0_act2/Relu:activations:0KParticleNet_Lite_Static/tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????? 22
0ParticleNet_Lite_Static/tf.math.reduce_mean/Mean?
4ParticleNet_Lite_Static/tf.__operators__.add_1/AddV2AddV2?ParticleNet_Lite_Static/tf.compat.v1.squeeze_1/Squeeze:output:09ParticleNet_Lite_Static/tf.math.reduce_mean/Mean:output:0*
T0*,
_output_shapes
:?????????? 26
4ParticleNet_Lite_Static/tf.__operators__.add_1/AddV2?
9ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_act/ReluRelu8ParticleNet_Lite_Static/tf.__operators__.add_1/AddV2:z:0*
T0*,
_output_shapes
:?????????? 2;
9ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_act/Relu?
2ParticleNet_Lite_Static/tf.compat.v1.shape_1/ShapeShapeGParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_act/Relu:activations:0*
T0*
_output_shapes
:24
2ParticleNet_Lite_Static/tf.compat.v1.shape_1/Shape?
FParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2H
FParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice/stack?
HParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
HParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice/stack_1?
HParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
HParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice/stack_2?
@ParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_sliceStridedSlice;ParticleNet_Lite_Static/tf.compat.v1.shape_1/Shape:output:0OParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice/stack:output:0QParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice/stack_1:output:0QParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2B
@ParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice?
.ParticleNet_Lite_Static/tf.range_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 20
.ParticleNet_Lite_Static/tf.range_1/range/start?
.ParticleNet_Lite_Static/tf.range_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :20
.ParticleNet_Lite_Static/tf.range_1/range/delta?
(ParticleNet_Lite_Static/tf.range_1/rangeRange7ParticleNet_Lite_Static/tf.range_1/range/start:output:0IParticleNet_Lite_Static/tf.__operators__.getitem_2/strided_slice:output:07ParticleNet_Lite_Static/tf.range_1/range/delta:output:0*#
_output_shapes
:?????????2*
(ParticleNet_Lite_Static/tf.range_1/range?
2ParticleNet_Lite_Static/tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         24
2ParticleNet_Lite_Static/tf.reshape_1/Reshape/shape?
,ParticleNet_Lite_Static/tf.reshape_1/ReshapeReshape1ParticleNet_Lite_Static/tf.range_1/range:output:0;ParticleNet_Lite_Static/tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2.
,ParticleNet_Lite_Static/tf.reshape_1/Reshape?
0ParticleNet_Lite_Static/tf.tile_2/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         22
0ParticleNet_Lite_Static/tf.tile_2/Tile/multiples?
&ParticleNet_Lite_Static/tf.tile_2/TileTile5ParticleNet_Lite_Static/tf.reshape_1/Reshape:output:09ParticleNet_Lite_Static/tf.tile_2/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2(
&ParticleNet_Lite_Static/tf.tile_2/Tile?
7ParticleNet_Lite_Static/tf.expand_dims_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :29
7ParticleNet_Lite_Static/tf.expand_dims_4/ExpandDims/dim?
3ParticleNet_Lite_Static/tf.expand_dims_4/ExpandDims
ExpandDimsGParticleNet_Lite_Static/tf.__operators__.getitem/strided_slice:output:0@ParticleNet_Lite_Static/tf.expand_dims_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????25
3ParticleNet_Lite_Static/tf.expand_dims_4/ExpandDims?
/ParticleNet_Lite_Static/tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :21
/ParticleNet_Lite_Static/tf.concat_2/concat/axis?
*ParticleNet_Lite_Static/tf.concat_2/concatConcatV2/ParticleNet_Lite_Static/tf.tile_2/Tile:output:0<ParticleNet_Lite_Static/tf.expand_dims_4/ExpandDims:output:08ParticleNet_Lite_Static/tf.concat_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2,
*ParticleNet_Lite_Static/tf.concat_2/concat?
7ParticleNet_Lite_Static/tf.expand_dims_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :29
7ParticleNet_Lite_Static/tf.expand_dims_5/ExpandDims/dim?
3ParticleNet_Lite_Static/tf.expand_dims_5/ExpandDims
ExpandDimsGParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_act/Relu:activations:0@ParticleNet_Lite_Static/tf.expand_dims_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 25
3ParticleNet_Lite_Static/tf.expand_dims_5/ExpandDims?
0ParticleNet_Lite_Static/tf.tile_3/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            22
0ParticleNet_Lite_Static/tf.tile_3/Tile/multiples?
&ParticleNet_Lite_Static/tf.tile_3/TileTile<ParticleNet_Lite_Static/tf.expand_dims_5/ExpandDims:output:09ParticleNet_Lite_Static/tf.tile_3/Tile/multiples:output:0*
T0*0
_output_shapes
:?????????? 2(
&ParticleNet_Lite_Static/tf.tile_3/Tile?
9ParticleNet_Lite_Static/tf.compat.v1.gather_nd_1/GatherNdGatherNdGParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_act/Relu:activations:03ParticleNet_Lite_Static/tf.concat_2/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:?????????? 2;
9ParticleNet_Lite_Static/tf.compat.v1.gather_nd_1/GatherNd?
.ParticleNet_Lite_Static/tf.math.subtract_2/SubSubBParticleNet_Lite_Static/tf.compat.v1.gather_nd_1/GatherNd:output:0/ParticleNet_Lite_Static/tf.tile_3/Tile:output:0*
T0*0
_output_shapes
:?????????? 20
.ParticleNet_Lite_Static/tf.math.subtract_2/Sub?
/ParticleNet_Lite_Static/tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/ParticleNet_Lite_Static/tf.concat_3/concat/axis?
*ParticleNet_Lite_Static/tf.concat_3/concatConcatV2/ParticleNet_Lite_Static/tf.tile_3/Tile:output:02ParticleNet_Lite_Static/tf.math.subtract_2/Sub:z:08ParticleNet_Lite_Static/tf.concat_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????@2,
*ParticleNet_Lite_Static/tf.concat_3/concat?
IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOpReadVariableOpRparticlenet_lite_static_particlenet_edgeconv1_conv0_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02K
IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp?
:ParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2DConv2D3ParticleNet_Lite_Static/tf.concat_3/concat:output:0QParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2<
:ParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2D?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOpReadVariableOpIparticlenet_lite_static_particlenet_edgeconv1_bn0_readvariableop_resource*
_output_shapes
:@*
dtype02B
@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp_1ReadVariableOpKparticlenet_lite_static_particlenet_edgeconv1_bn0_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp_1?
QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOpReadVariableOpZparticlenet_lite_static_particlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02S
QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp?
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp\particlenet_lite_static_particlenet_edgeconv1_bn0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02U
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3FusedBatchNormV3CParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2D:output:0HParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp:value:0JParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp_1:value:0YParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp:value:0[ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2D
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3?
7ParticleNet_Lite_Static/ParticleNet_EdgeConv1_act0/ReluReluFParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????@29
7ParticleNet_Lite_Static/ParticleNet_EdgeConv1_act0/Relu?
IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOpReadVariableOpRparticlenet_lite_static_particlenet_edgeconv1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02K
IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp?
:ParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2DConv2DEParticleNet_Lite_Static/ParticleNet_EdgeConv1_act0/Relu:activations:0QParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2<
:ParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2D?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOpReadVariableOpIparticlenet_lite_static_particlenet_edgeconv1_bn1_readvariableop_resource*
_output_shapes
:@*
dtype02B
@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp_1ReadVariableOpKparticlenet_lite_static_particlenet_edgeconv1_bn1_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp_1?
QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOpReadVariableOpZparticlenet_lite_static_particlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02S
QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp?
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp\particlenet_lite_static_particlenet_edgeconv1_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02U
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3FusedBatchNormV3CParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2D:output:0HParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp:value:0JParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp_1:value:0YParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp:value:0[ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2D
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3?
7ParticleNet_Lite_Static/ParticleNet_EdgeConv1_act1/ReluReluFParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????@29
7ParticleNet_Lite_Static/ParticleNet_EdgeConv1_act1/Relu?
IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOpReadVariableOpRparticlenet_lite_static_particlenet_edgeconv1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02K
IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp?
:ParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2DConv2DEParticleNet_Lite_Static/ParticleNet_EdgeConv1_act1/Relu:activations:0QParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2<
:ParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2D?
7ParticleNet_Lite_Static/tf.expand_dims_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :29
7ParticleNet_Lite_Static/tf.expand_dims_6/ExpandDims/dim?
3ParticleNet_Lite_Static/tf.expand_dims_6/ExpandDims
ExpandDimsGParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_act/Relu:activations:0@ParticleNet_Lite_Static/tf.expand_dims_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 25
3ParticleNet_Lite_Static/tf.expand_dims_6/ExpandDims?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOpReadVariableOpIparticlenet_lite_static_particlenet_edgeconv1_bn2_readvariableop_resource*
_output_shapes
:@*
dtype02B
@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp_1ReadVariableOpKparticlenet_lite_static_particlenet_edgeconv1_bn2_readvariableop_1_resource*
_output_shapes
:@*
dtype02D
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp_1?
QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOpReadVariableOpZparticlenet_lite_static_particlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02S
QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp?
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp\particlenet_lite_static_particlenet_edgeconv1_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02U
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3FusedBatchNormV3CParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2D:output:0HParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp:value:0JParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp_1:value:0YParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp:value:0[ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2D
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3?
KParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOpReadVariableOpTparticlenet_lite_static_particlenet_edgeconv1_sc_conv_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02M
KParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp?
<ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2DConv2D<ParticleNet_Lite_Static/tf.expand_dims_6/ExpandDims:output:0SParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2>
<ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2D?
7ParticleNet_Lite_Static/ParticleNet_EdgeConv1_act2/ReluReluFParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????@29
7ParticleNet_Lite_Static/ParticleNet_EdgeConv1_act2/Relu?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOpReadVariableOpKparticlenet_lite_static_particlenet_edgeconv1_sc_bn_readvariableop_resource*
_output_shapes
:@*
dtype02D
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp?
DParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1ReadVariableOpMparticlenet_lite_static_particlenet_edgeconv1_sc_bn_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
DParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1?
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp\particlenet_lite_static_particlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02U
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp?
UParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^particlenet_lite_static_particlenet_edgeconv1_sc_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02W
UParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1?
DParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3FusedBatchNormV3EParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2D:output:0JParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp:value:0LParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1:value:0[ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp:value:0]ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2F
DParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3?
6ParticleNet_Lite_Static/tf.compat.v1.squeeze_2/SqueezeSqueezeHParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3:y:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
28
6ParticleNet_Lite_Static/tf.compat.v1.squeeze_2/Squeeze?
DParticleNet_Lite_Static/tf.math.reduce_mean_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2F
DParticleNet_Lite_Static/tf.math.reduce_mean_1/Mean/reduction_indices?
2ParticleNet_Lite_Static/tf.math.reduce_mean_1/MeanMeanEParticleNet_Lite_Static/ParticleNet_EdgeConv1_act2/Relu:activations:0MParticleNet_Lite_Static/tf.math.reduce_mean_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????@24
2ParticleNet_Lite_Static/tf.math.reduce_mean_1/Mean?
4ParticleNet_Lite_Static/tf.__operators__.add_2/AddV2AddV2?ParticleNet_Lite_Static/tf.compat.v1.squeeze_2/Squeeze:output:0;ParticleNet_Lite_Static/tf.math.reduce_mean_1/Mean:output:0*
T0*,
_output_shapes
:??????????@26
4ParticleNet_Lite_Static/tf.__operators__.add_2/AddV2?
9ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_act/ReluRelu8ParticleNet_Lite_Static/tf.__operators__.add_2/AddV2:z:0*
T0*,
_output_shapes
:??????????@2;
9ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_act/Relu?
.ParticleNet_Lite_Static/tf.math.multiply_4/MulMulGParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_act/Relu:activations:0(ParticleNet_Lite_Static/tf.cast/Cast:y:0*
T0*,
_output_shapes
:??????????@20
.ParticleNet_Lite_Static/tf.math.multiply_4/Mul?
DParticleNet_Lite_Static/tf.math.reduce_mean_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2F
DParticleNet_Lite_Static/tf.math.reduce_mean_2/Mean/reduction_indices?
2ParticleNet_Lite_Static/tf.math.reduce_mean_2/MeanMean2ParticleNet_Lite_Static/tf.math.multiply_4/Mul:z:0MParticleNet_Lite_Static/tf.math.reduce_mean_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@24
2ParticleNet_Lite_Static/tf.math.reduce_mean_2/Mean?
3ParticleNet_Lite_Static/dense/MatMul/ReadVariableOpReadVariableOp<particlenet_lite_static_dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype025
3ParticleNet_Lite_Static/dense/MatMul/ReadVariableOp?
$ParticleNet_Lite_Static/dense/MatMulMatMul;ParticleNet_Lite_Static/tf.math.reduce_mean_2/Mean:output:0;ParticleNet_Lite_Static/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$ParticleNet_Lite_Static/dense/MatMul?
4ParticleNet_Lite_Static/dense/BiasAdd/ReadVariableOpReadVariableOp=particlenet_lite_static_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4ParticleNet_Lite_Static/dense/BiasAdd/ReadVariableOp?
%ParticleNet_Lite_Static/dense/BiasAddBiasAdd.ParticleNet_Lite_Static/dense/MatMul:product:0<ParticleNet_Lite_Static/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%ParticleNet_Lite_Static/dense/BiasAdd?
"ParticleNet_Lite_Static/dense/ReluRelu.ParticleNet_Lite_Static/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2$
"ParticleNet_Lite_Static/dense/Relu?
(ParticleNet_Lite_Static/dropout/IdentityIdentity0ParticleNet_Lite_Static/dense/Relu:activations:0*
T0*(
_output_shapes
:??????????2*
(ParticleNet_Lite_Static/dropout/Identity?
5ParticleNet_Lite_Static/dense_1/MatMul/ReadVariableOpReadVariableOp>particlenet_lite_static_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype027
5ParticleNet_Lite_Static/dense_1/MatMul/ReadVariableOp?
&ParticleNet_Lite_Static/dense_1/MatMulMatMul1ParticleNet_Lite_Static/dropout/Identity:output:0=ParticleNet_Lite_Static/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2(
&ParticleNet_Lite_Static/dense_1/MatMul?
6ParticleNet_Lite_Static/dense_1/BiasAdd/ReadVariableOpReadVariableOp?particlenet_lite_static_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6ParticleNet_Lite_Static/dense_1/BiasAdd/ReadVariableOp?
'ParticleNet_Lite_Static/dense_1/BiasAddBiasAdd0ParticleNet_Lite_Static/dense_1/MatMul:product:0>ParticleNet_Lite_Static/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2)
'ParticleNet_Lite_Static/dense_1/BiasAdd?
'ParticleNet_Lite_Static/dense_1/SoftmaxSoftmax0ParticleNet_Lite_Static/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2)
'ParticleNet_Lite_Static/dense_1/Softmax?
IdentityIdentity1ParticleNet_Lite_Static/dense_1/Softmax:softmax:0R^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOpT^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1A^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOpC^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp_1R^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOpT^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1A^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOpC^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp_1R^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOpT^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1A^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOpC^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp_1J^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOpJ^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOpJ^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOpT^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOpV^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1C^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOpE^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1L^ParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOpR^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOpT^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1A^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOpC^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp_1R^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOpT^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1A^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOpC^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp_1R^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOpT^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1A^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOpC^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp_1J^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOpJ^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOpJ^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOpT^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOpV^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1C^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOpE^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1L^ParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOpK^ParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOpM^ParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1:^ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp<^ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp_15^ParticleNet_Lite_Static/dense/BiasAdd/ReadVariableOp4^ParticleNet_Lite_Static/dense/MatMul/ReadVariableOp7^ParticleNet_Lite_Static/dense_1/BiasAdd/ReadVariableOp6^ParticleNet_Lite_Static/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::2?
QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOpQParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp2?
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_1SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/FusedBatchNormV3/ReadVariableOp_12?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp2?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp_1BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn0/ReadVariableOp_12?
QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOpQParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp2?
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_1SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/FusedBatchNormV3/ReadVariableOp_12?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp2?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp_1BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn1/ReadVariableOp_12?
QParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOpQParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp2?
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_1SParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/FusedBatchNormV3/ReadVariableOp_12?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp@ParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp2?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp_1BParticleNet_Lite_Static/ParticleNet_EdgeConv0_bn2/ReadVariableOp_12?
IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOpIParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv0/Conv2D/ReadVariableOp2?
IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOpIParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv1/Conv2D/ReadVariableOp2?
IParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOpIParticleNet_Lite_Static/ParticleNet_EdgeConv0_conv2/Conv2D/ReadVariableOp2?
SParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOpSParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp2?
UParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_1UParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/FusedBatchNormV3/ReadVariableOp_12?
BParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOpBParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp2?
DParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_1DParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_bn/ReadVariableOp_12?
KParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOpKParticleNet_Lite_Static/ParticleNet_EdgeConv0_sc_conv/Conv2D/ReadVariableOp2?
QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOpQParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp2?
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_1SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/FusedBatchNormV3/ReadVariableOp_12?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp2?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp_1BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn0/ReadVariableOp_12?
QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOpQParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp2?
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_1SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/FusedBatchNormV3/ReadVariableOp_12?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp2?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp_1BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn1/ReadVariableOp_12?
QParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOpQParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp2?
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_1SParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/FusedBatchNormV3/ReadVariableOp_12?
@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp@ParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp2?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp_1BParticleNet_Lite_Static/ParticleNet_EdgeConv1_bn2/ReadVariableOp_12?
IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOpIParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv0/Conv2D/ReadVariableOp2?
IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOpIParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv1/Conv2D/ReadVariableOp2?
IParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOpIParticleNet_Lite_Static/ParticleNet_EdgeConv1_conv2/Conv2D/ReadVariableOp2?
SParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOpSParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp2?
UParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_1UParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/FusedBatchNormV3/ReadVariableOp_12?
BParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOpBParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp2?
DParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_1DParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_bn/ReadVariableOp_12?
KParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOpKParticleNet_Lite_Static/ParticleNet_EdgeConv1_sc_conv/Conv2D/ReadVariableOp2?
JParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOpJParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp2?
LParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_1LParticleNet_Lite_Static/ParticleNet_fts_bn/FusedBatchNormV3/ReadVariableOp_12v
9ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp9ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp2z
;ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp_1;ParticleNet_Lite_Static/ParticleNet_fts_bn/ReadVariableOp_12l
4ParticleNet_Lite_Static/dense/BiasAdd/ReadVariableOp4ParticleNet_Lite_Static/dense/BiasAdd/ReadVariableOp2j
3ParticleNet_Lite_Static/dense/MatMul/ReadVariableOp3ParticleNet_Lite_Static/dense/MatMul/ReadVariableOp2p
6ParticleNet_Lite_Static/dense_1/BiasAdd/ReadVariableOp6ParticleNet_Lite_Static/dense_1/BiasAdd/ReadVariableOp2n
5ParticleNet_Lite_Static/dense_1/MatMul/ReadVariableOp5ParticleNet_Lite_Static/dense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_namepoints:VR
,
_output_shapes
:??????????
"
_user_specified_name
features:RN
,
_output_shapes
:??????????

_user_specified_namemask:

_output_shapes
: :

_output_shapes
: 
?
s
W__inference_ParticleNet_EdgeConv1_sc_act_layer_call_and_return_conditional_losses_57398

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:??????????@2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
V
:__inference_ParticleNet_EdgeConv0_act0_layer_call_fn_56339

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act0_layer_call_and_return_conditional_losses_533832
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_55046

inputs
inputs_1
inputs_2
tf_math_multiply_mul_x
tf_math_multiply_3_mul_x
particlenet_fts_bn_54845
particlenet_fts_bn_54847
particlenet_fts_bn_54849
particlenet_fts_bn_54851%
!particlenet_edgeconv0_conv0_54891#
particlenet_edgeconv0_bn0_54894#
particlenet_edgeconv0_bn0_54896#
particlenet_edgeconv0_bn0_54898#
particlenet_edgeconv0_bn0_54900%
!particlenet_edgeconv0_conv1_54904#
particlenet_edgeconv0_bn1_54907#
particlenet_edgeconv0_bn1_54909#
particlenet_edgeconv0_bn1_54911#
particlenet_edgeconv0_bn1_54913%
!particlenet_edgeconv0_conv2_54917#
particlenet_edgeconv0_bn2_54922#
particlenet_edgeconv0_bn2_54924#
particlenet_edgeconv0_bn2_54926#
particlenet_edgeconv0_bn2_54928'
#particlenet_edgeconv0_sc_conv_54931%
!particlenet_edgeconv0_sc_bn_54935%
!particlenet_edgeconv0_sc_bn_54937%
!particlenet_edgeconv0_sc_bn_54939%
!particlenet_edgeconv0_sc_bn_54941%
!particlenet_edgeconv1_conv0_54973#
particlenet_edgeconv1_bn0_54976#
particlenet_edgeconv1_bn0_54978#
particlenet_edgeconv1_bn0_54980#
particlenet_edgeconv1_bn0_54982%
!particlenet_edgeconv1_conv1_54986#
particlenet_edgeconv1_bn1_54989#
particlenet_edgeconv1_bn1_54991#
particlenet_edgeconv1_bn1_54993#
particlenet_edgeconv1_bn1_54995%
!particlenet_edgeconv1_conv2_54999#
particlenet_edgeconv1_bn2_55004#
particlenet_edgeconv1_bn2_55006#
particlenet_edgeconv1_bn2_55008#
particlenet_edgeconv1_bn2_55010'
#particlenet_edgeconv1_sc_conv_55013%
!particlenet_edgeconv1_sc_bn_55017%
!particlenet_edgeconv1_sc_bn_55019%
!particlenet_edgeconv1_sc_bn_55021%
!particlenet_edgeconv1_sc_bn_55023
dense_55034
dense_55036
dense_1_55040
dense_1_55042
identity??1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall?1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall?1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall?3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall?5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall?3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall?5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall?*ParticleNet_fts_bn/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
tf.math.not_equal/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.not_equal/NotEqual/y?
tf.math.not_equal/NotEqualNotEqualinputs_2%tf.math.not_equal/NotEqual/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.not_equal/NotEqual?
tf.cast/CastCasttf.math.not_equal/NotEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast/Casts
tf.math.equal/Equal/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.equal/Equal/y?
tf.math.equal/EqualEqualtf.cast/Cast:y:0tf.math.equal/Equal/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.equal/Equal?
tf.cast_1/CastCasttf.math.equal/Equal:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast_1/Cast?
tf.math.multiply/MulMultf_math_multiply_mul_xtf.cast_1/Cast:y:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply/Mul?
tf.math.add/AddAddtf.math.multiply/Mul:z:0inputs*
T0*,
_output_shapes
:??????????2
tf.math.add/Add?
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm?
 tf.compat.v1.transpose/transpose	Transposetf.math.add/Add:z:0.tf.compat.v1.transpose/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2"
 tf.compat.v1.transpose/transpose?
tf.math.multiply_2/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_2/Mul?
tf.linalg.matmul/MatMulBatchMatMulV2tf.math.add/Add:z:0$tf.compat.v1.transpose/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.linalg.matmul/MatMul?
tf.math.multiply_1/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_1/Mul?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDimsinputs_1&tf.expand_dims/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
*tf.math.reduce_sum_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_1/Sum/reduction_indices?
tf.math.reduce_sum_1/SumSumtf.math.multiply_2/Mul:z:03tf.math.reduce_sum_1/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum_1/Sum?
(tf.math.reduce_sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(tf.math.reduce_sum/Sum/reduction_indices?
tf.math.reduce_sum/SumSumtf.math.multiply_1/Mul:z:01tf.math.reduce_sum/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum/Sum?
tf.math.multiply_3/MulMultf_math_multiply_3_mul_x tf.linalg.matmul/MatMul:output:0*
T0*-
_output_shapes
:???????????2
tf.math.multiply_3/Mul?
*ParticleNet_fts_bn/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0particlenet_fts_bn_54845particlenet_fts_bn_54847particlenet_fts_bn_54849particlenet_fts_bn_54851*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_532132,
*ParticleNet_fts_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze/SqueezeSqueeze3ParticleNet_fts_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
2
tf.compat.v1.squeeze/Squeeze?
tf.math.subtract/SubSubtf.math.reduce_sum/Sum:output:0tf.math.multiply_3/Mul:z:0*
T0*-
_output_shapes
:???????????2
tf.math.subtract/Sub?
'tf.compat.v1.transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'tf.compat.v1.transpose_1/transpose/perm?
"tf.compat.v1.transpose_1/transpose	Transpose!tf.math.reduce_sum_1/Sum:output:00tf.compat.v1.transpose_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2$
"tf.compat.v1.transpose_1/transpose?
tf.__operators__.add/AddV2AddV2tf.math.subtract/Sub:z:0&tf.compat.v1.transpose_1/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.__operators__.add/AddV2?
tf.compat.v1.shape/ShapeShape%tf.compat.v1.squeeze/Squeeze:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape/Shape?
tf.math.negative/NegNegtf.__operators__.add/AddV2:z:0*
T0*-
_output_shapes
:???????????2
tf.math.negative/Neg?
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_1/strided_slice/stack?
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_1?
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_2?
(tf.__operators__.getitem_1/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_1/strided_slicer
tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :2
tf.math.top_k/TopKV2/k?
tf.math.top_k/TopKV2TopKV2tf.math.negative/Neg:y:0tf.math.top_k/TopKV2/k:output:0*
T0*D
_output_shapes2
0:??????????:??????????2
tf.math.top_k/TopKV2n
tf.range/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range/range/startn
tf.range/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range/range/delta?
tf.range/rangeRangetf.range/range/start:output:01tf.__operators__.getitem_1/strided_slice:output:0tf.range/range/delta:output:0*#
_output_shapes
:?????????2
tf.range/range?
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2.
,tf.__operators__.getitem/strided_slice/stack?
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            20
.tf.__operators__.getitem/strided_slice/stack_1?
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         20
.tf.__operators__.getitem/strided_slice/stack_2?
&tf.__operators__.getitem/strided_sliceStridedSlicetf.math.top_k/TopKV2:indices:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice?
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape/Reshape/shape?
tf.reshape/ReshapeReshapetf.range/range:output:0!tf.reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape/Reshape?
tf.tile/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile/Tile/multiples?
tf.tile/TileTiletf.reshape/Reshape:output:0tf.tile/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile/Tile?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDimsp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis?
tf.concat/concatConcatV2tf.tile/Tile:output:0$tf.expand_dims_1/ExpandDims:output:0tf.concat/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat/concat?
tf.expand_dims_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_2/ExpandDims/dim?
tf.expand_dims_2/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_2/ExpandDims?
tf.tile_1/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_1/Tile/multiples?
tf.tile_1/TileTile$tf.expand_dims_2/ExpandDims:output:0!tf.tile_1/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_1/Tile?
tf.compat.v1.gather_nd/GatherNdGatherNd%tf.compat.v1.squeeze/Squeeze:output:0tf.concat/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:??????????2!
tf.compat.v1.gather_nd/GatherNd?
tf.math.subtract_1/SubSub(tf.compat.v1.gather_nd/GatherNd:output:0tf.tile_1/Tile:output:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_1/Sub}
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_1/concat/axis?
tf.concat_1/concatConcatV2tf.tile_1/Tile:output:0tf.math.subtract_1/Sub:z:0 tf.concat_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_1/concat?
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCallStatefulPartitionedCalltf.concat_1/concat:output:0!particlenet_edgeconv0_conv0_54891*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv0_layer_call_and_return_conditional_losses_5329325
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall?
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn0_54894particlenet_edgeconv0_bn0_54896particlenet_edgeconv0_bn0_54898particlenet_edgeconv0_bn0_54900*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_5334223
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act0/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act0_layer_call_and_return_conditional_losses_533832,
*ParticleNet_EdgeConv0_act0/PartitionedCall?
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv0_act0/PartitionedCall:output:0!particlenet_edgeconv0_conv1_54904*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv1_layer_call_and_return_conditional_losses_5339825
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall?
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn1_54907particlenet_edgeconv0_bn1_54909particlenet_edgeconv0_bn1_54911particlenet_edgeconv0_bn1_54913*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_5344723
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act1/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act1_layer_call_and_return_conditional_losses_534882,
*ParticleNet_EdgeConv0_act1/PartitionedCall?
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv0_act1/PartitionedCall:output:0!particlenet_edgeconv0_conv2_54917*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv2_layer_call_and_return_conditional_losses_5350325
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn2_54922particlenet_edgeconv0_bn2_54924particlenet_edgeconv0_bn2_54926particlenet_edgeconv0_bn2_54928*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_5355423
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall?
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_3/ExpandDims:output:0#particlenet_edgeconv0_sc_conv_54931*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_and_return_conditional_losses_5359727
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act2/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act2_layer_call_and_return_conditional_losses_536142,
*ParticleNet_EdgeConv0_act2/PartitionedCall?
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCallStatefulPartitionedCall>ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall:output:0!particlenet_edgeconv0_sc_bn_54935!particlenet_edgeconv0_sc_bn_54937!particlenet_edgeconv0_sc_bn_54939!particlenet_edgeconv0_sc_bn_54941*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_5365925
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze_1/SqueezeSqueeze<ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
2 
tf.compat.v1.squeeze_1/Squeeze?
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_mean/Mean/reduction_indices?
tf.math.reduce_mean/MeanMean3ParticleNet_EdgeConv0_act2/PartitionedCall:output:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????? 2
tf.math.reduce_mean/Mean?
tf.__operators__.add_1/AddV2AddV2'tf.compat.v1.squeeze_1/Squeeze:output:0!tf.math.reduce_mean/Mean:output:0*
T0*,
_output_shapes
:?????????? 2
tf.__operators__.add_1/AddV2?
,ParticleNet_EdgeConv0_sc_act/PartitionedCallPartitionedCall tf.__operators__.add_1/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv0_sc_act_layer_call_and_return_conditional_losses_537042.
,ParticleNet_EdgeConv0_sc_act/PartitionedCall?
tf.compat.v1.shape_1/ShapeShape5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_1/Shape?
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_2/strided_slice/stack?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_1?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_2?
(tf.__operators__.getitem_2/strided_sliceStridedSlice#tf.compat.v1.shape_1/Shape:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_2/strided_slicer
tf.range_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range_1/range/startr
tf.range_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range_1/range/delta?
tf.range_1/rangeRangetf.range_1/range/start:output:01tf.__operators__.getitem_2/strided_slice:output:0tf.range_1/range/delta:output:0*#
_output_shapes
:?????????2
tf.range_1/range?
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape_1/Reshape/shape?
tf.reshape_1/ReshapeReshapetf.range_1/range:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape_1/Reshape?
tf.tile_2/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile_2/Tile/multiples?
tf.tile_2/TileTiletf.reshape_1/Reshape:output:0!tf.tile_2/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_2/Tile?
tf.expand_dims_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_4/ExpandDims/dim?
tf.expand_dims_4/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_4/ExpandDimst
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_2/concat/axis?
tf.concat_2/concatConcatV2tf.tile_2/Tile:output:0$tf.expand_dims_4/ExpandDims:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_2/concat?
tf.expand_dims_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_5/ExpandDims/dim?
tf.expand_dims_5/ExpandDims
ExpandDims5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0(tf.expand_dims_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_5/ExpandDims?
tf.tile_3/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_3/Tile/multiples?
tf.tile_3/TileTile$tf.expand_dims_5/ExpandDims:output:0!tf.tile_3/Tile/multiples:output:0*
T0*0
_output_shapes
:?????????? 2
tf.tile_3/Tile?
!tf.compat.v1.gather_nd_1/GatherNdGatherNd5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0tf.concat_2/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:?????????? 2#
!tf.compat.v1.gather_nd_1/GatherNd?
tf.math.subtract_2/SubSub*tf.compat.v1.gather_nd_1/GatherNd:output:0tf.tile_3/Tile:output:0*
T0*0
_output_shapes
:?????????? 2
tf.math.subtract_2/Sub}
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_3/concat/axis?
tf.concat_3/concatConcatV2tf.tile_3/Tile:output:0tf.math.subtract_2/Sub:z:0 tf.concat_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????@2
tf.concat_3/concat?
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCallStatefulPartitionedCalltf.concat_3/concat:output:0!particlenet_edgeconv1_conv0_54973*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv0_layer_call_and_return_conditional_losses_5374325
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall?
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn0_54976particlenet_edgeconv1_bn0_54978particlenet_edgeconv1_bn0_54980particlenet_edgeconv1_bn0_54982*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_5379223
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act0/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act0_layer_call_and_return_conditional_losses_538332,
*ParticleNet_EdgeConv1_act0/PartitionedCall?
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv1_act0/PartitionedCall:output:0!particlenet_edgeconv1_conv1_54986*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv1_layer_call_and_return_conditional_losses_5384825
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall?
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn1_54989particlenet_edgeconv1_bn1_54991particlenet_edgeconv1_bn1_54993particlenet_edgeconv1_bn1_54995*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_5389723
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act1/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act1_layer_call_and_return_conditional_losses_539382,
*ParticleNet_EdgeConv1_act1/PartitionedCall?
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv1_act1/PartitionedCall:output:0!particlenet_edgeconv1_conv2_54999*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv2_layer_call_and_return_conditional_losses_5395325
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall?
tf.expand_dims_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_6/ExpandDims/dim?
tf.expand_dims_6/ExpandDims
ExpandDims5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0(tf.expand_dims_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_6/ExpandDims?
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn2_55004particlenet_edgeconv1_bn2_55006particlenet_edgeconv1_bn2_55008particlenet_edgeconv1_bn2_55010*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_5400423
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall?
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_6/ExpandDims:output:0#particlenet_edgeconv1_sc_conv_55013*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_and_return_conditional_losses_5404727
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act2/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act2_layer_call_and_return_conditional_losses_540642,
*ParticleNet_EdgeConv1_act2/PartitionedCall?
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCallStatefulPartitionedCall>ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall:output:0!particlenet_edgeconv1_sc_bn_55017!particlenet_edgeconv1_sc_bn_55019!particlenet_edgeconv1_sc_bn_55021!particlenet_edgeconv1_sc_bn_55023*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_5410925
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze_2/SqueezeSqueeze<ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2 
tf.compat.v1.squeeze_2/Squeeze?
,tf.math.reduce_mean_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_1/Mean/reduction_indices?
tf.math.reduce_mean_1/MeanMean3ParticleNet_EdgeConv1_act2/PartitionedCall:output:05tf.math.reduce_mean_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????@2
tf.math.reduce_mean_1/Mean?
tf.__operators__.add_2/AddV2AddV2'tf.compat.v1.squeeze_2/Squeeze:output:0#tf.math.reduce_mean_1/Mean:output:0*
T0*,
_output_shapes
:??????????@2
tf.__operators__.add_2/AddV2?
,ParticleNet_EdgeConv1_sc_act/PartitionedCallPartitionedCall tf.__operators__.add_2/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv1_sc_act_layer_call_and_return_conditional_losses_541542.
,ParticleNet_EdgeConv1_sc_act/PartitionedCall?
tf.math.multiply_4/MulMul5ParticleNet_EdgeConv1_sc_act/PartitionedCall:output:0tf.cast/Cast:y:0*
T0*,
_output_shapes
:??????????@2
tf.math.multiply_4/Mul?
,tf.math.reduce_mean_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_2/Mean/reduction_indices?
tf.math.reduce_mean_2/MeanMeantf.math.multiply_4/Mul:z:05tf.math.reduce_mean_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
tf.math.reduce_mean_2/Mean?
dense/StatefulPartitionedCallStatefulPartitionedCall#tf.math.reduce_mean_2/Mean:output:0dense_55034dense_55036*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_541762
dense/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_542092
dropout/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_55040dense_1_55042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_542332!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:02^ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall2^ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall2^ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall4^ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall6^ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall4^ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall6^ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall+^ParticleNet_fts_bn/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::2f
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall2f
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall2f
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall2n
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall2n
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall2X
*ParticleNet_fts_bn/StatefulPartitionedCall*ParticleNet_fts_bn/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:TP
,
_output_shapes
:??????????
 
_user_specified_nameinputs:TP
,
_output_shapes
:??????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
q
U__inference_ParticleNet_EdgeConv1_act2_layer_call_and_return_conditional_losses_57388

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????@2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
z
%__inference_dense_layer_call_fn_57423

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_541762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56847

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv1_act2_layer_call_and_return_conditional_losses_54064

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????@2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
7__inference_ParticleNet_Lite_Static_layer_call_fn_56059
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*R
_read_only_resource_inputs4
20	
 !"#$%&'()*+,-./01234*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_550462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/1:VR
,
_output_shapes
:??????????
"
_user_specified_name
inputs/2:

_output_shapes
: :

_output_shapes
: 
?
?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_52305

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_54233

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56252

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_523782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57191

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_540042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
2__inference_ParticleNet_fts_bn_layer_call_fn_56187

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_532132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv0_conv0_layer_call_fn_56201

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv0_layer_call_and_return_conditional_losses_532932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_52929

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
|
'__inference_dense_1_layer_call_fn_57470

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_542332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_dropout_layer_call_fn_57450

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_542092
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_53897

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
X__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_and_return_conditional_losses_57120

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? :2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
??
?
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_54478

points
features
mask
tf_math_multiply_mul_x
tf_math_multiply_3_mul_x
particlenet_fts_bn_54277
particlenet_fts_bn_54279
particlenet_fts_bn_54281
particlenet_fts_bn_54283%
!particlenet_edgeconv0_conv0_54323#
particlenet_edgeconv0_bn0_54326#
particlenet_edgeconv0_bn0_54328#
particlenet_edgeconv0_bn0_54330#
particlenet_edgeconv0_bn0_54332%
!particlenet_edgeconv0_conv1_54336#
particlenet_edgeconv0_bn1_54339#
particlenet_edgeconv0_bn1_54341#
particlenet_edgeconv0_bn1_54343#
particlenet_edgeconv0_bn1_54345%
!particlenet_edgeconv0_conv2_54349#
particlenet_edgeconv0_bn2_54354#
particlenet_edgeconv0_bn2_54356#
particlenet_edgeconv0_bn2_54358#
particlenet_edgeconv0_bn2_54360'
#particlenet_edgeconv0_sc_conv_54363%
!particlenet_edgeconv0_sc_bn_54367%
!particlenet_edgeconv0_sc_bn_54369%
!particlenet_edgeconv0_sc_bn_54371%
!particlenet_edgeconv0_sc_bn_54373%
!particlenet_edgeconv1_conv0_54405#
particlenet_edgeconv1_bn0_54408#
particlenet_edgeconv1_bn0_54410#
particlenet_edgeconv1_bn0_54412#
particlenet_edgeconv1_bn0_54414%
!particlenet_edgeconv1_conv1_54418#
particlenet_edgeconv1_bn1_54421#
particlenet_edgeconv1_bn1_54423#
particlenet_edgeconv1_bn1_54425#
particlenet_edgeconv1_bn1_54427%
!particlenet_edgeconv1_conv2_54431#
particlenet_edgeconv1_bn2_54436#
particlenet_edgeconv1_bn2_54438#
particlenet_edgeconv1_bn2_54440#
particlenet_edgeconv1_bn2_54442'
#particlenet_edgeconv1_sc_conv_54445%
!particlenet_edgeconv1_sc_bn_54449%
!particlenet_edgeconv1_sc_bn_54451%
!particlenet_edgeconv1_sc_bn_54453%
!particlenet_edgeconv1_sc_bn_54455
dense_54466
dense_54468
dense_1_54472
dense_1_54474
identity??1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall?1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall?1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall?3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall?3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall?5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall?1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall?3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall?3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall?5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall?*ParticleNet_fts_bn/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
tf.math.not_equal/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.not_equal/NotEqual/y?
tf.math.not_equal/NotEqualNotEqualmask%tf.math.not_equal/NotEqual/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.not_equal/NotEqual?
tf.cast/CastCasttf.math.not_equal/NotEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast/Casts
tf.math.equal/Equal/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
tf.math.equal/Equal/y?
tf.math.equal/EqualEqualtf.cast/Cast:y:0tf.math.equal/Equal/y:output:0*
T0*,
_output_shapes
:??????????2
tf.math.equal/Equal?
tf.cast_1/CastCasttf.math.equal/Equal:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
tf.cast_1/Cast?
tf.math.multiply/MulMultf_math_multiply_mul_xtf.cast_1/Cast:y:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply/Mul?
tf.math.add/AddAddtf.math.multiply/Mul:z:0points*
T0*,
_output_shapes
:??????????2
tf.math.add/Add?
%tf.compat.v1.transpose/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%tf.compat.v1.transpose/transpose/perm?
 tf.compat.v1.transpose/transpose	Transposetf.math.add/Add:z:0.tf.compat.v1.transpose/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2"
 tf.compat.v1.transpose/transpose?
tf.math.multiply_2/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_2/Mul?
tf.linalg.matmul/MatMulBatchMatMulV2tf.math.add/Add:z:0$tf.compat.v1.transpose/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.linalg.matmul/MatMul?
tf.math.multiply_1/MulMultf.math.add/Add:z:0tf.math.add/Add:z:0*
T0*,
_output_shapes
:??????????2
tf.math.multiply_1/Mul?
tf.expand_dims/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
tf.expand_dims/ExpandDims/dim?
tf.expand_dims/ExpandDims
ExpandDimsfeatures&tf.expand_dims/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims/ExpandDims?
*tf.math.reduce_sum_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_sum_1/Sum/reduction_indices?
tf.math.reduce_sum_1/SumSumtf.math.multiply_2/Mul:z:03tf.math.reduce_sum_1/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum_1/Sum?
(tf.math.reduce_sum/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(tf.math.reduce_sum/Sum/reduction_indices?
tf.math.reduce_sum/SumSumtf.math.multiply_1/Mul:z:01tf.math.reduce_sum/Sum/reduction_indices:output:0*
T0*,
_output_shapes
:??????????*
	keep_dims(2
tf.math.reduce_sum/Sum?
tf.math.multiply_3/MulMultf_math_multiply_3_mul_x tf.linalg.matmul/MatMul:output:0*
T0*-
_output_shapes
:???????????2
tf.math.multiply_3/Mul?
*ParticleNet_fts_bn/StatefulPartitionedCallStatefulPartitionedCall"tf.expand_dims/ExpandDims:output:0particlenet_fts_bn_54277particlenet_fts_bn_54279particlenet_fts_bn_54281particlenet_fts_bn_54283*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_532132,
*ParticleNet_fts_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze/SqueezeSqueeze3ParticleNet_fts_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:??????????*
squeeze_dims
2
tf.compat.v1.squeeze/Squeeze?
tf.math.subtract/SubSubtf.math.reduce_sum/Sum:output:0tf.math.multiply_3/Mul:z:0*
T0*-
_output_shapes
:???????????2
tf.math.subtract/Sub?
'tf.compat.v1.transpose_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'tf.compat.v1.transpose_1/transpose/perm?
"tf.compat.v1.transpose_1/transpose	Transpose!tf.math.reduce_sum_1/Sum:output:00tf.compat.v1.transpose_1/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2$
"tf.compat.v1.transpose_1/transpose?
tf.__operators__.add/AddV2AddV2tf.math.subtract/Sub:z:0&tf.compat.v1.transpose_1/transpose:y:0*
T0*-
_output_shapes
:???????????2
tf.__operators__.add/AddV2?
tf.compat.v1.shape/ShapeShape%tf.compat.v1.squeeze/Squeeze:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape/Shape?
tf.math.negative/NegNegtf.__operators__.add/AddV2:z:0*
T0*-
_output_shapes
:???????????2
tf.math.negative/Neg?
.tf.__operators__.getitem_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_1/strided_slice/stack?
0tf.__operators__.getitem_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_1?
0tf.__operators__.getitem_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_1/strided_slice/stack_2?
(tf.__operators__.getitem_1/strided_sliceStridedSlice!tf.compat.v1.shape/Shape:output:07tf.__operators__.getitem_1/strided_slice/stack:output:09tf.__operators__.getitem_1/strided_slice/stack_1:output:09tf.__operators__.getitem_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_1/strided_slicer
tf.math.top_k/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :2
tf.math.top_k/TopKV2/k?
tf.math.top_k/TopKV2TopKV2tf.math.negative/Neg:y:0tf.math.top_k/TopKV2/k:output:0*
T0*D
_output_shapes2
0:??????????:??????????2
tf.math.top_k/TopKV2n
tf.range/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range/range/startn
tf.range/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range/range/delta?
tf.range/rangeRangetf.range/range/start:output:01tf.__operators__.getitem_1/strided_slice:output:0tf.range/range/delta:output:0*#
_output_shapes
:?????????2
tf.range/range?
,tf.__operators__.getitem/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2.
,tf.__operators__.getitem/strided_slice/stack?
.tf.__operators__.getitem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            20
.tf.__operators__.getitem/strided_slice/stack_1?
.tf.__operators__.getitem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         20
.tf.__operators__.getitem/strided_slice/stack_2?
&tf.__operators__.getitem/strided_sliceStridedSlicetf.math.top_k/TopKV2:indices:05tf.__operators__.getitem/strided_slice/stack:output:07tf.__operators__.getitem/strided_slice/stack_1:output:07tf.__operators__.getitem/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:??????????*

begin_mask*
end_mask2(
&tf.__operators__.getitem/strided_slice?
tf.reshape/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape/Reshape/shape?
tf.reshape/ReshapeReshapetf.range/range:output:0!tf.reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape/Reshape?
tf.tile/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile/Tile/multiples?
tf.tile/TileTiletf.reshape/Reshape:output:0tf.tile/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile/Tile?
tf.expand_dims_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_1/ExpandDims/dim?
tf.expand_dims_1/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_1/ExpandDimsp
tf.concat/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat/concat/axis?
tf.concat/concatConcatV2tf.tile/Tile:output:0$tf.expand_dims_1/ExpandDims:output:0tf.concat/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat/concat?
tf.expand_dims_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_2/ExpandDims/dim?
tf.expand_dims_2/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_2/ExpandDims?
tf.tile_1/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_1/Tile/multiples?
tf.tile_1/TileTile$tf.expand_dims_2/ExpandDims:output:0!tf.tile_1/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_1/Tile?
tf.compat.v1.gather_nd/GatherNdGatherNd%tf.compat.v1.squeeze/Squeeze:output:0tf.concat/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:??????????2!
tf.compat.v1.gather_nd/GatherNd?
tf.math.subtract_1/SubSub(tf.compat.v1.gather_nd/GatherNd:output:0tf.tile_1/Tile:output:0*
T0*0
_output_shapes
:??????????2
tf.math.subtract_1/Sub}
tf.concat_1/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_1/concat/axis?
tf.concat_1/concatConcatV2tf.tile_1/Tile:output:0tf.math.subtract_1/Sub:z:0 tf.concat_1/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_1/concat?
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCallStatefulPartitionedCalltf.concat_1/concat:output:0!particlenet_edgeconv0_conv0_54323*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv0_layer_call_and_return_conditional_losses_5329325
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall?
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn0_54326particlenet_edgeconv0_bn0_54328particlenet_edgeconv0_bn0_54330particlenet_edgeconv0_bn0_54332*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_5334223
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act0/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act0_layer_call_and_return_conditional_losses_533832,
*ParticleNet_EdgeConv0_act0/PartitionedCall?
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv0_act0/PartitionedCall:output:0!particlenet_edgeconv0_conv1_54336*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv1_layer_call_and_return_conditional_losses_5339825
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall?
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn1_54339particlenet_edgeconv0_bn1_54341particlenet_edgeconv0_bn1_54343particlenet_edgeconv0_bn1_54345*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_5344723
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act1/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act1_layer_call_and_return_conditional_losses_534882,
*ParticleNet_EdgeConv0_act1/PartitionedCall?
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv0_act1/PartitionedCall:output:0!particlenet_edgeconv0_conv2_54349*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv2_layer_call_and_return_conditional_losses_5350325
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall?
tf.expand_dims_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_3/ExpandDims/dim?
tf.expand_dims_3/ExpandDims
ExpandDims%tf.compat.v1.squeeze/Squeeze:output:0(tf.expand_dims_3/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_3/ExpandDims?
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall:output:0particlenet_edgeconv0_bn2_54354particlenet_edgeconv0_bn2_54356particlenet_edgeconv0_bn2_54358particlenet_edgeconv0_bn2_54360*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_5355423
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall?
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_3/ExpandDims:output:0#particlenet_edgeconv0_sc_conv_54363*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_and_return_conditional_losses_5359727
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall?
*ParticleNet_EdgeConv0_act2/PartitionedCallPartitionedCall:ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv0_act2_layer_call_and_return_conditional_losses_536142,
*ParticleNet_EdgeConv0_act2/PartitionedCall?
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCallStatefulPartitionedCall>ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall:output:0!particlenet_edgeconv0_sc_bn_54367!particlenet_edgeconv0_sc_bn_54369!particlenet_edgeconv0_sc_bn_54371!particlenet_edgeconv0_sc_bn_54373*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_5365925
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze_1/SqueezeSqueeze<ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:?????????? *
squeeze_dims
2 
tf.compat.v1.squeeze_1/Squeeze?
*tf.math.reduce_mean/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*tf.math.reduce_mean/Mean/reduction_indices?
tf.math.reduce_mean/MeanMean3ParticleNet_EdgeConv0_act2/PartitionedCall:output:03tf.math.reduce_mean/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????? 2
tf.math.reduce_mean/Mean?
tf.__operators__.add_1/AddV2AddV2'tf.compat.v1.squeeze_1/Squeeze:output:0!tf.math.reduce_mean/Mean:output:0*
T0*,
_output_shapes
:?????????? 2
tf.__operators__.add_1/AddV2?
,ParticleNet_EdgeConv0_sc_act/PartitionedCallPartitionedCall tf.__operators__.add_1/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv0_sc_act_layer_call_and_return_conditional_losses_537042.
,ParticleNet_EdgeConv0_sc_act/PartitionedCall?
tf.compat.v1.shape_1/ShapeShape5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0*
T0*
_output_shapes
:2
tf.compat.v1.shape_1/Shape?
.tf.__operators__.getitem_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.tf.__operators__.getitem_2/strided_slice/stack?
0tf.__operators__.getitem_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_1?
0tf.__operators__.getitem_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0tf.__operators__.getitem_2/strided_slice/stack_2?
(tf.__operators__.getitem_2/strided_sliceStridedSlice#tf.compat.v1.shape_1/Shape:output:07tf.__operators__.getitem_2/strided_slice/stack:output:09tf.__operators__.getitem_2/strided_slice/stack_1:output:09tf.__operators__.getitem_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(tf.__operators__.getitem_2/strided_slicer
tf.range_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
tf.range_1/range/startr
tf.range_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
tf.range_1/range/delta?
tf.range_1/rangeRangetf.range_1/range/start:output:01tf.__operators__.getitem_2/strided_slice:output:0tf.range_1/range/delta:output:0*#
_output_shapes
:?????????2
tf.range_1/range?
tf.reshape_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"????         2
tf.reshape_1/Reshape/shape?
tf.reshape_1/ReshapeReshapetf.range_1/range:output:0#tf.reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2
tf.reshape_1/Reshape?
tf.tile_2/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
tf.tile_2/Tile/multiples?
tf.tile_2/TileTiletf.reshape_1/Reshape:output:0!tf.tile_2/Tile/multiples:output:0*
T0*0
_output_shapes
:??????????2
tf.tile_2/Tile?
tf.expand_dims_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_4/ExpandDims/dim?
tf.expand_dims_4/ExpandDims
ExpandDims/tf.__operators__.getitem/strided_slice:output:0(tf.expand_dims_4/ExpandDims/dim:output:0*
T0*0
_output_shapes
:??????????2
tf.expand_dims_4/ExpandDimst
tf.concat_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
tf.concat_2/concat/axis?
tf.concat_2/concatConcatV2tf.tile_2/Tile:output:0$tf.expand_dims_4/ExpandDims:output:0 tf.concat_2/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????2
tf.concat_2/concat?
tf.expand_dims_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_5/ExpandDims/dim?
tf.expand_dims_5/ExpandDims
ExpandDims5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0(tf.expand_dims_5/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_5/ExpandDims?
tf.tile_3/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            2
tf.tile_3/Tile/multiples?
tf.tile_3/TileTile$tf.expand_dims_5/ExpandDims:output:0!tf.tile_3/Tile/multiples:output:0*
T0*0
_output_shapes
:?????????? 2
tf.tile_3/Tile?
!tf.compat.v1.gather_nd_1/GatherNdGatherNd5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0tf.concat_2/concat:output:0*
Tindices0*
Tparams0*0
_output_shapes
:?????????? 2#
!tf.compat.v1.gather_nd_1/GatherNd?
tf.math.subtract_2/SubSub*tf.compat.v1.gather_nd_1/GatherNd:output:0tf.tile_3/Tile:output:0*
T0*0
_output_shapes
:?????????? 2
tf.math.subtract_2/Sub}
tf.concat_3/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
tf.concat_3/concat/axis?
tf.concat_3/concatConcatV2tf.tile_3/Tile:output:0tf.math.subtract_2/Sub:z:0 tf.concat_3/concat/axis:output:0*
N*
T0*0
_output_shapes
:??????????@2
tf.concat_3/concat?
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCallStatefulPartitionedCalltf.concat_3/concat:output:0!particlenet_edgeconv1_conv0_54405*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv0_layer_call_and_return_conditional_losses_5374325
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall?
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn0_54408particlenet_edgeconv1_bn0_54410particlenet_edgeconv1_bn0_54412particlenet_edgeconv1_bn0_54414*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_5379223
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act0/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act0_layer_call_and_return_conditional_losses_538332,
*ParticleNet_EdgeConv1_act0/PartitionedCall?
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv1_act0/PartitionedCall:output:0!particlenet_edgeconv1_conv1_54418*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv1_layer_call_and_return_conditional_losses_5384825
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall?
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn1_54421particlenet_edgeconv1_bn1_54423particlenet_edgeconv1_bn1_54425particlenet_edgeconv1_bn1_54427*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_5389723
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act1/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act1_layer_call_and_return_conditional_losses_539382,
*ParticleNet_EdgeConv1_act1/PartitionedCall?
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCallStatefulPartitionedCall3ParticleNet_EdgeConv1_act1/PartitionedCall:output:0!particlenet_edgeconv1_conv2_54431*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv2_layer_call_and_return_conditional_losses_5395325
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall?
tf.expand_dims_6/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
tf.expand_dims_6/ExpandDims/dim?
tf.expand_dims_6/ExpandDims
ExpandDims5ParticleNet_EdgeConv0_sc_act/PartitionedCall:output:0(tf.expand_dims_6/ExpandDims/dim:output:0*
T0*0
_output_shapes
:?????????? 2
tf.expand_dims_6/ExpandDims?
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCallStatefulPartitionedCall<ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall:output:0particlenet_edgeconv1_bn2_54436particlenet_edgeconv1_bn2_54438particlenet_edgeconv1_bn2_54440particlenet_edgeconv1_bn2_54442*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_5400423
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall?
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCallStatefulPartitionedCall$tf.expand_dims_6/ExpandDims:output:0#particlenet_edgeconv1_sc_conv_54445*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *a
f\RZ
X__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_and_return_conditional_losses_5404727
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall?
*ParticleNet_EdgeConv1_act2/PartitionedCallPartitionedCall:ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act2_layer_call_and_return_conditional_losses_540642,
*ParticleNet_EdgeConv1_act2/PartitionedCall?
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCallStatefulPartitionedCall>ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall:output:0!particlenet_edgeconv1_sc_bn_54449!particlenet_edgeconv1_sc_bn_54451!particlenet_edgeconv1_sc_bn_54453!particlenet_edgeconv1_sc_bn_54455*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_5410925
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall?
tf.compat.v1.squeeze_2/SqueezeSqueeze<ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall:output:0*
T0*,
_output_shapes
:??????????@*
squeeze_dims
2 
tf.compat.v1.squeeze_2/Squeeze?
,tf.math.reduce_mean_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_1/Mean/reduction_indices?
tf.math.reduce_mean_1/MeanMean3ParticleNet_EdgeConv1_act2/PartitionedCall:output:05tf.math.reduce_mean_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:??????????@2
tf.math.reduce_mean_1/Mean?
tf.__operators__.add_2/AddV2AddV2'tf.compat.v1.squeeze_2/Squeeze:output:0#tf.math.reduce_mean_1/Mean:output:0*
T0*,
_output_shapes
:??????????@2
tf.__operators__.add_2/AddV2?
,ParticleNet_EdgeConv1_sc_act/PartitionedCallPartitionedCall tf.__operators__.add_2/AddV2:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv1_sc_act_layer_call_and_return_conditional_losses_541542.
,ParticleNet_EdgeConv1_sc_act/PartitionedCall?
tf.math.multiply_4/MulMul5ParticleNet_EdgeConv1_sc_act/PartitionedCall:output:0tf.cast/Cast:y:0*
T0*,
_output_shapes
:??????????@2
tf.math.multiply_4/Mul?
,tf.math.reduce_mean_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_2/Mean/reduction_indices?
tf.math.reduce_mean_2/MeanMeantf.math.multiply_4/Mul:z:05tf.math.reduce_mean_2/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:?????????@2
tf.math.reduce_mean_2/Mean?
dense/StatefulPartitionedCallStatefulPartitionedCall#tf.math.reduce_mean_2/Mean:output:0dense_54466dense_54468*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_541762
dense/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_542092
dropout/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_54472dense_1_54474*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_542332!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:02^ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall2^ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall2^ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall4^ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall4^ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall6^ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall2^ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall4^ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall4^ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall6^ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall+^ParticleNet_fts_bn/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????:??????????:??????????: : ::::::::::::::::::::::::::::::::::::::::::::::::2f
1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn0/StatefulPartitionedCall2f
1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn1/StatefulPartitionedCall2f
1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall1ParticleNet_EdgeConv0_bn2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv0/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv1/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall3ParticleNet_EdgeConv0_conv2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall3ParticleNet_EdgeConv0_sc_bn/StatefulPartitionedCall2n
5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall5ParticleNet_EdgeConv0_sc_conv/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn0/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn1/StatefulPartitionedCall2f
1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall1ParticleNet_EdgeConv1_bn2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv0/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv1/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall3ParticleNet_EdgeConv1_conv2/StatefulPartitionedCall2j
3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall3ParticleNet_EdgeConv1_sc_bn/StatefulPartitionedCall2n
5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall5ParticleNet_EdgeConv1_sc_conv/StatefulPartitionedCall2X
*ParticleNet_fts_bn/StatefulPartitionedCall*ParticleNet_fts_bn/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_namepoints:VR
,
_output_shapes
:??????????
"
_user_specified_name
features:RN
,
_output_shapes
:??????????

_user_specified_namemask:

_output_shapes
: :

_output_shapes
: 
?
?
2__inference_ParticleNet_fts_bn_layer_call_fn_56174

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_531952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_conv2_layer_call_and_return_conditional_losses_56498

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? :2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_53195

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56417

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_534472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_52721

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
2__inference_ParticleNet_fts_bn_layer_call_fn_56110

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_522742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_56999

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
V
:__inference_ParticleNet_EdgeConv1_act0_layer_call_fn_56947

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_ParticleNet_EdgeConv1_act0_layer_call_and_return_conditional_losses_538332
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56481

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_525132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_52586

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_57045

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_conv2_layer_call_and_return_conditional_losses_57106

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv1_conv2_layer_call_fn_57113

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_conv2_layer_call_and_return_conditional_losses_539532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_54091

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57165

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv0_conv2_layer_call_fn_56505

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv2_layer_call_and_return_conditional_losses_535032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? :22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56265

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_524092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56860

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_527942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57357

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
X
<__inference_ParticleNet_EdgeConv1_sc_act_layer_call_fn_57403

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *`
f[RY
W__inference_ParticleNet_EdgeConv1_sc_act_layer_call_and_return_conditional_losses_541542
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????@:T P
,
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56829

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_53879

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_53106

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv0_conv1_layer_call_fn_56353

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_conv1_layer_call_and_return_conditional_losses_533982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? :22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_conv1_layer_call_and_return_conditional_losses_56954

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57383

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_541092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56373

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_54204

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
2__inference_ParticleNet_fts_bn_layer_call_fn_56123

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_523052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_52409

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56570

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_525862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
q
U__inference_ParticleNet_EdgeConv1_act1_layer_call_and_return_conditional_losses_57094

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:??????????@2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????@:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56775

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_536592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57339

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56468

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_524822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56303

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_conv1_layer_call_and_return_conditional_losses_53848

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57255

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_530332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
X__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_and_return_conditional_losses_54047

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :?????????? :2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv1_conv2_layer_call_and_return_conditional_losses_53953

inputs"
conv2d_readvariableop_resource
identity??Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????@*
paddingVALID*
strides
2
Conv2D?
IdentityIdentityConv2D:output:0^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????@:2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_53429

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56221

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_54004

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56731

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56893

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:??????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs
?
?
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56937

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *]
fXRV
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_537922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????@2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
B
features6
serving_default_features:0??????????
:
mask2
serving_default_mask:0??????????
>
points4
serving_default_points:0??????????;
dense_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-0
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer-27
layer-28
layer-29
layer-30
 layer-31
!layer-32
"layer-33
#layer-34
$layer-35
%layer-36
&layer_with_weights-1
&layer-37
'layer_with_weights-2
'layer-38
(layer-39
)layer_with_weights-3
)layer-40
*layer_with_weights-4
*layer-41
+layer-42
,layer-43
-layer_with_weights-5
-layer-44
.layer_with_weights-6
.layer-45
/layer_with_weights-7
/layer-46
0layer_with_weights-8
0layer-47
1layer-48
2layer-49
3layer-50
4layer-51
5layer-52
6layer-53
7layer-54
8layer-55
9layer-56
:layer-57
;layer-58
<layer-59
=layer-60
>layer-61
?layer-62
@layer-63
Alayer-64
Blayer_with_weights-9
Blayer-65
Clayer_with_weights-10
Clayer-66
Dlayer-67
Elayer_with_weights-11
Elayer-68
Flayer_with_weights-12
Flayer-69
Glayer-70
Hlayer-71
Ilayer_with_weights-13
Ilayer-72
Jlayer_with_weights-14
Jlayer-73
Klayer_with_weights-15
Klayer-74
Llayer_with_weights-16
Llayer-75
Mlayer-76
Nlayer-77
Olayer-78
Player-79
Qlayer-80
Rlayer-81
Slayer-82
Tlayer_with_weights-17
Tlayer-83
Ulayer-84
Vlayer_with_weights-18
Vlayer-85
W	optimizer
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\
signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"??
_tf_keras_network??{"class_name": "Functional", "name": "ParticleNet_Lite_Static", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "ParticleNet_Lite_Static", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "mask"}, "name": "mask", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.not_equal", "trainable": true, "dtype": "float32", "function": "math.not_equal"}, "name": "tf.math.not_equal", "inbound_nodes": [["mask", 0, 0, {"y": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast", "inbound_nodes": [["tf.math.not_equal", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.equal", "trainable": true, "dtype": "float32", "function": "math.equal"}, "name": "tf.math.equal", "inbound_nodes": [["tf.cast", 0, 0, {"y": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_1", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_1", "inbound_nodes": [["tf.math.equal", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply", "inbound_nodes": [["_CONSTANT_VALUE", -1, 999.0, {"y": ["tf.cast_1", 0, 0]}]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "points"}, "name": "points", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.add", "trainable": true, "dtype": "float32", "function": "math.add"}, "name": "tf.math.add", "inbound_nodes": [["tf.math.multiply", 0, 0, {"y": ["points", 0, 0], "name": null}]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "features"}, "name": "features", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.transpose", "trainable": true, "dtype": "float32", "function": "compat.v1.transpose"}, "name": "tf.compat.v1.transpose", "inbound_nodes": [["tf.math.add", 0, 0, {"perm": {"class_name": "__tuple__", "items": [0, 2, 1]}, "name": "transpose", "conjugate": false}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims", "inbound_nodes": [["features", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_1", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_1", "inbound_nodes": [["tf.math.add", 0, 0, {"y": ["tf.math.add", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.linalg.matmul", "trainable": true, "dtype": "float32", "function": "linalg.matmul"}, "name": "tf.linalg.matmul", "inbound_nodes": [["tf.math.add", 0, 0, {"b": ["tf.compat.v1.transpose", 0, 0]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_2", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_2", "inbound_nodes": [["tf.math.add", 0, 0, {"y": ["tf.math.add", 0, 0], "name": null}]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_fts_bn", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_fts_bn", "inbound_nodes": [[["tf.expand_dims", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum", "inbound_nodes": [["tf.math.multiply_1", 0, 0, {"axis": 2, "keepdims": true}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_3", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_3", "inbound_nodes": [["_CONSTANT_VALUE", -1, 2.0, {"y": ["tf.linalg.matmul", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum_1", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum_1", "inbound_nodes": [["tf.math.multiply_2", 0, 0, {"axis": 2, "keepdims": true}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.squeeze", "trainable": true, "dtype": "float32", "function": "compat.v1.squeeze"}, "name": "tf.compat.v1.squeeze", "inbound_nodes": [["ParticleNet_fts_bn", 0, 0, {"axis": 2, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract", "inbound_nodes": [["tf.math.reduce_sum", 0, 0, {"y": ["tf.math.multiply_3", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.transpose_1", "trainable": true, "dtype": "float32", "function": "compat.v1.transpose"}, "name": "tf.compat.v1.transpose_1", "inbound_nodes": [["tf.math.reduce_sum_1", 0, 0, {"perm": {"class_name": "__tuple__", "items": [0, 2, 1]}, "name": "transpose", "conjugate": false}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.shape", "trainable": true, "dtype": "float32", "function": "compat.v1.shape"}, "name": "tf.compat.v1.shape", "inbound_nodes": [["tf.compat.v1.squeeze", 0, 0, {"name": null, "out_type": "int32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add", "inbound_nodes": [["tf.math.subtract", 0, 0, {"y": ["tf.compat.v1.transpose_1", 0, 0], "name": null}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_1", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_1", "inbound_nodes": [["tf.compat.v1.shape", 0, 0, {"slice_spec": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.negative", "trainable": true, "dtype": "float32", "function": "math.negative"}, "name": "tf.math.negative", "inbound_nodes": [["tf.__operators__.add", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.range", "trainable": true, "dtype": "float32", "function": "range"}, "name": "tf.range", "inbound_nodes": [["tf.__operators__.getitem_1", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.top_k", "trainable": true, "dtype": "float32", "function": "math.top_k"}, "name": "tf.math.top_k", "inbound_nodes": [["tf.math.negative", 0, 0, {"k": 8}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape", "inbound_nodes": [["tf.range", 0, 0, {"shape": {"class_name": "__tuple__", "items": [-1, 1, 1, 1]}}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem", "inbound_nodes": [["tf.math.top_k", 0, 1, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": null, "stop": null, "step": null}, {"start": 1, "stop": null, "step": null}]}}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile", "inbound_nodes": [["tf.reshape", 0, 0, {"multiples": {"class_name": "__tuple__", "items": [1, 142, 7, 1]}, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_1", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_1", "inbound_nodes": [["tf.__operators__.getitem", 0, 0, {"axis": 3}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_2", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_2", "inbound_nodes": [["tf.compat.v1.squeeze", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat", "inbound_nodes": [[["tf.tile", 0, 0, {"axis": 3}], ["tf.expand_dims_1", 0, 0, {"axis": 3}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_1", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_1", "inbound_nodes": [["tf.expand_dims_2", 0, 0, {"multiples": {"class_name": "__tuple__", "items": [1, 1, 7, 1]}, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.gather_nd", "trainable": true, "dtype": "float32", "function": "compat.v1.gather_nd"}, "name": "tf.compat.v1.gather_nd", "inbound_nodes": [["tf.compat.v1.squeeze", 0, 0, {"indices": ["tf.concat", 0, 0], "name": null, "batch_dims": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_1", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_1", "inbound_nodes": [["tf.compat.v1.gather_nd", 0, 0, {"y": ["tf.tile_1", 0, 0]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_1", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_1", "inbound_nodes": [[["tf.tile_1", 0, 0, {"axis": -1}], ["tf.math.subtract_1", 0, 0, {"axis": -1}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv0_conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv0_conv0", "inbound_nodes": [[["tf.concat_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv0_bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv0_bn0", "inbound_nodes": [[["ParticleNet_EdgeConv0_conv0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv0_act0", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv0_act0", "inbound_nodes": [[["ParticleNet_EdgeConv0_bn0", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv0_conv1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv0_conv1", "inbound_nodes": [[["ParticleNet_EdgeConv0_act0", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv0_bn1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv0_bn1", "inbound_nodes": [[["ParticleNet_EdgeConv0_conv1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv0_act1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv0_act1", "inbound_nodes": [[["ParticleNet_EdgeConv0_bn1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_3", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_3", "inbound_nodes": [["tf.compat.v1.squeeze", 0, 0, {"axis": 2}]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv0_conv2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv0_conv2", "inbound_nodes": [[["ParticleNet_EdgeConv0_act1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv0_sc_conv", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv0_sc_conv", "inbound_nodes": [[["tf.expand_dims_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv0_bn2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv0_bn2", "inbound_nodes": [[["ParticleNet_EdgeConv0_conv2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv0_sc_bn", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv0_sc_bn", "inbound_nodes": [[["ParticleNet_EdgeConv0_sc_conv", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv0_act2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv0_act2", "inbound_nodes": [[["ParticleNet_EdgeConv0_bn2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.squeeze_1", "trainable": true, "dtype": "float32", "function": "compat.v1.squeeze"}, "name": "tf.compat.v1.squeeze_1", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_bn", 0, 0, {"axis": 2, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean", "inbound_nodes": [["ParticleNet_EdgeConv0_act2", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_1", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_1", "inbound_nodes": [["tf.compat.v1.squeeze_1", 0, 0, {"y": ["tf.math.reduce_mean", 0, 0], "name": null}]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv0_sc_act", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv0_sc_act", "inbound_nodes": [[["tf.__operators__.add_1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.shape_1", "trainable": true, "dtype": "float32", "function": "compat.v1.shape"}, "name": "tf.compat.v1.shape_1", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_act", 0, 0, {"name": null, "out_type": "int32"}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_2", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_2", "inbound_nodes": [["tf.compat.v1.shape_1", 0, 0, {"slice_spec": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.range_1", "trainable": true, "dtype": "float32", "function": "range"}, "name": "tf.range_1", "inbound_nodes": [["tf.__operators__.getitem_2", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_1", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_1", "inbound_nodes": [["tf.range_1", 0, 0, {"shape": {"class_name": "__tuple__", "items": [-1, 1, 1, 1]}}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_2", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_2", "inbound_nodes": [["tf.reshape_1", 0, 0, {"multiples": {"class_name": "__tuple__", "items": [1, 142, 7, 1]}, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_4", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_4", "inbound_nodes": [["tf.__operators__.getitem", 0, 0, {"axis": 3}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_5", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_5", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_act", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_2", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_2", "inbound_nodes": [[["tf.tile_2", 0, 0, {"axis": 3}], ["tf.expand_dims_4", 0, 0, {"axis": 3}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_3", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_3", "inbound_nodes": [["tf.expand_dims_5", 0, 0, {"multiples": {"class_name": "__tuple__", "items": [1, 1, 7, 1]}, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.gather_nd_1", "trainable": true, "dtype": "float32", "function": "compat.v1.gather_nd"}, "name": "tf.compat.v1.gather_nd_1", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_act", 0, 0, {"indices": ["tf.concat_2", 0, 0], "name": null, "batch_dims": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_2", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_2", "inbound_nodes": [["tf.compat.v1.gather_nd_1", 0, 0, {"y": ["tf.tile_3", 0, 0]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_3", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_3", "inbound_nodes": [[["tf.tile_3", 0, 0, {"axis": -1}], ["tf.math.subtract_2", 0, 0, {"axis": -1}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv1_conv0", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv1_conv0", "inbound_nodes": [[["tf.concat_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv1_bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv1_bn0", "inbound_nodes": [[["ParticleNet_EdgeConv1_conv0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv1_act0", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv1_act0", "inbound_nodes": [[["ParticleNet_EdgeConv1_bn0", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv1_conv1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv1_conv1", "inbound_nodes": [[["ParticleNet_EdgeConv1_act0", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv1_bn1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv1_bn1", "inbound_nodes": [[["ParticleNet_EdgeConv1_conv1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv1_act1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv1_act1", "inbound_nodes": [[["ParticleNet_EdgeConv1_bn1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_6", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_6", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_act", 0, 0, {"axis": 2}]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv1_conv2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv1_conv2", "inbound_nodes": [[["ParticleNet_EdgeConv1_act1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv1_sc_conv", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv1_sc_conv", "inbound_nodes": [[["tf.expand_dims_6", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv1_bn2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv1_bn2", "inbound_nodes": [[["ParticleNet_EdgeConv1_conv2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv1_sc_bn", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv1_sc_bn", "inbound_nodes": [[["ParticleNet_EdgeConv1_sc_conv", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv1_act2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv1_act2", "inbound_nodes": [[["ParticleNet_EdgeConv1_bn2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.squeeze_2", "trainable": true, "dtype": "float32", "function": "compat.v1.squeeze"}, "name": "tf.compat.v1.squeeze_2", "inbound_nodes": [["ParticleNet_EdgeConv1_sc_bn", 0, 0, {"axis": 2, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_1", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_1", "inbound_nodes": [["ParticleNet_EdgeConv1_act2", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_2", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_2", "inbound_nodes": [["tf.compat.v1.squeeze_2", 0, 0, {"y": ["tf.math.reduce_mean_1", 0, 0], "name": null}]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv1_sc_act", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv1_sc_act", "inbound_nodes": [[["tf.__operators__.add_2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_4", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_4", "inbound_nodes": [["ParticleNet_EdgeConv1_sc_act", 0, 0, {"y": ["tf.cast", 0, 0]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_2", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_2", "inbound_nodes": [["tf.math.multiply_4", 0, 0, {"axis": 1}]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["tf.math.reduce_mean_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["points", 0, 0], ["features", 0, 0], ["mask", 0, 0]], "output_layers": [["dense_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 142, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 142, 4]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 142, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 142, 2]}, {"class_name": "TensorShape", "items": [null, 142, 4]}, {"class_name": "TensorShape", "items": [null, 142, 1]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "ParticleNet_Lite_Static", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "mask"}, "name": "mask", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.not_equal", "trainable": true, "dtype": "float32", "function": "math.not_equal"}, "name": "tf.math.not_equal", "inbound_nodes": [["mask", 0, 0, {"y": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast", "inbound_nodes": [["tf.math.not_equal", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.equal", "trainable": true, "dtype": "float32", "function": "math.equal"}, "name": "tf.math.equal", "inbound_nodes": [["tf.cast", 0, 0, {"y": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.cast_1", "trainable": true, "dtype": "float32", "function": "cast"}, "name": "tf.cast_1", "inbound_nodes": [["tf.math.equal", 0, 0, {"dtype": "float32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply", "inbound_nodes": [["_CONSTANT_VALUE", -1, 999.0, {"y": ["tf.cast_1", 0, 0]}]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "points"}, "name": "points", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.add", "trainable": true, "dtype": "float32", "function": "math.add"}, "name": "tf.math.add", "inbound_nodes": [["tf.math.multiply", 0, 0, {"y": ["points", 0, 0], "name": null}]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "features"}, "name": "features", "inbound_nodes": []}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.transpose", "trainable": true, "dtype": "float32", "function": "compat.v1.transpose"}, "name": "tf.compat.v1.transpose", "inbound_nodes": [["tf.math.add", 0, 0, {"perm": {"class_name": "__tuple__", "items": [0, 2, 1]}, "name": "transpose", "conjugate": false}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims", "inbound_nodes": [["features", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_1", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_1", "inbound_nodes": [["tf.math.add", 0, 0, {"y": ["tf.math.add", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.linalg.matmul", "trainable": true, "dtype": "float32", "function": "linalg.matmul"}, "name": "tf.linalg.matmul", "inbound_nodes": [["tf.math.add", 0, 0, {"b": ["tf.compat.v1.transpose", 0, 0]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_2", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_2", "inbound_nodes": [["tf.math.add", 0, 0, {"y": ["tf.math.add", 0, 0], "name": null}]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_fts_bn", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_fts_bn", "inbound_nodes": [[["tf.expand_dims", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum", "inbound_nodes": [["tf.math.multiply_1", 0, 0, {"axis": 2, "keepdims": true}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_3", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_3", "inbound_nodes": [["_CONSTANT_VALUE", -1, 2.0, {"y": ["tf.linalg.matmul", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_sum_1", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}, "name": "tf.math.reduce_sum_1", "inbound_nodes": [["tf.math.multiply_2", 0, 0, {"axis": 2, "keepdims": true}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.squeeze", "trainable": true, "dtype": "float32", "function": "compat.v1.squeeze"}, "name": "tf.compat.v1.squeeze", "inbound_nodes": [["ParticleNet_fts_bn", 0, 0, {"axis": 2, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract", "inbound_nodes": [["tf.math.reduce_sum", 0, 0, {"y": ["tf.math.multiply_3", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.transpose_1", "trainable": true, "dtype": "float32", "function": "compat.v1.transpose"}, "name": "tf.compat.v1.transpose_1", "inbound_nodes": [["tf.math.reduce_sum_1", 0, 0, {"perm": {"class_name": "__tuple__", "items": [0, 2, 1]}, "name": "transpose", "conjugate": false}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.shape", "trainable": true, "dtype": "float32", "function": "compat.v1.shape"}, "name": "tf.compat.v1.shape", "inbound_nodes": [["tf.compat.v1.squeeze", 0, 0, {"name": null, "out_type": "int32"}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add", "inbound_nodes": [["tf.math.subtract", 0, 0, {"y": ["tf.compat.v1.transpose_1", 0, 0], "name": null}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_1", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_1", "inbound_nodes": [["tf.compat.v1.shape", 0, 0, {"slice_spec": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.negative", "trainable": true, "dtype": "float32", "function": "math.negative"}, "name": "tf.math.negative", "inbound_nodes": [["tf.__operators__.add", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.range", "trainable": true, "dtype": "float32", "function": "range"}, "name": "tf.range", "inbound_nodes": [["tf.__operators__.getitem_1", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.top_k", "trainable": true, "dtype": "float32", "function": "math.top_k"}, "name": "tf.math.top_k", "inbound_nodes": [["tf.math.negative", 0, 0, {"k": 8}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape", "inbound_nodes": [["tf.range", 0, 0, {"shape": {"class_name": "__tuple__", "items": [-1, 1, 1, 1]}}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem", "inbound_nodes": [["tf.math.top_k", 0, 1, {"slice_spec": {"class_name": "__tuple__", "items": [{"start": null, "stop": null, "step": null}, {"start": null, "stop": null, "step": null}, {"start": 1, "stop": null, "step": null}]}}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile", "inbound_nodes": [["tf.reshape", 0, 0, {"multiples": {"class_name": "__tuple__", "items": [1, 142, 7, 1]}, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_1", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_1", "inbound_nodes": [["tf.__operators__.getitem", 0, 0, {"axis": 3}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_2", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_2", "inbound_nodes": [["tf.compat.v1.squeeze", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat", "inbound_nodes": [[["tf.tile", 0, 0, {"axis": 3}], ["tf.expand_dims_1", 0, 0, {"axis": 3}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_1", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_1", "inbound_nodes": [["tf.expand_dims_2", 0, 0, {"multiples": {"class_name": "__tuple__", "items": [1, 1, 7, 1]}, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.gather_nd", "trainable": true, "dtype": "float32", "function": "compat.v1.gather_nd"}, "name": "tf.compat.v1.gather_nd", "inbound_nodes": [["tf.compat.v1.squeeze", 0, 0, {"indices": ["tf.concat", 0, 0], "name": null, "batch_dims": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_1", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_1", "inbound_nodes": [["tf.compat.v1.gather_nd", 0, 0, {"y": ["tf.tile_1", 0, 0]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_1", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_1", "inbound_nodes": [[["tf.tile_1", 0, 0, {"axis": -1}], ["tf.math.subtract_1", 0, 0, {"axis": -1}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv0_conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv0_conv0", "inbound_nodes": [[["tf.concat_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv0_bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv0_bn0", "inbound_nodes": [[["ParticleNet_EdgeConv0_conv0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv0_act0", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv0_act0", "inbound_nodes": [[["ParticleNet_EdgeConv0_bn0", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv0_conv1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv0_conv1", "inbound_nodes": [[["ParticleNet_EdgeConv0_act0", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv0_bn1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv0_bn1", "inbound_nodes": [[["ParticleNet_EdgeConv0_conv1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv0_act1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv0_act1", "inbound_nodes": [[["ParticleNet_EdgeConv0_bn1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_3", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_3", "inbound_nodes": [["tf.compat.v1.squeeze", 0, 0, {"axis": 2}]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv0_conv2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv0_conv2", "inbound_nodes": [[["ParticleNet_EdgeConv0_act1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv0_sc_conv", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv0_sc_conv", "inbound_nodes": [[["tf.expand_dims_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv0_bn2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv0_bn2", "inbound_nodes": [[["ParticleNet_EdgeConv0_conv2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv0_sc_bn", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv0_sc_bn", "inbound_nodes": [[["ParticleNet_EdgeConv0_sc_conv", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv0_act2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv0_act2", "inbound_nodes": [[["ParticleNet_EdgeConv0_bn2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.squeeze_1", "trainable": true, "dtype": "float32", "function": "compat.v1.squeeze"}, "name": "tf.compat.v1.squeeze_1", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_bn", 0, 0, {"axis": 2, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean", "inbound_nodes": [["ParticleNet_EdgeConv0_act2", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_1", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_1", "inbound_nodes": [["tf.compat.v1.squeeze_1", 0, 0, {"y": ["tf.math.reduce_mean", 0, 0], "name": null}]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv0_sc_act", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv0_sc_act", "inbound_nodes": [[["tf.__operators__.add_1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.shape_1", "trainable": true, "dtype": "float32", "function": "compat.v1.shape"}, "name": "tf.compat.v1.shape_1", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_act", 0, 0, {"name": null, "out_type": "int32"}]]}, {"class_name": "SlicingOpLambda", "config": {"name": "tf.__operators__.getitem_2", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}, "name": "tf.__operators__.getitem_2", "inbound_nodes": [["tf.compat.v1.shape_1", 0, 0, {"slice_spec": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.range_1", "trainable": true, "dtype": "float32", "function": "range"}, "name": "tf.range_1", "inbound_nodes": [["tf.__operators__.getitem_2", 0, 0, {}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.reshape_1", "trainable": true, "dtype": "float32", "function": "reshape"}, "name": "tf.reshape_1", "inbound_nodes": [["tf.range_1", 0, 0, {"shape": {"class_name": "__tuple__", "items": [-1, 1, 1, 1]}}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_2", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_2", "inbound_nodes": [["tf.reshape_1", 0, 0, {"multiples": {"class_name": "__tuple__", "items": [1, 142, 7, 1]}, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_4", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_4", "inbound_nodes": [["tf.__operators__.getitem", 0, 0, {"axis": 3}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_5", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_5", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_act", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_2", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_2", "inbound_nodes": [[["tf.tile_2", 0, 0, {"axis": 3}], ["tf.expand_dims_4", 0, 0, {"axis": 3}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.tile_3", "trainable": true, "dtype": "float32", "function": "tile"}, "name": "tf.tile_3", "inbound_nodes": [["tf.expand_dims_5", 0, 0, {"multiples": {"class_name": "__tuple__", "items": [1, 1, 7, 1]}, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.gather_nd_1", "trainable": true, "dtype": "float32", "function": "compat.v1.gather_nd"}, "name": "tf.compat.v1.gather_nd_1", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_act", 0, 0, {"indices": ["tf.concat_2", 0, 0], "name": null, "batch_dims": 0}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_2", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_2", "inbound_nodes": [["tf.compat.v1.gather_nd_1", 0, 0, {"y": ["tf.tile_3", 0, 0]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.concat_3", "trainable": true, "dtype": "float32", "function": "concat"}, "name": "tf.concat_3", "inbound_nodes": [[["tf.tile_3", 0, 0, {"axis": -1}], ["tf.math.subtract_2", 0, 0, {"axis": -1}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv1_conv0", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv1_conv0", "inbound_nodes": [[["tf.concat_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv1_bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv1_bn0", "inbound_nodes": [[["ParticleNet_EdgeConv1_conv0", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv1_act0", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv1_act0", "inbound_nodes": [[["ParticleNet_EdgeConv1_bn0", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv1_conv1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv1_conv1", "inbound_nodes": [[["ParticleNet_EdgeConv1_act0", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv1_bn1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv1_bn1", "inbound_nodes": [[["ParticleNet_EdgeConv1_conv1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv1_act1", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv1_act1", "inbound_nodes": [[["ParticleNet_EdgeConv1_bn1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.expand_dims_6", "trainable": true, "dtype": "float32", "function": "expand_dims"}, "name": "tf.expand_dims_6", "inbound_nodes": [["ParticleNet_EdgeConv0_sc_act", 0, 0, {"axis": 2}]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv1_conv2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv1_conv2", "inbound_nodes": [[["ParticleNet_EdgeConv1_act1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "ParticleNet_EdgeConv1_sc_conv", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ParticleNet_EdgeConv1_sc_conv", "inbound_nodes": [[["tf.expand_dims_6", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv1_bn2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv1_bn2", "inbound_nodes": [[["ParticleNet_EdgeConv1_conv2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "ParticleNet_EdgeConv1_sc_bn", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "ParticleNet_EdgeConv1_sc_bn", "inbound_nodes": [[["ParticleNet_EdgeConv1_sc_conv", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv1_act2", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv1_act2", "inbound_nodes": [[["ParticleNet_EdgeConv1_bn2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.compat.v1.squeeze_2", "trainable": true, "dtype": "float32", "function": "compat.v1.squeeze"}, "name": "tf.compat.v1.squeeze_2", "inbound_nodes": [["ParticleNet_EdgeConv1_sc_bn", 0, 0, {"axis": 2, "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_1", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_1", "inbound_nodes": [["ParticleNet_EdgeConv1_act2", 0, 0, {"axis": 2}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_2", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_2", "inbound_nodes": [["tf.compat.v1.squeeze_2", 0, 0, {"y": ["tf.math.reduce_mean_1", 0, 0], "name": null}]]}, {"class_name": "Activation", "config": {"name": "ParticleNet_EdgeConv1_sc_act", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "ParticleNet_EdgeConv1_sc_act", "inbound_nodes": [[["tf.__operators__.add_2", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply_4", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply_4", "inbound_nodes": [["ParticleNet_EdgeConv1_sc_act", 0, 0, {"y": ["tf.cast", 0, 0]}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_2", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_2", "inbound_nodes": [["tf.math.multiply_4", 0, 0, {"axis": 1}]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["tf.math.reduce_mean_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["points", 0, 0], ["features", 0, 0], ["mask", 0, 0]], "output_layers": [["dense_1", 0, 0]]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}, {"class_name": "AUC", "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "mask", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "mask"}}
?
]	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.not_equal", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.not_equal", "trainable": true, "dtype": "float32", "function": "math.not_equal"}}
?
^	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.cast", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast", "trainable": true, "dtype": "float32", "function": "cast"}}
?
_	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.equal", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.equal", "trainable": true, "dtype": "float32", "function": "math.equal"}}
?
`	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.cast_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.cast_1", "trainable": true, "dtype": "float32", "function": "cast"}}
?
a	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.multiply", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "points", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 2]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "points"}}
?
b	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.add", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.add", "trainable": true, "dtype": "float32", "function": "math.add"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "features", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 4]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 142, 4]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "features"}}
?
c	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.compat.v1.transpose", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.transpose", "trainable": true, "dtype": "float32", "function": "compat.v1.transpose"}}
?
d	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?
e	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.multiply_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply_1", "trainable": true, "dtype": "float32", "function": "math.multiply"}}
?
f	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.linalg.matmul", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.linalg.matmul", "trainable": true, "dtype": "float32", "function": "linalg.matmul"}}
?
g	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.multiply_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply_2", "trainable": true, "dtype": "float32", "function": "math.multiply"}}
?	
haxis
	igamma
jbeta
kmoving_mean
lmoving_variance
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "ParticleNet_fts_bn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_fts_bn", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 1, 4]}}
?
q	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.reduce_sum", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_sum", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}}
?
r	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.multiply_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply_3", "trainable": true, "dtype": "float32", "function": "math.multiply"}}
?
s	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.reduce_sum_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_sum_1", "trainable": true, "dtype": "float32", "function": "math.reduce_sum"}}
?
t	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.compat.v1.squeeze", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.squeeze", "trainable": true, "dtype": "float32", "function": "compat.v1.squeeze"}}
?
u	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.subtract", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.subtract", "trainable": true, "dtype": "float32", "function": "math.subtract"}}
?
v	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.compat.v1.transpose_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.transpose_1", "trainable": true, "dtype": "float32", "function": "compat.v1.transpose"}}
?
w	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.compat.v1.shape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.shape", "trainable": true, "dtype": "float32", "function": "compat.v1.shape"}}
?
x	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.__operators__.add", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.add", "trainable": true, "dtype": "float32", "function": "__operators__.add"}}
?
y	keras_api"?
_tf_keras_layer?{"class_name": "SlicingOpLambda", "name": "tf.__operators__.getitem_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.getitem_1", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}}
?
z	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.negative", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.negative", "trainable": true, "dtype": "float32", "function": "math.negative"}}
?
{	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.range", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.range", "trainable": true, "dtype": "float32", "function": "range"}}
?
|	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.top_k", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.top_k", "trainable": true, "dtype": "float32", "function": "math.top_k"}}
?
}	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.reshape", "trainable": true, "dtype": "float32", "function": "reshape"}}
?
~	keras_api"?
_tf_keras_layer?{"class_name": "SlicingOpLambda", "name": "tf.__operators__.getitem", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.getitem", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}}
?
	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.tile", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.tile", "trainable": true, "dtype": "float32", "function": "tile"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims_1", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims_2", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.concat", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.concat", "trainable": true, "dtype": "float32", "function": "concat"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.tile_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.tile_1", "trainable": true, "dtype": "float32", "function": "tile"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.compat.v1.gather_nd", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.gather_nd", "trainable": true, "dtype": "float32", "function": "compat.v1.gather_nd"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.subtract_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.subtract_1", "trainable": true, "dtype": "float32", "function": "math.subtract"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.concat_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.concat_1", "trainable": true, "dtype": "float32", "function": "concat"}}
?

?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "ParticleNet_EdgeConv0_conv0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 8]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "ParticleNet_EdgeConv0_bn0", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 32]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "ParticleNet_EdgeConv0_act0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_act0", "trainable": true, "dtype": "float32", "activation": "relu"}}
?

?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "ParticleNet_EdgeConv0_conv1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_conv1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 32]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "ParticleNet_EdgeConv0_bn1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_bn1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 32]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "ParticleNet_EdgeConv0_act1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_act1", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims_3", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?

?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "ParticleNet_EdgeConv0_conv2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_conv2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 32]}}
?

?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "ParticleNet_EdgeConv0_sc_conv", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_sc_conv", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 4}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 1, 4]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "ParticleNet_EdgeConv0_bn2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_bn2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 32]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "ParticleNet_EdgeConv0_sc_bn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_sc_bn", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 1, 32]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "ParticleNet_EdgeConv0_act2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_act2", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.compat.v1.squeeze_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.squeeze_1", "trainable": true, "dtype": "float32", "function": "compat.v1.squeeze"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.reduce_mean", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_mean", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.__operators__.add_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.add_1", "trainable": true, "dtype": "float32", "function": "__operators__.add"}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "ParticleNet_EdgeConv0_sc_act", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv0_sc_act", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.compat.v1.shape_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.shape_1", "trainable": true, "dtype": "float32", "function": "compat.v1.shape"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "SlicingOpLambda", "name": "tf.__operators__.getitem_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.getitem_2", "trainable": true, "dtype": "float32", "function": "__operators__.getitem"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.range_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.range_1", "trainable": true, "dtype": "float32", "function": "range"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.reshape_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.reshape_1", "trainable": true, "dtype": "float32", "function": "reshape"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.tile_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.tile_2", "trainable": true, "dtype": "float32", "function": "tile"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims_4", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims_5", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.concat_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.concat_2", "trainable": true, "dtype": "float32", "function": "concat"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.tile_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.tile_3", "trainable": true, "dtype": "float32", "function": "tile"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.compat.v1.gather_nd_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.gather_nd_1", "trainable": true, "dtype": "float32", "function": "compat.v1.gather_nd"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.subtract_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.subtract_2", "trainable": true, "dtype": "float32", "function": "math.subtract"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.concat_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.concat_3", "trainable": true, "dtype": "float32", "function": "concat"}}
?

?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "ParticleNet_EdgeConv1_conv0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_conv0", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 64]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "ParticleNet_EdgeConv1_bn0", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_bn0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 64]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "ParticleNet_EdgeConv1_act0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_act0", "trainable": true, "dtype": "float32", "activation": "relu"}}
?

?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "ParticleNet_EdgeConv1_conv1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_conv1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 64]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "ParticleNet_EdgeConv1_bn1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_bn1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 64]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "ParticleNet_EdgeConv1_act1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_act1", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.expand_dims_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.expand_dims_6", "trainable": true, "dtype": "float32", "function": "expand_dims"}}
?

?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "ParticleNet_EdgeConv1_conv2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_conv2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 64]}}
?

?kernel
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "ParticleNet_EdgeConv1_sc_conv", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_sc_conv", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [1, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 1, 32]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "ParticleNet_EdgeConv1_bn2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_bn2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 7, 64]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "ParticleNet_EdgeConv1_sc_bn", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_sc_bn", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 142, 1, 64]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "ParticleNet_EdgeConv1_act2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_act2", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.compat.v1.squeeze_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.compat.v1.squeeze_2", "trainable": true, "dtype": "float32", "function": "compat.v1.squeeze"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.reduce_mean_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_mean_1", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.__operators__.add_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.__operators__.add_2", "trainable": true, "dtype": "float32", "function": "__operators__.add"}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Activation", "name": "ParticleNet_EdgeConv1_sc_act", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "ParticleNet_EdgeConv1_sc_act", "trainable": true, "dtype": "float32", "activation": "relu"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.multiply_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.multiply_4", "trainable": true, "dtype": "float32", "function": "math.multiply"}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "TFOpLambda", "name": "tf.math.reduce_mean_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.reduce_mean_2", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
?beta_1
?beta_2

?decay
?learning_rate
	?iterim?jm?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?iv?jv?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
?
i0
j1
k2
l3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47"
trackable_list_wrapper
?
i0
j1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
X	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
Ytrainable_variables
Zregularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
&:$2ParticleNet_fts_bn/gamma
%:#2ParticleNet_fts_bn/beta
.:, (2ParticleNet_fts_bn/moving_mean
2:0 (2"ParticleNet_fts_bn/moving_variance
<
i0
j1
k2
l3"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
m	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
ntrainable_variables
oregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
<:: 2"ParticleNet_EdgeConv0_conv0/kernel
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
-:+ 2ParticleNet_EdgeConv0_bn0/gamma
,:* 2ParticleNet_EdgeConv0_bn0/beta
5:3  (2%ParticleNet_EdgeConv0_bn0/moving_mean
9:7  (2)ParticleNet_EdgeConv0_bn0/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
<::  2"ParticleNet_EdgeConv0_conv1/kernel
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
-:+ 2ParticleNet_EdgeConv0_bn1/gamma
,:* 2ParticleNet_EdgeConv0_bn1/beta
5:3  (2%ParticleNet_EdgeConv0_bn1/moving_mean
9:7  (2)ParticleNet_EdgeConv0_bn1/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
<::  2"ParticleNet_EdgeConv0_conv2/kernel
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
>:< 2$ParticleNet_EdgeConv0_sc_conv/kernel
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
-:+ 2ParticleNet_EdgeConv0_bn2/gamma
,:* 2ParticleNet_EdgeConv0_bn2/beta
5:3  (2%ParticleNet_EdgeConv0_bn2/moving_mean
9:7  (2)ParticleNet_EdgeConv0_bn2/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
/:- 2!ParticleNet_EdgeConv0_sc_bn/gamma
.:, 2 ParticleNet_EdgeConv0_sc_bn/beta
7:5  (2'ParticleNet_EdgeConv0_sc_bn/moving_mean
;:9  (2+ParticleNet_EdgeConv0_sc_bn/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
<::@@2"ParticleNet_EdgeConv1_conv0/kernel
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
-:+@2ParticleNet_EdgeConv1_bn0/gamma
,:*@2ParticleNet_EdgeConv1_bn0/beta
5:3@ (2%ParticleNet_EdgeConv1_bn0/moving_mean
9:7@ (2)ParticleNet_EdgeConv1_bn0/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
<::@@2"ParticleNet_EdgeConv1_conv1/kernel
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
-:+@2ParticleNet_EdgeConv1_bn1/gamma
,:*@2ParticleNet_EdgeConv1_bn1/beta
5:3@ (2%ParticleNet_EdgeConv1_bn1/moving_mean
9:7@ (2)ParticleNet_EdgeConv1_bn1/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
<::@@2"ParticleNet_EdgeConv1_conv2/kernel
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
>:< @2$ParticleNet_EdgeConv1_sc_conv/kernel
(
?0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
-:+@2ParticleNet_EdgeConv1_bn2/gamma
,:*@2ParticleNet_EdgeConv1_bn2/beta
5:3@ (2%ParticleNet_EdgeConv1_bn2/moving_mean
9:7@ (2)ParticleNet_EdgeConv1_bn2/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
/:-@2!ParticleNet_EdgeConv1_sc_bn/gamma
.:,@2 ParticleNet_EdgeConv1_sc_bn/beta
7:5@ (2'ParticleNet_EdgeConv1_sc_bn/moving_mean
;:9@ (2+ParticleNet_EdgeConv1_sc_bn/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
:	@?2dense/kernel
:?2
dense/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_1/kernel
:2dense_1/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?	variables
?layer_metrics
?layers
?non_trainable_variables
 ?layer_regularization_losses
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_dict_wrapper
?
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
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39
)40
*41
+42
,43
-44
.45
/46
047
148
249
350
451
552
653
754
855
956
:57
;58
<59
=60
>61
?62
@63
A64
B65
C66
D67
E68
F69
G70
H71
I72
J73
K74
L75
M76
N77
O78
P79
Q80
R81
S82
T83
U84
V85"
trackable_list_wrapper
?
k0
l1
?2
?3
?4
?5
?6
?7
?8
?9
?10
?11
?12
?13
?14
?15
?16
?17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
k0
l1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
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
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
?"
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"?!
_tf_keras_metric?!{"class_name": "AUC", "name": "auc", "dtype": "float32", "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
+:)2Adam/ParticleNet_fts_bn/gamma/m
*:(2Adam/ParticleNet_fts_bn/beta/m
A:? 2)Adam/ParticleNet_EdgeConv0_conv0/kernel/m
2:0 2&Adam/ParticleNet_EdgeConv0_bn0/gamma/m
1:/ 2%Adam/ParticleNet_EdgeConv0_bn0/beta/m
A:?  2)Adam/ParticleNet_EdgeConv0_conv1/kernel/m
2:0 2&Adam/ParticleNet_EdgeConv0_bn1/gamma/m
1:/ 2%Adam/ParticleNet_EdgeConv0_bn1/beta/m
A:?  2)Adam/ParticleNet_EdgeConv0_conv2/kernel/m
C:A 2+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/m
2:0 2&Adam/ParticleNet_EdgeConv0_bn2/gamma/m
1:/ 2%Adam/ParticleNet_EdgeConv0_bn2/beta/m
4:2 2(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/m
3:1 2'Adam/ParticleNet_EdgeConv0_sc_bn/beta/m
A:?@@2)Adam/ParticleNet_EdgeConv1_conv0/kernel/m
2:0@2&Adam/ParticleNet_EdgeConv1_bn0/gamma/m
1:/@2%Adam/ParticleNet_EdgeConv1_bn0/beta/m
A:?@@2)Adam/ParticleNet_EdgeConv1_conv1/kernel/m
2:0@2&Adam/ParticleNet_EdgeConv1_bn1/gamma/m
1:/@2%Adam/ParticleNet_EdgeConv1_bn1/beta/m
A:?@@2)Adam/ParticleNet_EdgeConv1_conv2/kernel/m
C:A @2+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/m
2:0@2&Adam/ParticleNet_EdgeConv1_bn2/gamma/m
1:/@2%Adam/ParticleNet_EdgeConv1_bn2/beta/m
4:2@2(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/m
3:1@2'Adam/ParticleNet_EdgeConv1_sc_bn/beta/m
$:"	@?2Adam/dense/kernel/m
:?2Adam/dense/bias/m
&:$	?2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
+:)2Adam/ParticleNet_fts_bn/gamma/v
*:(2Adam/ParticleNet_fts_bn/beta/v
A:? 2)Adam/ParticleNet_EdgeConv0_conv0/kernel/v
2:0 2&Adam/ParticleNet_EdgeConv0_bn0/gamma/v
1:/ 2%Adam/ParticleNet_EdgeConv0_bn0/beta/v
A:?  2)Adam/ParticleNet_EdgeConv0_conv1/kernel/v
2:0 2&Adam/ParticleNet_EdgeConv0_bn1/gamma/v
1:/ 2%Adam/ParticleNet_EdgeConv0_bn1/beta/v
A:?  2)Adam/ParticleNet_EdgeConv0_conv2/kernel/v
C:A 2+Adam/ParticleNet_EdgeConv0_sc_conv/kernel/v
2:0 2&Adam/ParticleNet_EdgeConv0_bn2/gamma/v
1:/ 2%Adam/ParticleNet_EdgeConv0_bn2/beta/v
4:2 2(Adam/ParticleNet_EdgeConv0_sc_bn/gamma/v
3:1 2'Adam/ParticleNet_EdgeConv0_sc_bn/beta/v
A:?@@2)Adam/ParticleNet_EdgeConv1_conv0/kernel/v
2:0@2&Adam/ParticleNet_EdgeConv1_bn0/gamma/v
1:/@2%Adam/ParticleNet_EdgeConv1_bn0/beta/v
A:?@@2)Adam/ParticleNet_EdgeConv1_conv1/kernel/v
2:0@2&Adam/ParticleNet_EdgeConv1_bn1/gamma/v
1:/@2%Adam/ParticleNet_EdgeConv1_bn1/beta/v
A:?@@2)Adam/ParticleNet_EdgeConv1_conv2/kernel/v
C:A @2+Adam/ParticleNet_EdgeConv1_sc_conv/kernel/v
2:0@2&Adam/ParticleNet_EdgeConv1_bn2/gamma/v
1:/@2%Adam/ParticleNet_EdgeConv1_bn2/beta/v
4:2@2(Adam/ParticleNet_EdgeConv1_sc_bn/gamma/v
3:1@2'Adam/ParticleNet_EdgeConv1_sc_bn/beta/v
$:"	@?2Adam/dense/kernel/v
:?2Adam/dense/bias/v
&:$	?2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
?2?
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_55845
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_55568
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_54478
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_54250?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
7__inference_ParticleNet_Lite_Static_layer_call_fn_55149
7__inference_ParticleNet_Lite_Static_layer_call_fn_54814
7__inference_ParticleNet_Lite_Static_layer_call_fn_56059
7__inference_ParticleNet_Lite_Static_layer_call_fn_55952?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_52212?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *}?z
x?u
%?"
points??????????
'?$
features??????????
#? 
mask??????????
?2?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56079
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56143
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56097
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56161?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
2__inference_ParticleNet_fts_bn_layer_call_fn_56187
2__inference_ParticleNet_fts_bn_layer_call_fn_56174
2__inference_ParticleNet_fts_bn_layer_call_fn_56123
2__inference_ParticleNet_fts_bn_layer_call_fn_56110?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
V__inference_ParticleNet_EdgeConv0_conv0_layer_call_and_return_conditional_losses_56194?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
;__inference_ParticleNet_EdgeConv0_conv0_layer_call_fn_56201?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56239
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56221
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56303
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56285?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56329
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56252
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56265
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56316?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
U__inference_ParticleNet_EdgeConv0_act0_layer_call_and_return_conditional_losses_56334?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
:__inference_ParticleNet_EdgeConv0_act0_layer_call_fn_56339?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
V__inference_ParticleNet_EdgeConv0_conv1_layer_call_and_return_conditional_losses_56346?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
;__inference_ParticleNet_EdgeConv0_conv1_layer_call_fn_56353?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56373
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56437
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56455
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56391?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56468
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56404
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56481
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56417?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
U__inference_ParticleNet_EdgeConv0_act1_layer_call_and_return_conditional_losses_56486?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
:__inference_ParticleNet_EdgeConv0_act1_layer_call_fn_56491?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
V__inference_ParticleNet_EdgeConv0_conv2_layer_call_and_return_conditional_losses_56498?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
;__inference_ParticleNet_EdgeConv0_conv2_layer_call_fn_56505?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
X__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_and_return_conditional_losses_56512?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
=__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_fn_56519?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56557
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56621
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56539
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56603?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56583
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56570
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56647
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56634?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56667
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56685
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56731
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56749?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56698
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56775
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56762
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56711?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
U__inference_ParticleNet_EdgeConv0_act2_layer_call_and_return_conditional_losses_56780?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
:__inference_ParticleNet_EdgeConv0_act2_layer_call_fn_56785?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
W__inference_ParticleNet_EdgeConv0_sc_act_layer_call_and_return_conditional_losses_56790?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
<__inference_ParticleNet_EdgeConv0_sc_act_layer_call_fn_56795?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
V__inference_ParticleNet_EdgeConv1_conv0_layer_call_and_return_conditional_losses_56802?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
;__inference_ParticleNet_EdgeConv1_conv0_layer_call_fn_56809?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56847
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56911
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56829
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56893?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56873
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56937
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56860
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56924?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
U__inference_ParticleNet_EdgeConv1_act0_layer_call_and_return_conditional_losses_56942?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
:__inference_ParticleNet_EdgeConv1_act0_layer_call_fn_56947?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
V__inference_ParticleNet_EdgeConv1_conv1_layer_call_and_return_conditional_losses_56954?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
;__inference_ParticleNet_EdgeConv1_conv1_layer_call_fn_56961?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_56999
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_57045
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_56981
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_57063?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57012
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57025
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57076
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57089?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
U__inference_ParticleNet_EdgeConv1_act1_layer_call_and_return_conditional_losses_57094?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
:__inference_ParticleNet_EdgeConv1_act1_layer_call_fn_57099?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
V__inference_ParticleNet_EdgeConv1_conv2_layer_call_and_return_conditional_losses_57106?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
;__inference_ParticleNet_EdgeConv1_conv2_layer_call_fn_57113?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
X__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_and_return_conditional_losses_57120?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
=__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_fn_57127?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57211
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57165
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57229
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57147?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57242
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57191
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57178
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57255?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57275
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57293
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57357
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57339?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57370
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57306
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57383
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57319?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
U__inference_ParticleNet_EdgeConv1_act2_layer_call_and_return_conditional_losses_57388?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
:__inference_ParticleNet_EdgeConv1_act2_layer_call_fn_57393?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
W__inference_ParticleNet_EdgeConv1_sc_act_layer_call_and_return_conditional_losses_57398?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
<__inference_ParticleNet_EdgeConv1_sc_act_layer_call_fn_57403?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_57414?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_57423?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dropout_layer_call_and_return_conditional_losses_57440
B__inference_dropout_layer_call_and_return_conditional_losses_57435?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dropout_layer_call_fn_57445
'__inference_dropout_layer_call_fn_57450?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_57461?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_57470?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_55266featuresmaskpoints"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
	J
Const
J	
Const_1?
U__inference_ParticleNet_EdgeConv0_act0_layer_call_and_return_conditional_losses_56334j8?5
.?+
)?&
inputs?????????? 
? ".?+
$?!
0?????????? 
? ?
:__inference_ParticleNet_EdgeConv0_act0_layer_call_fn_56339]8?5
.?+
)?&
inputs?????????? 
? "!??????????? ?
U__inference_ParticleNet_EdgeConv0_act1_layer_call_and_return_conditional_losses_56486j8?5
.?+
)?&
inputs?????????? 
? ".?+
$?!
0?????????? 
? ?
:__inference_ParticleNet_EdgeConv0_act1_layer_call_fn_56491]8?5
.?+
)?&
inputs?????????? 
? "!??????????? ?
U__inference_ParticleNet_EdgeConv0_act2_layer_call_and_return_conditional_losses_56780j8?5
.?+
)?&
inputs?????????? 
? ".?+
$?!
0?????????? 
? ?
:__inference_ParticleNet_EdgeConv0_act2_layer_call_fn_56785]8?5
.?+
)?&
inputs?????????? 
? "!??????????? ?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56221?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56239?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56285x????<?9
2?/
)?&
inputs?????????? 
p
? ".?+
$?!
0?????????? 
? ?
T__inference_ParticleNet_EdgeConv0_bn0_layer_call_and_return_conditional_losses_56303x????<?9
2?/
)?&
inputs?????????? 
p 
? ".?+
$?!
0?????????? 
? ?
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56252?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56265?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56316k????<?9
2?/
)?&
inputs?????????? 
p
? "!??????????? ?
9__inference_ParticleNet_EdgeConv0_bn0_layer_call_fn_56329k????<?9
2?/
)?&
inputs?????????? 
p 
? "!??????????? ?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56373x????<?9
2?/
)?&
inputs?????????? 
p
? ".?+
$?!
0?????????? 
? ?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56391x????<?9
2?/
)?&
inputs?????????? 
p 
? ".?+
$?!
0?????????? 
? ?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56437?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_ParticleNet_EdgeConv0_bn1_layer_call_and_return_conditional_losses_56455?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56404k????<?9
2?/
)?&
inputs?????????? 
p
? "!??????????? ?
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56417k????<?9
2?/
)?&
inputs?????????? 
p 
? "!??????????? ?
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56468?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
9__inference_ParticleNet_EdgeConv0_bn1_layer_call_fn_56481?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56539?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56557?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56603x????<?9
2?/
)?&
inputs?????????? 
p
? ".?+
$?!
0?????????? 
? ?
T__inference_ParticleNet_EdgeConv0_bn2_layer_call_and_return_conditional_losses_56621x????<?9
2?/
)?&
inputs?????????? 
p 
? ".?+
$?!
0?????????? 
? ?
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56570?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56583?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56634k????<?9
2?/
)?&
inputs?????????? 
p
? "!??????????? ?
9__inference_ParticleNet_EdgeConv0_bn2_layer_call_fn_56647k????<?9
2?/
)?&
inputs?????????? 
p 
? "!??????????? ?
V__inference_ParticleNet_EdgeConv0_conv0_layer_call_and_return_conditional_losses_56194n?8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????? 
? ?
;__inference_ParticleNet_EdgeConv0_conv0_layer_call_fn_56201a?8?5
.?+
)?&
inputs??????????
? "!??????????? ?
V__inference_ParticleNet_EdgeConv0_conv1_layer_call_and_return_conditional_losses_56346n?8?5
.?+
)?&
inputs?????????? 
? ".?+
$?!
0?????????? 
? ?
;__inference_ParticleNet_EdgeConv0_conv1_layer_call_fn_56353a?8?5
.?+
)?&
inputs?????????? 
? "!??????????? ?
V__inference_ParticleNet_EdgeConv0_conv2_layer_call_and_return_conditional_losses_56498n?8?5
.?+
)?&
inputs?????????? 
? ".?+
$?!
0?????????? 
? ?
;__inference_ParticleNet_EdgeConv0_conv2_layer_call_fn_56505a?8?5
.?+
)?&
inputs?????????? 
? "!??????????? ?
W__inference_ParticleNet_EdgeConv0_sc_act_layer_call_and_return_conditional_losses_56790b4?1
*?'
%?"
inputs?????????? 
? "*?'
 ?
0?????????? 
? ?
<__inference_ParticleNet_EdgeConv0_sc_act_layer_call_fn_56795U4?1
*?'
%?"
inputs?????????? 
? "??????????? ?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56667?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56685?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56731x????<?9
2?/
)?&
inputs?????????? 
p
? ".?+
$?!
0?????????? 
? ?
V__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_and_return_conditional_losses_56749x????<?9
2?/
)?&
inputs?????????? 
p 
? ".?+
$?!
0?????????? 
? ?
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56698?????M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56711?????M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56762k????<?9
2?/
)?&
inputs?????????? 
p
? "!??????????? ?
;__inference_ParticleNet_EdgeConv0_sc_bn_layer_call_fn_56775k????<?9
2?/
)?&
inputs?????????? 
p 
? "!??????????? ?
X__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_and_return_conditional_losses_56512n?8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????? 
? ?
=__inference_ParticleNet_EdgeConv0_sc_conv_layer_call_fn_56519a?8?5
.?+
)?&
inputs??????????
? "!??????????? ?
U__inference_ParticleNet_EdgeConv1_act0_layer_call_and_return_conditional_losses_56942j8?5
.?+
)?&
inputs??????????@
? ".?+
$?!
0??????????@
? ?
:__inference_ParticleNet_EdgeConv1_act0_layer_call_fn_56947]8?5
.?+
)?&
inputs??????????@
? "!???????????@?
U__inference_ParticleNet_EdgeConv1_act1_layer_call_and_return_conditional_losses_57094j8?5
.?+
)?&
inputs??????????@
? ".?+
$?!
0??????????@
? ?
:__inference_ParticleNet_EdgeConv1_act1_layer_call_fn_57099]8?5
.?+
)?&
inputs??????????@
? "!???????????@?
U__inference_ParticleNet_EdgeConv1_act2_layer_call_and_return_conditional_losses_57388j8?5
.?+
)?&
inputs??????????@
? ".?+
$?!
0??????????@
? ?
:__inference_ParticleNet_EdgeConv1_act2_layer_call_fn_57393]8?5
.?+
)?&
inputs??????????@
? "!???????????@?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56829?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56847?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56893x????<?9
2?/
)?&
inputs??????????@
p
? ".?+
$?!
0??????????@
? ?
T__inference_ParticleNet_EdgeConv1_bn0_layer_call_and_return_conditional_losses_56911x????<?9
2?/
)?&
inputs??????????@
p 
? ".?+
$?!
0??????????@
? ?
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56860?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56873?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56924k????<?9
2?/
)?&
inputs??????????@
p
? "!???????????@?
9__inference_ParticleNet_EdgeConv1_bn0_layer_call_fn_56937k????<?9
2?/
)?&
inputs??????????@
p 
? "!???????????@?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_56981?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_56999?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_57045x????<?9
2?/
)?&
inputs??????????@
p
? ".?+
$?!
0??????????@
? ?
T__inference_ParticleNet_EdgeConv1_bn1_layer_call_and_return_conditional_losses_57063x????<?9
2?/
)?&
inputs??????????@
p 
? ".?+
$?!
0??????????@
? ?
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57012?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57025?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57076k????<?9
2?/
)?&
inputs??????????@
p
? "!???????????@?
9__inference_ParticleNet_EdgeConv1_bn1_layer_call_fn_57089k????<?9
2?/
)?&
inputs??????????@
p 
? "!???????????@?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57147x????<?9
2?/
)?&
inputs??????????@
p
? ".?+
$?!
0??????????@
? ?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57165x????<?9
2?/
)?&
inputs??????????@
p 
? ".?+
$?!
0??????????@
? ?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57211?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
T__inference_ParticleNet_EdgeConv1_bn2_layer_call_and_return_conditional_losses_57229?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57178k????<?9
2?/
)?&
inputs??????????@
p
? "!???????????@?
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57191k????<?9
2?/
)?&
inputs??????????@
p 
? "!???????????@?
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57242?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
9__inference_ParticleNet_EdgeConv1_bn2_layer_call_fn_57255?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
V__inference_ParticleNet_EdgeConv1_conv0_layer_call_and_return_conditional_losses_56802n?8?5
.?+
)?&
inputs??????????@
? ".?+
$?!
0??????????@
? ?
;__inference_ParticleNet_EdgeConv1_conv0_layer_call_fn_56809a?8?5
.?+
)?&
inputs??????????@
? "!???????????@?
V__inference_ParticleNet_EdgeConv1_conv1_layer_call_and_return_conditional_losses_56954n?8?5
.?+
)?&
inputs??????????@
? ".?+
$?!
0??????????@
? ?
;__inference_ParticleNet_EdgeConv1_conv1_layer_call_fn_56961a?8?5
.?+
)?&
inputs??????????@
? "!???????????@?
V__inference_ParticleNet_EdgeConv1_conv2_layer_call_and_return_conditional_losses_57106n?8?5
.?+
)?&
inputs??????????@
? ".?+
$?!
0??????????@
? ?
;__inference_ParticleNet_EdgeConv1_conv2_layer_call_fn_57113a?8?5
.?+
)?&
inputs??????????@
? "!???????????@?
W__inference_ParticleNet_EdgeConv1_sc_act_layer_call_and_return_conditional_losses_57398b4?1
*?'
%?"
inputs??????????@
? "*?'
 ?
0??????????@
? ?
<__inference_ParticleNet_EdgeConv1_sc_act_layer_call_fn_57403U4?1
*?'
%?"
inputs??????????@
? "???????????@?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57275?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57293?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57339x????<?9
2?/
)?&
inputs??????????@
p
? ".?+
$?!
0??????????@
? ?
V__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_and_return_conditional_losses_57357x????<?9
2?/
)?&
inputs??????????@
p 
? ".?+
$?!
0??????????@
? ?
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57306?????M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57319?????M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57370k????<?9
2?/
)?&
inputs??????????@
p
? "!???????????@?
;__inference_ParticleNet_EdgeConv1_sc_bn_layer_call_fn_57383k????<?9
2?/
)?&
inputs??????????@
p 
? "!???????????@?
X__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_and_return_conditional_losses_57120n?8?5
.?+
)?&
inputs?????????? 
? ".?+
$?!
0??????????@
? ?
=__inference_ParticleNet_EdgeConv1_sc_conv_layer_call_fn_57127a?8?5
.?+
)?&
inputs?????????? 
? "!???????????@?
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_54250?`??ijkl???????????????????????????????????????????????
???
x?u
%?"
points??????????
'?$
features??????????
#? 
mask??????????
p

 
? "%?"
?
0?????????
? ?
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_54478?`??ijkl???????????????????????????????????????????????
???
x?u
%?"
points??????????
'?$
features??????????
#? 
mask??????????
p 

 
? "%?"
?
0?????????
? ?
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_55568?`??ijkl???????????????????????????????????????????????
???
~?{
'?$
inputs/0??????????
'?$
inputs/1??????????
'?$
inputs/2??????????
p

 
? "%?"
?
0?????????
? ?
R__inference_ParticleNet_Lite_Static_layer_call_and_return_conditional_losses_55845?`??ijkl???????????????????????????????????????????????
???
~?{
'?$
inputs/0??????????
'?$
inputs/1??????????
'?$
inputs/2??????????
p 

 
? "%?"
?
0?????????
? ?
7__inference_ParticleNet_Lite_Static_layer_call_fn_54814?`??ijkl???????????????????????????????????????????????
???
x?u
%?"
points??????????
'?$
features??????????
#? 
mask??????????
p

 
? "???????????
7__inference_ParticleNet_Lite_Static_layer_call_fn_55149?`??ijkl???????????????????????????????????????????????
???
x?u
%?"
points??????????
'?$
features??????????
#? 
mask??????????
p 

 
? "???????????
7__inference_ParticleNet_Lite_Static_layer_call_fn_55952?`??ijkl???????????????????????????????????????????????
???
~?{
'?$
inputs/0??????????
'?$
inputs/1??????????
'?$
inputs/2??????????
p

 
? "???????????
7__inference_ParticleNet_Lite_Static_layer_call_fn_56059?`??ijkl???????????????????????????????????????????????
???
~?{
'?$
inputs/0??????????
'?$
inputs/1??????????
'?$
inputs/2??????????
p 

 
? "???????????
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56079?ijklM?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56097?ijklM?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56143tijkl<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
M__inference_ParticleNet_fts_bn_layer_call_and_return_conditional_losses_56161tijkl<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
2__inference_ParticleNet_fts_bn_layer_call_fn_56110?ijklM?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
2__inference_ParticleNet_fts_bn_layer_call_fn_56123?ijklM?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
2__inference_ParticleNet_fts_bn_layer_call_fn_56174gijkl<?9
2?/
)?&
inputs??????????
p
? "!????????????
2__inference_ParticleNet_fts_bn_layer_call_fn_56187gijkl<?9
2?/
)?&
inputs??????????
p 
? "!????????????
 __inference__wrapped_model_52212?`??ijkl???????????????????????????????????????????????
}?z
x?u
%?"
points??????????
'?$
features??????????
#? 
mask??????????
? "1?.
,
dense_1!?
dense_1??????????
B__inference_dense_1_layer_call_and_return_conditional_losses_57461_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
'__inference_dense_1_layer_call_fn_57470R??0?-
&?#
!?
inputs??????????
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_57414_??/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? {
%__inference_dense_layer_call_fn_57423R??/?,
%?"
 ?
inputs?????????@
? "????????????
B__inference_dropout_layer_call_and_return_conditional_losses_57435^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_57440^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? |
'__inference_dropout_layer_call_fn_57445Q4?1
*?'
!?
inputs??????????
p
? "???????????|
'__inference_dropout_layer_call_fn_57450Q4?1
*?'
!?
inputs??????????
p 
? "????????????
#__inference_signature_wrapper_55266?`??ijkl???????????????????????????????????????????????
? 
???
3
features'?$
features??????????
+
mask#? 
mask??????????
/
points%?"
points??????????"1?.
,
dense_1!?
dense_1?????????