??
??
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
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ٯ
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:6'*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:6'*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:'*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:'*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:'6*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:'6*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:6*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:66* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:66*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:6*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:6*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:6	* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:6	*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:	*
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

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
w
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
?

 kernel
!bias
#"_self_saveable_object_factories
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?

'kernel
(bias
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
 
 
 
8
0
1
2
3
 4
!5
'6
(7
8
0
1
2
3
 4
!5
'6
(7
 
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
		variables

trainable_variables
regularization_losses
 
 
 
 
?
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1

 0
!1
 
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
#	variables
$trainable_variables
%regularization_losses
[Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_11/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
 
?
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
*	variables
+trainable_variables
,regularization_losses
 
#
0
1
2
3
4

L0
M1
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
4
	Ntotal
	Ocount
P	variables
Q	keras_api
D
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

P	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

U	variables
?
serving_default_flatten_2_inputPlaceholder*'
_output_shapes
:?????????6*
dtype0*
shape:?????????6
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_flatten_2_inputdense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_8388
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2*
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
GPU 2J 8? *&
f!R
__inference__traced_save_8648
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_8/kerneldense_8/biasdense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/biastotalcounttotal_1count_1*
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
GPU 2J 8? *)
f$R"
 __inference__traced_restore_8694??
?

?
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_8104

inputs0
matmul_readvariableop_resource:6'-
biasadd_readvariableop_resource:'
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:6'*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:'*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????'Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????'w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?	
?
)__inference_cube_depth_layer_call_fn_8430

inputs
unknown:6'
	unknown_0:'
	unknown_1:'6
	unknown_2:6
	unknown_3:66
	unknown_4:6
	unknown_5:6	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_cube_depth_layer_call_and_return_conditional_losses_8275o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?
?
-__inference_hidden_layer_1_layer_call_fn_8518

inputs
unknown:6'
	unknown_0:'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_8104o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????'`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?(
?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8464

inputs?
-hidden_layer_1_matmul_readvariableop_resource:6'<
.hidden_layer_1_biasadd_readvariableop_resource:'?
-hidden_layer_2_matmul_readvariableop_resource:'6<
.hidden_layer_2_biasadd_readvariableop_resource:6?
-hidden_layer_3_matmul_readvariableop_resource:66<
.hidden_layer_3_biasadd_readvariableop_resource:67
%output_matmul_readvariableop_resource:6	4
&output_biasadd_readvariableop_resource:	
identity??%hidden_layer_1/BiasAdd/ReadVariableOp?$hidden_layer_1/MatMul/ReadVariableOp?%hidden_layer_2/BiasAdd/ReadVariableOp?$hidden_layer_2/MatMul/ReadVariableOp?%hidden_layer_3/BiasAdd/ReadVariableOp?$hidden_layer_3/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp\
input/ConstConst*
_output_shapes
:*
dtype0*
valueB"????6   h
input/ReshapeReshapeinputsinput/Const:output:0*
T0*'
_output_shapes
:?????????6?
$hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes

:6'*
dtype0?
hidden_layer_1/MatMulMatMulinput/Reshape:output:0,hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'?
%hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype0?
hidden_layer_1/BiasAddBiasAddhidden_layer_1/MatMul:product:0-hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'t
hidden_layer_1/SigmoidSigmoidhidden_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????'?
$hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes

:'6*
dtype0?
hidden_layer_2/MatMulMatMulhidden_layer_1/Sigmoid:y:0,hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6?
%hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0?
hidden_layer_2/BiasAddBiasAddhidden_layer_2/MatMul:product:0-hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6n
hidden_layer_2/ReluReluhidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????6?
$hidden_layer_3/MatMul/ReadVariableOpReadVariableOp-hidden_layer_3_matmul_readvariableop_resource*
_output_shapes

:66*
dtype0?
hidden_layer_3/MatMulMatMul!hidden_layer_2/Relu:activations:0,hidden_layer_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6?
%hidden_layer_3/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_3_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0?
hidden_layer_3/BiasAddBiasAddhidden_layer_3/MatMul:product:0-hidden_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6t
hidden_layer_3/SigmoidSigmoidhidden_layer_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????6?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:6	*
dtype0?
output/MatMulMatMulhidden_layer_3/Sigmoid:y:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp&^hidden_layer_1/BiasAdd/ReadVariableOp%^hidden_layer_1/MatMul/ReadVariableOp&^hidden_layer_2/BiasAdd/ReadVariableOp%^hidden_layer_2/MatMul/ReadVariableOp&^hidden_layer_3/BiasAdd/ReadVariableOp%^hidden_layer_3/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 2N
%hidden_layer_1/BiasAdd/ReadVariableOp%hidden_layer_1/BiasAdd/ReadVariableOp2L
$hidden_layer_1/MatMul/ReadVariableOp$hidden_layer_1/MatMul/ReadVariableOp2N
%hidden_layer_2/BiasAdd/ReadVariableOp%hidden_layer_2/BiasAdd/ReadVariableOp2L
$hidden_layer_2/MatMul/ReadVariableOp$hidden_layer_2/MatMul/ReadVariableOp2N
%hidden_layer_3/BiasAdd/ReadVariableOp%hidden_layer_3/BiasAdd/ReadVariableOp2L
$hidden_layer_3/MatMul/ReadVariableOp$hidden_layer_3/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?
?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8162

inputs%
hidden_layer_1_8105:6'!
hidden_layer_1_8107:'%
hidden_layer_2_8122:'6!
hidden_layer_2_8124:6%
hidden_layer_3_8139:66!
hidden_layer_3_8141:6
output_8156:6	
output_8158:	
identity??&hidden_layer_1/StatefulPartitionedCall?&hidden_layer_2/StatefulPartitionedCall?&hidden_layer_3/StatefulPartitionedCall?output/StatefulPartitionedCall?
input/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_8091?
&hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput/PartitionedCall:output:0hidden_layer_1_8105hidden_layer_1_8107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_8104?
&hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_8122hidden_layer_2_8124*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_8121?
&hidden_layer_3/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_2/StatefulPartitionedCall:output:0hidden_layer_3_8139hidden_layer_3_8141*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_8138?
output/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_3/StatefulPartitionedCall:output:0output_8156output_8158*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_8155v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp'^hidden_layer_1/StatefulPartitionedCall'^hidden_layer_2/StatefulPartitionedCall'^hidden_layer_3/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 2P
&hidden_layer_1/StatefulPartitionedCall&hidden_layer_1/StatefulPartitionedCall2P
&hidden_layer_2/StatefulPartitionedCall&hidden_layer_2/StatefulPartitionedCall2P
&hidden_layer_3/StatefulPartitionedCall&hidden_layer_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?"
?
__inference__traced_save_8648
file_prefix-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*_
_input_shapesN
L: :6':':'6:6:66:6:6	:	: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:6': 

_output_shapes
:':$ 

_output_shapes

:'6: 

_output_shapes
:6:$ 

_output_shapes

:66: 

_output_shapes
:6:$ 

_output_shapes

:6	: 

_output_shapes
:	:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
)__inference_cube_depth_layer_call_fn_8181
flatten_2_input
unknown:6'
	unknown_0:'
	unknown_1:'6
	unknown_2:6
	unknown_3:66
	unknown_4:6
	unknown_5:6	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_cube_depth_layer_call_and_return_conditional_losses_8162o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????6
)
_user_specified_nameflatten_2_input
?

?
@__inference_output_layer_call_and_return_conditional_losses_8155

inputs0
matmul_readvariableop_resource:6	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:6	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????	`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?
?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8340
flatten_2_input%
hidden_layer_1_8319:6'!
hidden_layer_1_8321:'%
hidden_layer_2_8324:'6!
hidden_layer_2_8326:6%
hidden_layer_3_8329:66!
hidden_layer_3_8331:6
output_8334:6	
output_8336:	
identity??&hidden_layer_1/StatefulPartitionedCall?&hidden_layer_2/StatefulPartitionedCall?&hidden_layer_3/StatefulPartitionedCall?output/StatefulPartitionedCall?
input/PartitionedCallPartitionedCallflatten_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_8091?
&hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput/PartitionedCall:output:0hidden_layer_1_8319hidden_layer_1_8321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_8104?
&hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_8324hidden_layer_2_8326*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_8121?
&hidden_layer_3/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_2/StatefulPartitionedCall:output:0hidden_layer_3_8329hidden_layer_3_8331*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_8138?
output/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_3/StatefulPartitionedCall:output:0output_8334output_8336*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_8155v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp'^hidden_layer_1/StatefulPartitionedCall'^hidden_layer_2/StatefulPartitionedCall'^hidden_layer_3/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 2P
&hidden_layer_1/StatefulPartitionedCall&hidden_layer_1/StatefulPartitionedCall2P
&hidden_layer_2/StatefulPartitionedCall&hidden_layer_2/StatefulPartitionedCall2P
&hidden_layer_3/StatefulPartitionedCall&hidden_layer_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:X T
'
_output_shapes
:?????????6
)
_user_specified_nameflatten_2_input
?
?
-__inference_hidden_layer_2_layer_call_fn_8538

inputs
unknown:'6
	unknown_0:6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_8121o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????6`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????': : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?
?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8275

inputs%
hidden_layer_1_8254:6'!
hidden_layer_1_8256:'%
hidden_layer_2_8259:'6!
hidden_layer_2_8261:6%
hidden_layer_3_8264:66!
hidden_layer_3_8266:6
output_8269:6	
output_8271:	
identity??&hidden_layer_1/StatefulPartitionedCall?&hidden_layer_2/StatefulPartitionedCall?&hidden_layer_3/StatefulPartitionedCall?output/StatefulPartitionedCall?
input/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_8091?
&hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput/PartitionedCall:output:0hidden_layer_1_8254hidden_layer_1_8256*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_8104?
&hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_8259hidden_layer_2_8261*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_8121?
&hidden_layer_3/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_2/StatefulPartitionedCall:output:0hidden_layer_3_8264hidden_layer_3_8266*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_8138?
output/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_3/StatefulPartitionedCall:output:0output_8269output_8271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_8155v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp'^hidden_layer_1/StatefulPartitionedCall'^hidden_layer_2/StatefulPartitionedCall'^hidden_layer_3/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 2P
&hidden_layer_1/StatefulPartitionedCall&hidden_layer_1/StatefulPartitionedCall2P
&hidden_layer_2/StatefulPartitionedCall&hidden_layer_2/StatefulPartitionedCall2P
&hidden_layer_3/StatefulPartitionedCall&hidden_layer_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?0
?
__inference__wrapped_model_8078
flatten_2_inputJ
8cube_depth_hidden_layer_1_matmul_readvariableop_resource:6'G
9cube_depth_hidden_layer_1_biasadd_readvariableop_resource:'J
8cube_depth_hidden_layer_2_matmul_readvariableop_resource:'6G
9cube_depth_hidden_layer_2_biasadd_readvariableop_resource:6J
8cube_depth_hidden_layer_3_matmul_readvariableop_resource:66G
9cube_depth_hidden_layer_3_biasadd_readvariableop_resource:6B
0cube_depth_output_matmul_readvariableop_resource:6	?
1cube_depth_output_biasadd_readvariableop_resource:	
identity??0cube_depth/hidden_layer_1/BiasAdd/ReadVariableOp?/cube_depth/hidden_layer_1/MatMul/ReadVariableOp?0cube_depth/hidden_layer_2/BiasAdd/ReadVariableOp?/cube_depth/hidden_layer_2/MatMul/ReadVariableOp?0cube_depth/hidden_layer_3/BiasAdd/ReadVariableOp?/cube_depth/hidden_layer_3/MatMul/ReadVariableOp?(cube_depth/output/BiasAdd/ReadVariableOp?'cube_depth/output/MatMul/ReadVariableOpg
cube_depth/input/ConstConst*
_output_shapes
:*
dtype0*
valueB"????6   ?
cube_depth/input/ReshapeReshapeflatten_2_inputcube_depth/input/Const:output:0*
T0*'
_output_shapes
:?????????6?
/cube_depth/hidden_layer_1/MatMul/ReadVariableOpReadVariableOp8cube_depth_hidden_layer_1_matmul_readvariableop_resource*
_output_shapes

:6'*
dtype0?
 cube_depth/hidden_layer_1/MatMulMatMul!cube_depth/input/Reshape:output:07cube_depth/hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'?
0cube_depth/hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp9cube_depth_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype0?
!cube_depth/hidden_layer_1/BiasAddBiasAdd*cube_depth/hidden_layer_1/MatMul:product:08cube_depth/hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'?
!cube_depth/hidden_layer_1/SigmoidSigmoid*cube_depth/hidden_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????'?
/cube_depth/hidden_layer_2/MatMul/ReadVariableOpReadVariableOp8cube_depth_hidden_layer_2_matmul_readvariableop_resource*
_output_shapes

:'6*
dtype0?
 cube_depth/hidden_layer_2/MatMulMatMul%cube_depth/hidden_layer_1/Sigmoid:y:07cube_depth/hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6?
0cube_depth/hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp9cube_depth_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0?
!cube_depth/hidden_layer_2/BiasAddBiasAdd*cube_depth/hidden_layer_2/MatMul:product:08cube_depth/hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6?
cube_depth/hidden_layer_2/ReluRelu*cube_depth/hidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????6?
/cube_depth/hidden_layer_3/MatMul/ReadVariableOpReadVariableOp8cube_depth_hidden_layer_3_matmul_readvariableop_resource*
_output_shapes

:66*
dtype0?
 cube_depth/hidden_layer_3/MatMulMatMul,cube_depth/hidden_layer_2/Relu:activations:07cube_depth/hidden_layer_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6?
0cube_depth/hidden_layer_3/BiasAdd/ReadVariableOpReadVariableOp9cube_depth_hidden_layer_3_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0?
!cube_depth/hidden_layer_3/BiasAddBiasAdd*cube_depth/hidden_layer_3/MatMul:product:08cube_depth/hidden_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6?
!cube_depth/hidden_layer_3/SigmoidSigmoid*cube_depth/hidden_layer_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????6?
'cube_depth/output/MatMul/ReadVariableOpReadVariableOp0cube_depth_output_matmul_readvariableop_resource*
_output_shapes

:6	*
dtype0?
cube_depth/output/MatMulMatMul%cube_depth/hidden_layer_3/Sigmoid:y:0/cube_depth/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
(cube_depth/output/BiasAdd/ReadVariableOpReadVariableOp1cube_depth_output_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
cube_depth/output/BiasAddBiasAdd"cube_depth/output/MatMul:product:00cube_depth/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	z
cube_depth/output/SoftmaxSoftmax"cube_depth/output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	r
IdentityIdentity#cube_depth/output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp1^cube_depth/hidden_layer_1/BiasAdd/ReadVariableOp0^cube_depth/hidden_layer_1/MatMul/ReadVariableOp1^cube_depth/hidden_layer_2/BiasAdd/ReadVariableOp0^cube_depth/hidden_layer_2/MatMul/ReadVariableOp1^cube_depth/hidden_layer_3/BiasAdd/ReadVariableOp0^cube_depth/hidden_layer_3/MatMul/ReadVariableOp)^cube_depth/output/BiasAdd/ReadVariableOp(^cube_depth/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 2d
0cube_depth/hidden_layer_1/BiasAdd/ReadVariableOp0cube_depth/hidden_layer_1/BiasAdd/ReadVariableOp2b
/cube_depth/hidden_layer_1/MatMul/ReadVariableOp/cube_depth/hidden_layer_1/MatMul/ReadVariableOp2d
0cube_depth/hidden_layer_2/BiasAdd/ReadVariableOp0cube_depth/hidden_layer_2/BiasAdd/ReadVariableOp2b
/cube_depth/hidden_layer_2/MatMul/ReadVariableOp/cube_depth/hidden_layer_2/MatMul/ReadVariableOp2d
0cube_depth/hidden_layer_3/BiasAdd/ReadVariableOp0cube_depth/hidden_layer_3/BiasAdd/ReadVariableOp2b
/cube_depth/hidden_layer_3/MatMul/ReadVariableOp/cube_depth/hidden_layer_3/MatMul/ReadVariableOp2T
(cube_depth/output/BiasAdd/ReadVariableOp(cube_depth/output/BiasAdd/ReadVariableOp2R
'cube_depth/output/MatMul/ReadVariableOp'cube_depth/output/MatMul/ReadVariableOp:X T
'
_output_shapes
:?????????6
)
_user_specified_nameflatten_2_input
?
?
%__inference_output_layer_call_fn_8578

inputs
unknown:6	
	unknown_0:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_8155o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?
@
$__inference_input_layer_call_fn_8503

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_8091`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????6"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????6:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?	
?
"__inference_signature_wrapper_8388
flatten_2_input
unknown:6'
	unknown_0:'
	unknown_1:'6
	unknown_2:6
	unknown_3:66
	unknown_4:6
	unknown_5:6	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_8078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????6
)
_user_specified_nameflatten_2_input
?	
?
)__inference_cube_depth_layer_call_fn_8315
flatten_2_input
unknown:6'
	unknown_0:'
	unknown_1:'6
	unknown_2:6
	unknown_3:66
	unknown_4:6
	unknown_5:6	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_cube_depth_layer_call_and_return_conditional_losses_8275o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:?????????6
)
_user_specified_nameflatten_2_input
?

