Š
ßĆ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
E
Relu
features"T
activations"T"
Ttype:
2	
„
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
Į
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
executor_typestring Ø
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint’’’’’’’’’
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.9.02unknown8õ
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:Č*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:Č*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:Č*
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:Č*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:Č*
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

gru_1/gru_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_namegru_1/gru_cell_1/bias

)gru_1/gru_cell_1/bias/Read/ReadVariableOpReadVariableOpgru_1/gru_cell_1/bias*
_output_shapes
:	*
dtype0
 
!gru_1/gru_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!gru_1/gru_cell_1/recurrent_kernel

5gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_1/gru_cell_1/recurrent_kernel* 
_output_shapes
:
*
dtype0

gru_1/gru_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*(
shared_namegru_1/gru_cell_1/kernel

+gru_1/gru_cell_1/kernel/Read/ReadVariableOpReadVariableOpgru_1/gru_cell_1/kernel*
_output_shapes
:	d*
dtype0
r
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_27/bias
k
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes
:*
dtype0
{
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_27/kernel
t
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes
:	*
dtype0
s
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
l
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes	
:*
dtype0
|
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_26/kernel
u
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel* 
_output_shapes
:
*
dtype0

embedding_11/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ód*(
shared_nameembedding_11/embeddings

+embedding_11/embeddings/Read/ReadVariableOpReadVariableOpembedding_11/embeddings* 
_output_shapes
:
Ód*
dtype0

NoOpNoOp
Ć1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ž0
valueō0Bń0 Bź0

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories*
Å
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings
#_self_saveable_object_factories*
ę
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec
# _self_saveable_object_factories*
Ė
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
#)_self_saveable_object_factories*
Ė
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
#2_self_saveable_object_factories*
<
0
31
42
53
'4
(5
06
17*
5
30
41
52
'3
(4
05
16*
* 
°
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
;trace_0
<trace_1
=trace_2
>trace_3* 
6
?trace_0
@trace_1
Atrace_2
Btrace_3* 
* 
* 

Cserving_default* 
* 

0*
* 
* 

Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Itrace_0* 

Jtrace_0* 
ke
VARIABLE_VALUEembedding_11/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 

30
41
52*

30
41
52*
* 


Kstates
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Qtrace_0
Rtrace_1
Strace_2
Ttrace_3* 
6
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_3* 
* 
ų
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator

3kernel
4recurrent_kernel
5bias
#`_self_saveable_object_factories*
* 
* 

'0
(1*

'0
(1*
* 

anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

ftrace_0* 

gtrace_0* 
_Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_26/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

00
11*

00
11*
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

mtrace_0* 

ntrace_0* 
_Y
VARIABLE_VALUEdense_27/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_27/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
WQ
VARIABLE_VALUEgru_1/gru_cell_1/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!gru_1/gru_cell_1/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgru_1/gru_cell_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

0*
 
0
1
2
3*

o0
p1
q2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

30
41
52*

30
41
52*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

wtrace_0
xtrace_1* 

ytrace_0
ztrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
{	variables
|	keras_api
	}total
	~count*
L
	variables
	keras_api

total

count

_fn_kwargs*
z
	variables
	keras_api
true_positives
true_negatives
false_positives
false_negatives*
* 
* 
* 
* 
* 
* 
* 
* 
* 

}0
~1*

{	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*

"serving_default_embedding_11_inputPlaceholder*'
_output_shapes
:’’’’’’’’’d*
dtype0*
shape:’’’’’’’’’d
ü
StatefulPartitionedCallStatefulPartitionedCall"serving_default_embedding_11_inputembedding_11/embeddingsgru_1/gru_cell_1/biasgru_1/gru_cell_1/kernel!gru_1/gru_cell_1/recurrent_kerneldense_26/kerneldense_26/biasdense_27/kerneldense_27/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_265249
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ü
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_11/embeddings/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp+gru_1/gru_cell_1/kernel/Read/ReadVariableOp5gru_1/gru_cell_1/recurrent_kernel/Read/ReadVariableOp)gru_1/gru_cell_1/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOpConst*
Tin
2*
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_266539
·
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_11/embeddingsdense_26/kerneldense_26/biasdense_27/kerneldense_27/biasgru_1/gru_cell_1/kernel!gru_1/gru_cell_1/recurrent_kernelgru_1/gru_cell_1/biastotal_1count_1totalcounttrue_positivestrue_negativesfalse_positivesfalse_negatives*
Tin
2*
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_266597ē
§

ų
D__inference_dense_26_layer_call_and_return_conditional_losses_264843

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ü
Ŗ
while_cond_265921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_265921___redundant_placeholder04
0while_while_cond_265921___redundant_placeholder14
0while_while_cond_265921___redundant_placeholder24
0while_while_cond_265921___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Ü
Ŗ
while_cond_264733
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_264733___redundant_placeholder04
0while_while_cond_264733___redundant_placeholder14
0while_while_cond_264733___redundant_placeholder24
0while_while_cond_264733___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
µN

A__inference_gru_1_layer_call_and_return_conditional_losses_266322

inputs6
#gru_cell_46_readvariableop_resource:	=
*gru_cell_46_matmul_readvariableop_resource:	d@
,gru_cell_46_matmul_1_readvariableop_resource:

identity¢!gru_cell_46/MatMul/ReadVariableOp¢#gru_cell_46/MatMul_1/ReadVariableOp¢gru_cell_46/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ū
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_mask
gru_cell_46/ReadVariableOpReadVariableOp#gru_cell_46_readvariableop_resource*
_output_shapes
:	*
dtype0y
gru_cell_46/unstackUnpack"gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
!gru_cell_46/MatMul/ReadVariableOpReadVariableOp*gru_cell_46_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
gru_cell_46/MatMulMatMulstrided_slice_2:output:0)gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAddBiasAddgru_cell_46/MatMul:product:0gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ź
gru_cell_46/splitSplit$gru_cell_46/split/split_dim:output:0gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_46_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_46/MatMul_1MatMulzeros:output:0+gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAdd_1BiasAddgru_cell_46/MatMul_1:product:0gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’h
gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ł
gru_cell_46/split_1SplitVgru_cell_46/BiasAdd_1:output:0gru_cell_46/Const:output:0&gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
gru_cell_46/addAddV2gru_cell_46/split:output:0gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/SigmoidSigmoidgru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/add_1AddV2gru_cell_46/split:output:1gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’j
gru_cell_46/Sigmoid_1Sigmoidgru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mulMulgru_cell_46/Sigmoid_1:y:0gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’~
gru_cell_46/add_2AddV2gru_cell_46/split:output:2gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
gru_cell_46/ReluRelugru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’t
gru_cell_46/mul_1Mulgru_cell_46/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’V
gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
gru_cell_46/subSubgru_cell_46/sub/x:output:0gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mul_2Mulgru_cell_46/sub:z:0gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’{
gru_cell_46/add_3AddV2gru_cell_46/mul_1:z:0gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_46_readvariableop_resource*gru_cell_46_matmul_readvariableop_resource,gru_cell_46_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_266232*
condR
while_cond_266231*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’µ
NoOpNoOp"^gru_cell_46/MatMul/ReadVariableOp$^gru_cell_46/MatMul_1/ReadVariableOp^gru_cell_46/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’dd: : : 2F
!gru_cell_46/MatMul/ReadVariableOp!gru_cell_46/MatMul/ReadVariableOp2J
#gru_cell_46/MatMul_1/ReadVariableOp#gru_cell_46/MatMul_1/ReadVariableOp28
gru_cell_46/ReadVariableOpgru_cell_46/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’dd
 
_user_specified_nameinputs
©
Ü
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_266468

inputs
states_0*
readvariableop_resource:	1
matmul_readvariableop_resource:	d4
 matmul_1_readvariableop_resource:

identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’¦
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:’’’’’’’’’c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’V
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:’’’’’’’’’J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:’’’’’’’’’d:’’’’’’’’’: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0
ž

gru_1_while_cond_265536(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2*
&gru_1_while_less_gru_1_strided_slice_1@
<gru_1_while_gru_1_while_cond_265536___redundant_placeholder0@
<gru_1_while_gru_1_while_cond_265536___redundant_placeholder1@
<gru_1_while_gru_1_while_cond_265536___redundant_placeholder2@
<gru_1_while_gru_1_while_cond_265536___redundant_placeholder3
gru_1_while_identity
z
gru_1/while/LessLessgru_1_while_placeholder&gru_1_while_less_gru_1_strided_slice_1*
T0*
_output_shapes
: W
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_1_while_identitygru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
¾

Ü
,__inference_gru_cell_46_layer_call_fn_266390

inputs
states_0
unknown:	
	unknown_0:	d
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_264522p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:’’’’’’’’’d:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0
©
Ü
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_266429

inputs
states_0*
readvariableop_resource:	1
matmul_readvariableop_resource:	d4
 matmul_1_readvariableop_resource:

identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’¦
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:’’’’’’’’’c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’V
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:’’’’’’’’’J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:’’’’’’’’’d:’’’’’’’’’: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0
ż
ø
&__inference_gru_1_layer_call_fn_265691

inputs
unknown:	
	unknown_0:	d
	unknown_1:

identity¢StatefulPartitionedCallē
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_264824p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’dd
 
_user_specified_nameinputs
Ü
Ŗ
while_cond_264574
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_264574___redundant_placeholder04
0while_while_cond_264574___redundant_placeholder14
0while_while_cond_264574___redundant_placeholder24
0while_while_cond_264574___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Ü
Ŗ
while_cond_266231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_266231___redundant_placeholder04
0while_while_cond_266231___redundant_placeholder14
0while_while_cond_266231___redundant_placeholder24
0while_while_cond_266231___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
5

A__inference_gru_1_layer_call_and_return_conditional_losses_264456

inputs%
gru_cell_46_264378:	%
gru_cell_46_264380:	d&
gru_cell_46_264382:

identity¢#gru_cell_46/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ū
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_maskĪ
#gru_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_46_264378gru_cell_46_264380gru_cell_46_264382*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_264377n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ż
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_46_264378gru_cell_46_264380gru_cell_46_264382*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_264391*
condR
while_cond_264390*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’t
NoOpNoOp$^gru_cell_46/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’d: : : 2J
#gru_cell_46/StatefulPartitionedCall#gru_cell_46/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’d
 
_user_specified_nameinputs
½>

while_body_265922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0>
+while_gru_cell_46_readvariableop_resource_0:	E
2while_gru_cell_46_matmul_readvariableop_resource_0:	dH
4while_gru_cell_46_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor<
)while_gru_cell_46_readvariableop_resource:	C
0while_gru_cell_46_matmul_readvariableop_resource:	dF
2while_gru_cell_46_matmul_1_readvariableop_resource:
¢'while/gru_cell_46/MatMul/ReadVariableOp¢)while/gru_cell_46/MatMul_1/ReadVariableOp¢ while/gru_cell_46/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
 while/gru_cell_46/ReadVariableOpReadVariableOp+while_gru_cell_46_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_46/unstackUnpack(while/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
'while/gru_cell_46/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ø
while/gru_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/BiasAddBiasAdd"while/gru_cell_46/MatMul:product:0"while/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
!while/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ü
while/gru_cell_46/splitSplit*while/gru_cell_46/split/split_dim:output:0"while/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split 
)while/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_46_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_46/MatMul_1MatMulwhile_placeholder_21while/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’£
while/gru_cell_46/BiasAdd_1BiasAdd$while/gru_cell_46/MatMul_1:product:0"while/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’l
while/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’n
#while/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
while/gru_cell_46/split_1SplitV$while/gru_cell_46/BiasAdd_1:output:0 while/gru_cell_46/Const:output:0,while/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
while/gru_cell_46/addAddV2 while/gru_cell_46/split:output:0"while/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
while/gru_cell_46/SigmoidSigmoidwhile/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_1AddV2 while/gru_cell_46/split:output:1"while/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’v
while/gru_cell_46/Sigmoid_1Sigmoidwhile/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mulMulwhile/gru_cell_46/Sigmoid_1:y:0"while/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_2AddV2 while/gru_cell_46/split:output:2while/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
while/gru_cell_46/ReluReluwhile/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_1Mulwhile/gru_cell_46/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’\
while/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_46/subSub while/gru_cell_46/sub/x:output:0while/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_2Mulwhile/gru_cell_46/sub:z:0$while/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_3AddV2while/gru_cell_46/mul_1:z:0while/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ģ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_46/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/gru_cell_46/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Å

while/NoOpNoOp(^while/gru_cell_46/MatMul/ReadVariableOp*^while/gru_cell_46/MatMul_1/ReadVariableOp!^while/gru_cell_46/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "j
2while_gru_cell_46_matmul_1_readvariableop_resource4while_gru_cell_46_matmul_1_readvariableop_resource_0"f
0while_gru_cell_46_matmul_readvariableop_resource2while_gru_cell_46_matmul_readvariableop_resource_0"X
)while_gru_cell_46_readvariableop_resource+while_gru_cell_46_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2R
'while/gru_cell_46/MatMul/ReadVariableOp'while/gru_cell_46/MatMul/ReadVariableOp2V
)while/gru_cell_46/MatMul_1/ReadVariableOp)while/gru_cell_46/MatMul_1/ReadVariableOp2D
 while/gru_cell_46/ReadVariableOp while/gru_cell_46/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 


Ū
.__inference_sequential_12_layer_call_fn_264886
embedding_11_input
unknown:
Ód
	unknown_0:	
	unknown_1:	d
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_264867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:’’’’’’’’’d
,
_user_specified_nameembedding_11_input
²

I__inference_sequential_12_layer_call_and_return_conditional_losses_265202
embedding_11_input'
embedding_11_265181:
Ód
gru_1_265184:	
gru_1_265186:	d 
gru_1_265188:
#
dense_26_265191:

dense_26_265193:	"
dense_27_265196:	
dense_27_265198:
identity¢ dense_26/StatefulPartitionedCall¢ dense_27/StatefulPartitionedCall¢$embedding_11/StatefulPartitionedCall¢gru_1/StatefulPartitionedCallü
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputembedding_11_265181*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_264666
gru_1/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0gru_1_265184gru_1_265186gru_1_265188*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_264824
 dense_26/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_26_265191dense_26_265193*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_264843
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_265196dense_27_265198*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_264860x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’Ó
NoOpNoOp!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:[ W
'
_output_shapes
:’’’’’’’’’d
,
_user_specified_nameembedding_11_input
ĆA
Õ	
"__inference__traced_restore_266597
file_prefix<
(assignvariableop_embedding_11_embeddings:
Ód6
"assignvariableop_1_dense_26_kernel:
/
 assignvariableop_2_dense_26_bias:	5
"assignvariableop_3_dense_27_kernel:	.
 assignvariableop_4_dense_27_bias:=
*assignvariableop_5_gru_1_gru_cell_1_kernel:	dH
4assignvariableop_6_gru_1_gru_cell_1_recurrent_kernel:
;
(assignvariableop_7_gru_1_gru_cell_1_bias:	$
assignvariableop_8_total_1: $
assignvariableop_9_count_1: #
assignvariableop_10_total: #
assignvariableop_11_count: 1
"assignvariableop_12_true_positives:	Č1
"assignvariableop_13_true_negatives:	Č2
#assignvariableop_14_false_positives:	Č2
#assignvariableop_15_false_negatives:	Č
identity_17¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ó
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ó
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp(assignvariableop_embedding_11_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_26_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_26_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_27_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_27_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp*assignvariableop_5_gru_1_gru_cell_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_6AssignVariableOp4assignvariableop_6_gru_1_gru_cell_1_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp(assignvariableop_7_gru_1_gru_cell_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_total_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_count_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_true_positivesIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp"assignvariableop_13_true_negativesIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp#assignvariableop_14_false_positivesIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp#assignvariableop_15_false_negativesIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Æ
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
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
F
¾	
gru_1_while_body_265362(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2'
#gru_1_while_gru_1_strided_slice_1_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0D
1gru_1_while_gru_cell_46_readvariableop_resource_0:	K
8gru_1_while_gru_cell_46_matmul_readvariableop_resource_0:	dN
:gru_1_while_gru_cell_46_matmul_1_readvariableop_resource_0:

gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4%
!gru_1_while_gru_1_strided_slice_1a
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensorB
/gru_1_while_gru_cell_46_readvariableop_resource:	I
6gru_1_while_gru_cell_46_matmul_readvariableop_resource:	dL
8gru_1_while_gru_cell_46_matmul_1_readvariableop_resource:
¢-gru_1/while/gru_cell_46/MatMul/ReadVariableOp¢/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp¢&gru_1/while/gru_cell_46/ReadVariableOp
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   Ä
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
&gru_1/while/gru_cell_46/ReadVariableOpReadVariableOp1gru_1_while_gru_cell_46_readvariableop_resource_0*
_output_shapes
:	*
dtype0
gru_1/while/gru_cell_46/unstackUnpack.gru_1/while/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num§
-gru_1/while/gru_cell_46/MatMul/ReadVariableOpReadVariableOp8gru_1_while_gru_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ź
gru_1/while/gru_cell_46/MatMulMatMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:05gru_1/while/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’±
gru_1/while/gru_cell_46/BiasAddBiasAdd(gru_1/while/gru_cell_46/MatMul:product:0(gru_1/while/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
'gru_1/while/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ī
gru_1/while/gru_cell_46/splitSplit0gru_1/while/gru_cell_46/split/split_dim:output:0(gru_1/while/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split¬
/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp:gru_1_while_gru_cell_46_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0±
 gru_1/while/gru_cell_46/MatMul_1MatMulgru_1_while_placeholder_27gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’µ
!gru_1/while/gru_cell_46/BiasAdd_1BiasAdd*gru_1/while/gru_cell_46/MatMul_1:product:0(gru_1/while/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’r
gru_1/while/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’t
)gru_1/while/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’©
gru_1/while/gru_cell_46/split_1SplitV*gru_1/while/gru_cell_46/BiasAdd_1:output:0&gru_1/while/gru_cell_46/Const:output:02gru_1/while/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split©
gru_1/while/gru_cell_46/addAddV2&gru_1/while/gru_cell_46/split:output:0(gru_1/while/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’~
gru_1/while/gru_cell_46/SigmoidSigmoidgru_1/while/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’«
gru_1/while/gru_cell_46/add_1AddV2&gru_1/while/gru_cell_46/split:output:1(gru_1/while/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’
!gru_1/while/gru_cell_46/Sigmoid_1Sigmoid!gru_1/while/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¦
gru_1/while/gru_cell_46/mulMul%gru_1/while/gru_cell_46/Sigmoid_1:y:0(gru_1/while/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’¢
gru_1/while/gru_cell_46/add_2AddV2&gru_1/while/gru_cell_46/split:output:2gru_1/while/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’z
gru_1/while/gru_cell_46/ReluRelu!gru_1/while/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/while/gru_cell_46/mul_1Mul#gru_1/while/gru_cell_46/Sigmoid:y:0gru_1_while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’b
gru_1/while/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
gru_1/while/gru_cell_46/subSub&gru_1/while/gru_cell_46/sub/x:output:0#gru_1/while/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’¤
gru_1/while/gru_cell_46/mul_2Mulgru_1/while/gru_cell_46/sub:z:0*gru_1/while/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/while/gru_cell_46/add_3AddV2!gru_1/while/gru_cell_46/mul_1:z:0!gru_1/while/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’x
6gru_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1?gru_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0!gru_1/while/gru_cell_46/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅS
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: U
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: 
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations^gru_1/while/NoOp*
T0*
_output_shapes
: k
gru_1/while/Identity_2Identitygru_1/while/add:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: 
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_1/while/NoOp*
T0*
_output_shapes
: 
gru_1/while/Identity_4Identity!gru_1/while/gru_cell_46/add_3:z:0^gru_1/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ż
gru_1/while/NoOpNoOp.^gru_1/while/gru_cell_46/MatMul/ReadVariableOp0^gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp'^gru_1/while/gru_cell_46/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "H
!gru_1_while_gru_1_strided_slice_1#gru_1_while_gru_1_strided_slice_1_0"v
8gru_1_while_gru_cell_46_matmul_1_readvariableop_resource:gru_1_while_gru_cell_46_matmul_1_readvariableop_resource_0"r
6gru_1_while_gru_cell_46_matmul_readvariableop_resource8gru_1_while_gru_cell_46_matmul_readvariableop_resource_0"d
/gru_1_while_gru_cell_46_readvariableop_resource1gru_1_while_gru_cell_46_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"Ą
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2^
-gru_1/while/gru_cell_46/MatMul/ReadVariableOp-gru_1/while/gru_cell_46/MatMul/ReadVariableOp2b
/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp2P
&gru_1/while/gru_cell_46/ReadVariableOp&gru_1/while/gru_cell_46/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ł
¦
%sequential_12_gru_1_while_cond_264202D
@sequential_12_gru_1_while_sequential_12_gru_1_while_loop_counterJ
Fsequential_12_gru_1_while_sequential_12_gru_1_while_maximum_iterations)
%sequential_12_gru_1_while_placeholder+
'sequential_12_gru_1_while_placeholder_1+
'sequential_12_gru_1_while_placeholder_2F
Bsequential_12_gru_1_while_less_sequential_12_gru_1_strided_slice_1\
Xsequential_12_gru_1_while_sequential_12_gru_1_while_cond_264202___redundant_placeholder0\
Xsequential_12_gru_1_while_sequential_12_gru_1_while_cond_264202___redundant_placeholder1\
Xsequential_12_gru_1_while_sequential_12_gru_1_while_cond_264202___redundant_placeholder2\
Xsequential_12_gru_1_while_sequential_12_gru_1_while_cond_264202___redundant_placeholder3&
"sequential_12_gru_1_while_identity
²
sequential_12/gru_1/while/LessLess%sequential_12_gru_1_while_placeholderBsequential_12_gru_1_while_less_sequential_12_gru_1_strided_slice_1*
T0*
_output_shapes
: s
"sequential_12/gru_1/while/IdentityIdentity"sequential_12/gru_1/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_12_gru_1_while_identity+sequential_12/gru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
½>

while_body_264734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0>
+while_gru_cell_46_readvariableop_resource_0:	E
2while_gru_cell_46_matmul_readvariableop_resource_0:	dH
4while_gru_cell_46_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor<
)while_gru_cell_46_readvariableop_resource:	C
0while_gru_cell_46_matmul_readvariableop_resource:	dF
2while_gru_cell_46_matmul_1_readvariableop_resource:
¢'while/gru_cell_46/MatMul/ReadVariableOp¢)while/gru_cell_46/MatMul_1/ReadVariableOp¢ while/gru_cell_46/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
 while/gru_cell_46/ReadVariableOpReadVariableOp+while_gru_cell_46_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_46/unstackUnpack(while/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
'while/gru_cell_46/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ø
while/gru_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/BiasAddBiasAdd"while/gru_cell_46/MatMul:product:0"while/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
!while/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ü
while/gru_cell_46/splitSplit*while/gru_cell_46/split/split_dim:output:0"while/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split 
)while/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_46_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_46/MatMul_1MatMulwhile_placeholder_21while/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’£
while/gru_cell_46/BiasAdd_1BiasAdd$while/gru_cell_46/MatMul_1:product:0"while/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’l
while/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’n
#while/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
while/gru_cell_46/split_1SplitV$while/gru_cell_46/BiasAdd_1:output:0 while/gru_cell_46/Const:output:0,while/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
while/gru_cell_46/addAddV2 while/gru_cell_46/split:output:0"while/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
while/gru_cell_46/SigmoidSigmoidwhile/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_1AddV2 while/gru_cell_46/split:output:1"while/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’v
while/gru_cell_46/Sigmoid_1Sigmoidwhile/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mulMulwhile/gru_cell_46/Sigmoid_1:y:0"while/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_2AddV2 while/gru_cell_46/split:output:2while/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
while/gru_cell_46/ReluReluwhile/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_1Mulwhile/gru_cell_46/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’\
while/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_46/subSub while/gru_cell_46/sub/x:output:0while/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_2Mulwhile/gru_cell_46/sub:z:0$while/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_3AddV2while/gru_cell_46/mul_1:z:0while/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ģ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_46/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/gru_cell_46/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Å

while/NoOpNoOp(^while/gru_cell_46/MatMul/ReadVariableOp*^while/gru_cell_46/MatMul_1/ReadVariableOp!^while/gru_cell_46/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "j
2while_gru_cell_46_matmul_1_readvariableop_resource4while_gru_cell_46_matmul_1_readvariableop_resource_0"f
0while_gru_cell_46_matmul_readvariableop_resource2while_gru_cell_46_matmul_readvariableop_resource_0"X
)while_gru_cell_46_readvariableop_resource+while_gru_cell_46_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2R
'while/gru_cell_46/MatMul/ReadVariableOp'while/gru_cell_46/MatMul/ReadVariableOp2V
)while/gru_cell_46/MatMul_1/ReadVariableOp)while/gru_cell_46/MatMul_1/ReadVariableOp2D
 while/gru_cell_46/ReadVariableOp while/gru_cell_46/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
)
ź
__inference__traced_save_266539
file_prefix6
2savev2_embedding_11_embeddings_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop6
2savev2_gru_1_gru_cell_1_kernel_read_readvariableop@
<savev2_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop4
0savev2_gru_1_gru_cell_1_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: š
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ž
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_11_embeddings_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop2savev2_gru_1_gru_cell_1_kernel_read_readvariableop<savev2_gru_1_gru_cell_1_recurrent_kernel_read_readvariableop0savev2_gru_1_gru_cell_1_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapes|
z: :
Ód:
::	::	d:
:	: : : : :Č:Č:Č:Č: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Ód:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	d:&"
 
_output_shapes
:
:%!

_output_shapes
:	:	
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
: :!

_output_shapes	
:Č:!

_output_shapes	
:Č:!

_output_shapes	
:Č:!

_output_shapes	
:Č:

_output_shapes
: 
Ü
Ŗ
while_cond_265766
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_265766___redundant_placeholder04
0while_while_cond_265766___redundant_placeholder14
0while_while_cond_265766___redundant_placeholder24
0while_while_cond_265766___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Ü
Ŗ
while_cond_264983
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_264983___redundant_placeholder04
0while_while_cond_264983___redundant_placeholder14
0while_while_cond_264983___redundant_placeholder24
0while_while_cond_264983___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Ü
Ŗ
while_cond_266076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_266076___redundant_placeholder04
0while_while_cond_266076___redundant_placeholder14
0while_while_cond_266076___redundant_placeholder24
0while_while_cond_266076___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
ż
ø
&__inference_gru_1_layer_call_fn_265702

inputs
unknown:	
	unknown_0:	d
	unknown_1:

identity¢StatefulPartitionedCallē
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_265074p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’dd
 
_user_specified_nameinputs


ö
D__inference_dense_27_layer_call_and_return_conditional_losses_264860

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
5

A__inference_gru_1_layer_call_and_return_conditional_losses_264640

inputs%
gru_cell_46_264562:	%
gru_cell_46_264564:	d&
gru_cell_46_264566:

identity¢#gru_cell_46/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ū
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_maskĪ
#gru_cell_46/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_46_264562gru_cell_46_264564gru_cell_46_264566*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_264522n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ż
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_46_264562gru_cell_46_264564gru_cell_46_264566*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_264575*
condR
while_cond_264574*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’t
NoOpNoOp$^gru_cell_46/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’d: : : 2J
#gru_cell_46/StatefulPartitionedCall#gru_cell_46/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’d
 
_user_specified_nameinputs
½>

while_body_265767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0>
+while_gru_cell_46_readvariableop_resource_0:	E
2while_gru_cell_46_matmul_readvariableop_resource_0:	dH
4while_gru_cell_46_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor<
)while_gru_cell_46_readvariableop_resource:	C
0while_gru_cell_46_matmul_readvariableop_resource:	dF
2while_gru_cell_46_matmul_1_readvariableop_resource:
¢'while/gru_cell_46/MatMul/ReadVariableOp¢)while/gru_cell_46/MatMul_1/ReadVariableOp¢ while/gru_cell_46/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
 while/gru_cell_46/ReadVariableOpReadVariableOp+while_gru_cell_46_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_46/unstackUnpack(while/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
'while/gru_cell_46/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ø
while/gru_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/BiasAddBiasAdd"while/gru_cell_46/MatMul:product:0"while/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
!while/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ü
while/gru_cell_46/splitSplit*while/gru_cell_46/split/split_dim:output:0"while/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split 
)while/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_46_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_46/MatMul_1MatMulwhile_placeholder_21while/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’£
while/gru_cell_46/BiasAdd_1BiasAdd$while/gru_cell_46/MatMul_1:product:0"while/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’l
while/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’n
#while/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
while/gru_cell_46/split_1SplitV$while/gru_cell_46/BiasAdd_1:output:0 while/gru_cell_46/Const:output:0,while/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
while/gru_cell_46/addAddV2 while/gru_cell_46/split:output:0"while/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
while/gru_cell_46/SigmoidSigmoidwhile/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_1AddV2 while/gru_cell_46/split:output:1"while/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’v
while/gru_cell_46/Sigmoid_1Sigmoidwhile/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mulMulwhile/gru_cell_46/Sigmoid_1:y:0"while/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_2AddV2 while/gru_cell_46/split:output:2while/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
while/gru_cell_46/ReluReluwhile/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_1Mulwhile/gru_cell_46/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’\
while/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_46/subSub while/gru_cell_46/sub/x:output:0while/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_2Mulwhile/gru_cell_46/sub:z:0$while/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_3AddV2while/gru_cell_46/mul_1:z:0while/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ģ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_46/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/gru_cell_46/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Å

while/NoOpNoOp(^while/gru_cell_46/MatMul/ReadVariableOp*^while/gru_cell_46/MatMul_1/ReadVariableOp!^while/gru_cell_46/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "j
2while_gru_cell_46_matmul_1_readvariableop_resource4while_gru_cell_46_matmul_1_readvariableop_resource_0"f
0while_gru_cell_46_matmul_readvariableop_resource2while_gru_cell_46_matmul_readvariableop_resource_0"X
)while_gru_cell_46_readvariableop_resource+while_gru_cell_46_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2R
'while/gru_cell_46/MatMul/ReadVariableOp'while/gru_cell_46/MatMul/ReadVariableOp2V
)while/gru_cell_46/MatMul_1/ReadVariableOp)while/gru_cell_46/MatMul_1/ReadVariableOp2D
 while/gru_cell_46/ReadVariableOp while/gru_cell_46/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ž

gru_1_while_cond_265361(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2*
&gru_1_while_less_gru_1_strided_slice_1@
<gru_1_while_gru_1_while_cond_265361___redundant_placeholder0@
<gru_1_while_gru_1_while_cond_265361___redundant_placeholder1@
<gru_1_while_gru_1_while_cond_265361___redundant_placeholder2@
<gru_1_while_gru_1_while_cond_265361___redundant_placeholder3
gru_1_while_identity
z
gru_1/while/LessLessgru_1_while_placeholder&gru_1_while_less_gru_1_strided_slice_1*
T0*
_output_shapes
: W
gru_1/while/IdentityIdentitygru_1/while/Less:z:0*
T0
*
_output_shapes
: "5
gru_1_while_identitygru_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Ü
Ŗ
while_cond_264390
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_264390___redundant_placeholder04
0while_while_cond_264390___redundant_placeholder14
0while_while_cond_264390___redundant_placeholder24
0while_while_cond_264390___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :’’’’’’’’’: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:

Ö
!__inference__wrapped_model_264307
embedding_11_inputF
2sequential_12_embedding_11_embedding_lookup_264136:
ÓdJ
7sequential_12_gru_1_gru_cell_46_readvariableop_resource:	Q
>sequential_12_gru_1_gru_cell_46_matmul_readvariableop_resource:	dT
@sequential_12_gru_1_gru_cell_46_matmul_1_readvariableop_resource:
I
5sequential_12_dense_26_matmul_readvariableop_resource:
E
6sequential_12_dense_26_biasadd_readvariableop_resource:	H
5sequential_12_dense_27_matmul_readvariableop_resource:	D
6sequential_12_dense_27_biasadd_readvariableop_resource:
identity¢-sequential_12/dense_26/BiasAdd/ReadVariableOp¢,sequential_12/dense_26/MatMul/ReadVariableOp¢-sequential_12/dense_27/BiasAdd/ReadVariableOp¢,sequential_12/dense_27/MatMul/ReadVariableOp¢+sequential_12/embedding_11/embedding_lookup¢5sequential_12/gru_1/gru_cell_46/MatMul/ReadVariableOp¢7sequential_12/gru_1/gru_cell_46/MatMul_1/ReadVariableOp¢.sequential_12/gru_1/gru_cell_46/ReadVariableOp¢sequential_12/gru_1/while|
sequential_12/embedding_11/CastCastembedding_11_input*

DstT0*

SrcT0*'
_output_shapes
:’’’’’’’’’d§
+sequential_12/embedding_11/embedding_lookupResourceGather2sequential_12_embedding_11_embedding_lookup_264136#sequential_12/embedding_11/Cast:y:0*
Tindices0*E
_class;
97loc:@sequential_12/embedding_11/embedding_lookup/264136*+
_output_shapes
:’’’’’’’’’dd*
dtype0ó
4sequential_12/embedding_11/embedding_lookup/IdentityIdentity4sequential_12/embedding_11/embedding_lookup:output:0*
T0*E
_class;
97loc:@sequential_12/embedding_11/embedding_lookup/264136*+
_output_shapes
:’’’’’’’’’dd·
6sequential_12/embedding_11/embedding_lookup/Identity_1Identity=sequential_12/embedding_11/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:’’’’’’’’’dd
sequential_12/gru_1/ShapeShape?sequential_12/embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:q
'sequential_12/gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_12/gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_12/gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_12/gru_1/strided_sliceStridedSlice"sequential_12/gru_1/Shape:output:00sequential_12/gru_1/strided_slice/stack:output:02sequential_12/gru_1/strided_slice/stack_1:output:02sequential_12/gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
"sequential_12/gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Æ
 sequential_12/gru_1/zeros/packedPack*sequential_12/gru_1/strided_slice:output:0+sequential_12/gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_12/gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
sequential_12/gru_1/zerosFill)sequential_12/gru_1/zeros/packed:output:0(sequential_12/gru_1/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’w
"sequential_12/gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ī
sequential_12/gru_1/transpose	Transpose?sequential_12/embedding_11/embedding_lookup/Identity_1:output:0+sequential_12/gru_1/transpose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’dl
sequential_12/gru_1/Shape_1Shape!sequential_12/gru_1/transpose:y:0*
T0*
_output_shapes
:s
)sequential_12/gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_12/gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:æ
#sequential_12/gru_1/strided_slice_1StridedSlice$sequential_12/gru_1/Shape_1:output:02sequential_12/gru_1/strided_slice_1/stack:output:04sequential_12/gru_1/strided_slice_1/stack_1:output:04sequential_12/gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_12/gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’š
!sequential_12/gru_1/TensorArrayV2TensorListReserve8sequential_12/gru_1/TensorArrayV2/element_shape:output:0,sequential_12/gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Isequential_12/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   
;sequential_12/gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_12/gru_1/transpose:y:0Rsequential_12/gru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅs
)sequential_12/gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_12/gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ķ
#sequential_12/gru_1/strided_slice_2StridedSlice!sequential_12/gru_1/transpose:y:02sequential_12/gru_1/strided_slice_2/stack:output:04sequential_12/gru_1/strided_slice_2/stack_1:output:04sequential_12/gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_mask§
.sequential_12/gru_1/gru_cell_46/ReadVariableOpReadVariableOp7sequential_12_gru_1_gru_cell_46_readvariableop_resource*
_output_shapes
:	*
dtype0”
'sequential_12/gru_1/gru_cell_46/unstackUnpack6sequential_12/gru_1/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numµ
5sequential_12/gru_1/gru_cell_46/MatMul/ReadVariableOpReadVariableOp>sequential_12_gru_1_gru_cell_46_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0Š
&sequential_12/gru_1/gru_cell_46/MatMulMatMul,sequential_12/gru_1/strided_slice_2:output:0=sequential_12/gru_1/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’É
'sequential_12/gru_1/gru_cell_46/BiasAddBiasAdd0sequential_12/gru_1/gru_cell_46/MatMul:product:00sequential_12/gru_1/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’z
/sequential_12/gru_1/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
%sequential_12/gru_1/gru_cell_46/splitSplit8sequential_12/gru_1/gru_cell_46/split/split_dim:output:00sequential_12/gru_1/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitŗ
7sequential_12/gru_1/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp@sequential_12_gru_1_gru_cell_46_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ź
(sequential_12/gru_1/gru_cell_46/MatMul_1MatMul"sequential_12/gru_1/zeros:output:0?sequential_12/gru_1/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
)sequential_12/gru_1/gru_cell_46/BiasAdd_1BiasAdd2sequential_12/gru_1/gru_cell_46/MatMul_1:product:00sequential_12/gru_1/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
%sequential_12/gru_1/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’|
1sequential_12/gru_1/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’É
'sequential_12/gru_1/gru_cell_46/split_1SplitV2sequential_12/gru_1/gru_cell_46/BiasAdd_1:output:0.sequential_12/gru_1/gru_cell_46/Const:output:0:sequential_12/gru_1/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitĮ
#sequential_12/gru_1/gru_cell_46/addAddV2.sequential_12/gru_1/gru_cell_46/split:output:00sequential_12/gru_1/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'sequential_12/gru_1/gru_cell_46/SigmoidSigmoid'sequential_12/gru_1/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ć
%sequential_12/gru_1/gru_cell_46/add_1AddV2.sequential_12/gru_1/gru_cell_46/split:output:10sequential_12/gru_1/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’
)sequential_12/gru_1/gru_cell_46/Sigmoid_1Sigmoid)sequential_12/gru_1/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#sequential_12/gru_1/gru_cell_46/mulMul-sequential_12/gru_1/gru_cell_46/Sigmoid_1:y:00sequential_12/gru_1/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
%sequential_12/gru_1/gru_cell_46/add_2AddV2.sequential_12/gru_1/gru_cell_46/split:output:2'sequential_12/gru_1/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’
$sequential_12/gru_1/gru_cell_46/ReluRelu)sequential_12/gru_1/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’°
%sequential_12/gru_1/gru_cell_46/mul_1Mul+sequential_12/gru_1/gru_cell_46/Sigmoid:y:0"sequential_12/gru_1/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’j
%sequential_12/gru_1/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ŗ
#sequential_12/gru_1/gru_cell_46/subSub.sequential_12/gru_1/gru_cell_46/sub/x:output:0+sequential_12/gru_1/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’¼
%sequential_12/gru_1/gru_cell_46/mul_2Mul'sequential_12/gru_1/gru_cell_46/sub:z:02sequential_12/gru_1/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’·
%sequential_12/gru_1/gru_cell_46/add_3AddV2)sequential_12/gru_1/gru_cell_46/mul_1:z:0)sequential_12/gru_1/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
1sequential_12/gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   r
0sequential_12/gru_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
#sequential_12/gru_1/TensorArrayV2_1TensorListReserve:sequential_12/gru_1/TensorArrayV2_1/element_shape:output:09sequential_12/gru_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅZ
sequential_12/gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_12/gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’h
&sequential_12/gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ä
sequential_12/gru_1/whileWhile/sequential_12/gru_1/while/loop_counter:output:05sequential_12/gru_1/while/maximum_iterations:output:0!sequential_12/gru_1/time:output:0,sequential_12/gru_1/TensorArrayV2_1:handle:0"sequential_12/gru_1/zeros:output:0,sequential_12/gru_1/strided_slice_1:output:0Ksequential_12/gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:07sequential_12_gru_1_gru_cell_46_readvariableop_resource>sequential_12_gru_1_gru_cell_46_matmul_readvariableop_resource@sequential_12_gru_1_gru_cell_46_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *1
body)R'
%sequential_12_gru_1_while_body_264203*1
cond)R'
%sequential_12_gru_1_while_cond_264202*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
Dsequential_12/gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
6sequential_12/gru_1/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_12/gru_1/while:output:3Msequential_12/gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements|
)sequential_12/gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’u
+sequential_12/gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ģ
#sequential_12/gru_1/strided_slice_3StridedSlice?sequential_12/gru_1/TensorArrayV2Stack/TensorListStack:tensor:02sequential_12/gru_1/strided_slice_3/stack:output:04sequential_12/gru_1/strided_slice_3/stack_1:output:04sequential_12/gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masky
$sequential_12/gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ó
sequential_12/gru_1/transpose_1	Transpose?sequential_12/gru_1/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_12/gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’o
sequential_12/gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¤
,sequential_12/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¾
sequential_12/dense_26/MatMulMatMul,sequential_12/gru_1/strided_slice_3:output:04sequential_12/dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
-sequential_12/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
sequential_12/dense_26/BiasAddBiasAdd'sequential_12/dense_26/MatMul:product:05sequential_12/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
sequential_12/dense_26/ReluRelu'sequential_12/dense_26/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’£
,sequential_12/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ŗ
sequential_12/dense_27/MatMulMatMul)sequential_12/dense_26/Relu:activations:04sequential_12/dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’ 
-sequential_12/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_12/dense_27/BiasAddBiasAdd'sequential_12/dense_27/MatMul:product:05sequential_12/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
sequential_12/dense_27/SigmoidSigmoid'sequential_12/dense_27/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’q
IdentityIdentity"sequential_12/dense_27/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ń
NoOpNoOp.^sequential_12/dense_26/BiasAdd/ReadVariableOp-^sequential_12/dense_26/MatMul/ReadVariableOp.^sequential_12/dense_27/BiasAdd/ReadVariableOp-^sequential_12/dense_27/MatMul/ReadVariableOp,^sequential_12/embedding_11/embedding_lookup6^sequential_12/gru_1/gru_cell_46/MatMul/ReadVariableOp8^sequential_12/gru_1/gru_cell_46/MatMul_1/ReadVariableOp/^sequential_12/gru_1/gru_cell_46/ReadVariableOp^sequential_12/gru_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 2^
-sequential_12/dense_26/BiasAdd/ReadVariableOp-sequential_12/dense_26/BiasAdd/ReadVariableOp2\
,sequential_12/dense_26/MatMul/ReadVariableOp,sequential_12/dense_26/MatMul/ReadVariableOp2^
-sequential_12/dense_27/BiasAdd/ReadVariableOp-sequential_12/dense_27/BiasAdd/ReadVariableOp2\
,sequential_12/dense_27/MatMul/ReadVariableOp,sequential_12/dense_27/MatMul/ReadVariableOp2Z
+sequential_12/embedding_11/embedding_lookup+sequential_12/embedding_11/embedding_lookup2n
5sequential_12/gru_1/gru_cell_46/MatMul/ReadVariableOp5sequential_12/gru_1/gru_cell_46/MatMul/ReadVariableOp2r
7sequential_12/gru_1/gru_cell_46/MatMul_1/ReadVariableOp7sequential_12/gru_1/gru_cell_46/MatMul_1/ReadVariableOp2`
.sequential_12/gru_1/gru_cell_46/ReadVariableOp.sequential_12/gru_1/gru_cell_46/ReadVariableOp26
sequential_12/gru_1/whilesequential_12/gru_1/while:[ W
'
_output_shapes
:’’’’’’’’’d
,
_user_specified_nameembedding_11_input
½>

while_body_264984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0>
+while_gru_cell_46_readvariableop_resource_0:	E
2while_gru_cell_46_matmul_readvariableop_resource_0:	dH
4while_gru_cell_46_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor<
)while_gru_cell_46_readvariableop_resource:	C
0while_gru_cell_46_matmul_readvariableop_resource:	dF
2while_gru_cell_46_matmul_1_readvariableop_resource:
¢'while/gru_cell_46/MatMul/ReadVariableOp¢)while/gru_cell_46/MatMul_1/ReadVariableOp¢ while/gru_cell_46/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
 while/gru_cell_46/ReadVariableOpReadVariableOp+while_gru_cell_46_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_46/unstackUnpack(while/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
'while/gru_cell_46/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ø
while/gru_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/BiasAddBiasAdd"while/gru_cell_46/MatMul:product:0"while/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
!while/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ü
while/gru_cell_46/splitSplit*while/gru_cell_46/split/split_dim:output:0"while/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split 
)while/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_46_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_46/MatMul_1MatMulwhile_placeholder_21while/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’£
while/gru_cell_46/BiasAdd_1BiasAdd$while/gru_cell_46/MatMul_1:product:0"while/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’l
while/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’n
#while/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
while/gru_cell_46/split_1SplitV$while/gru_cell_46/BiasAdd_1:output:0 while/gru_cell_46/Const:output:0,while/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
while/gru_cell_46/addAddV2 while/gru_cell_46/split:output:0"while/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
while/gru_cell_46/SigmoidSigmoidwhile/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_1AddV2 while/gru_cell_46/split:output:1"while/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’v
while/gru_cell_46/Sigmoid_1Sigmoidwhile/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mulMulwhile/gru_cell_46/Sigmoid_1:y:0"while/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_2AddV2 while/gru_cell_46/split:output:2while/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
while/gru_cell_46/ReluReluwhile/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_1Mulwhile/gru_cell_46/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’\
while/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_46/subSub while/gru_cell_46/sub/x:output:0while/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_2Mulwhile/gru_cell_46/sub:z:0$while/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_3AddV2while/gru_cell_46/mul_1:z:0while/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ģ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_46/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/gru_cell_46/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Å

while/NoOpNoOp(^while/gru_cell_46/MatMul/ReadVariableOp*^while/gru_cell_46/MatMul_1/ReadVariableOp!^while/gru_cell_46/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "j
2while_gru_cell_46_matmul_1_readvariableop_resource4while_gru_cell_46_matmul_1_readvariableop_resource_0"f
0while_gru_cell_46_matmul_readvariableop_resource2while_gru_cell_46_matmul_readvariableop_resource_0"X
)while_gru_cell_46_readvariableop_resource+while_gru_cell_46_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2R
'while/gru_cell_46/MatMul/ReadVariableOp'while/gru_cell_46/MatMul/ReadVariableOp2V
)while/gru_cell_46/MatMul_1/ReadVariableOp)while/gru_cell_46/MatMul_1/ReadVariableOp2D
 while/gru_cell_46/ReadVariableOp while/gru_cell_46/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
²n

I__inference_sequential_12_layer_call_and_return_conditional_losses_265641

inputs8
$embedding_11_embedding_lookup_265470:
Ód<
)gru_1_gru_cell_46_readvariableop_resource:	C
0gru_1_gru_cell_46_matmul_readvariableop_resource:	dF
2gru_1_gru_cell_46_matmul_1_readvariableop_resource:
;
'dense_26_matmul_readvariableop_resource:
7
(dense_26_biasadd_readvariableop_resource:	:
'dense_27_matmul_readvariableop_resource:	6
(dense_27_biasadd_readvariableop_resource:
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOp¢dense_27/BiasAdd/ReadVariableOp¢dense_27/MatMul/ReadVariableOp¢embedding_11/embedding_lookup¢'gru_1/gru_cell_46/MatMul/ReadVariableOp¢)gru_1/gru_cell_46/MatMul_1/ReadVariableOp¢ gru_1/gru_cell_46/ReadVariableOp¢gru_1/whileb
embedding_11/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:’’’’’’’’’dļ
embedding_11/embedding_lookupResourceGather$embedding_11_embedding_lookup_265470embedding_11/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_11/embedding_lookup/265470*+
_output_shapes
:’’’’’’’’’dd*
dtype0É
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_11/embedding_lookup/265470*+
_output_shapes
:’’’’’’’’’dd
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:’’’’’’’’’ddl
gru_1/ShapeShape1embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:c
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ļ
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
gru_1/zeros/packedPackgru_1/strided_slice:output:0gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
gru_1/zerosFillgru_1/zeros/packed:output:0gru_1/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¤
gru_1/transpose	Transpose1embedding_11/embedding_lookup/Identity_1:output:0gru_1/transpose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’dP
gru_1/Shape_1Shapegru_1/transpose:y:0*
T0*
_output_shapes
:e
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ł
gru_1/strided_slice_1StridedSlicegru_1/Shape_1:output:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ę
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ņ
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅe
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru_1/strided_slice_2StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_mask
 gru_1/gru_cell_46/ReadVariableOpReadVariableOp)gru_1_gru_cell_46_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_1/gru_cell_46/unstackUnpack(gru_1/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
'gru_1/gru_cell_46/MatMul/ReadVariableOpReadVariableOp0gru_1_gru_cell_46_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0¦
gru_1/gru_cell_46/MatMulMatMulgru_1/strided_slice_2:output:0/gru_1/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/BiasAddBiasAdd"gru_1/gru_cell_46/MatMul:product:0"gru_1/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
!gru_1/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ü
gru_1/gru_cell_46/splitSplit*gru_1/gru_cell_46/split/split_dim:output:0"gru_1/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
)gru_1/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp2gru_1_gru_cell_46_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0 
gru_1/gru_cell_46/MatMul_1MatMulgru_1/zeros:output:01gru_1/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’£
gru_1/gru_cell_46/BiasAdd_1BiasAdd$gru_1/gru_cell_46/MatMul_1:product:0"gru_1/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’l
gru_1/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’n
#gru_1/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
gru_1/gru_cell_46/split_1SplitV$gru_1/gru_cell_46/BiasAdd_1:output:0 gru_1/gru_cell_46/Const:output:0,gru_1/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
gru_1/gru_cell_46/addAddV2 gru_1/gru_cell_46/split:output:0"gru_1/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
gru_1/gru_cell_46/SigmoidSigmoidgru_1/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/add_1AddV2 gru_1/gru_cell_46/split:output:1"gru_1/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’v
gru_1/gru_cell_46/Sigmoid_1Sigmoidgru_1/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/mulMulgru_1/gru_cell_46/Sigmoid_1:y:0"gru_1/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/add_2AddV2 gru_1/gru_cell_46/split:output:2gru_1/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
gru_1/gru_cell_46/ReluRelugru_1/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/mul_1Mulgru_1/gru_cell_46/Sigmoid:y:0gru_1/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’\
gru_1/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_1/gru_cell_46/subSub gru_1/gru_cell_46/sub/x:output:0gru_1/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/mul_2Mulgru_1/gru_cell_46/sub:z:0$gru_1/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/add_3AddV2gru_1/gru_cell_46/mul_1:z:0gru_1/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’t
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   d
"gru_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0+gru_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅL

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Z
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0gru_1/zeros:output:0gru_1/strided_slice_1:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_1_gru_cell_46_readvariableop_resource0gru_1_gru_cell_46_matmul_readvariableop_resource2gru_1_gru_cell_46_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_1_while_body_265537*#
condR
gru_1_while_cond_265536*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   é
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsn
gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’g
gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
gru_1/strided_slice_3StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_3/stack:output:0&gru_1/strided_slice_3/stack_1:output:0&gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskk
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ©
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’a
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_26/MatMulMatMulgru_1/strided_slice_3:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’c
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’h
dense_27/SigmoidSigmoiddense_27/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’c
IdentityIdentitydense_27/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ó
NoOpNoOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp^embedding_11/embedding_lookup(^gru_1/gru_cell_46/MatMul/ReadVariableOp*^gru_1/gru_cell_46/MatMul_1/ReadVariableOp!^gru_1/gru_cell_46/ReadVariableOp^gru_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2>
embedding_11/embedding_lookupembedding_11/embedding_lookup2R
'gru_1/gru_cell_46/MatMul/ReadVariableOp'gru_1/gru_cell_46/MatMul/ReadVariableOp2V
)gru_1/gru_cell_46/MatMul_1/ReadVariableOp)gru_1/gru_cell_46/MatMul_1/ReadVariableOp2D
 gru_1/gru_cell_46/ReadVariableOp gru_1/gru_cell_46/ReadVariableOp2
gru_1/whilegru_1/while:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
ŲN

A__inference_gru_1_layer_call_and_return_conditional_losses_265857
inputs_06
#gru_cell_46_readvariableop_resource:	=
*gru_cell_46_matmul_readvariableop_resource:	d@
,gru_cell_46_matmul_1_readvariableop_resource:

identity¢!gru_cell_46/MatMul/ReadVariableOp¢#gru_cell_46/MatMul_1/ReadVariableOp¢gru_cell_46/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ū
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_mask
gru_cell_46/ReadVariableOpReadVariableOp#gru_cell_46_readvariableop_resource*
_output_shapes
:	*
dtype0y
gru_cell_46/unstackUnpack"gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
!gru_cell_46/MatMul/ReadVariableOpReadVariableOp*gru_cell_46_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
gru_cell_46/MatMulMatMulstrided_slice_2:output:0)gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAddBiasAddgru_cell_46/MatMul:product:0gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ź
gru_cell_46/splitSplit$gru_cell_46/split/split_dim:output:0gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_46_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_46/MatMul_1MatMulzeros:output:0+gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAdd_1BiasAddgru_cell_46/MatMul_1:product:0gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’h
gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ł
gru_cell_46/split_1SplitVgru_cell_46/BiasAdd_1:output:0gru_cell_46/Const:output:0&gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
gru_cell_46/addAddV2gru_cell_46/split:output:0gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/SigmoidSigmoidgru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/add_1AddV2gru_cell_46/split:output:1gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’j
gru_cell_46/Sigmoid_1Sigmoidgru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mulMulgru_cell_46/Sigmoid_1:y:0gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’~
gru_cell_46/add_2AddV2gru_cell_46/split:output:2gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
gru_cell_46/ReluRelugru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’t
gru_cell_46/mul_1Mulgru_cell_46/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’V
gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
gru_cell_46/subSubgru_cell_46/sub/x:output:0gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mul_2Mulgru_cell_46/sub:z:0gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’{
gru_cell_46/add_3AddV2gru_cell_46/mul_1:z:0gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_46_readvariableop_resource*gru_cell_46_matmul_readvariableop_resource,gru_cell_46_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_265767*
condR
while_cond_265766*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’µ
NoOpNoOp"^gru_cell_46/MatMul/ReadVariableOp$^gru_cell_46/MatMul_1/ReadVariableOp^gru_cell_46/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’d: : : 2F
!gru_cell_46/MatMul/ReadVariableOp!gru_cell_46/MatMul/ReadVariableOp2J
#gru_cell_46/MatMul_1/ReadVariableOp#gru_cell_46/MatMul_1/ReadVariableOp28
gru_cell_46/ReadVariableOpgru_cell_46/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’d
"
_user_specified_name
inputs/0
µN

A__inference_gru_1_layer_call_and_return_conditional_losses_264824

inputs6
#gru_cell_46_readvariableop_resource:	=
*gru_cell_46_matmul_readvariableop_resource:	d@
,gru_cell_46_matmul_1_readvariableop_resource:

identity¢!gru_cell_46/MatMul/ReadVariableOp¢#gru_cell_46/MatMul_1/ReadVariableOp¢gru_cell_46/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ū
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_mask
gru_cell_46/ReadVariableOpReadVariableOp#gru_cell_46_readvariableop_resource*
_output_shapes
:	*
dtype0y
gru_cell_46/unstackUnpack"gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
!gru_cell_46/MatMul/ReadVariableOpReadVariableOp*gru_cell_46_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
gru_cell_46/MatMulMatMulstrided_slice_2:output:0)gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAddBiasAddgru_cell_46/MatMul:product:0gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ź
gru_cell_46/splitSplit$gru_cell_46/split/split_dim:output:0gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_46_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_46/MatMul_1MatMulzeros:output:0+gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAdd_1BiasAddgru_cell_46/MatMul_1:product:0gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’h
gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ł
gru_cell_46/split_1SplitVgru_cell_46/BiasAdd_1:output:0gru_cell_46/Const:output:0&gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
gru_cell_46/addAddV2gru_cell_46/split:output:0gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/SigmoidSigmoidgru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/add_1AddV2gru_cell_46/split:output:1gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’j
gru_cell_46/Sigmoid_1Sigmoidgru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mulMulgru_cell_46/Sigmoid_1:y:0gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’~
gru_cell_46/add_2AddV2gru_cell_46/split:output:2gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
gru_cell_46/ReluRelugru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’t
gru_cell_46/mul_1Mulgru_cell_46/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’V
gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
gru_cell_46/subSubgru_cell_46/sub/x:output:0gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mul_2Mulgru_cell_46/sub:z:0gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’{
gru_cell_46/add_3AddV2gru_cell_46/mul_1:z:0gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_46_readvariableop_resource*gru_cell_46_matmul_readvariableop_resource,gru_cell_46_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_264734*
condR
while_cond_264733*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’µ
NoOpNoOp"^gru_cell_46/MatMul/ReadVariableOp$^gru_cell_46/MatMul_1/ReadVariableOp^gru_cell_46/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’dd: : : 2F
!gru_cell_46/MatMul/ReadVariableOp!gru_cell_46/MatMul/ReadVariableOp2J
#gru_cell_46/MatMul_1/ReadVariableOp#gru_cell_46/MatMul_1/ReadVariableOp28
gru_cell_46/ReadVariableOpgru_cell_46/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’dd
 
_user_specified_nameinputs
Ģ

)__inference_dense_26_layer_call_fn_266331

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallŻ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_264843p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
½>

while_body_266077
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0>
+while_gru_cell_46_readvariableop_resource_0:	E
2while_gru_cell_46_matmul_readvariableop_resource_0:	dH
4while_gru_cell_46_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor<
)while_gru_cell_46_readvariableop_resource:	C
0while_gru_cell_46_matmul_readvariableop_resource:	dF
2while_gru_cell_46_matmul_1_readvariableop_resource:
¢'while/gru_cell_46/MatMul/ReadVariableOp¢)while/gru_cell_46/MatMul_1/ReadVariableOp¢ while/gru_cell_46/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
 while/gru_cell_46/ReadVariableOpReadVariableOp+while_gru_cell_46_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_46/unstackUnpack(while/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
'while/gru_cell_46/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ø
while/gru_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/BiasAddBiasAdd"while/gru_cell_46/MatMul:product:0"while/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
!while/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ü
while/gru_cell_46/splitSplit*while/gru_cell_46/split/split_dim:output:0"while/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split 
)while/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_46_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_46/MatMul_1MatMulwhile_placeholder_21while/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’£
while/gru_cell_46/BiasAdd_1BiasAdd$while/gru_cell_46/MatMul_1:product:0"while/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’l
while/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’n
#while/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
while/gru_cell_46/split_1SplitV$while/gru_cell_46/BiasAdd_1:output:0 while/gru_cell_46/Const:output:0,while/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
while/gru_cell_46/addAddV2 while/gru_cell_46/split:output:0"while/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
while/gru_cell_46/SigmoidSigmoidwhile/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_1AddV2 while/gru_cell_46/split:output:1"while/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’v
while/gru_cell_46/Sigmoid_1Sigmoidwhile/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mulMulwhile/gru_cell_46/Sigmoid_1:y:0"while/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_2AddV2 while/gru_cell_46/split:output:2while/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
while/gru_cell_46/ReluReluwhile/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_1Mulwhile/gru_cell_46/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’\
while/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_46/subSub while/gru_cell_46/sub/x:output:0while/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_2Mulwhile/gru_cell_46/sub:z:0$while/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_3AddV2while/gru_cell_46/mul_1:z:0while/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ģ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_46/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/gru_cell_46/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Å

while/NoOpNoOp(^while/gru_cell_46/MatMul/ReadVariableOp*^while/gru_cell_46/MatMul_1/ReadVariableOp!^while/gru_cell_46/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "j
2while_gru_cell_46_matmul_1_readvariableop_resource4while_gru_cell_46_matmul_1_readvariableop_resource_0"f
0while_gru_cell_46_matmul_readvariableop_resource2while_gru_cell_46_matmul_readvariableop_resource_0"X
)while_gru_cell_46_readvariableop_resource+while_gru_cell_46_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2R
'while/gru_cell_46/MatMul/ReadVariableOp'while/gru_cell_46/MatMul/ReadVariableOp2V
)while/gru_cell_46/MatMul_1/ReadVariableOp)while/gru_cell_46/MatMul_1/ReadVariableOp2D
 while/gru_cell_46/ReadVariableOp while/gru_cell_46/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
²

I__inference_sequential_12_layer_call_and_return_conditional_losses_265226
embedding_11_input'
embedding_11_265205:
Ód
gru_1_265208:	
gru_1_265210:	d 
gru_1_265212:
#
dense_26_265215:

dense_26_265217:	"
dense_27_265220:	
dense_27_265222:
identity¢ dense_26/StatefulPartitionedCall¢ dense_27/StatefulPartitionedCall¢$embedding_11/StatefulPartitionedCall¢gru_1/StatefulPartitionedCallü
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputembedding_11_265205*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_264666
gru_1/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0gru_1_265208gru_1_265210gru_1_265212*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_265074
 dense_26/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_26_265215dense_26_265217*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_264843
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_265220dense_27_265222*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_264860x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’Ó
NoOpNoOp!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:[ W
'
_output_shapes
:’’’’’’’’’d
,
_user_specified_nameembedding_11_input


ö
D__inference_dense_27_layer_call_and_return_conditional_losses_266362

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
āW
ā
%sequential_12_gru_1_while_body_264203D
@sequential_12_gru_1_while_sequential_12_gru_1_while_loop_counterJ
Fsequential_12_gru_1_while_sequential_12_gru_1_while_maximum_iterations)
%sequential_12_gru_1_while_placeholder+
'sequential_12_gru_1_while_placeholder_1+
'sequential_12_gru_1_while_placeholder_2C
?sequential_12_gru_1_while_sequential_12_gru_1_strided_slice_1_0
{sequential_12_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_12_gru_1_tensorarrayunstack_tensorlistfromtensor_0R
?sequential_12_gru_1_while_gru_cell_46_readvariableop_resource_0:	Y
Fsequential_12_gru_1_while_gru_cell_46_matmul_readvariableop_resource_0:	d\
Hsequential_12_gru_1_while_gru_cell_46_matmul_1_readvariableop_resource_0:
&
"sequential_12_gru_1_while_identity(
$sequential_12_gru_1_while_identity_1(
$sequential_12_gru_1_while_identity_2(
$sequential_12_gru_1_while_identity_3(
$sequential_12_gru_1_while_identity_4A
=sequential_12_gru_1_while_sequential_12_gru_1_strided_slice_1}
ysequential_12_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_12_gru_1_tensorarrayunstack_tensorlistfromtensorP
=sequential_12_gru_1_while_gru_cell_46_readvariableop_resource:	W
Dsequential_12_gru_1_while_gru_cell_46_matmul_readvariableop_resource:	dZ
Fsequential_12_gru_1_while_gru_cell_46_matmul_1_readvariableop_resource:
¢;sequential_12/gru_1/while/gru_cell_46/MatMul/ReadVariableOp¢=sequential_12/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp¢4sequential_12/gru_1/while/gru_cell_46/ReadVariableOp
Ksequential_12/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   
=sequential_12/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_12_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_12_gru_1_tensorarrayunstack_tensorlistfromtensor_0%sequential_12_gru_1_while_placeholderTsequential_12/gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0µ
4sequential_12/gru_1/while/gru_cell_46/ReadVariableOpReadVariableOp?sequential_12_gru_1_while_gru_cell_46_readvariableop_resource_0*
_output_shapes
:	*
dtype0­
-sequential_12/gru_1/while/gru_cell_46/unstackUnpack<sequential_12/gru_1/while/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numĆ
;sequential_12/gru_1/while/gru_cell_46/MatMul/ReadVariableOpReadVariableOpFsequential_12_gru_1_while_gru_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ō
,sequential_12/gru_1/while/gru_cell_46/MatMulMatMulDsequential_12/gru_1/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_12/gru_1/while/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ū
-sequential_12/gru_1/while/gru_cell_46/BiasAddBiasAdd6sequential_12/gru_1/while/gru_cell_46/MatMul:product:06sequential_12/gru_1/while/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’
5sequential_12/gru_1/while/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
+sequential_12/gru_1/while/gru_cell_46/splitSplit>sequential_12/gru_1/while/gru_cell_46/split/split_dim:output:06sequential_12/gru_1/while/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitČ
=sequential_12/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOpHsequential_12_gru_1_while_gru_cell_46_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ū
.sequential_12/gru_1/while/gru_cell_46/MatMul_1MatMul'sequential_12_gru_1_while_placeholder_2Esequential_12/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ß
/sequential_12/gru_1/while/gru_cell_46/BiasAdd_1BiasAdd8sequential_12/gru_1/while/gru_cell_46/MatMul_1:product:06sequential_12/gru_1/while/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’
+sequential_12/gru_1/while/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’
7sequential_12/gru_1/while/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’į
-sequential_12/gru_1/while/gru_cell_46/split_1SplitV8sequential_12/gru_1/while/gru_cell_46/BiasAdd_1:output:04sequential_12/gru_1/while/gru_cell_46/Const:output:0@sequential_12/gru_1/while/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitÓ
)sequential_12/gru_1/while/gru_cell_46/addAddV24sequential_12/gru_1/while/gru_cell_46/split:output:06sequential_12/gru_1/while/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-sequential_12/gru_1/while/gru_cell_46/SigmoidSigmoid-sequential_12/gru_1/while/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’Õ
+sequential_12/gru_1/while/gru_cell_46/add_1AddV24sequential_12/gru_1/while/gru_cell_46/split:output:16sequential_12/gru_1/while/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’
/sequential_12/gru_1/while/gru_cell_46/Sigmoid_1Sigmoid/sequential_12/gru_1/while/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)sequential_12/gru_1/while/gru_cell_46/mulMul3sequential_12/gru_1/while/gru_cell_46/Sigmoid_1:y:06sequential_12/gru_1/while/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
+sequential_12/gru_1/while/gru_cell_46/add_2AddV24sequential_12/gru_1/while/gru_cell_46/split:output:2-sequential_12/gru_1/while/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’
*sequential_12/gru_1/while/gru_cell_46/ReluRelu/sequential_12/gru_1/while/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
+sequential_12/gru_1/while/gru_cell_46/mul_1Mul1sequential_12/gru_1/while/gru_cell_46/Sigmoid:y:0'sequential_12_gru_1_while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’p
+sequential_12/gru_1/while/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ģ
)sequential_12/gru_1/while/gru_cell_46/subSub4sequential_12/gru_1/while/gru_cell_46/sub/x:output:01sequential_12/gru_1/while/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
+sequential_12/gru_1/while/gru_cell_46/mul_2Mul-sequential_12/gru_1/while/gru_cell_46/sub:z:08sequential_12/gru_1/while/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’É
+sequential_12/gru_1/while/gru_cell_46/add_3AddV2/sequential_12/gru_1/while/gru_cell_46/mul_1:z:0/sequential_12/gru_1/while/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
Dsequential_12/gru_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ¼
>sequential_12/gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_12_gru_1_while_placeholder_1Msequential_12/gru_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0/sequential_12/gru_1/while/gru_cell_46/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅa
sequential_12/gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_12/gru_1/while/addAddV2%sequential_12_gru_1_while_placeholder(sequential_12/gru_1/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_12/gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :·
sequential_12/gru_1/while/add_1AddV2@sequential_12_gru_1_while_sequential_12_gru_1_while_loop_counter*sequential_12/gru_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
"sequential_12/gru_1/while/IdentityIdentity#sequential_12/gru_1/while/add_1:z:0^sequential_12/gru_1/while/NoOp*
T0*
_output_shapes
: ŗ
$sequential_12/gru_1/while/Identity_1IdentityFsequential_12_gru_1_while_sequential_12_gru_1_while_maximum_iterations^sequential_12/gru_1/while/NoOp*
T0*
_output_shapes
: 
$sequential_12/gru_1/while/Identity_2Identity!sequential_12/gru_1/while/add:z:0^sequential_12/gru_1/while/NoOp*
T0*
_output_shapes
: Ā
$sequential_12/gru_1/while/Identity_3IdentityNsequential_12/gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_12/gru_1/while/NoOp*
T0*
_output_shapes
: µ
$sequential_12/gru_1/while/Identity_4Identity/sequential_12/gru_1/while/gru_cell_46/add_3:z:0^sequential_12/gru_1/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
sequential_12/gru_1/while/NoOpNoOp<^sequential_12/gru_1/while/gru_cell_46/MatMul/ReadVariableOp>^sequential_12/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp5^sequential_12/gru_1/while/gru_cell_46/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Fsequential_12_gru_1_while_gru_cell_46_matmul_1_readvariableop_resourceHsequential_12_gru_1_while_gru_cell_46_matmul_1_readvariableop_resource_0"
Dsequential_12_gru_1_while_gru_cell_46_matmul_readvariableop_resourceFsequential_12_gru_1_while_gru_cell_46_matmul_readvariableop_resource_0"
=sequential_12_gru_1_while_gru_cell_46_readvariableop_resource?sequential_12_gru_1_while_gru_cell_46_readvariableop_resource_0"Q
"sequential_12_gru_1_while_identity+sequential_12/gru_1/while/Identity:output:0"U
$sequential_12_gru_1_while_identity_1-sequential_12/gru_1/while/Identity_1:output:0"U
$sequential_12_gru_1_while_identity_2-sequential_12/gru_1/while/Identity_2:output:0"U
$sequential_12_gru_1_while_identity_3-sequential_12/gru_1/while/Identity_3:output:0"U
$sequential_12_gru_1_while_identity_4-sequential_12/gru_1/while/Identity_4:output:0"
=sequential_12_gru_1_while_sequential_12_gru_1_strided_slice_1?sequential_12_gru_1_while_sequential_12_gru_1_strided_slice_1_0"ų
ysequential_12_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_12_gru_1_tensorarrayunstack_tensorlistfromtensor{sequential_12_gru_1_while_tensorarrayv2read_tensorlistgetitem_sequential_12_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2z
;sequential_12/gru_1/while/gru_cell_46/MatMul/ReadVariableOp;sequential_12/gru_1/while/gru_cell_46/MatMul/ReadVariableOp2~
=sequential_12/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp=sequential_12/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp2l
4sequential_12/gru_1/while/gru_cell_46/ReadVariableOp4sequential_12/gru_1/while/gru_cell_46/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
µN

A__inference_gru_1_layer_call_and_return_conditional_losses_265074

inputs6
#gru_cell_46_readvariableop_resource:	=
*gru_cell_46_matmul_readvariableop_resource:	d@
,gru_cell_46_matmul_1_readvariableop_resource:

identity¢!gru_cell_46/MatMul/ReadVariableOp¢#gru_cell_46/MatMul_1/ReadVariableOp¢gru_cell_46/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ū
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_mask
gru_cell_46/ReadVariableOpReadVariableOp#gru_cell_46_readvariableop_resource*
_output_shapes
:	*
dtype0y
gru_cell_46/unstackUnpack"gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
!gru_cell_46/MatMul/ReadVariableOpReadVariableOp*gru_cell_46_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
gru_cell_46/MatMulMatMulstrided_slice_2:output:0)gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAddBiasAddgru_cell_46/MatMul:product:0gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ź
gru_cell_46/splitSplit$gru_cell_46/split/split_dim:output:0gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_46_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_46/MatMul_1MatMulzeros:output:0+gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAdd_1BiasAddgru_cell_46/MatMul_1:product:0gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’h
gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ł
gru_cell_46/split_1SplitVgru_cell_46/BiasAdd_1:output:0gru_cell_46/Const:output:0&gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
gru_cell_46/addAddV2gru_cell_46/split:output:0gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/SigmoidSigmoidgru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/add_1AddV2gru_cell_46/split:output:1gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’j
gru_cell_46/Sigmoid_1Sigmoidgru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mulMulgru_cell_46/Sigmoid_1:y:0gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’~
gru_cell_46/add_2AddV2gru_cell_46/split:output:2gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
gru_cell_46/ReluRelugru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’t
gru_cell_46/mul_1Mulgru_cell_46/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’V
gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
gru_cell_46/subSubgru_cell_46/sub/x:output:0gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mul_2Mulgru_cell_46/sub:z:0gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’{
gru_cell_46/add_3AddV2gru_cell_46/mul_1:z:0gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_46_readvariableop_resource*gru_cell_46_matmul_readvariableop_resource,gru_cell_46_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_264984*
condR
while_cond_264983*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’µ
NoOpNoOp"^gru_cell_46/MatMul/ReadVariableOp$^gru_cell_46/MatMul_1/ReadVariableOp^gru_cell_46/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’dd: : : 2F
!gru_cell_46/MatMul/ReadVariableOp!gru_cell_46/MatMul/ReadVariableOp2J
#gru_cell_46/MatMul_1/ReadVariableOp#gru_cell_46/MatMul_1/ReadVariableOp28
gru_cell_46/ReadVariableOpgru_cell_46/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’dd
 
_user_specified_nameinputs
²n

I__inference_sequential_12_layer_call_and_return_conditional_losses_265466

inputs8
$embedding_11_embedding_lookup_265295:
Ód<
)gru_1_gru_cell_46_readvariableop_resource:	C
0gru_1_gru_cell_46_matmul_readvariableop_resource:	dF
2gru_1_gru_cell_46_matmul_1_readvariableop_resource:
;
'dense_26_matmul_readvariableop_resource:
7
(dense_26_biasadd_readvariableop_resource:	:
'dense_27_matmul_readvariableop_resource:	6
(dense_27_biasadd_readvariableop_resource:
identity¢dense_26/BiasAdd/ReadVariableOp¢dense_26/MatMul/ReadVariableOp¢dense_27/BiasAdd/ReadVariableOp¢dense_27/MatMul/ReadVariableOp¢embedding_11/embedding_lookup¢'gru_1/gru_cell_46/MatMul/ReadVariableOp¢)gru_1/gru_cell_46/MatMul_1/ReadVariableOp¢ gru_1/gru_cell_46/ReadVariableOp¢gru_1/whileb
embedding_11/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:’’’’’’’’’dļ
embedding_11/embedding_lookupResourceGather$embedding_11_embedding_lookup_265295embedding_11/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_11/embedding_lookup/265295*+
_output_shapes
:’’’’’’’’’dd*
dtype0É
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_11/embedding_lookup/265295*+
_output_shapes
:’’’’’’’’’dd
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:’’’’’’’’’ddl
gru_1/ShapeShape1embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:c
gru_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ļ
gru_1/strided_sliceStridedSlicegru_1/Shape:output:0"gru_1/strided_slice/stack:output:0$gru_1/strided_slice/stack_1:output:0$gru_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
gru_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
gru_1/zeros/packedPackgru_1/strided_slice:output:0gru_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
gru_1/zerosFillgru_1/zeros/packed:output:0gru_1/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
gru_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¤
gru_1/transpose	Transpose1embedding_11/embedding_lookup/Identity_1:output:0gru_1/transpose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’dP
gru_1/Shape_1Shapegru_1/transpose:y:0*
T0*
_output_shapes
:e
gru_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ł
gru_1/strided_slice_1StridedSlicegru_1/Shape_1:output:0$gru_1/strided_slice_1/stack:output:0&gru_1/strided_slice_1/stack_1:output:0&gru_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!gru_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ę
gru_1/TensorArrayV2TensorListReserve*gru_1/TensorArrayV2/element_shape:output:0gru_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
;gru_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ņ
-gru_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_1/transpose:y:0Dgru_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅe
gru_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
gru_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru_1/strided_slice_2StridedSlicegru_1/transpose:y:0$gru_1/strided_slice_2/stack:output:0&gru_1/strided_slice_2/stack_1:output:0&gru_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_mask
 gru_1/gru_cell_46/ReadVariableOpReadVariableOp)gru_1_gru_cell_46_readvariableop_resource*
_output_shapes
:	*
dtype0
gru_1/gru_cell_46/unstackUnpack(gru_1/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
'gru_1/gru_cell_46/MatMul/ReadVariableOpReadVariableOp0gru_1_gru_cell_46_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0¦
gru_1/gru_cell_46/MatMulMatMulgru_1/strided_slice_2:output:0/gru_1/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/BiasAddBiasAdd"gru_1/gru_cell_46/MatMul:product:0"gru_1/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
!gru_1/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ü
gru_1/gru_cell_46/splitSplit*gru_1/gru_cell_46/split/split_dim:output:0"gru_1/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
)gru_1/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp2gru_1_gru_cell_46_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0 
gru_1/gru_cell_46/MatMul_1MatMulgru_1/zeros:output:01gru_1/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’£
gru_1/gru_cell_46/BiasAdd_1BiasAdd$gru_1/gru_cell_46/MatMul_1:product:0"gru_1/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’l
gru_1/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’n
#gru_1/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
gru_1/gru_cell_46/split_1SplitV$gru_1/gru_cell_46/BiasAdd_1:output:0 gru_1/gru_cell_46/Const:output:0,gru_1/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
gru_1/gru_cell_46/addAddV2 gru_1/gru_cell_46/split:output:0"gru_1/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
gru_1/gru_cell_46/SigmoidSigmoidgru_1/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/add_1AddV2 gru_1/gru_cell_46/split:output:1"gru_1/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’v
gru_1/gru_cell_46/Sigmoid_1Sigmoidgru_1/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/mulMulgru_1/gru_cell_46/Sigmoid_1:y:0"gru_1/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/add_2AddV2 gru_1/gru_cell_46/split:output:2gru_1/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
gru_1/gru_cell_46/ReluRelugru_1/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/mul_1Mulgru_1/gru_cell_46/Sigmoid:y:0gru_1/zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’\
gru_1/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru_1/gru_cell_46/subSub gru_1/gru_cell_46/sub/x:output:0gru_1/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/mul_2Mulgru_1/gru_cell_46/sub:z:0$gru_1/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/gru_cell_46/add_3AddV2gru_1/gru_cell_46/mul_1:z:0gru_1/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’t
#gru_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   d
"gru_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :×
gru_1/TensorArrayV2_1TensorListReserve,gru_1/TensorArrayV2_1/element_shape:output:0+gru_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅL

gru_1/timeConst*
_output_shapes
: *
dtype0*
value	B : i
gru_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Z
gru_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
gru_1/whileWhile!gru_1/while/loop_counter:output:0'gru_1/while/maximum_iterations:output:0gru_1/time:output:0gru_1/TensorArrayV2_1:handle:0gru_1/zeros:output:0gru_1/strided_slice_1:output:0=gru_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_1_gru_cell_46_readvariableop_resource0gru_1_gru_cell_46_matmul_readvariableop_resource2gru_1_gru_cell_46_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *#
bodyR
gru_1_while_body_265362*#
condR
gru_1_while_cond_265361*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
6gru_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   é
(gru_1/TensorArrayV2Stack/TensorListStackTensorListStackgru_1/while:output:3?gru_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsn
gru_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’g
gru_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
gru_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
gru_1/strided_slice_3StridedSlice1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0$gru_1/strided_slice_3/stack:output:0&gru_1/strided_slice_3/stack_1:output:0&gru_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskk
gru_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ©
gru_1/transpose_1	Transpose1gru_1/TensorArrayV2Stack/TensorListStack:tensor:0gru_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’a
gru_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_26/MatMulMatMulgru_1/strided_slice_3:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’c
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’h
dense_27/SigmoidSigmoiddense_27/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’c
IdentityIdentitydense_27/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ó
NoOpNoOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp^embedding_11/embedding_lookup(^gru_1/gru_cell_46/MatMul/ReadVariableOp*^gru_1/gru_cell_46/MatMul_1/ReadVariableOp!^gru_1/gru_cell_46/ReadVariableOp^gru_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2>
embedding_11/embedding_lookupembedding_11/embedding_lookup2R
'gru_1/gru_cell_46/MatMul/ReadVariableOp'gru_1/gru_cell_46/MatMul/ReadVariableOp2V
)gru_1/gru_cell_46/MatMul_1/ReadVariableOp)gru_1/gru_cell_46/MatMul_1/ReadVariableOp2D
 gru_1/gru_cell_46/ReadVariableOp gru_1/gru_cell_46/ReadVariableOp2
gru_1/whilegru_1/while:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs


I__inference_sequential_12_layer_call_and_return_conditional_losses_264867

inputs'
embedding_11_264667:
Ód
gru_1_264825:	
gru_1_264827:	d 
gru_1_264829:
#
dense_26_264844:

dense_26_264846:	"
dense_27_264861:	
dense_27_264863:
identity¢ dense_26/StatefulPartitionedCall¢ dense_27/StatefulPartitionedCall¢$embedding_11/StatefulPartitionedCall¢gru_1/StatefulPartitionedCallš
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_11_264667*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_264666
gru_1/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0gru_1_264825gru_1_264827gru_1_264829*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_264824
 dense_26/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_26_264844dense_26_264846*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_264843
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_264861dense_27_264863*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_264860x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’Ó
NoOpNoOp!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
F
¾	
gru_1_while_body_265537(
$gru_1_while_gru_1_while_loop_counter.
*gru_1_while_gru_1_while_maximum_iterations
gru_1_while_placeholder
gru_1_while_placeholder_1
gru_1_while_placeholder_2'
#gru_1_while_gru_1_strided_slice_1_0c
_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0D
1gru_1_while_gru_cell_46_readvariableop_resource_0:	K
8gru_1_while_gru_cell_46_matmul_readvariableop_resource_0:	dN
:gru_1_while_gru_cell_46_matmul_1_readvariableop_resource_0:

gru_1_while_identity
gru_1_while_identity_1
gru_1_while_identity_2
gru_1_while_identity_3
gru_1_while_identity_4%
!gru_1_while_gru_1_strided_slice_1a
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensorB
/gru_1_while_gru_cell_46_readvariableop_resource:	I
6gru_1_while_gru_cell_46_matmul_readvariableop_resource:	dL
8gru_1_while_gru_cell_46_matmul_1_readvariableop_resource:
¢-gru_1/while/gru_cell_46/MatMul/ReadVariableOp¢/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp¢&gru_1/while/gru_cell_46/ReadVariableOp
=gru_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   Ä
/gru_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0gru_1_while_placeholderFgru_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
&gru_1/while/gru_cell_46/ReadVariableOpReadVariableOp1gru_1_while_gru_cell_46_readvariableop_resource_0*
_output_shapes
:	*
dtype0
gru_1/while/gru_cell_46/unstackUnpack.gru_1/while/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num§
-gru_1/while/gru_cell_46/MatMul/ReadVariableOpReadVariableOp8gru_1_while_gru_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ź
gru_1/while/gru_cell_46/MatMulMatMul6gru_1/while/TensorArrayV2Read/TensorListGetItem:item:05gru_1/while/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’±
gru_1/while/gru_cell_46/BiasAddBiasAdd(gru_1/while/gru_cell_46/MatMul:product:0(gru_1/while/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
'gru_1/while/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ī
gru_1/while/gru_cell_46/splitSplit0gru_1/while/gru_cell_46/split/split_dim:output:0(gru_1/while/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split¬
/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp:gru_1_while_gru_cell_46_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0±
 gru_1/while/gru_cell_46/MatMul_1MatMulgru_1_while_placeholder_27gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’µ
!gru_1/while/gru_cell_46/BiasAdd_1BiasAdd*gru_1/while/gru_cell_46/MatMul_1:product:0(gru_1/while/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’r
gru_1/while/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’t
)gru_1/while/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’©
gru_1/while/gru_cell_46/split_1SplitV*gru_1/while/gru_cell_46/BiasAdd_1:output:0&gru_1/while/gru_cell_46/Const:output:02gru_1/while/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split©
gru_1/while/gru_cell_46/addAddV2&gru_1/while/gru_cell_46/split:output:0(gru_1/while/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’~
gru_1/while/gru_cell_46/SigmoidSigmoidgru_1/while/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’«
gru_1/while/gru_cell_46/add_1AddV2&gru_1/while/gru_cell_46/split:output:1(gru_1/while/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’
!gru_1/while/gru_cell_46/Sigmoid_1Sigmoid!gru_1/while/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¦
gru_1/while/gru_cell_46/mulMul%gru_1/while/gru_cell_46/Sigmoid_1:y:0(gru_1/while/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’¢
gru_1/while/gru_cell_46/add_2AddV2&gru_1/while/gru_cell_46/split:output:2gru_1/while/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’z
gru_1/while/gru_cell_46/ReluRelu!gru_1/while/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/while/gru_cell_46/mul_1Mul#gru_1/while/gru_cell_46/Sigmoid:y:0gru_1_while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’b
gru_1/while/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
gru_1/while/gru_cell_46/subSub&gru_1/while/gru_cell_46/sub/x:output:0#gru_1/while/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’¤
gru_1/while/gru_cell_46/mul_2Mulgru_1/while/gru_cell_46/sub:z:0*gru_1/while/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_1/while/gru_cell_46/add_3AddV2!gru_1/while/gru_cell_46/mul_1:z:0!gru_1/while/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’x
6gru_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0gru_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_1_while_placeholder_1?gru_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0!gru_1/while/gru_cell_46/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅS
gru_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
gru_1/while/addAddV2gru_1_while_placeholdergru_1/while/add/y:output:0*
T0*
_output_shapes
: U
gru_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
gru_1/while/add_1AddV2$gru_1_while_gru_1_while_loop_countergru_1/while/add_1/y:output:0*
T0*
_output_shapes
: k
gru_1/while/IdentityIdentitygru_1/while/add_1:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: 
gru_1/while/Identity_1Identity*gru_1_while_gru_1_while_maximum_iterations^gru_1/while/NoOp*
T0*
_output_shapes
: k
gru_1/while/Identity_2Identitygru_1/while/add:z:0^gru_1/while/NoOp*
T0*
_output_shapes
: 
gru_1/while/Identity_3Identity@gru_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_1/while/NoOp*
T0*
_output_shapes
: 
gru_1/while/Identity_4Identity!gru_1/while/gru_cell_46/add_3:z:0^gru_1/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ż
gru_1/while/NoOpNoOp.^gru_1/while/gru_cell_46/MatMul/ReadVariableOp0^gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp'^gru_1/while/gru_cell_46/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "H
!gru_1_while_gru_1_strided_slice_1#gru_1_while_gru_1_strided_slice_1_0"v
8gru_1_while_gru_cell_46_matmul_1_readvariableop_resource:gru_1_while_gru_cell_46_matmul_1_readvariableop_resource_0"r
6gru_1_while_gru_cell_46_matmul_readvariableop_resource8gru_1_while_gru_cell_46_matmul_readvariableop_resource_0"d
/gru_1_while_gru_cell_46_readvariableop_resource1gru_1_while_gru_cell_46_readvariableop_resource_0"5
gru_1_while_identitygru_1/while/Identity:output:0"9
gru_1_while_identity_1gru_1/while/Identity_1:output:0"9
gru_1_while_identity_2gru_1/while/Identity_2:output:0"9
gru_1_while_identity_3gru_1/while/Identity_3:output:0"9
gru_1_while_identity_4gru_1/while/Identity_4:output:0"Ą
]gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_gru_1_while_tensorarrayv2read_tensorlistgetitem_gru_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2^
-gru_1/while/gru_cell_46/MatMul/ReadVariableOp-gru_1/while/gru_cell_46/MatMul/ReadVariableOp2b
/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp/gru_1/while/gru_cell_46/MatMul_1/ReadVariableOp2P
&gru_1/while/gru_cell_46/ReadVariableOp&gru_1/while/gru_cell_46/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ż	
Ļ
.__inference_sequential_12_layer_call_fn_265291

inputs
unknown:
Ód
	unknown_0:	
	unknown_1:	d
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_265138o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
¦	
§
H__inference_embedding_11_layer_call_and_return_conditional_losses_265658

inputs+
embedding_lookup_265652:
Ód
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:’’’’’’’’’d»
embedding_lookupResourceGatherembedding_lookup_265652Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/265652*+
_output_shapes
:’’’’’’’’’dd*
dtype0¢
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/265652*+
_output_shapes
:’’’’’’’’’dd
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:’’’’’’’’’ddw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’ddY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:’’’’’’’’’d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
Ż	
Ļ
.__inference_sequential_12_layer_call_fn_265270

inputs
unknown:
Ód
	unknown_0:	
	unknown_1:	d
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_264867o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
¾

Ü
,__inference_gru_cell_46_layer_call_fn_266376

inputs
states_0
unknown:	
	unknown_0:	d
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_264377p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:’’’’’’’’’d:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0
Æ

-__inference_embedding_11_layer_call_fn_265648

inputs
unknown:
Ód
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_264666s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’dd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:’’’’’’’’’d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
 !
·
while_body_264391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_gru_cell_46_264413_0:	-
while_gru_cell_46_264415_0:	d.
while_gru_cell_46_264417_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_gru_cell_46_264413:	+
while_gru_cell_46_264415:	d,
while_gru_cell_46_264417:
¢)while/gru_cell_46/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
)while/gru_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_46_264413_0while_gru_cell_46_264415_0while_gru_cell_46_264417_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_264377r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/gru_cell_46/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŅM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/gru_cell_46/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’x

while/NoOpNoOp*^while/gru_cell_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "6
while_gru_cell_46_264413while_gru_cell_46_264413_0"6
while_gru_cell_46_264415while_gru_cell_46_264415_0"6
while_gru_cell_46_264417while_gru_cell_46_264417_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2V
)while/gru_cell_46/StatefulPartitionedCall)while/gru_cell_46/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
§

ų
D__inference_dense_26_layer_call_and_return_conditional_losses_266342

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Č

)__inference_dense_27_layer_call_fn_266351

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_264860o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


Ū
.__inference_sequential_12_layer_call_fn_265178
embedding_11_input
unknown:
Ód
	unknown_0:	
	unknown_1:	d
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_265138o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:’’’’’’’’’d
,
_user_specified_nameembedding_11_input
”
Ś
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_264522

inputs

states*
readvariableop_resource:	1
matmul_readvariableop_resource:	d4
 matmul_1_readvariableop_resource:

identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’¦
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:’’’’’’’’’c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’T
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:’’’’’’’’’J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:’’’’’’’’’d:’’’’’’’’’: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates
Ļ	
Ń
$__inference_signature_wrapper_265249
embedding_11_input
unknown:
Ód
	unknown_0:	
	unknown_1:	d
	unknown_2:

	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_264307o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:’’’’’’’’’d
,
_user_specified_nameembedding_11_input
µN

A__inference_gru_1_layer_call_and_return_conditional_losses_266167

inputs6
#gru_cell_46_readvariableop_resource:	=
*gru_cell_46_matmul_readvariableop_resource:	d@
,gru_cell_46_matmul_1_readvariableop_resource:

identity¢!gru_cell_46/MatMul/ReadVariableOp¢#gru_cell_46/MatMul_1/ReadVariableOp¢gru_cell_46/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d’’’’’’’’’dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ū
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_mask
gru_cell_46/ReadVariableOpReadVariableOp#gru_cell_46_readvariableop_resource*
_output_shapes
:	*
dtype0y
gru_cell_46/unstackUnpack"gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
!gru_cell_46/MatMul/ReadVariableOpReadVariableOp*gru_cell_46_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
gru_cell_46/MatMulMatMulstrided_slice_2:output:0)gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAddBiasAddgru_cell_46/MatMul:product:0gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ź
gru_cell_46/splitSplit$gru_cell_46/split/split_dim:output:0gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_46_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_46/MatMul_1MatMulzeros:output:0+gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAdd_1BiasAddgru_cell_46/MatMul_1:product:0gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’h
gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ł
gru_cell_46/split_1SplitVgru_cell_46/BiasAdd_1:output:0gru_cell_46/Const:output:0&gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
gru_cell_46/addAddV2gru_cell_46/split:output:0gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/SigmoidSigmoidgru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/add_1AddV2gru_cell_46/split:output:1gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’j
gru_cell_46/Sigmoid_1Sigmoidgru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mulMulgru_cell_46/Sigmoid_1:y:0gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’~
gru_cell_46/add_2AddV2gru_cell_46/split:output:2gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
gru_cell_46/ReluRelugru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’t
gru_cell_46/mul_1Mulgru_cell_46/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’V
gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
gru_cell_46/subSubgru_cell_46/sub/x:output:0gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mul_2Mulgru_cell_46/sub:z:0gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’{
gru_cell_46/add_3AddV2gru_cell_46/mul_1:z:0gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_46_readvariableop_resource*gru_cell_46_matmul_readvariableop_resource,gru_cell_46_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_266077*
condR
while_cond_266076*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’µ
NoOpNoOp"^gru_cell_46/MatMul/ReadVariableOp$^gru_cell_46/MatMul_1/ReadVariableOp^gru_cell_46/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’dd: : : 2F
!gru_cell_46/MatMul/ReadVariableOp!gru_cell_46/MatMul/ReadVariableOp2J
#gru_cell_46/MatMul_1/ReadVariableOp#gru_cell_46/MatMul_1/ReadVariableOp28
gru_cell_46/ReadVariableOpgru_cell_46/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:’’’’’’’’’dd
 
_user_specified_nameinputs
ŲN

A__inference_gru_1_layer_call_and_return_conditional_losses_266012
inputs_06
#gru_cell_46_readvariableop_resource:	=
*gru_cell_46_matmul_readvariableop_resource:	d@
,gru_cell_46_matmul_1_readvariableop_resource:

identity¢!gru_cell_46/MatMul/ReadVariableOp¢#gru_cell_46/MatMul_1/ReadVariableOp¢gru_cell_46/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’dD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ū
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’d*
shrink_axis_mask
gru_cell_46/ReadVariableOpReadVariableOp#gru_cell_46_readvariableop_resource*
_output_shapes
:	*
dtype0y
gru_cell_46/unstackUnpack"gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
!gru_cell_46/MatMul/ReadVariableOpReadVariableOp*gru_cell_46_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
gru_cell_46/MatMulMatMulstrided_slice_2:output:0)gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAddBiasAddgru_cell_46/MatMul:product:0gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ź
gru_cell_46/splitSplit$gru_cell_46/split/split_dim:output:0gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_46_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
gru_cell_46/MatMul_1MatMulzeros:output:0+gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/BiasAdd_1BiasAddgru_cell_46/MatMul_1:product:0gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’h
gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ł
gru_cell_46/split_1SplitVgru_cell_46/BiasAdd_1:output:0gru_cell_46/Const:output:0&gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
gru_cell_46/addAddV2gru_cell_46/split:output:0gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’f
gru_cell_46/SigmoidSigmoidgru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/add_1AddV2gru_cell_46/split:output:1gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’j
gru_cell_46/Sigmoid_1Sigmoidgru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mulMulgru_cell_46/Sigmoid_1:y:0gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’~
gru_cell_46/add_2AddV2gru_cell_46/split:output:2gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’b
gru_cell_46/ReluRelugru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’t
gru_cell_46/mul_1Mulgru_cell_46/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:’’’’’’’’’V
gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
gru_cell_46/subSubgru_cell_46/sub/x:output:0gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
gru_cell_46/mul_2Mulgru_cell_46/sub:z:0gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’{
gru_cell_46/add_3AddV2gru_cell_46/mul_1:z:0gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_46_readvariableop_resource*gru_cell_46_matmul_readvariableop_resource,gru_cell_46_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_265922*
condR
while_cond_265921*9
output_shapes(
&: : : : :’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’µ
NoOpNoOp"^gru_cell_46/MatMul/ReadVariableOp$^gru_cell_46/MatMul_1/ReadVariableOp^gru_cell_46/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’d: : : 2F
!gru_cell_46/MatMul/ReadVariableOp!gru_cell_46/MatMul/ReadVariableOp2J
#gru_cell_46/MatMul_1/ReadVariableOp#gru_cell_46/MatMul_1/ReadVariableOp28
gru_cell_46/ReadVariableOpgru_cell_46/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’d
"
_user_specified_name
inputs/0
½>

while_body_266232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0>
+while_gru_cell_46_readvariableop_resource_0:	E
2while_gru_cell_46_matmul_readvariableop_resource_0:	dH
4while_gru_cell_46_matmul_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor<
)while_gru_cell_46_readvariableop_resource:	C
0while_gru_cell_46_matmul_readvariableop_resource:	dF
2while_gru_cell_46_matmul_1_readvariableop_resource:
¢'while/gru_cell_46/MatMul/ReadVariableOp¢)while/gru_cell_46/MatMul_1/ReadVariableOp¢ while/gru_cell_46/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
 while/gru_cell_46/ReadVariableOpReadVariableOp+while_gru_cell_46_readvariableop_resource_0*
_output_shapes
:	*
dtype0
while/gru_cell_46/unstackUnpack(while/gru_cell_46/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num
'while/gru_cell_46/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_46_matmul_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ø
while/gru_cell_46/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/BiasAddBiasAdd"while/gru_cell_46/MatMul:product:0"while/gru_cell_46/unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’l
!while/gru_cell_46/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ü
while/gru_cell_46/splitSplit*while/gru_cell_46/split/split_dim:output:0"while/gru_cell_46/BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split 
)while/gru_cell_46/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_46_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/gru_cell_46/MatMul_1MatMulwhile_placeholder_21while/gru_cell_46/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’£
while/gru_cell_46/BiasAdd_1BiasAdd$while/gru_cell_46/MatMul_1:product:0"while/gru_cell_46/unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’l
while/gru_cell_46/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’n
#while/gru_cell_46/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
while/gru_cell_46/split_1SplitV$while/gru_cell_46/BiasAdd_1:output:0 while/gru_cell_46/Const:output:0,while/gru_cell_46/split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
while/gru_cell_46/addAddV2 while/gru_cell_46/split:output:0"while/gru_cell_46/split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
while/gru_cell_46/SigmoidSigmoidwhile/gru_cell_46/add:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_1AddV2 while/gru_cell_46/split:output:1"while/gru_cell_46/split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’v
while/gru_cell_46/Sigmoid_1Sigmoidwhile/gru_cell_46/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mulMulwhile/gru_cell_46/Sigmoid_1:y:0"while/gru_cell_46/split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_2AddV2 while/gru_cell_46/split:output:2while/gru_cell_46/mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’n
while/gru_cell_46/ReluReluwhile/gru_cell_46/add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_1Mulwhile/gru_cell_46/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:’’’’’’’’’\
while/gru_cell_46/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell_46/subSub while/gru_cell_46/sub/x:output:0while/gru_cell_46/Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/mul_2Mulwhile/gru_cell_46/sub:z:0$while/gru_cell_46/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/gru_cell_46/add_3AddV2while/gru_cell_46/mul_1:z:0while/gru_cell_46/mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ģ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/gru_cell_46/add_3:z:0*
_output_shapes
: *
element_dtype0:éčŅM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/gru_cell_46/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Å

while/NoOpNoOp(^while/gru_cell_46/MatMul/ReadVariableOp*^while/gru_cell_46/MatMul_1/ReadVariableOp!^while/gru_cell_46/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "j
2while_gru_cell_46_matmul_1_readvariableop_resource4while_gru_cell_46_matmul_1_readvariableop_resource_0"f
0while_gru_cell_46_matmul_readvariableop_resource2while_gru_cell_46_matmul_readvariableop_resource_0"X
)while_gru_cell_46_readvariableop_resource+while_gru_cell_46_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2R
'while/gru_cell_46/MatMul/ReadVariableOp'while/gru_cell_46/MatMul/ReadVariableOp2V
)while/gru_cell_46/MatMul_1/ReadVariableOp)while/gru_cell_46/MatMul_1/ReadVariableOp2D
 while/gru_cell_46/ReadVariableOp while/gru_cell_46/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
 !
·
while_body_264575
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_gru_cell_46_264597_0:	-
while_gru_cell_46_264599_0:	d.
while_gru_cell_46_264601_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_gru_cell_46_264597:	+
while_gru_cell_46_264599:	d,
while_gru_cell_46_264601:
¢)while/gru_cell_46/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’d   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’d*
element_dtype0
)while/gru_cell_46/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_46_264597_0while_gru_cell_46_264599_0while_gru_cell_46_264601_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_264522r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:02while/gru_cell_46/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŅM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity2while/gru_cell_46/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’x

while/NoOpNoOp*^while/gru_cell_46/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "6
while_gru_cell_46_264597while_gru_cell_46_264597_0"6
while_gru_cell_46_264599while_gru_cell_46_264599_0"6
while_gru_cell_46_264601while_gru_cell_46_264601_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :’’’’’’’’’: : : : : 2V
)while/gru_cell_46/StatefulPartitionedCall)while/gru_cell_46/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 


I__inference_sequential_12_layer_call_and_return_conditional_losses_265138

inputs'
embedding_11_265117:
Ód
gru_1_265120:	
gru_1_265122:	d 
gru_1_265124:
#
dense_26_265127:

dense_26_265129:	"
dense_27_265132:	
dense_27_265134:
identity¢ dense_26/StatefulPartitionedCall¢ dense_27/StatefulPartitionedCall¢$embedding_11/StatefulPartitionedCall¢gru_1/StatefulPartitionedCallš
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_11_265117*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_264666
gru_1/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0gru_1_265120gru_1_265122gru_1_265124*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_265074
 dense_26/StatefulPartitionedCallStatefulPartitionedCall&gru_1/StatefulPartitionedCall:output:0dense_26_265127dense_26_265129*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_264843
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_265132dense_27_265134*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_264860x
IdentityIdentity)dense_27/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’Ó
NoOpNoOp!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall^gru_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’d: : : : : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2>
gru_1/StatefulPartitionedCallgru_1/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
¦	
§
H__inference_embedding_11_layer_call_and_return_conditional_losses_264666

inputs+
embedding_lookup_264660:
Ód
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:’’’’’’’’’d»
embedding_lookupResourceGatherembedding_lookup_264660Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/264660*+
_output_shapes
:’’’’’’’’’dd*
dtype0¢
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/264660*+
_output_shapes
:’’’’’’’’’dd
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:’’’’’’’’’ddw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:’’’’’’’’’ddY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:’’’’’’’’’d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs
”
Ś
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_264377

inputs

states*
readvariableop_resource:	1
matmul_readvariableop_resource:	d4
 matmul_1_readvariableop_resource:

identity

identity_1¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOpg
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype0a
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
numu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’i
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:’’’’’’’’’Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’¦
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:’’’’’’’’’Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ’’’’\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’É
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splita
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’N
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:’’’’’’’’’c
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:’’’’’’’’’R
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’^
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:’’’’’’’’’Z
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:’’’’’’’’’J
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’T
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:’’’’’’’’’J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:’’’’’’’’’\
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	add_3:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:’’’’’’’’’d:’’’’’’’’’: : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’d
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates

ŗ
&__inference_gru_1_layer_call_fn_265669
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:

identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_264456p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’d
"
_user_specified_name
inputs/0

ŗ
&__inference_gru_1_layer_call_fn_265680
inputs_0
unknown:	
	unknown_0:	d
	unknown_1:

identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_gru_1_layer_call_and_return_conditional_losses_264640p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’d
"
_user_specified_name
inputs/0"æL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Į
serving_default­
Q
embedding_11_input;
$serving_default_embedding_11_input:0’’’’’’’’’d<
dense_270
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:”»
§
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories"
_tf_keras_sequential
Ś
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings
#_self_saveable_object_factories"
_tf_keras_layer
’
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec
# _self_saveable_object_factories"
_tf_keras_rnn_layer
ą
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
#)_self_saveable_object_factories"
_tf_keras_layer
ą
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
#2_self_saveable_object_factories"
_tf_keras_layer
X
0
31
42
53
'4
(5
06
17"
trackable_list_wrapper
Q
30
41
52
'3
(4
05
16"
trackable_list_wrapper
 "
trackable_list_wrapper
Ź
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
ī
;trace_0
<trace_1
=trace_2
>trace_32
.__inference_sequential_12_layer_call_fn_264886
.__inference_sequential_12_layer_call_fn_265270
.__inference_sequential_12_layer_call_fn_265291
.__inference_sequential_12_layer_call_fn_265178Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 z;trace_0z<trace_1z=trace_2z>trace_3
Ś
?trace_0
@trace_1
Atrace_2
Btrace_32ļ
I__inference_sequential_12_layer_call_and_return_conditional_losses_265466
I__inference_sequential_12_layer_call_and_return_conditional_losses_265641
I__inference_sequential_12_layer_call_and_return_conditional_losses_265202
I__inference_sequential_12_layer_call_and_return_conditional_losses_265226Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 z?trace_0z@trace_1zAtrace_2zBtrace_3
×BŌ
!__inference__wrapped_model_264307embedding_11_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
"
	optimizer
,
Cserving_default"
signature_map
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ń
Itrace_02Ō
-__inference_embedding_11_layer_call_fn_265648¢
²
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
annotationsŖ *
 zItrace_0

Jtrace_02ļ
H__inference_embedding_11_layer_call_and_return_conditional_losses_265658¢
²
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
annotationsŖ *
 zJtrace_0
+:)
Ód2embedding_11/embeddings
 "
trackable_dict_wrapper
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Kstates
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ć
Qtrace_0
Rtrace_1
Strace_2
Ttrace_32ų
&__inference_gru_1_layer_call_fn_265669
&__inference_gru_1_layer_call_fn_265680
&__inference_gru_1_layer_call_fn_265691
&__inference_gru_1_layer_call_fn_265702Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 zQtrace_0zRtrace_1zStrace_2zTtrace_3
Ļ
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_32ä
A__inference_gru_1_layer_call_and_return_conditional_losses_265857
A__inference_gru_1_layer_call_and_return_conditional_losses_266012
A__inference_gru_1_layer_call_and_return_conditional_losses_266167
A__inference_gru_1_layer_call_and_return_conditional_losses_266322Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 zUtrace_0zVtrace_1zWtrace_2zXtrace_3
"
_generic_user_object

Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator

3kernel
4recurrent_kernel
5bias
#`_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_list_wrapper
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
­
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
ķ
ftrace_02Š
)__inference_dense_26_layer_call_fn_266331¢
²
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
annotationsŖ *
 zftrace_0

