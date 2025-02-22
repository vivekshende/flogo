��
�)�)
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
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
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.02v1.10.0-rc1-19-g656e7a2b34��
t
XPlaceholder*$
shape:���������
*
dtype0*/
_output_shapes
:���������

\
YPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
�
,conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *
_class
loc:@conv/kernel*
dtype0*
_output_shapes
:
�
*conv/kernel/Initializer/random_uniform/minConst*
valueB
 *׳ݾ*
_class
loc:@conv/kernel*
dtype0*
_output_shapes
: 
�
*conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *׳�>*
_class
loc:@conv/kernel*
dtype0*
_output_shapes
: 
�
4conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform,conv/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv/kernel*
seed2 *
dtype0*&
_output_shapes
:
�
*conv/kernel/Initializer/random_uniform/subSub*conv/kernel/Initializer/random_uniform/max*conv/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@conv/kernel*
_output_shapes
: 
�
*conv/kernel/Initializer/random_uniform/mulMul4conv/kernel/Initializer/random_uniform/RandomUniform*conv/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@conv/kernel*&
_output_shapes
:
�
&conv/kernel/Initializer/random_uniformAdd*conv/kernel/Initializer/random_uniform/mul*conv/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*
_class
loc:@conv/kernel
�
conv/kernel
VariableV2*&
_output_shapes
:*
shared_name *
_class
loc:@conv/kernel*
	container *
shape:*
dtype0
�
conv/kernel/AssignAssignconv/kernel&conv/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*
_class
loc:@conv/kernel
z
conv/kernel/readIdentityconv/kernel*
T0*
_class
loc:@conv/kernel*&
_output_shapes
:
�
conv/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@conv/bias*
dtype0*
_output_shapes
:
�
	conv/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@conv/bias*
	container *
shape:
�
conv/bias/AssignAssign	conv/biasconv/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
:
h
conv/bias/readIdentity	conv/bias*
_output_shapes
:*
T0*
_class
loc:@conv/bias
c
conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
�
conv/Conv2DConv2DXconv/kernel/read*/
_output_shapes
:���������
*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
conv/BiasAddBiasAddconv/Conv2Dconv/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:���������

Y
	conv/ReluReluconv/BiasAdd*/