?
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_8549

inputs0
matmul_readvariableop_resource:'6-
biasadd_readvariableop_resource:6
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:'6*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:6*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????6a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????6w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?
?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8365
flatten_2_input%
hidden_layer_1_8344:6'!
hidden_layer_1_8346:'%
hidden_layer_2_8349:'6!
hidden_layer_2_8351:6%
hidden_layer_3_8354:66!
hidden_layer_3_8356:6
output_8359:6	
output_8361:	
identity??&hidden_layer_1/StatefulPartitionedCall?&hidden_layer_2/StatefulPartitionedCall?&hidden_layer_3/StatefulPartitionedCall?output/StatefulPartitionedCall?
input/PartitionedCallPartitionedCallflatten_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_input_layer_call_and_return_conditional_losses_8091?
&hidden_layer_1/StatefulPartitionedCallStatefulPartitionedCallinput/PartitionedCall:output:0hidden_layer_1_8344hidden_layer_1_8346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_8104?
&hidden_layer_2/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_1/StatefulPartitionedCall:output:0hidden_layer_2_8349hidden_layer_2_8351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_8121?
&hidden_layer_3/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_2/StatefulPartitionedCall:output:0hidden_layer_3_8354hidden_layer_3_8356*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_8138?
output/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer_3/StatefulPartitionedCall:output:0output_8359output_8361*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_output_layer_call_and_return_conditional_losses_8155v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp'^hidden_layer_1/StatefulPartitionedCall'^hidden_layer_2/StatefulPartitionedCall'^hidden_layer_3/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 2P
&hidden_layer_1/StatefulPartitionedCall&hidden_layer_1/StatefulPartitionedCall2P
&hidden_layer_2/StatefulPartitionedCall&hidden_layer_2/StatefulPartitionedCall2P
&hidden_layer_3/StatefulPartitionedCall&hidden_layer_3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:X T
'
_output_shapes
:?????????6
)
_user_specified_nameflatten_2_input
?