gtrace_02ė
D__inference_dense_26_layer_call_and_return_conditional_losses_266342¢
²
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
annotationsŖ *
 zgtrace_0
#:!
2dense_26/kernel
:2dense_26/bias
 "
trackable_dict_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
ķ
mtrace_02Š
)__inference_dense_27_layer_call_fn_266351¢
²
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
annotationsŖ *
 zmtrace_0

ntrace_02ė
D__inference_dense_27_layer_call_and_return_conditional_losses_266362¢
²
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
annotationsŖ *
 zntrace_0
": 	2dense_27/kernel
:2dense_27/bias
 "
trackable_dict_wrapper
*:(	d2gru_1/gru_cell_1/kernel
5:3
2!gru_1/gru_cell_1/recurrent_kernel
(:&	2gru_1/gru_cell_1/bias
'
0"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
5
o0
p1
q2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
.__inference_sequential_12_layer_call_fn_264886embedding_11_input"Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 
Bż
.__inference_sequential_12_layer_call_fn_265270inputs"Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 
Bż
.__inference_sequential_12_layer_call_fn_265291inputs"Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 
B
.__inference_sequential_12_layer_call_fn_265178embedding_11_input"Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 
B
I__inference_sequential_12_layer_call_and_return_conditional_losses_265466inputs"Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 
B
I__inference_sequential_12_layer_call_and_return_conditional_losses_265641inputs"Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 
§B¤
I__inference_sequential_12_layer_call_and_return_conditional_losses_265202embedding_11_input"Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 
§B¤
I__inference_sequential_12_layer_call_and_return_conditional_losses_265226embedding_11_input"Ą
·²³
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
kwonlydefaultsŖ 
annotationsŖ *
 
ÖBÓ
$__inference_signature_wrapper_265249embedding_11_input"
²
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
annotationsŖ *
 
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
įBŽ
-__inference_embedding_11_layer_call_fn_265648inputs"¢
²
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
annotationsŖ *
 
üBł
H__inference_embedding_11_layer_call_and_return_conditional_losses_265658inputs"¢
²
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
annotationsŖ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
&__inference_gru_1_layer_call_fn_265669inputs/0"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
&__inference_gru_1_layer_call_fn_265680inputs/0"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
&__inference_gru_1_layer_call_fn_265691inputs"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
&__inference_gru_1_layer_call_fn_265702inputs"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ŖB§
A__inference_gru_1_layer_call_and_return_conditional_losses_265857inputs/0"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ŖB§
A__inference_gru_1_layer_call_and_return_conditional_losses_266012inputs/0"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ØB„
A__inference_gru_1_layer_call_and_return_conditional_losses_266167inputs"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ØB„
A__inference_gru_1_layer_call_and_return_conditional_losses_266322inputs"Õ
Ģ²Č
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
Ō
wtrace_0
xtrace_12
,__inference_gru_cell_46_layer_call_fn_266376
,__inference_gru_cell_46_layer_call_fn_266390¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 zwtrace_0zxtrace_1

ytrace_0
ztrace_12Ó
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_266429
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_266468¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 zytrace_0zztrace_1
"
_generic_user_object
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
ŻBŚ
)__inference_dense_26_layer_call_fn_266331inputs"¢
²
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
annotationsŖ *
 
ųBõ
D__inference_dense_26_layer_call_and_return_conditional_losses_266342inputs"¢
²
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
annotationsŖ *
 
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
ŻBŚ
)__inference_dense_27_layer_call_fn_266351inputs"¢
²
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
annotationsŖ *
 
