??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
delete_old_dirsbool(?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8??
x

c_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
c_1/kernel
q
c_1/kernel/Read/ReadVariableOpReadVariableOp
c_1/kernel*&
_output_shapes
: *
dtype0
h
c_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
c_1/bias
a
c_1/bias/Read/ReadVariableOpReadVariableOpc_1/bias*
_output_shapes
: *
dtype0
x

c_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_name
c_2/kernel
q
c_2/kernel/Read/ReadVariableOpReadVariableOp
c_2/kernel*&
_output_shapes
: @*
dtype0
h
c_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
c_2/bias
a
c_2/bias/Read/ReadVariableOpReadVariableOpc_2/bias*
_output_shapes
:@*
dtype0
x

c_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *
shared_name
c_3/kernel
q
c_3/kernel/Read/ReadVariableOpReadVariableOp
c_3/kernel*&
_output_shapes
:@ *
dtype0
h
c_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
c_3/bias
a
c_3/bias/Read/ReadVariableOpReadVariableOpc_3/bias*
_output_shapes
: *
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
??*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:?*
dtype0
w
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_nameoutput/kernel
p
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes
:	?*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?$
value?$B?$ B?$
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	variables
regularization_losses
trainable_variables
	keras_api

signatures
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
 trainable_variables
!	keras_api
h

"kernel
#bias
$	variables
%regularization_losses
&trainable_variables
'	keras_api
R
(	variables
)regularization_losses
*trainable_variables
+	keras_api
h

,kernel
-bias
.	variables
/regularization_losses
0trainable_variables
1	keras_api
R
2	variables
3regularization_losses
4trainable_variables
5	keras_api
h

6kernel
7bias
8	variables
9regularization_losses
:trainable_variables
;	keras_api
h

<kernel
=bias
>	variables
?regularization_losses
@trainable_variables
A	keras_api
F
0
1
"2
#3
,4
-5
66
77
<8
=9
 
F
0
1
"2
#3
,4
-5
66
77
<8
=9
?
Blayer_regularization_losses
Clayer_metrics
Dnon_trainable_variables
	variables
regularization_losses

Elayers
Fmetrics
trainable_variables
 
 
 
 
?
Glayer_regularization_losses
Hlayer_metrics
Inon_trainable_variables
	variables
regularization_losses

Jlayers
Kmetrics
trainable_variables
VT
VARIABLE_VALUE
c_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEc_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Llayer_regularization_losses
Mlayer_metrics
Nnon_trainable_variables
	variables
regularization_losses

Olayers
Pmetrics
trainable_variables
 
 
 
?
Qlayer_regularization_losses
Rlayer_metrics
Snon_trainable_variables
	variables
regularization_losses

Tlayers
Umetrics
trainable_variables
 
 
 
?
Vlayer_regularization_losses
Wlayer_metrics
Xnon_trainable_variables
	variables
regularization_losses

Ylayers
Zmetrics
 trainable_variables
VT
VARIABLE_VALUE
c_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEc_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
?
[layer_regularization_losses
\layer_metrics
]non_trainable_variables
$	variables
%regularization_losses

^layers
_metrics
&trainable_variables
 
 
 
?
`layer_regularization_losses
alayer_metrics
bnon_trainable_variables
(	variables
)regularization_losses

clayers
dmetrics
*trainable_variables
VT
VARIABLE_VALUE
c_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEc_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
 

,0
-1
?
elayer_regularization_losses
flayer_metrics
gnon_trainable_variables
.	variables
/regularization_losses

hlayers
imetrics
0trainable_variables
 
 
 
?
jlayer_regularization_losses
klayer_metrics
lnon_trainable_variables
2	variables
3regularization_losses

mlayers
nmetrics
4trainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
?
olayer_regularization_losses
player_metrics
qnon_trainable_variables
8	variables
9regularization_losses

rlayers
smetrics
:trainable_variables
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
?
tlayer_regularization_losses
ulayer_metrics
vnon_trainable_variables
>	variables
?regularization_losses

wlayers
xmetrics
@trainable_variables
 
 
 
F
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
 
 
 
 
 
 
?
serving_default_spectrogramPlaceholder*0
_output_shapes
:?????????5?*
dtype0*%
shape:?????????5?
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_spectrogram
c_1/kernelc_1/bias
c_2/kernelc_2/bias
c_3/kernelc_3/biasdense_1/kerneldense_1/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? */
f*R(
&__inference_signature_wrapper_20144742
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamec_1/kernel/Read/ReadVariableOpc_1/bias/Read/ReadVariableOpc_2/kernel/Read/ReadVariableOpc_2/bias/Read/ReadVariableOpc_3/kernel/Read/ReadVariableOpc_3/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpConst*
Tin
2*
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
!__inference__traced_save_20145114
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
c_1/kernelc_1/bias
c_2/kernelc_2/bias
c_3/kernelc_3/biasdense_1/kerneldense_1/biasoutput/kerneloutput/bias*
Tin
2*
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
GPU2*0J 8? *-
f(R&
$__inference__traced_restore_20145154??
??
?
H__inference_sequential_layer_call_and_return_conditional_losses_20144855

inputs&
"c_1_conv2d_readvariableop_resource'
#c_1_biasadd_readvariableop_resource&
"c_2_conv2d_readvariableop_resource'
#c_2_biasadd_readvariableop_resource&
"c_3_conv2d_readvariableop_resource'
#c_3_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??c_1/BiasAdd/ReadVariableOp?c_1/Conv2D/ReadVariableOp?c_2/BiasAdd/ReadVariableOp?c_2/Conv2D/ReadVariableOp?c_3/BiasAdd/ReadVariableOp?c_3/Conv2D/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpT
reshape/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :52
reshape/Reshape/shape/1u
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/3?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeinputsreshape/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????5?2
reshape/Reshape?
c_1/Conv2D/ReadVariableOpReadVariableOp"c_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
c_1/Conv2D/ReadVariableOp?

c_1/Conv2DConv2Dreshape/Reshape:output:0!c_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2

c_1/Conv2D?
c_1/BiasAdd/ReadVariableOpReadVariableOp#c_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
c_1/BiasAdd/ReadVariableOp?
c_1/BiasAddBiasAddc_1/Conv2D:output:0"c_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2
c_1/BiasAddm
c_1/ReluReluc_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2

c_1/Relu?
maxpool_1/MaxPoolMaxPoolc_1/Relu:activations:0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
2
maxpool_1/MaxPool?
dropout/IdentityIdentitymaxpool_1/MaxPool:output:0*
T0*0
_output_shapes
:?????????? 2
dropout/Identity?
c_2/Conv2D/ReadVariableOpReadVariableOp"c_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
c_2/Conv2D/ReadVariableOp?

c_2/Conv2DConv2Ddropout/Identity:output:0!c_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2

c_2/Conv2D?
c_2/BiasAdd/ReadVariableOpReadVariableOp#c_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
c_2/BiasAdd/ReadVariableOp?
c_2/BiasAddBiasAddc_2/Conv2D:output:0"c_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@2
c_2/BiasAddl
c_2/ReluReluc_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????8@2

c_2/Relu?
maxpool_2/MaxPoolMaxPoolc_2/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
maxpool_2/MaxPool?
c_3/Conv2D/ReadVariableOpReadVariableOp"c_3_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
c_3/Conv2D/ReadVariableOp?

c_3/Conv2DConv2Dmaxpool_2/MaxPool:output:0!c_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2

c_3/Conv2D?
c_3/BiasAdd/ReadVariableOpReadVariableOp#c_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
c_3/BiasAdd/ReadVariableOp?
c_3/BiasAddBiasAddc_3/Conv2D:output:0"c_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
c_3/BiasAddl
c_3/ReluReluc_3/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2

c_3/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapec_3/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMuldense_1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0^c_1/BiasAdd/ReadVariableOp^c_1/Conv2D/ReadVariableOp^c_2/BiasAdd/ReadVariableOp^c_2/Conv2D/ReadVariableOp^c_3/BiasAdd/ReadVariableOp^c_3/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::28
c_1/BiasAdd/ReadVariableOpc_1/BiasAdd/ReadVariableOp26
c_1/Conv2D/ReadVariableOpc_1/Conv2D/ReadVariableOp28
c_2/BiasAdd/ReadVariableOpc_2/BiasAdd/ReadVariableOp26
c_2/Conv2D/ReadVariableOpc_2/Conv2D/ReadVariableOp28
c_3/BiasAdd/ReadVariableOpc_3/BiasAdd/ReadVariableOp26
c_3/Conv2D/ReadVariableOpc_3/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?
{
&__inference_c_3_layer_call_fn_20145011

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
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_3_layer_call_and_return_conditional_losses_201444782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
F
*__inference_reshape_layer_call_fn_20144924

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
:?????????5?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_201443732
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????5?2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????5?:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?

?
A__inference_c_2_layer_call_and_return_conditional_losses_20144450

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????8@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
F
*__inference_flatten_layer_call_fn_20145022

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_201445002
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
A__inference_c_1_layer_call_and_return_conditional_losses_20144392

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????5?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?
?
-__inference_sequential_layer_call_fn_20144880

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_201446332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?	
?
D__inference_output_layer_call_and_return_conditional_losses_20145052

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

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
?N
?
#__inference__wrapped_model_20144331
spectrogram1
-sequential_c_1_conv2d_readvariableop_resource2
.sequential_c_1_biasadd_readvariableop_resource1
-sequential_c_2_conv2d_readvariableop_resource2
.sequential_c_2_biasadd_readvariableop_resource1
-sequential_c_3_conv2d_readvariableop_resource2
.sequential_c_3_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource4
0sequential_output_matmul_readvariableop_resource5
1sequential_output_biasadd_readvariableop_resource
identity??%sequential/c_1/BiasAdd/ReadVariableOp?$sequential/c_1/Conv2D/ReadVariableOp?%sequential/c_2/BiasAdd/ReadVariableOp?$sequential/c_2/Conv2D/ReadVariableOp?%sequential/c_3/BiasAdd/ReadVariableOp?$sequential/c_3/Conv2D/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?(sequential/output/BiasAdd/ReadVariableOp?'sequential/output/MatMul/ReadVariableOpo
sequential/reshape/ShapeShapespectrogram*
T0*
_output_shapes
:2
sequential/reshape/Shape?
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential/reshape/strided_slice/stack?
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_1?
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential/reshape/strided_slice/stack_2?
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential/reshape/strided_slice?
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :52$
"sequential/reshape/Reshape/shape/1?
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential/reshape/Reshape/shape/2?
"sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2$
"sequential/reshape/Reshape/shape/3?
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0+sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2"
 sequential/reshape/Reshape/shape?
sequential/reshape/ReshapeReshapespectrogram)sequential/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????5?2
sequential/reshape/Reshape?
$sequential/c_1/Conv2D/ReadVariableOpReadVariableOp-sequential_c_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02&
$sequential/c_1/Conv2D/ReadVariableOp?
sequential/c_1/Conv2DConv2D#sequential/reshape/Reshape:output:0,sequential/c_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
sequential/c_1/Conv2D?
%sequential/c_1/BiasAdd/ReadVariableOpReadVariableOp.sequential_c_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%sequential/c_1/BiasAdd/ReadVariableOp?
sequential/c_1/BiasAddBiasAddsequential/c_1/Conv2D:output:0-sequential/c_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2
sequential/c_1/BiasAdd?
sequential/c_1/ReluRelusequential/c_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2
sequential/c_1/Relu?
sequential/maxpool_1/MaxPoolMaxPool!sequential/c_1/Relu:activations:0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
2
sequential/maxpool_1/MaxPool?
sequential/dropout/IdentityIdentity%sequential/maxpool_1/MaxPool:output:0*
T0*0
_output_shapes
:?????????? 2
sequential/dropout/Identity?
$sequential/c_2/Conv2D/ReadVariableOpReadVariableOp-sequential_c_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02&
$sequential/c_2/Conv2D/ReadVariableOp?
sequential/c_2/Conv2DConv2D$sequential/dropout/Identity:output:0,sequential/c_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
sequential/c_2/Conv2D?
%sequential/c_2/BiasAdd/ReadVariableOpReadVariableOp.sequential_c_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%sequential/c_2/BiasAdd/ReadVariableOp?
sequential/c_2/BiasAddBiasAddsequential/c_2/Conv2D:output:0-sequential/c_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@2
sequential/c_2/BiasAdd?
sequential/c_2/ReluRelusequential/c_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????8@2
sequential/c_2/Relu?
sequential/maxpool_2/MaxPoolMaxPool!sequential/c_2/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
sequential/maxpool_2/MaxPool?
$sequential/c_3/Conv2D/ReadVariableOpReadVariableOp-sequential_c_3_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02&
$sequential/c_3/Conv2D/ReadVariableOp?
sequential/c_3/Conv2DConv2D%sequential/maxpool_2/MaxPool:output:0,sequential/c_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
sequential/c_3/Conv2D?
%sequential/c_3/BiasAdd/ReadVariableOpReadVariableOp.sequential_c_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%sequential/c_3/BiasAdd/ReadVariableOp?
sequential/c_3/BiasAddBiasAddsequential/c_3/Conv2D:output:0-sequential/c_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
sequential/c_3/BiasAdd?
sequential/c_3/ReluRelusequential/c_3/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential/c_3/Relu?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape!sequential/c_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/flatten/Reshape?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul#sequential/flatten/Reshape:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense_1/BiasAdd?
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential/dense_1/Relu?
'sequential/output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02)
'sequential/output/MatMul/ReadVariableOp?
sequential/output/MatMulMatMul%sequential/dense_1/Relu:activations:0/sequential/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/output/MatMul?
(sequential/output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(sequential/output/BiasAdd/ReadVariableOp?
sequential/output/BiasAddBiasAdd"sequential/output/MatMul:product:00sequential/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/output/BiasAdd?
IdentityIdentity"sequential/output/BiasAdd:output:0&^sequential/c_1/BiasAdd/ReadVariableOp%^sequential/c_1/Conv2D/ReadVariableOp&^sequential/c_2/BiasAdd/ReadVariableOp%^sequential/c_2/Conv2D/ReadVariableOp&^sequential/c_3/BiasAdd/ReadVariableOp%^sequential/c_3/Conv2D/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp)^sequential/output/BiasAdd/ReadVariableOp(^sequential/output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::2N
%sequential/c_1/BiasAdd/ReadVariableOp%sequential/c_1/BiasAdd/ReadVariableOp2L
$sequential/c_1/Conv2D/ReadVariableOp$sequential/c_1/Conv2D/ReadVariableOp2N
%sequential/c_2/BiasAdd/ReadVariableOp%sequential/c_2/BiasAdd/ReadVariableOp2L
$sequential/c_2/Conv2D/ReadVariableOp$sequential/c_2/Conv2D/ReadVariableOp2N
%sequential/c_3/BiasAdd/ReadVariableOp%sequential/c_3/BiasAdd/ReadVariableOp2L
$sequential/c_3/Conv2D/ReadVariableOp$sequential/c_3/Conv2D/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2T
(sequential/output/BiasAdd/ReadVariableOp(sequential/output/BiasAdd/ReadVariableOp2R
'sequential/output/MatMul/ReadVariableOp'sequential/output/MatMul/ReadVariableOp:] Y
0
_output_shapes
:?????????5?
%
_user_specified_namespectrogram
?
a
E__inference_flatten_layer_call_and_return_conditional_losses_20145017

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?H
?
H__inference_sequential_layer_call_and_return_conditional_losses_20144802

inputs&
"c_1_conv2d_readvariableop_resource'
#c_1_biasadd_readvariableop_resource&
"c_2_conv2d_readvariableop_resource'
#c_2_biasadd_readvariableop_resource&
"c_3_conv2d_readvariableop_resource'
#c_3_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource)
%output_matmul_readvariableop_resource*
&output_biasadd_readvariableop_resource
identity??c_1/BiasAdd/ReadVariableOp?c_1/Conv2D/ReadVariableOp?c_2/BiasAdd/ReadVariableOp?c_2/Conv2D/ReadVariableOp?c_3/BiasAdd/ReadVariableOp?c_3/Conv2D/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpT
reshape/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :52
reshape/Reshape/shape/1u
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/3?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapeinputsreshape/Reshape/shape:output:0*
T0*0
_output_shapes
:?????????5?2
reshape/Reshape?
c_1/Conv2D/ReadVariableOpReadVariableOp"c_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
c_1/Conv2D/ReadVariableOp?

c_1/Conv2DConv2Dreshape/Reshape:output:0!c_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2

c_1/Conv2D?
c_1/BiasAdd/ReadVariableOpReadVariableOp#c_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
c_1/BiasAdd/ReadVariableOp?
c_1/BiasAddBiasAddc_1/Conv2D:output:0"c_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2
c_1/BiasAddm
c_1/ReluReluc_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2

c_1/Relu?
maxpool_1/MaxPoolMaxPoolc_1/Relu:activations:0*0
_output_shapes
:?????????? *
ksize
*
paddingVALID*
strides
2
maxpool_1/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/dropout/Const?
dropout/dropout/MulMulmaxpool_1/MaxPool:output:0dropout/dropout/Const:output:0*
T0*0
_output_shapes
:?????????? 2
dropout/dropout/Mulx
dropout/dropout/ShapeShapemaxpool_1/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????? *
dtype0*

seed*2.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????? 2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????? 2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????? 2
dropout/dropout/Mul_1?
c_2/Conv2D/ReadVariableOpReadVariableOp"c_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
c_2/Conv2D/ReadVariableOp?

c_2/Conv2DConv2Ddropout/dropout/Mul_1:z:0!c_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2

c_2/Conv2D?
c_2/BiasAdd/ReadVariableOpReadVariableOp#c_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
c_2/BiasAdd/ReadVariableOp?
c_2/BiasAddBiasAddc_2/Conv2D:output:0"c_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@2
c_2/BiasAddl
c_2/ReluReluc_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????8@2

c_2/Relu?
maxpool_2/MaxPoolMaxPoolc_2/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
maxpool_2/MaxPool?
c_3/Conv2D/ReadVariableOpReadVariableOp"c_3_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
c_3/Conv2D/ReadVariableOp?

c_3/Conv2DConv2Dmaxpool_2/MaxPool:output:0!c_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2

c_3/Conv2D?
c_3/BiasAdd/ReadVariableOpReadVariableOp#c_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
c_3/BiasAdd/ReadVariableOp?
c_3/BiasAddBiasAddc_3/Conv2D:output:0"c_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
c_3/BiasAddl
c_3/ReluReluc_3/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2

c_3/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapec_3/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_1/Relu?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
output/MatMul/ReadVariableOp?
output/MatMulMatMuldense_1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/MatMul?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOp?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
output/BiasAdd?
IdentityIdentityoutput/BiasAdd:output:0^c_1/BiasAdd/ReadVariableOp^c_1/Conv2D/ReadVariableOp^c_2/BiasAdd/ReadVariableOp^c_2/Conv2D/ReadVariableOp^c_3/BiasAdd/ReadVariableOp^c_3/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::28
c_1/BiasAdd/ReadVariableOpc_1/BiasAdd/ReadVariableOp26
c_1/Conv2D/ReadVariableOpc_1/Conv2D/ReadVariableOp28
c_2/BiasAdd/ReadVariableOpc_2/BiasAdd/ReadVariableOp26
c_2/Conv2D/ReadVariableOpc_2/Conv2D/ReadVariableOp28
c_3/BiasAdd/ReadVariableOpc_3/BiasAdd/ReadVariableOp26
c_3/Conv2D/ReadVariableOpc_3/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?,
?
$__inference__traced_restore_20145154
file_prefix
assignvariableop_c_1_kernel
assignvariableop_1_c_1_bias!
assignvariableop_2_c_2_kernel
assignvariableop_3_c_2_bias!
assignvariableop_4_c_3_kernel
assignvariableop_5_c_3_bias%
!assignvariableop_6_dense_1_kernel#
assignvariableop_7_dense_1_bias$
 assignvariableop_8_output_kernel"
assignvariableop_9_output_bias
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_c_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_c_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_c_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_c_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_c_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_c_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*=
_input_shapes,
*: ::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
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
?
?
&__inference_signature_wrapper_20144742
spectrogram
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallspectrogramunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__wrapped_model_201443312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:?????????5?
%
_user_specified_namespectrogram
?!
?
!__inference__traced_save_20145114
file_prefix)
%savev2_c_1_kernel_read_readvariableop'
#savev2_c_1_bias_read_readvariableop)
%savev2_c_2_kernel_read_readvariableop'
#savev2_c_2_bias_read_readvariableop)
%savev2_c_3_kernel_read_readvariableop'
#savev2_c_3_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop
savev2_const

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0%savev2_c_1_kernel_read_readvariableop#savev2_c_1_bias_read_readvariableop%savev2_c_2_kernel_read_readvariableop#savev2_c_2_bias_read_readvariableop%savev2_c_3_kernel_read_readvariableop#savev2_c_3_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*?
_input_shapesr
p: : : : @:@:@ : :
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%	!

_output_shapes
:	?: 


_output_shapes
::

_output_shapes
: 
?
c
*__inference_dropout_layer_call_fn_20144966

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_201444212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
H
,__inference_maxpool_1_layer_call_fn_20144343

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_1_layer_call_and_return_conditional_losses_201443372
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
a
E__inference_reshape_layer_call_and_return_conditional_losses_20144373

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :52
Reshape/shape/1e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????5?2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:?????????5?2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????5?:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?
{
&__inference_c_1_layer_call_fn_20144944

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
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_1_layer_call_and_return_conditional_losses_201443922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????5?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?

?
A__inference_c_2_layer_call_and_return_conditional_losses_20144982

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????8@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????8@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
a
E__inference_flatten_layer_call_and_return_conditional_losses_20144500

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
A__inference_c_3_layer_call_and_return_conditional_losses_20145002

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?)
?
H__inference_sequential_layer_call_and_return_conditional_losses_20144692

inputs
c_1_20144662
c_1_20144664
c_2_20144669
c_2_20144671
c_3_20144675
c_3_20144677
dense_1_20144681
dense_1_20144683
output_20144686
output_20144688
identity??c_1/StatefulPartitionedCall?c_2/StatefulPartitionedCall?c_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?output/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????5?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_201443732
reshape/PartitionedCall?
c_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0c_1_20144662c_1_20144664*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_1_layer_call_and_return_conditional_losses_201443922
c_1/StatefulPartitionedCall?
maxpool_1/PartitionedCallPartitionedCall$c_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_1_layer_call_and_return_conditional_losses_201443372
maxpool_1/PartitionedCall?
dropout/PartitionedCallPartitionedCall"maxpool_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_201444262
dropout/PartitionedCall?
c_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0c_2_20144669c_2_20144671*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_2_layer_call_and_return_conditional_losses_201444502
c_2/StatefulPartitionedCall?
maxpool_2/PartitionedCallPartitionedCall$c_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_2_layer_call_and_return_conditional_losses_201443492
maxpool_2/PartitionedCall?
c_3/StatefulPartitionedCallStatefulPartitionedCall"maxpool_2/PartitionedCall:output:0c_3_20144675c_3_20144677*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_3_layer_call_and_return_conditional_losses_201444782
c_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall$c_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_201445002
flatten/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_20144681dense_1_20144683*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_201445192!
dense_1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0output_20144686output_20144688*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_output_layer_call_and_return_conditional_losses_201445452 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^c_1/StatefulPartitionedCall^c_2/StatefulPartitionedCall^c_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::2:
c_1/StatefulPartitionedCallc_1/StatefulPartitionedCall2:
c_2/StatefulPartitionedCallc_2/StatefulPartitionedCall2:
c_3/StatefulPartitionedCallc_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?

?
A__inference_c_1_layer_call_and_return_conditional_losses_20144935

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????5?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?	
?
-__inference_sequential_layer_call_fn_20144715
spectrogram
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallspectrogramunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_201446922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:?????????5?
%
_user_specified_namespectrogram
?	
?
E__inference_dense_1_layer_call_and_return_conditional_losses_20145033

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_maxpool_2_layer_call_and_return_conditional_losses_20144349

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_output_layer_call_and_return_conditional_losses_20144545

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

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
?

?
A__inference_c_3_layer_call_and_return_conditional_losses_20144478

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
c
E__inference_dropout_layer_call_and_return_conditional_losses_20144961

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????? 2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????? 2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
H
,__inference_maxpool_2_layer_call_fn_20144355

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_2_layer_call_and_return_conditional_losses_201443492
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

*__inference_dense_1_layer_call_fn_20145042

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
GPU2*0J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_201445192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_layer_call_and_return_conditional_losses_20144421

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????? *
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????? 2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
~
)__inference_output_layer_call_fn_20145061

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
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_output_layer_call_and_return_conditional_losses_201445452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_layer_call_fn_20144905

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_201446922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?
d
E__inference_dropout_layer_call_and_return_conditional_losses_20144956

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????? *
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????? 2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
c
E__inference_dropout_layer_call_and_return_conditional_losses_20144426

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????? 2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????? 2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
{
&__inference_c_2_layer_call_fn_20144991

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
 */
_output_shapes
:?????????8@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_2_layer_call_and_return_conditional_losses_201444502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????8@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?
c
G__inference_maxpool_1_layer_call_and_return_conditional_losses_20144337

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
a
E__inference_reshape_layer_call_and_return_conditional_losses_20144919

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :52
Reshape/shape/1e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:?????????5?2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:?????????5?2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????5?:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?	
?
E__inference_dense_1_layer_call_and_return_conditional_losses_20144519

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
H__inference_sequential_layer_call_and_return_conditional_losses_20144633

inputs
c_1_20144603
c_1_20144605
c_2_20144610
c_2_20144612
c_3_20144616
c_3_20144618
dense_1_20144622
dense_1_20144624
output_20144627
output_20144629
identity??c_1/StatefulPartitionedCall?c_2/StatefulPartitionedCall?c_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?output/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????5?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_201443732
reshape/PartitionedCall?
c_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0c_1_20144603c_1_20144605*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_1_layer_call_and_return_conditional_losses_201443922
c_1/StatefulPartitionedCall?
maxpool_1/PartitionedCallPartitionedCall$c_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_1_layer_call_and_return_conditional_losses_201443372
maxpool_1/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall"maxpool_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_201444212!
dropout/StatefulPartitionedCall?
c_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0c_2_20144610c_2_20144612*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_2_layer_call_and_return_conditional_losses_201444502
c_2/StatefulPartitionedCall?
maxpool_2/PartitionedCallPartitionedCall$c_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_2_layer_call_and_return_conditional_losses_201443492
maxpool_2/PartitionedCall?
c_3/StatefulPartitionedCallStatefulPartitionedCall"maxpool_2/PartitionedCall:output:0c_3_20144616c_3_20144618*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_3_layer_call_and_return_conditional_losses_201444782
c_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall$c_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_201445002
flatten/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_20144622dense_1_20144624*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_201445192!
dense_1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0output_20144627output_20144629*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_output_layer_call_and_return_conditional_losses_201445452 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^c_1/StatefulPartitionedCall^c_2/StatefulPartitionedCall^c_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::2:
c_1/StatefulPartitionedCallc_1/StatefulPartitionedCall2:
c_2/StatefulPartitionedCallc_2/StatefulPartitionedCall2:
c_3/StatefulPartitionedCallc_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:X T
0
_output_shapes
:?????????5?
 
_user_specified_nameinputs
?
F
*__inference_dropout_layer_call_fn_20144971

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
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_201444262
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????? :X T
0
_output_shapes
:?????????? 
 
_user_specified_nameinputs
?	
?
-__inference_sequential_layer_call_fn_20144656
spectrogram
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallspectrogramunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_layer_call_and_return_conditional_losses_201446332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:?????????5?
%
_user_specified_namespectrogram
?)
?
H__inference_sequential_layer_call_and_return_conditional_losses_20144596
spectrogram
c_1_20144566
c_1_20144568
c_2_20144573
c_2_20144575
c_3_20144579
c_3_20144581
dense_1_20144585
dense_1_20144587
output_20144590
output_20144592
identity??c_1/StatefulPartitionedCall?c_2/StatefulPartitionedCall?c_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?output/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallspectrogram*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????5?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_201443732
reshape/PartitionedCall?
c_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0c_1_20144566c_1_20144568*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_1_layer_call_and_return_conditional_losses_201443922
c_1/StatefulPartitionedCall?
maxpool_1/PartitionedCallPartitionedCall$c_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_1_layer_call_and_return_conditional_losses_201443372
maxpool_1/PartitionedCall?
dropout/PartitionedCallPartitionedCall"maxpool_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_201444262
dropout/PartitionedCall?
c_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0c_2_20144573c_2_20144575*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_2_layer_call_and_return_conditional_losses_201444502
c_2/StatefulPartitionedCall?
maxpool_2/PartitionedCallPartitionedCall$c_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_2_layer_call_and_return_conditional_losses_201443492
maxpool_2/PartitionedCall?
c_3/StatefulPartitionedCallStatefulPartitionedCall"maxpool_2/PartitionedCall:output:0c_3_20144579c_3_20144581*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_3_layer_call_and_return_conditional_losses_201444782
c_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall$c_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_201445002
flatten/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_20144585dense_1_20144587*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_201445192!
dense_1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0output_20144590output_20144592*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_output_layer_call_and_return_conditional_losses_201445452 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^c_1/StatefulPartitionedCall^c_2/StatefulPartitionedCall^c_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::2:
c_1/StatefulPartitionedCallc_1/StatefulPartitionedCall2:
c_2/StatefulPartitionedCallc_2/StatefulPartitionedCall2:
c_3/StatefulPartitionedCallc_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:] Y
0
_output_shapes
:?????????5?
%
_user_specified_namespectrogram
?*
?
H__inference_sequential_layer_call_and_return_conditional_losses_20144562
spectrogram
c_1_20144403
c_1_20144405
c_2_20144461
c_2_20144463
c_3_20144489
c_3_20144491
dense_1_20144530
dense_1_20144532
output_20144556
output_20144558
identity??c_1/StatefulPartitionedCall?c_2/StatefulPartitionedCall?c_3/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?output/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCallspectrogram*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????5?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_layer_call_and_return_conditional_losses_201443732
reshape/PartitionedCall?
c_1/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0c_1_20144403c_1_20144405*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_1_layer_call_and_return_conditional_losses_201443922
c_1/StatefulPartitionedCall?
maxpool_1/PartitionedCallPartitionedCall$c_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_1_layer_call_and_return_conditional_losses_201443372
maxpool_1/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall"maxpool_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_201444212!
dropout/StatefulPartitionedCall?
c_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0c_2_20144461c_2_20144463*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????8@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_2_layer_call_and_return_conditional_losses_201444502
c_2/StatefulPartitionedCall?
maxpool_2/PartitionedCallPartitionedCall$c_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_maxpool_2_layer_call_and_return_conditional_losses_201443492
maxpool_2/PartitionedCall?
c_3/StatefulPartitionedCallStatefulPartitionedCall"maxpool_2/PartitionedCall:output:0c_3_20144489c_3_20144491*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_c_3_layer_call_and_return_conditional_losses_201444782
c_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall$c_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_layer_call_and_return_conditional_losses_201445002
flatten/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_20144530dense_1_20144532*
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
GPU2*0J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_201445192!
dense_1/StatefulPartitionedCall?
output/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0output_20144556output_20144558*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_output_layer_call_and_return_conditional_losses_201445452 
output/StatefulPartitionedCall?
IdentityIdentity'output/StatefulPartitionedCall:output:0^c_1/StatefulPartitionedCall^c_2/StatefulPartitionedCall^c_3/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:?????????5?::::::::::2:
c_1/StatefulPartitionedCallc_1/StatefulPartitionedCall2:
c_2/StatefulPartitionedCallc_2/StatefulPartitionedCall2:
c_3/StatefulPartitionedCallc_3/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:] Y
0
_output_shapes
:?????????5?
%
_user_specified_namespectrogram"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
L
spectrogram=
serving_default_spectrogram:0?????????5?:
output0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?F
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	variables
regularization_losses
trainable_variables
	keras_api

signatures
y_default_save_signature
*z&call_and_return_all_conditional_losses
{__call__"?C
_tf_keras_sequential?B{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 53, 2049, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "spectrogram"}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [53, 2049, 1]}}}, {"class_name": "Conv2D", "config": {"name": "c_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "maxpool_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 4]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "c_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "maxpool_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "c_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 6, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 53, 2049, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 53, 2049, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "spectrogram"}}, {"class_name": "Reshape", "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [53, 2049, 1]}}}, {"class_name": "Conv2D", "config": {"name": "c_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "maxpool_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 4]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "c_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "maxpool_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "c_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 6, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
?
	variables
regularization_losses
trainable_variables
	keras_api
*|&call_and_return_all_conditional_losses
}__call__"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [53, 2049, 1]}}}
?	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*~&call_and_return_all_conditional_losses
__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "c_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "c_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 53, 2049, 1]}}
?
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "maxpool_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "maxpool_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 4]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 4]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
	variables
regularization_losses
 trainable_variables
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
?	

"kernel
#bias
$	variables
%regularization_losses
&trainable_variables
'	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "c_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "c_2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13, 170, 32]}}
?
(	variables
)regularization_losses
*trainable_variables
+	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "maxpool_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "maxpool_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

,kernel
-bias
.	variables
/regularization_losses
0trainable_variables
1	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "c_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "c_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 3]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 28, 64]}}
?
2	variables
3regularization_losses
4trainable_variables
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

6kernel
7bias
8	variables
9regularization_losses
:trainable_variables
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

<kernel
=bias
>	variables
?regularization_losses
@trainable_variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "units": 6, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
f
0
1
"2
#3
,4
-5
66
77
<8
=9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
"2
#3
,4
-5
66
77
<8
=9"
trackable_list_wrapper
?
Blayer_regularization_losses
Clayer_metrics
Dnon_trainable_variables
	variables
regularization_losses

Elayers
Fmetrics
trainable_variables
{__call__
y_default_save_signature
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Glayer_regularization_losses
Hlayer_metrics
Inon_trainable_variables
	variables
regularization_losses

Jlayers
Kmetrics
trainable_variables
}__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
$:" 2
c_1/kernel
: 2c_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Llayer_regularization_losses
Mlayer_metrics
Nnon_trainable_variables
	variables
regularization_losses

Olayers
Pmetrics
trainable_variables
__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Qlayer_regularization_losses
Rlayer_metrics
Snon_trainable_variables
	variables
regularization_losses

Tlayers
Umetrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Vlayer_regularization_losses
Wlayer_metrics
Xnon_trainable_variables
	variables
regularization_losses

Ylayers
Zmetrics
 trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:" @2
c_2/kernel
:@2c_2/bias
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
[layer_regularization_losses
\layer_metrics
]non_trainable_variables
$	variables
%regularization_losses

^layers
_metrics
&trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
`layer_regularization_losses
alayer_metrics
bnon_trainable_variables
(	variables
)regularization_losses

clayers
dmetrics
*trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"@ 2
c_3/kernel
: 2c_3/bias
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?
elayer_regularization_losses
flayer_metrics
gnon_trainable_variables
.	variables
/regularization_losses

hlayers
imetrics
0trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
jlayer_regularization_losses
klayer_metrics
lnon_trainable_variables
2	variables
3regularization_losses

mlayers
nmetrics
4trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_1/kernel
:?2dense_1/bias
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?
olayer_regularization_losses
player_metrics
qnon_trainable_variables
8	variables
9regularization_losses

rlayers
smetrics
:trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	?2output/kernel
:2output/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
tlayer_regularization_losses
ulayer_metrics
vnon_trainable_variables
>	variables
?regularization_losses

wlayers
xmetrics
@trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
f
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
9"
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
?2?
#__inference__wrapped_model_20144331?
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
annotations? *3?0
.?+
spectrogram?????????5?
?2?
H__inference_sequential_layer_call_and_return_conditional_losses_20144596
H__inference_sequential_layer_call_and_return_conditional_losses_20144562
H__inference_sequential_layer_call_and_return_conditional_losses_20144855
H__inference_sequential_layer_call_and_return_conditional_losses_20144802?
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
?2?
-__inference_sequential_layer_call_fn_20144905
-__inference_sequential_layer_call_fn_20144880
-__inference_sequential_layer_call_fn_20144656
-__inference_sequential_layer_call_fn_20144715?
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
?2?
E__inference_reshape_layer_call_and_return_conditional_losses_20144919?
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
*__inference_reshape_layer_call_fn_20144924?
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
A__inference_c_1_layer_call_and_return_conditional_losses_20144935?
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
&__inference_c_1_layer_call_fn_20144944?
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
G__inference_maxpool_1_layer_call_and_return_conditional_losses_20144337?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_maxpool_1_layer_call_fn_20144343?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_dropout_layer_call_and_return_conditional_losses_20144956
E__inference_dropout_layer_call_and_return_conditional_losses_20144961?
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
*__inference_dropout_layer_call_fn_20144971
*__inference_dropout_layer_call_fn_20144966?
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
A__inference_c_2_layer_call_and_return_conditional_losses_20144982?
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
&__inference_c_2_layer_call_fn_20144991?
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
G__inference_maxpool_2_layer_call_and_return_conditional_losses_20144349?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_maxpool_2_layer_call_fn_20144355?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
A__inference_c_3_layer_call_and_return_conditional_losses_20145002?
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
&__inference_c_3_layer_call_fn_20145011?
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
E__inference_flatten_layer_call_and_return_conditional_losses_20145017?
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
*__inference_flatten_layer_call_fn_20145022?
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
E__inference_dense_1_layer_call_and_return_conditional_losses_20145033?
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
*__inference_dense_1_layer_call_fn_20145042?
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
D__inference_output_layer_call_and_return_conditional_losses_20145052?
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
)__inference_output_layer_call_fn_20145061?
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
&__inference_signature_wrapper_20144742spectrogram"?
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
 ?