_output_shapes
:���������
*
T0
�
max_pooling2d/MaxPoolMaxPool	conv/Relu*/
_output_shapes
:���������*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
[

pool/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
r
poolReshapemax_pooling2d/MaxPool
pool/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
-fcon1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@fcon1/kernel*
dtype0*
_output_shapes
:
�
+fcon1/kernel/Initializer/random_uniform/minConst*
valueB
 *׳ݾ*
_class
loc:@fcon1/kernel*
dtype0*
_output_shapes
: 
�
+fcon1/kernel/Initializer/random_uniform/maxConst*
valueB
 *׳�>*
_class
loc:@fcon1/kernel*
dtype0*
_output_shapes
: 
�
5fcon1/kernel/Initializer/random_uniform/RandomUniformRandomUniform-fcon1/kernel/Initializer/random_uniform/shape*
_class
loc:@fcon1/kernel*
seed2 *
dtype0*
_output_shapes

:*

seed *
T0
�
+fcon1/kernel/Initializer/random_uniform/subSub+fcon1/kernel/Initializer/random_uniform/max+fcon1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@fcon1/kernel*
_output_shapes
: 
�
+fcon1/kernel/Initializer/random_uniform/mulMul5fcon1/kernel/Initializer/random_uniform/RandomUniform+fcon1/kernel/Initializer/random_uniform/sub*
_output_shapes

:*
T0*
_class
loc:@fcon1/kernel
�
'fcon1/kernel/Initializer/random_uniformAdd+fcon1/kernel/Initializer/random_uniform/mul+fcon1/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@fcon1/kernel*
_output_shapes

:
�
fcon1/kernel
VariableV2*
_class
loc:@fcon1/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
�
fcon1/kernel/AssignAssignfcon1/kernel'fcon1/kernel/Initializer/random_uniform*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@fcon1/kernel*
validate_shape(
u
fcon1/kernel/readIdentityfcon1/kernel*
_output_shapes

:*
T0*
_class
loc:@fcon1/kernel
�
fcon1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@fcon1/bias
�

fcon1/bias
VariableV2*
shared_name *
_class
loc:@fcon1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
fcon1/bias/AssignAssign
fcon1/biasfcon1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fcon1/bias*
validate_shape(*
_output_shapes
:
k
fcon1/bias/readIdentity
fcon1/bias*
T0*
_class
loc:@fcon1/bias*
_output_shapes
:
�
fcon1/MatMulMatMulpoolfcon1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
�
fcon1/BiasAddBiasAddfcon1/MatMulfcon1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
S

fcon1/TanhTanhfcon1/BiasAdd*
T0*'
_output_shapes
:���������
P
softmaxSoftmax
fcon1/Tanh*
T0*'
_output_shapes
:���������
l
'sparse_softmax_cross_entropy_loss/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
q
0sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeY*
T0*
out_type0*
_output_shapes
:
�
3sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogits
fcon1/TanhY*
T0*
Tlabels0*6
_output_shapes$
":���������:���������
�
Dsparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
�
Csparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
_output_shapes
: *
value	B : *
dtype0
�
Csparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
out_type0*
_output_shapes
:
�
Bsparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Z
Rsparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
�
%sparse_softmax_cross_entropy_loss/MulMul3sparse_softmax_cross_entropy_loss/xentropy/xentropy'sparse_softmax_cross_entropy_loss/ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*#
_output_shapes
:���������*
T0
�
)sparse_softmax_cross_entropy_loss/Const_1ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
�
%sparse_softmax_cross_entropy_loss/SumSum%sparse_softmax_cross_entropy_loss/Mul)sparse_softmax_cross_entropy_loss/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
5sparse_softmax_cross_entropy_loss/num_present/Equal/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
�
3sparse_softmax_cross_entropy_loss/num_present/EqualEqual'sparse_softmax_cross_entropy_loss/Const5sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
�
8sparse_softmax_cross_entropy_loss/num_present/zeros_likeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
�
=sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
valueB *
dtype0
�
=sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
7sparse_softmax_cross_entropy_loss/num_present/ones_likeFill=sparse_softmax_cross_entropy_loss/num_present/ones_like/Shape=sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
_output_shapes
: *
T0*

index_type0
�
4sparse_softmax_cross_entropy_loss/num_present/SelectSelect3sparse_softmax_cross_entropy_loss/num_present/Equal8sparse_softmax_cross_entropy_loss/num_present/zeros_like7sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
�
bsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
�
asparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
value	B : *
dtype0
�
asparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropyS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
�
`sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
�
psparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
�
Osparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropyS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successq^sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
�
Osparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successq^sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Isparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillOsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeOsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:���������
�
?sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMul4sparse_softmax_cross_entropy_loss/num_present/SelectIsparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:���������
�
3sparse_softmax_cross_entropy_loss/num_present/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
�
-sparse_softmax_cross_entropy_loss/num_presentSum?sparse_softmax_cross_entropy_loss/num_present/broadcast_weights3sparse_softmax_cross_entropy_loss/num_present/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
)sparse_softmax_cross_entropy_loss/Const_2ConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
�
'sparse_softmax_cross_entropy_loss/Sum_1Sum%sparse_softmax_cross_entropy_loss/Sum)sparse_softmax_cross_entropy_loss/Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
�
+sparse_softmax_cross_entropy_loss/Greater/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)sparse_softmax_cross_entropy_loss/GreaterGreater-sparse_softmax_cross_entropy_loss/num_present+sparse_softmax_cross_entropy_loss/Greater/y*
_output_shapes
: *
T0
�
)sparse_softmax_cross_entropy_loss/Equal/yConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
valueB
 *    *
dtype0
�
'sparse_softmax_cross_entropy_loss/EqualEqual-sparse_softmax_cross_entropy_loss/num_present)sparse_softmax_cross_entropy_loss/Equal/y*
_output_shapes
: *
T0
�
1sparse_softmax_cross_entropy_loss/ones_like/ShapeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
�
1sparse_softmax_cross_entropy_loss/ones_like/ConstConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
+sparse_softmax_cross_entropy_loss/ones_likeFill1sparse_softmax_cross_entropy_loss/ones_like/Shape1sparse_softmax_cross_entropy_loss/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
�
(sparse_softmax_cross_entropy_loss/SelectSelect'sparse_softmax_cross_entropy_loss/Equal+sparse_softmax_cross_entropy_loss/ones_like-sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
�
%sparse_softmax_cross_entropy_loss/divRealDiv'sparse_softmax_cross_entropy_loss/Sum_1(sparse_softmax_cross_entropy_loss/Select*
_output_shapes
: *
T0
�
,sparse_softmax_cross_entropy_loss/zeros_likeConstS^sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'sparse_softmax_cross_entropy_loss/valueSelect)sparse_softmax_cross_entropy_loss/Greater%sparse_softmax_cross_entropy_loss/div,sparse_softmax_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
P
pred/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
t
predArgMaxsoftmaxpred/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:���������
O
CastCastpred*

SrcT0	*

DstT0*#
_output_shapes
:���������
E
EqualEqualCastY*
T0*#
_output_shapes
:���������
S
ToFloatCastEqual*

SrcT0
*

DstT0*#
_output_shapes
:���������
�
 accuracy/total/Initializer/zerosConst*
valueB
 *    *!
_class
loc:@accuracy/total*
dtype0*
_output_shapes
: 
�
accuracy/total
VariableV2*
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/total*
	container *
shape: 
�
accuracy/total/AssignAssignaccuracy/total accuracy/total/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@accuracy/total*
validate_shape(*
_output_shapes
: 
s
accuracy/total/readIdentityaccuracy/total*
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
 accuracy/count/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *!
_class
loc:@accuracy/count*
dtype0
�
accuracy/count
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *!
_class
loc:@accuracy/count*
	container 
�
accuracy/count/AssignAssignaccuracy/count accuracy/count/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*!
_class
loc:@accuracy/count
s
accuracy/count/readIdentityaccuracy/count*
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
O
accuracy/SizeSizeToFloat*
_output_shapes
: *
T0*
out_type0
W
accuracy/ToFloatCastaccuracy/Size*

SrcT0*

DstT0*
_output_shapes
: 
X
accuracy/ConstConst*
_output_shapes
:*
valueB: *
dtype0
j
accuracy/SumSumToFloataccuracy/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
�
accuracy/AssignAdd	AssignAddaccuracy/totalaccuracy/Sum*
use_locking( *
T0*!
_class
loc:@accuracy/total*
_output_shapes
: 
�
accuracy/AssignAdd_1	AssignAddaccuracy/countaccuracy/ToFloat^ToFloat*
use_locking( *
T0*!
_class
loc:@accuracy/count*
_output_shapes
: 
f
accuracy/truedivRealDivaccuracy/total/readaccuracy/count/read*
T0*
_output_shapes
: 
X
accuracy/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
f
accuracy/GreaterGreateraccuracy/count/readaccuracy/zeros_like*
_output_shapes
: *
T0
r
accuracy/valueSelectaccuracy/Greateraccuracy/truedivaccuracy/zeros_like*
T0*
_output_shapes
: 
h
accuracy/truediv_1RealDivaccuracy/AssignAddaccuracy/AssignAdd_1*
_output_shapes
: *
T0
Z
accuracy/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
k
accuracy/Greater_1Greateraccuracy/AssignAdd_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
|
accuracy/update_opSelectaccuracy/Greater_1accuracy/truediv_1accuracy/zeros_like_1*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
�
Agradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
=gradients/sparse_softmax_cross_entropy_loss/value_grad/SelectSelect)sparse_softmax_cross_entropy_loss/Greatergradients/FillAgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
�
?gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1Select)sparse_softmax_cross_entropy_loss/GreaterAgradients/sparse_softmax_cross_entropy_loss/value_grad/zeros_likegradients/Fill*
T0*
_output_shapes
: 
�
Ggradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp>^gradients/sparse_softmax_cross_entropy_loss/value_grad/Select@^gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1
�
Ogradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity=gradients/sparse_softmax_cross_entropy_loss/value_grad/SelectH^gradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
_output_shapes
: *
T0*P
_classF
DBloc:@gradients/sparse_softmax_cross_entropy_loss/value_grad/Select
�
Qgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity?gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1H^gradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/sparse_softmax_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 
}
:gradients/sparse_softmax_cross_entropy_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
�
Jgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
<gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDivRealDivOgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
�
8gradients/sparse_softmax_cross_entropy_loss/div_grad/SumSum<gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDivJgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
�
<gradients/sparse_softmax_cross_entropy_loss/div_grad/ReshapeReshape8gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum:gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
8gradients/sparse_softmax_cross_entropy_loss/div_grad/NegNeg'sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
�
>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1RealDiv8gradients/sparse_softmax_cross_entropy_loss/div_grad/Neg(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
�
>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2RealDiv>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_1(sparse_softmax_cross_entropy_loss/Select*
T0*
_output_shapes
: 
�
8gradients/sparse_softmax_cross_entropy_loss/div_grad/mulMulOgradients/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency>gradients/sparse_softmax_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
�
:gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum_1Sum8gradients/sparse_softmax_cross_entropy_loss/div_grad/mulLgradients/sparse_softmax_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
�
>gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1Reshape:gradients/sparse_softmax_cross_entropy_loss/div_grad/Sum_1<gradients/sparse_softmax_cross_entropy_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Egradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_depsNoOp=^gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape?^gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
�
Mgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyIdentity<gradients/sparse_softmax_cross_entropy_loss/div_grad/ReshapeF^gradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*O
_classE
CAloc:@gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: *
T0
�
Ogradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity>gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1F^gradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/div_grad/Reshape_1
�
Dgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
�
>gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeMgradients/sparse_softmax_cross_entropy_loss/div_grad/tuple/control_dependencyDgradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 

<gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/ConstConst*
_output_shapes
: *
valueB *
dtype0
�
;gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTile>gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape<gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/Const*
_output_shapes
: *

Tmultiples0*
T0
�
Bgradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
<gradients/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshape;gradients/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileBgradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
:gradients/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape%sparse_softmax_cross_entropy_loss/Mul*
_output_shapes
:*
T0*
out_type0
�
9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/TileTile<gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape:gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0
�
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShape3sparse_softmax_cross_entropy_loss/xentropy/xentropy*
_output_shapes
:*
T0*
out_type0

<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
Jgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/MulMul9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Tile'sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:���������
�
8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/SumSum8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/MulJgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshape8gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1Mul3sparse_softmax_cross_entropy_loss/xentropy/xentropy9gradients/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:���������
�
:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Sum:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1Lgradients/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
�
>gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape:gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Egradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp=^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape?^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
�
Mgradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentity<gradients/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeF^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:���������
�
Ogradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity>gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1F^gradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@gradients/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
�
gradients/zeros_like	ZerosLike5sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:���������
�
Rgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradientPreventGradient5sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:���������*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
Qgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
Mgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDimsMgradients/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyQgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*'
_output_shapes
:���������*

Tdim0
�
Fgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMulMgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsRgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/PreventGradient*
T0*'
_output_shapes
:���������
�
"gradients/fcon1/Tanh_grad/TanhGradTanhGrad
fcon1/TanhFgradients/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul*'
_output_shapes
:���������*
T0
�
(gradients/fcon1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/fcon1/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
-gradients/fcon1/BiasAdd_grad/tuple/group_depsNoOp)^gradients/fcon1/BiasAdd_grad/BiasAddGrad#^gradients/fcon1/Tanh_grad/TanhGrad
�
5gradients/fcon1/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/fcon1/Tanh_grad/TanhGrad.^gradients/fcon1/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/fcon1/Tanh_grad/TanhGrad*'
_output_shapes
:���������
�
7gradients/fcon1/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/fcon1/BiasAdd_grad/BiasAddGrad.^gradients/fcon1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*;
_class1
/-loc:@gradients/fcon1/BiasAdd_grad/BiasAddGrad
�
"gradients/fcon1/MatMul_grad/MatMulMatMul5gradients/fcon1/BiasAdd_grad/tuple/control_dependencyfcon1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b(
�
$gradients/fcon1/MatMul_grad/MatMul_1MatMulpool5gradients/fcon1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:*
transpose_b( *
T0
�
,gradients/fcon1/MatMul_grad/tuple/group_depsNoOp#^gradients/fcon1/MatMul_grad/MatMul%^gradients/fcon1/MatMul_grad/MatMul_1
�
4gradients/fcon1/MatMul_grad/tuple/control_dependencyIdentity"gradients/fcon1/MatMul_grad/MatMul-^gradients/fcon1/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/fcon1/MatMul_grad/MatMul*'
_output_shapes
:���������
�
6gradients/fcon1/MatMul_grad/tuple/control_dependency_1Identity$gradients/fcon1/MatMul_grad/MatMul_1-^gradients/fcon1/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*7
_class-
+)loc:@gradients/fcon1/MatMul_grad/MatMul_1
n
gradients/pool_grad/ShapeShapemax_pooling2d/MaxPool*
out_type0*
_output_shapes
:*
T0
�
gradients/pool_grad/ReshapeReshape4gradients/fcon1/MatMul_grad/tuple/control_dependencygradients/pool_grad/Shape*
T0*
Tshape0*/
_output_shapes
:���������
�
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGrad	conv/Relumax_pooling2d/MaxPoolgradients/pool_grad/Reshape*/
_output_shapes
:���������
*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
�
!gradients/conv/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGrad	conv/Relu*
T0*/
_output_shapes
:���������

�
'gradients/conv/BiasAdd_grad/BiasAddGradBiasAddGrad!gradients/conv/Relu_grad/ReluGrad*
_output_shapes
:*
T0*
data_formatNHWC
�
,gradients/conv/BiasAdd_grad/tuple/group_depsNoOp(^gradients/conv/BiasAdd_grad/BiasAddGrad"^gradients/conv/Relu_grad/ReluGrad
�
4gradients/conv/BiasAdd_grad/tuple/control_dependencyIdentity!gradients/conv/Relu_grad/ReluGrad-^gradients/conv/BiasAdd_grad/tuple/group_deps*/
_output_shapes
:���������
*
T0*4
_class*
(&loc:@gradients/conv/Relu_grad/ReluGrad
�
6gradients/conv/BiasAdd_grad/tuple/control_dependency_1Identity'gradients/conv/BiasAdd_grad/BiasAddGrad-^gradients/conv/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/conv/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
!gradients/conv/Conv2D_grad/ShapeNShapeNXconv/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
�
.gradients/conv/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput!gradients/conv/Conv2D_grad/ShapeNconv/kernel/read4gradients/conv/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:���������
*
	dilations
*
T0
�
/gradients/conv/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterX#gradients/conv/Conv2D_grad/ShapeN:14gradients/conv/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
+gradients/conv/Conv2D_grad/tuple/group_depsNoOp0^gradients/conv/Conv2D_grad/Conv2DBackpropFilter/^gradients/conv/Conv2D_grad/Conv2DBackpropInput
�
3gradients/conv/Conv2D_grad/tuple/control_dependencyIdentity.gradients/conv/Conv2D_grad/Conv2DBackpropInput,^gradients/conv/Conv2D_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/conv/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������

�
5gradients/conv/Conv2D_grad/tuple/control_dependency_1Identity/gradients/conv/Conv2D_grad/Conv2DBackpropFilter,^gradients/conv/Conv2D_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
|
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@conv/bias*
dtype0*
_output_shapes
: 
�
beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv/bias
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
: *
use_locking(
h
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@conv/bias*
_output_shapes
: 
|
beta2_power/initial_valueConst*
valueB
 *w�?*
_class
loc:@conv/bias*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
shared_name *
_class
loc:@conv/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
h
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@conv/bias*
_output_shapes
: 
�
"conv/kernel/Adam/Initializer/zerosConst*
dtype0*&
_output_shapes
:*%
valueB*    *
_class
loc:@conv/kernel
�
conv/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
:*
shared_name *
_class
loc:@conv/kernel*
	container *
shape:
�
conv/kernel/Adam/AssignAssignconv/kernel/Adam"conv/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv/kernel*
validate_shape(*&
_output_shapes
:
�
conv/kernel/Adam/readIdentityconv/kernel/Adam*
T0*
_class
loc:@conv/kernel*&
_output_shapes
:
�
$conv/kernel/Adam_1/Initializer/zerosConst*%
valueB*    *
_class
loc:@conv/kernel*
dtype0*&
_output_shapes
:
�
conv/kernel/Adam_1
VariableV2*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name *
_class
loc:@conv/kernel
�
conv/kernel/Adam_1/AssignAssignconv/kernel/Adam_1$conv/kernel/Adam_1/Initializer/zeros*
_class
loc:@conv/kernel*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0
�
conv/kernel/Adam_1/readIdentityconv/kernel/Adam_1*&
_output_shapes
:*
T0*
_class
loc:@conv/kernel
�
 conv/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@conv/bias*
dtype0*
_output_shapes
:
�
conv/bias/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@conv/bias
�
conv/bias/Adam/AssignAssignconv/bias/Adam conv/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
:
r
conv/bias/Adam/readIdentityconv/bias/Adam*
T0*
_class
loc:@conv/bias*
_output_shapes
:
�
"conv/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@conv/bias*
dtype0
�
conv/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@conv/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
conv/bias/Adam_1/AssignAssignconv/bias/Adam_1"conv/bias/Adam_1/Initializer/zeros*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
v
conv/bias/Adam_1/readIdentityconv/bias/Adam_1*
_output_shapes
:*
T0*
_class
loc:@conv/bias
�
#fcon1/kernel/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@fcon1/kernel*
dtype0*
_output_shapes

:
�
fcon1/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@fcon1/kernel*
	container *
shape
:
�
fcon1/kernel/Adam/AssignAssignfcon1/kernel/Adam#fcon1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fcon1/kernel*
validate_shape(*
_output_shapes

:

fcon1/kernel/Adam/readIdentityfcon1/kernel/Adam*
_output_shapes

:*
T0*
_class
loc:@fcon1/kernel
�
%fcon1/kernel/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@fcon1/kernel*
dtype0*
_output_shapes

:
�
fcon1/kernel/Adam_1
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@fcon1/kernel*
	container 
�
fcon1/kernel/Adam_1/AssignAssignfcon1/kernel/Adam_1%fcon1/kernel/Adam_1/Initializer/zeros*
T0*
_class
loc:@fcon1/kernel*
validate_shape(*
_output_shapes

:*
use_locking(
�
fcon1/kernel/Adam_1/readIdentityfcon1/kernel/Adam_1*
T0*
_class
loc:@fcon1/kernel*
_output_shapes

:
�
!fcon1/bias/Adam/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@fcon1/bias*
dtype0
�
fcon1/bias/Adam
VariableV2*
shared_name *
_class
loc:@fcon1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
fcon1/bias/Adam/AssignAssignfcon1/bias/Adam!fcon1/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fcon1/bias*
validate_shape(*
_output_shapes
:
u
fcon1/bias/Adam/readIdentityfcon1/bias/Adam*
_output_shapes
:*
T0*
_class
loc:@fcon1/bias
�
#fcon1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@fcon1/bias*
dtype0*
_output_shapes
:
�
fcon1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@fcon1/bias*
	container *
shape:
�
fcon1/bias/Adam_1/AssignAssignfcon1/bias/Adam_1#fcon1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fcon1/bias*
validate_shape(*
_output_shapes
:
y
fcon1/bias/Adam_1/readIdentityfcon1/bias/Adam_1*
_class
loc:@fcon1/bias*
_output_shapes
:*
T0
W
Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
�
!Adam/update_conv/kernel/ApplyAdam	ApplyAdamconv/kernelconv/kernel/Adamconv/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon5gradients/conv/Conv2D_grad/tuple/control_dependency_1*
use_nesterov( *&
_output_shapes
:*
use_locking( *
T0*
_class
loc:@conv/kernel
�
Adam/update_conv/bias/ApplyAdam	ApplyAdam	conv/biasconv/bias/Adamconv/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@conv/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
�
"Adam/update_fcon1/kernel/ApplyAdam	ApplyAdamfcon1/kernelfcon1/kernel/Adamfcon1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/fcon1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0*
_class
loc:@fcon1/kernel
�
 Adam/update_fcon1/bias/ApplyAdam	ApplyAdam
fcon1/biasfcon1/bias/Adamfcon1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/fcon1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@fcon1/bias*
use_nesterov( *
_output_shapes
:
�
Adam/mulMulbeta1_power/read
Adam/beta1 ^Adam/update_conv/bias/ApplyAdam"^Adam/update_conv/kernel/ApplyAdam!^Adam/update_fcon1/bias/ApplyAdam#^Adam/update_fcon1/kernel/ApplyAdam*
_class
loc:@conv/bias*
_output_shapes
: *
T0
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2 ^Adam/update_conv/bias/ApplyAdam"^Adam/update_conv/kernel/ApplyAdam!^Adam/update_fcon1/bias/ApplyAdam#^Adam/update_fcon1/kernel/ApplyAdam*
T0*
_class
loc:@conv/bias*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
�
AdamNoOp^Adam/Assign^Adam/Assign_1 ^Adam/update_conv/bias/ApplyAdam"^Adam/update_conv/kernel/ApplyAdam!^Adam/update_fcon1/bias/ApplyAdam#^Adam/update_fcon1/kernel/ApplyAdam
�
initNoOp^beta1_power/Assign^beta2_power/Assign^conv/bias/Adam/Assign^conv/bias/Adam_1/Assign^conv/bias/Assign^conv/kernel/Adam/Assign^conv/kernel/Adam_1/Assign^conv/kernel/Assign^fcon1/bias/Adam/Assign^fcon1/bias/Adam_1/Assign^fcon1/bias/Assign^fcon1/kernel/Adam/Assign^fcon1/kernel/Adam_1/Assign^fcon1/kernel/Assign
>
init_1NoOp^accuracy/count/Assign^accuracy/total/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_e4c837f2d8a84243b1aaccf0b02acd11/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*
_output_shapes
:*�
value�B�Bbeta1_powerBbeta2_powerB	conv/biasBconv/bias/AdamBconv/bias/Adam_1Bconv/kernelBconv/kernel/AdamBconv/kernel/Adam_1B
fcon1/biasBfcon1/bias/AdamBfcon1/bias/Adam_1Bfcon1/kernelBfcon1/kernel/AdamBfcon1/kernel/Adam_1*
dtype0

save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power	conv/biasconv/bias/Adamconv/bias/Adam_1conv/kernelconv/kernel/Adamconv/kernel/Adam_1
fcon1/biasfcon1/bias/Adamfcon1/bias/Adam_1fcon1/kernelfcon1/kernel/Adamfcon1/kernel/Adam_1*
dtypes
2
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
�
save/RestoreV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerB	conv/biasBconv/bias/AdamBconv/bias/Adam_1Bconv/kernelBconv/kernel/AdamBconv/kernel/Adam_1B
fcon1/biasBfcon1/bias/AdamBfcon1/bias/Adam_1Bfcon1/kernelBfcon1/kernel/AdamBfcon1/kernel/Adam_1*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*L
_output_shapes:
8::::::::::::::*
dtypes
2
�
save/AssignAssignbeta1_powersave/RestoreV2*
T0*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv/bias*
validate_shape(
�
save/Assign_2Assign	conv/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_3Assignconv/bias/Adamsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_4Assignconv/bias/Adam_1save/RestoreV2:4*
_class
loc:@conv/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save/Assign_5Assignconv/kernelsave/RestoreV2:5*
use_locking(*
T0*
_class
loc:@conv/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_6Assignconv/kernel/Adamsave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@conv/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_7Assignconv/kernel/Adam_1save/RestoreV2:7*
use_locking(*
T0*
_class
loc:@conv/kernel*
validate_shape(*&
_output_shapes
:
�
save/Assign_8Assign
fcon1/biassave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@fcon1/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_9Assignfcon1/bias/Adamsave/RestoreV2:9*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@fcon1/bias*
validate_shape(
�
save/Assign_10Assignfcon1/bias/Adam_1save/RestoreV2:10*
use_locking(*
T0*
_class
loc:@fcon1/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_11Assignfcon1/kernelsave/RestoreV2:11*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@fcon1/kernel
�
save/Assign_12Assignfcon1/kernel/Adamsave/RestoreV2:12*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@fcon1/kernel
�
save/Assign_13Assignfcon1/kernel/Adam_1save/RestoreV2:13*
use_locking(*
T0*
_class
loc:@fcon1/kernel*
validate_shape(*
_output_shapes

:
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"
train_op

Adam":
metric_variables&
$
accuracy/total:0
accuracy/count:0"�
trainable_variables��
c
conv/kernel:0conv/kernel/Assignconv/kernel/read:02(conv/kernel/Initializer/random_uniform:08
R
conv/bias:0conv/bias/Assignconv/bias/read:02conv/bias/Initializer/zeros:08
g
fcon1/kernel:0fcon1/kernel/Assignfcon1/kernel/read:02)fcon1/kernel/Initializer/random_uniform:08
V
fcon1/bias:0fcon1/bias/Assignfcon1/bias/read:02fcon1/bias/Initializer/zeros:08"�
local_variables��
d
accuracy/total:0accuracy/total/Assignaccuracy/total/read:02"accuracy/total/Initializer/zeros:0
d
accuracy/count:0accuracy/count/Assignaccuracy/count/read:02"accuracy/count/Initializer/zeros:0"�
	variables��
c
conv/kernel:0conv/kernel/Assignconv/kernel/read:02(conv/kernel/Initializer/random_uniform:08
R
conv/bias:0conv/bias/Assignconv/bias/read:02conv/bias/Initializer/zeros:08
g
fcon1/kernel:0fcon1/kernel/Assignfcon1/kernel/read:02)fcon1/kernel/Initializer/random_uniform:08
V
fcon1/bias:0fcon1/bias/Assignfcon1/bias/read:02fcon1/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
l
conv/kernel/Adam:0conv/kernel/Adam/Assignconv/kernel/Adam/read:02$conv/kernel/Adam/Initializer/zeros:0
t
conv/kernel/Adam_1:0conv/kernel/Adam_1/Assignconv/kernel/Adam_1/read:02&conv/kernel/Adam_1/Initializer/zeros:0
d
conv/bias/Adam:0conv/bias/Adam/Assignconv/bias/Adam/read:02"conv/bias/Adam/Initializer/zeros:0
l
conv/bias/Adam_1:0conv/bias/Adam_1/Assignconv/bias/Adam_1/read:02$conv/bias/Adam_1/Initializer/zeros:0
p
fcon1/kernel/Adam:0fcon1/kernel/Adam/Assignfcon1/kernel/Adam/read:02%fcon1/kernel/Adam/Initializer/zeros:0
x
fcon1/kernel/Adam_1:0fcon1/kernel/Adam_1/Assignfcon1/kernel/Adam_1/read:02'fcon1/kernel/Adam_1/Initializer/zeros:0
h
fcon1/bias/Adam:0fcon1/bias/Adam/Assignfcon1/bias/Adam/read:02#fcon1/bias/Adam/Initializer/zeros:0
p
fcon1/bias/Adam_1:0fcon1/bias/Adam_1/Assignfcon1/bias/Adam_1/read:02%fcon1/bias/Adam_1/Initializer/zeros:0"7
losses-
+
)sparse_softmax_cross_entropy_loss/value:0*{
serving_defaulth
'
X"
X:0���������
!
pred
pred:0	���������tensorflow/serving/predict