ųBõ
D__inference_dense_27_layer_call_and_return_conditional_losses_266362inputs"¢
²
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
annotationsŖ *
 
N
{	variables
|	keras_api
	}total
	~count"
_tf_keras_metric
b
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric

	variables
	keras_api
true_positives
true_negatives
false_positives
false_negatives"
_tf_keras_metric
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
B
,__inference_gru_cell_46_layer_call_fn_266376inputsstates/0"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
B
,__inference_gru_cell_46_layer_call_fn_266390inputsstates/0"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
”B
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_266429inputsstates/0"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
”B
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_266468inputsstates/0"¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
.
}0
~1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
-
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
@
0
1
2
3"
trackable_list_wrapper
.
	variables"
_generic_user_object
:Č (2true_positives
:Č (2true_negatives
 :Č (2false_positives
 :Č (2false_negatives”
!__inference__wrapped_model_264307|534'(01;¢8
1¢.
,)
embedding_11_input’’’’’’’’’d
Ŗ "3Ŗ0
.
dense_27"
dense_27’’’’’’’’’¦
D__inference_dense_26_layer_call_and_return_conditional_losses_266342^'(0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "&¢#

0’’’’’’’’’
 ~
)__inference_dense_26_layer_call_fn_266331Q'(0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "’’’’’’’’’„
D__inference_dense_27_layer_call_and_return_conditional_losses_266362]010¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "%¢"

0’’’’’’’’’
 }
)__inference_dense_27_layer_call_fn_266351P010¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "’’’’’’’’’«
H__inference_embedding_11_layer_call_and_return_conditional_losses_265658_/¢,
%¢"
 