#__inference__wrapped_model_20144331|
"#,-67<==?:
3?0
.?+
spectrogram?????????5?
? "/?,
*
output ?
output??????????
A__inference_c_1_layer_call_and_return_conditional_losses_20144935n8?5
.?+
)?&
inputs?????????5?
? ".?+
$?!
0?????????? 
? ?
&__inference_c_1_layer_call_fn_20144944a8?5
.?+
)?&
inputs?????????5?
? "!??????????? ?
A__inference_c_2_layer_call_and_return_conditional_losses_20144982m"#8?5
.?+
)?&
inputs?????????? 
? "-?*
#? 
0?????????8@
? ?
&__inference_c_2_layer_call_fn_20144991`"#8?5
.?+
)?&
inputs?????????? 
? " ??????????8@?
A__inference_c_3_layer_call_and_return_conditional_losses_20145002l,-7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0????????? 
? ?
&__inference_c_3_layer_call_fn_20145011_,-7?4
-?*
(?%
inputs?????????@
? " ?????????? ?
E__inference_dense_1_layer_call_and_return_conditional_losses_20145033^670?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_dense_1_layer_call_fn_20145042Q670?-
&?#
!?
inputs??????????
? "????????????
E__inference_dropout_layer_call_and_return_conditional_losses_20144956n<?9
2?/
)?&
inputs?????????? 
p
? ".?+
$?!
0?????????? 
? ?
E__inference_dropout_layer_call_and_return_conditional_losses_20144961n<?9
2?/
)?&
inputs?????????? 
p 
? ".?+
$?!
0?????????? 
? ?
*__inference_dropout_layer_call_fn_20144966a<?9
2?/
)?&
inputs?????????? 
p
? "!??????????? ?
*__inference_dropout_layer_call_fn_20144971a<?9
2?/
)?&
inputs?????????? 
p 
? "!??????????? ?
E__inference_flatten_layer_call_and_return_conditional_losses_20145017a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????
? ?
*__inference_flatten_layer_call_fn_20145022T7?4
-?*
(?%
inputs????????? 
? "????????????
G__inference_maxpool_1_layer_call_and_return_conditional_losses_20144337?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
,__inference_maxpool_1_layer_call_fn_20144343?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_maxpool_2_layer_call_and_return_conditional_losses_20144349?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
,__inference_maxpool_2_layer_call_fn_20144355?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
D__inference_output_layer_call_and_return_conditional_losses_20145052]<=0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
)__inference_output_layer_call_fn_20145061P<=0?-
&?#
!?
inputs??????????
? "???????????
E__inference_reshape_layer_call_and_return_conditional_losses_20144919j8?5
.?+
)?&
inputs?????????5?
? ".?+
$?!
0?????????5?
? ?
*__inference_reshape_layer_call_fn_20144924]8?5
.?+
)?&
inputs?????????5?
? "!??????????5??
H__inference_sequential_layer_call_and_return_conditional_losses_20144562z
"#,-67<=E?B
;?8
.?+
spectrogram?????????5?
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_layer_call_and_return_conditional_losses_20144596z
"#,-67<=E?B
;?8
.?+
spectrogram?????????5?
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_layer_call_and_return_conditional_losses_20144802u
"#,-67<=@?=
6?3
)?&
inputs?????????5?
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_layer_call_and_return_conditional_losses_20144855u
"#,-67<=@?=
6?3
)?&
inputs?????????5?
p 

 
? "%?"
?
0?????????
? ?
-__inference_sequential_layer_call_fn_20144656m
"#,-67<=E?B
;?8
.?+
spectrogram?????????5?
p

 
? "???????????
-__inference_sequential_layer_call_fn_20144715m
"#,-67<=E?B
;?8
.?+
spectrogram?????????5?
p 

 
? "???????????
-__inference_sequential_layer_call_fn_20144880h
"#,-67<=@?=
6?3
)?&
inputs?????????5?
p

 
? "???????????
-__inference_sequential_layer_call_fn_20144905h
"#,-67<=@?=
6?3
)?&
inputs?????????5?
p 

 
? "???????????
&__inference_signature_wrapper_20144742?
"#,-67<=L?I
? 
B??
=
spectrogram.?+
spectrogram?????????5?"/?,
*
output ?
output?????????