?
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_8138

inputs0
matmul_readvariableop_resource:66-
biasadd_readvariableop_resource:6
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:66*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:6*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????6Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????6w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?

?
@__inference_output_layer_call_and_return_conditional_losses_8589

inputs0
matmul_readvariableop_resource:6	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:6	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????	`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?	
?
)__inference_cube_depth_layer_call_fn_8409

inputs
unknown:6'
	unknown_0:'
	unknown_1:'6
	unknown_2:6
	unknown_3:66
	unknown_4:6
	unknown_5:6	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_cube_depth_layer_call_and_return_conditional_losses_8162o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?(
?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8498

inputs?
-hidden_layer_1_matmul_readvariableop_resource:6'<
.hidden_layer_1_biasadd_readvariableop_resource:'?
-hidden_layer_2_matmul_readvariableop_resource:'6<
.hidden_layer_2_biasadd_readvariableop_resource:6?
-hidden_layer_3_matmul_readvariableop_resource:66<
.hidden_layer_3_biasadd_readvariableop_resource:67
%output_matmul_readvariableop_resource:6	4
&output_biasadd_readvariableop_resource:	
identity??%hidden_layer_1/BiasAdd/ReadVariableOp?$hidden_layer_1/MatMul/ReadVariableOp?%hidden_layer_2/BiasAdd/ReadVariableOp?$hidden_layer_2/MatMul/ReadVariableOp?%hidden_layer_3/BiasAdd/ReadVariableOp?$hidden_layer_3/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp\
input/ConstConst*
_output_shapes
:*
dtype0*
valueB"????6   h
input/ReshapeReshapeinputsinput/Const:output:0*
T0*'
_output_shapes
:?????????6?
$hidden_layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource*
_output_shapes

:6'*
dtype0?
hidden_layer_1/MatMulMatMulinput/Reshape:output:0,hidden_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'?
%hidden_layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype0?
hidden_layer_1/BiasAddBiasAddhidden_layer_1/MatMul:product:0-hidden_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'t
hidden_layer_1/SigmoidSigmoidhidden_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????'?
$hidden_layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes

:'6*
dtype0?
hidden_layer_2/MatMulMatMulhidden_layer_1/Sigmoid:y:0,hidden_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6?
%hidden_layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0?
hidden_layer_2/BiasAddBiasAddhidden_layer_2/MatMul:product:0-hidden_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6n
hidden_layer_2/ReluReluhidden_layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????6?
$hidden_layer_3/MatMul/ReadVariableOpReadVariableOp-hidden_layer_3_matmul_readvariableop_resource*
_output_shapes

:66*
dtype0?
hidden_layer_3/MatMulMatMul!hidden_layer_2/Relu:activations:0,hidden_layer_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6?
%hidden_layer_3/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_3_biasadd_readvariableop_resource*
_output_shapes
:6*
dtype0?
hidden_layer_3/BiasAddBiasAddhidden_layer_3/MatMul:product:0-hidden_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6t
hidden_layer_3/SigmoidSigmoidhidden_layer_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????6?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:6	*
dtype0?
output/MatMulMatMulhidden_layer_3/Sigmoid:y:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp&^hidden_layer_1/BiasAdd/ReadVariableOp%^hidden_layer_1/MatMul/ReadVariableOp&^hidden_layer_2/BiasAdd/ReadVariableOp%^hidden_layer_2/MatMul/ReadVariableOp&^hidden_layer_3/BiasAdd/ReadVariableOp%^hidden_layer_3/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????6: : : : : : : : 2N
%hidden_layer_1/BiasAdd/ReadVariableOp%hidden_layer_1/BiasAdd/ReadVariableOp2L
$hidden_layer_1/MatMul/ReadVariableOp$hidden_layer_1/MatMul/ReadVariableOp2N
%hidden_layer_2/BiasAdd/ReadVariableOp%hidden_layer_2/BiasAdd/ReadVariableOp2L
$hidden_layer_2/MatMul/ReadVariableOp$hidden_layer_2/MatMul/ReadVariableOp2N
%hidden_layer_3/BiasAdd/ReadVariableOp%hidden_layer_3/BiasAdd/ReadVariableOp2L
$hidden_layer_3/MatMul/ReadVariableOp$hidden_layer_3/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?
?
-__inference_hidden_layer_3_layer_call_fn_8558

inputs
unknown:66
	unknown_0:6
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????6*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_8138o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????6`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?
[
?__inference_input_layer_call_and_return_conditional_losses_8091

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????6   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????6X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????6"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????6:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?

?
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_8121

inputs0
matmul_readvariableop_resource:'6-
biasadd_readvariableop_resource:6
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:'6*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:6*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????6a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????6w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?1
?
 __inference__traced_restore_8694
file_prefix1
assignvariableop_dense_8_kernel:6'-
assignvariableop_1_dense_8_bias:'3
!assignvariableop_2_dense_9_kernel:'6-
assignvariableop_3_dense_9_bias:64
"assignvariableop_4_dense_10_kernel:66.
 assignvariableop_5_dense_10_bias:64
"assignvariableop_6_dense_11_kernel:6	.
 assignvariableop_7_dense_11_bias:	"
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: 
identity_13??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_10_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_10_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_11_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_11_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
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
?
[
?__inference_input_layer_call_and_return_conditional_losses_8509

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????6   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????6X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????6"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????6:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?

?
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_8569

inputs0
matmul_readvariableop_resource:66-
biasadd_readvariableop_resource:6
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:66*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:6*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????6V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????6Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????6w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs
?

?
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_8529

inputs0
matmul_readvariableop_resource:6'-
biasadd_readvariableop_resource:'
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:6'*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:'*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????'Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????'w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????6: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????6
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
flatten_2_input8
!serving_default_flatten_2_input:0?????????6<
dense_110
StatefulPartitionedCall:0?????????	tensorflow/serving/predict:?e
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_default_save_signature"
_tf_keras_sequential
?
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
?

 kernel
!bias
#"_self_saveable_object_factories
#	variables
$trainable_variables
%regularization_losses
&	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
?

'kernel
(bias
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
,
dserving_default"
signature_map
 "
trackable_dict_wrapper
X
0
1
2
3
 4
!5
'6
(7"
trackable_list_wrapper
X
0
1
2
3
 4
!5
'6
(7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
		variables

trainable_variables
regularization_losses
W__call__
Y_default_save_signature
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
 :6'2dense_8/kernel
:'2dense_8/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
 :'62dense_9/kernel
:62dense_9/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
!:662dense_10/kernel
:62dense_10/bias
 "
trackable_dict_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
#	variables
$trainable_variables
%regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
!:6	2dense_11/kernel
:	2dense_11/bias
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
*	variables
+trainable_variables
,regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
L0
M1"
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
N
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
^
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
?2?
)__inference_cube_depth_layer_call_fn_8181
)__inference_cube_depth_layer_call_fn_8409
)__inference_cube_depth_layer_call_fn_8430
)__inference_cube_depth_layer_call_fn_8315?
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
D__inference_cube_depth_layer_call_and_return_conditional_losses_8464
D__inference_cube_depth_layer_call_and_return_conditional_losses_8498
D__inference_cube_depth_layer_call_and_return_conditional_losses_8340
D__inference_cube_depth_layer_call_and_return_conditional_losses_8365?
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
?B?
__inference__wrapped_model_8078flatten_2_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_input_layer_call_fn_8503?
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
?__inference_input_layer_call_and_return_conditional_losses_8509?
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
-__inference_hidden_layer_1_layer_call_fn_8518?
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
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_8529?
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
-__inference_hidden_layer_2_layer_call_fn_8538?
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
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_8549?
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
-__inference_hidden_layer_3_layer_call_fn_8558?
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
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_8569?
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
%__inference_output_layer_call_fn_8578?
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
@__inference_output_layer_call_and_return_conditional_losses_8589?
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
"__inference_signature_wrapper_8388flatten_2_input"?
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
__inference__wrapped_model_8078y !'(8?5
.?+
)?&
flatten_2_input?????????6
? "3?0
.
dense_11"?
dense_11?????????	?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8340s !'(@?=
6?3
)?&
flatten_2_input?????????6
p 

 
? "%?"
?
0?????????	
? ?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8365s !'(@?=
6?3
)?&
flatten_2_input?????????6
p

 
? "%?"
?
0?????????	
? ?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8464j !'(7?4
-?*
 ?