inputs’’’’’’’’’d
Ŗ ")¢&

0’’’’’’’’’dd
 
-__inference_embedding_11_layer_call_fn_265648R/¢,
%¢"
 
inputs’’’’’’’’’d
Ŗ "’’’’’’’’’ddĆ
A__inference_gru_1_layer_call_and_return_conditional_losses_265857~534O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’d

 
p 

 
Ŗ "&¢#

0’’’’’’’’’
 Ć
A__inference_gru_1_layer_call_and_return_conditional_losses_266012~534O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’d

 
p

 
Ŗ "&¢#

0’’’’’’’’’
 ³
A__inference_gru_1_layer_call_and_return_conditional_losses_266167n534?¢<
5¢2
$!
inputs’’’’’’’’’dd

 
p 

 
Ŗ "&¢#

0’’’’’’’’’
 ³
A__inference_gru_1_layer_call_and_return_conditional_losses_266322n534?¢<
5¢2
$!
inputs’’’’’’’’’dd

 
p

 
Ŗ "&¢#

0’’’’’’’’’
 
&__inference_gru_1_layer_call_fn_265669q534O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’d

 
p 

 
Ŗ "’’’’’’’’’
&__inference_gru_1_layer_call_fn_265680q534O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’d

 
p

 
Ŗ "’’’’’’’’’
&__inference_gru_1_layer_call_fn_265691a534?¢<
5¢2
$!
inputs’’’’’’’’’dd

 
p 

 
Ŗ "’’’’’’’’’
&__inference_gru_1_layer_call_fn_265702a534?¢<
5¢2
$!
inputs’’’’’’’’’dd

 
p

 
Ŗ "’’’’’’’’’
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_266429ŗ534]¢Z
S¢P
 
inputs’’’’’’’’’d
(¢%
# 
states/0’’’’’’’’’
p 
Ŗ "T¢Q
J¢G

0/0’’’’’’’’’
%"
 
0/1/0’’’’’’’’’
 
G__inference_gru_cell_46_layer_call_and_return_conditional_losses_266468ŗ534]¢Z
S¢P
 
inputs’’’’’’’’’d
(¢%
# 
states/0’’’’’’’’’
p
Ŗ "T¢Q
J¢G

0/0’’’’’’’’’
%"
 
0/1/0’’’’’’’’’
 Ż
,__inference_gru_cell_46_layer_call_fn_266376¬534]¢Z
S¢P
 
inputs’’’’’’’’’d
(¢%
# 
states/0’’’’’’’’’
p 
Ŗ "F¢C

0’’’’’’’’’
# 

1/0’’’’’’’’’Ż
,__inference_gru_cell_46_layer_call_fn_266390¬534]¢Z
S¢P
 
inputs’’’’’’’’’d
(¢%
# 
states/0’’’’’’’’’
p
Ŗ "F¢C

0’’’’’’’’’
# 

1/0’’’’’’’’’Ć
I__inference_sequential_12_layer_call_and_return_conditional_losses_265202v534'(01C¢@
9¢6
,)
embedding_11_input’’’’’’’’’d
p 

 
Ŗ "%¢"