inputs?????????6
p 

 
? "%?"
?
0?????????	
? ?
D__inference_cube_depth_layer_call_and_return_conditional_losses_8498j !'(7?4
-?*
 ?
inputs?????????6
p

 
? "%?"
?
0?????????	
? ?
)__inference_cube_depth_layer_call_fn_8181f !'(@?=
6?3
)?&
flatten_2_input?????????6
p 

 
? "??????????	?
)__inference_cube_depth_layer_call_fn_8315f !'(@?=
6?3
)?&
flatten_2_input?????????6
p

 
? "??????????	?
)__inference_cube_depth_layer_call_fn_8409] !'(7?4
-?*
 ?
inputs?????????6
p 

 
? "??????????	?
)__inference_cube_depth_layer_call_fn_8430] !'(7?4
-?*
 ?
inputs?????????6
p

 
? "??????????	?
H__inference_hidden_layer_1_layer_call_and_return_conditional_losses_8529\/?,
%?"
 ?
inputs?????????6
? "%?"
?
0?????????'
? ?
-__inference_hidden_layer_1_layer_call_fn_8518O/?,
%?"
 ?
inputs?????????6
? "??????????'?
H__inference_hidden_layer_2_layer_call_and_return_conditional_losses_8549\/?,
%?"
 ?
inputs?????????'
? "%?"
?
0?????????6
? ?
-__inference_hidden_layer_2_layer_call_fn_8538O/?,
%?"
 ?
inputs?????????'
? "??????????6?
H__inference_hidden_layer_3_layer_call_and_return_conditional_losses_8569\ !/?,
%?"
 ?
inputs?????????6
? "%?"
?
0?????????6
? ?
-__inference_hidden_layer_3_layer_call_fn_8558O !/?,
%?"
 ?
inputs?????????6
? "??????????6?
?__inference_input_layer_call_and_return_conditional_losses_8509X/?,
%?"
 ?
inputs?????????6
? "%?"
?
0?????????6
? s
$__inference_input_layer_call_fn_8503K/?,
%?"
 ?
inputs?????????6
? "??????????6?
@__inference_output_layer_call_and_return_conditional_losses_8589\'(/?,
%?"
 ?
inputs?????????6
? "%?"
?
0?????????	
? x
%__inference_output_layer_call_fn_8578O'(/?,
%?"
 ?
inputs?????????6
? "??????????	?
"__inference_signature_wrapper_8388? !'(K?H
? 
A?>
<
flatten_2_input)?&
flatten_2_input?????????6"3?0
.
dense_11"?
dense_11?????????	