0’’’’’’’’’
 Ć
I__inference_sequential_12_layer_call_and_return_conditional_losses_265226v534'(01C¢@
9¢6
,)
embedding_11_input’’’’’’’’’d
p

 
Ŗ "%¢"

0’’’’’’’’’
 ·
I__inference_sequential_12_layer_call_and_return_conditional_losses_265466j534'(017¢4
-¢*
 
inputs’’’’’’’’’d
p 

 
Ŗ "%¢"

0’’’’’’’’’
 ·
I__inference_sequential_12_layer_call_and_return_conditional_losses_265641j534'(017¢4
-¢*
 
inputs’’’’’’’’’d
p

 
Ŗ "%¢"

0’’’’’’’’’
 
.__inference_sequential_12_layer_call_fn_264886i534'(01C¢@
9¢6
,)
embedding_11_input’’’’’’’’’d
p 

 
Ŗ "’’’’’’’’’
.__inference_sequential_12_layer_call_fn_265178i534'(01C¢@
9¢6
,)
embedding_11_input’’’’’’’’’d
p

 
Ŗ "’’’’’’’’’
.__inference_sequential_12_layer_call_fn_265270]534'(017¢4
-¢*
 
inputs’’’’’’’’’d
p 

 
Ŗ "’’’’’’’’’
.__inference_sequential_12_layer_call_fn_265291]534'(017¢4
-¢*
 
inputs’’’’’’’’’d
p

 
Ŗ "’’’’’’’’’»
$__inference_signature_wrapper_265249534'(01Q¢N
¢ 
GŖD
B
embedding_11_input,)
embedding_11_input’’’’’’’’’d"3Ŗ0
.
dense_27"
dense_27’’’’’’’’’