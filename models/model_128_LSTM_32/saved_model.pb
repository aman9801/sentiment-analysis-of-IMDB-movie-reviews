яд
┴е
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
е
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
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
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.9.02unknown8╙╚
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:╚*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:╚*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:╚*
dtype0
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:╚*
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
Л
lstm_15/lstm_cell_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А**
shared_namelstm_15/lstm_cell_15/bias
Д
-lstm_15/lstm_cell_15/bias/Read/ReadVariableOpReadVariableOplstm_15/lstm_cell_15/bias*
_output_shapes	
:А*
dtype0
и
%lstm_15/lstm_cell_15/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*6
shared_name'%lstm_15/lstm_cell_15/recurrent_kernel
б
9lstm_15/lstm_cell_15/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_15/lstm_cell_15/recurrent_kernel* 
_output_shapes
:
АА*
dtype0
У
lstm_15/lstm_cell_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dА*,
shared_namelstm_15/lstm_cell_15/kernel
М
/lstm_15/lstm_cell_15/kernel/Read/ReadVariableOpReadVariableOplstm_15/lstm_cell_15/kernel*
_output_shapes
:	dА*
dtype0
r
dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_47/bias
k
!dense_47/bias/Read/ReadVariableOpReadVariableOpdense_47/bias*
_output_shapes
:*
dtype0
{
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А* 
shared_namedense_47/kernel
t
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel*
_output_shapes
:	А*
dtype0
s
dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_46/bias
l
!dense_46/bias/Read/ReadVariableOpReadVariableOpdense_46/bias*
_output_shapes	
:А*
dtype0
|
dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_46/kernel
u
#dense_46/kernel/Read/ReadVariableOpReadVariableOpdense_46/kernel* 
_output_shapes
:
АА*
dtype0
М
embedding_11/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Г╙d*(
shared_nameembedding_11/embeddings
Е
+embedding_11/embeddings/Read/ReadVariableOpReadVariableOpembedding_11/embeddings* 
_output_shapes
:
Г╙d*
dtype0

NoOpNoOp
х1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*а1
valueЦ1BУ1 BМ1
Н
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
┼
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings
#_self_saveable_object_factories*
ц
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
╦
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
#)_self_saveable_object_factories*
╦
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
░
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
У
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
Я

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
И
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator
`
state_size

3kernel
4recurrent_kernel
5bias
#a_self_saveable_object_factories*
* 
* 

'0
(1*

'0
(1*
* 
У
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

gtrace_0* 

htrace_0* 
_Y
VARIABLE_VALUEdense_46/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_46/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

00
11*

00
11*
* 
У
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
_Y
VARIABLE_VALUEdense_47/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_47/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
[U
VARIABLE_VALUElstm_15/lstm_cell_15/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_15/lstm_cell_15/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_15/lstm_cell_15/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

0*
 
0
1
2
3*

p0
q1
r2*
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
У
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*

xtrace_0
ytrace_1* 

ztrace_0
{trace_1* 
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
* 
8
|	variables
}	keras_api
	~total
	count*
M
А	variables
Б	keras_api

Вtotal

Гcount
Д
_fn_kwargs*
z
Е	variables
Ж	keras_api
Зtrue_positives
Иtrue_negatives
Йfalse_positives
Кfalse_negatives*
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
~0
1*

|	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

В0
Г1*

А	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
З0
И1
Й2
К3*

Е	variables*
e_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE*
Е
"serving_default_embedding_11_inputPlaceholder*'
_output_shapes
:         d*
dtype0*
shape:         d
И
StatefulPartitionedCallStatefulPartitionedCall"serving_default_embedding_11_inputembedding_11/embeddingslstm_15/lstm_cell_15/kernel%lstm_15/lstm_cell_15/recurrent_kernellstm_15/lstm_cell_15/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_290509
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
И
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_11/embeddings/Read/ReadVariableOp#dense_46/kernel/Read/ReadVariableOp!dense_46/bias/Read/ReadVariableOp#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOp/lstm_15/lstm_cell_15/kernel/Read/ReadVariableOp9lstm_15/lstm_cell_15/recurrent_kernel/Read/ReadVariableOp-lstm_15/lstm_cell_15/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOpConst*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_291731
├
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_11/embeddingsdense_46/kerneldense_46/biasdense_47/kerneldense_47/biaslstm_15/lstm_cell_15/kernel%lstm_15/lstm_cell_15/recurrent_kernellstm_15/lstm_cell_15/biastotal_1count_1totalcounttrue_positivestrue_negativesfalse_positivesfalse_negatives*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_291789╣ч
п
Г
-__inference_embedding_11_layer_call_fn_290888

inputs
unknown:
Г╙d
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_289946s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         dd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         d: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
з

°
D__inference_dense_46_layer_call_and_return_conditional_losses_290113

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╣
├
while_cond_291001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_291001___redundant_placeholder04
0while_while_cond_291001___redundant_placeholder14
0while_while_cond_291001___redundant_placeholder24
0while_while_cond_291001___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
ж	
з
H__inference_embedding_11_layer_call_and_return_conditional_losses_289946

inputs+
embedding_lookup_289940:
Г╙d
identityИвembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         d╗
embedding_lookupResourceGatherembedding_lookup_289940Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/289940*+
_output_shapes
:         dd*
dtype0в
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/289940*+
_output_shapes
:         ddБ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         ddw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         ddY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╩m
д
I__inference_sequential_22_layer_call_and_return_conditional_losses_290716

inputs8
$embedding_11_embedding_lookup_290555:
Г╙dF
3lstm_15_lstm_cell_47_matmul_readvariableop_resource:	dАI
5lstm_15_lstm_cell_47_matmul_1_readvariableop_resource:
ААC
4lstm_15_lstm_cell_47_biasadd_readvariableop_resource:	А;
'dense_46_matmul_readvariableop_resource:
АА7
(dense_46_biasadd_readvariableop_resource:	А:
'dense_47_matmul_readvariableop_resource:	А6
(dense_47_biasadd_readvariableop_resource:
identityИвdense_46/BiasAdd/ReadVariableOpвdense_46/MatMul/ReadVariableOpвdense_47/BiasAdd/ReadVariableOpвdense_47/MatMul/ReadVariableOpвembedding_11/embedding_lookupв+lstm_15/lstm_cell_47/BiasAdd/ReadVariableOpв*lstm_15/lstm_cell_47/MatMul/ReadVariableOpв,lstm_15/lstm_cell_47/MatMul_1/ReadVariableOpвlstm_15/whileb
embedding_11/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         dя
embedding_11/embedding_lookupResourceGather$embedding_11_embedding_lookup_290555embedding_11/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_11/embedding_lookup/290555*+
_output_shapes
:         dd*
dtype0╔
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_11/embedding_lookup/290555*+
_output_shapes
:         ddЫ
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         ddn
lstm_15/ShapeShape1embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:e
lstm_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
lstm_15/strided_sliceStridedSlicelstm_15/Shape:output:0$lstm_15/strided_slice/stack:output:0&lstm_15/strided_slice/stack_1:output:0&lstm_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АЛ
lstm_15/zeros/packedPacklstm_15/strided_slice:output:0lstm_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
lstm_15/zerosFilllstm_15/zeros/packed:output:0lstm_15/zeros/Const:output:0*
T0*(
_output_shapes
:         А[
lstm_15/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АП
lstm_15/zeros_1/packedPacklstm_15/strided_slice:output:0!lstm_15/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_15/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
lstm_15/zeros_1Filllstm_15/zeros_1/packed:output:0lstm_15/zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аk
lstm_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          и
lstm_15/transpose	Transpose1embedding_11/embedding_lookup/Identity_1:output:0lstm_15/transpose/perm:output:0*
T0*+
_output_shapes
:d         dT
lstm_15/Shape_1Shapelstm_15/transpose:y:0*
T0*
_output_shapes
:g
lstm_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_15/strided_slice_1StridedSlicelstm_15/Shape_1:output:0&lstm_15/strided_slice_1/stack:output:0(lstm_15/strided_slice_1/stack_1:output:0(lstm_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_15/TensorArrayV2TensorListReserve,lstm_15/TensorArrayV2/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
=lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   °
/lstm_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_15/transpose:y:0Flstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥g
lstm_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_15/strided_slice_2StridedSlicelstm_15/transpose:y:0&lstm_15/strided_slice_2/stack:output:0(lstm_15/strided_slice_2/stack_1:output:0(lstm_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЯ
*lstm_15/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3lstm_15_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0о
lstm_15/lstm_cell_47/MatMulMatMul lstm_15/strided_slice_2:output:02lstm_15/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ад
,lstm_15/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5lstm_15_lstm_cell_47_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0и
lstm_15/lstm_cell_47/MatMul_1MatMullstm_15/zeros:output:04lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ад
lstm_15/lstm_cell_47/addAddV2%lstm_15/lstm_cell_47/MatMul:product:0'lstm_15/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АЭ
+lstm_15/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4lstm_15_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0н
lstm_15/lstm_cell_47/BiasAddBiasAddlstm_15/lstm_cell_47/add:z:03lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аf
$lstm_15/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :∙
lstm_15/lstm_cell_47/splitSplit-lstm_15/lstm_cell_47/split/split_dim:output:0%lstm_15/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split
lstm_15/lstm_cell_47/SigmoidSigmoid#lstm_15/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         АБ
lstm_15/lstm_cell_47/Sigmoid_1Sigmoid#lstm_15/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АР
lstm_15/lstm_cell_47/mulMul"lstm_15/lstm_cell_47/Sigmoid_1:y:0lstm_15/zeros_1:output:0*
T0*(
_output_shapes
:         Аy
lstm_15/lstm_cell_47/ReluRelu#lstm_15/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЯ
lstm_15/lstm_cell_47/mul_1Mul lstm_15/lstm_cell_47/Sigmoid:y:0'lstm_15/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         АФ
lstm_15/lstm_cell_47/add_1AddV2lstm_15/lstm_cell_47/mul:z:0lstm_15/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         АБ
lstm_15/lstm_cell_47/Sigmoid_2Sigmoid#lstm_15/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аv
lstm_15/lstm_cell_47/Relu_1Relulstm_15/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         Аг
lstm_15/lstm_cell_47/mul_2Mul"lstm_15/lstm_cell_47/Sigmoid_2:y:0)lstm_15/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аv
%lstm_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   f
$lstm_15/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :▌
lstm_15/TensorArrayV2_1TensorListReserve.lstm_15/TensorArrayV2_1/element_shape:output:0-lstm_15/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥N
lstm_15/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ў
lstm_15/whileWhile#lstm_15/while/loop_counter:output:0)lstm_15/while/maximum_iterations:output:0lstm_15/time:output:0 lstm_15/TensorArrayV2_1:handle:0lstm_15/zeros:output:0lstm_15/zeros_1:output:0 lstm_15/strided_slice_1:output:0?lstm_15/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_15_lstm_cell_47_matmul_readvariableop_resource5lstm_15_lstm_cell_47_matmul_1_readvariableop_resource4lstm_15_lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_15_while_body_290617*%
condR
lstm_15_while_cond_290616*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Й
8lstm_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   я
*lstm_15/TensorArrayV2Stack/TensorListStackTensorListStacklstm_15/while:output:3Alstm_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsp
lstm_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
lstm_15/strided_slice_3StridedSlice3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_15/strided_slice_3/stack:output:0(lstm_15/strided_slice_3/stack_1:output:0(lstm_15/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maskm
lstm_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          п
lstm_15/transpose_1	Transpose3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_15/transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аc
lstm_15/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    И
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ц
dense_46/MatMulMatMul lstm_15/strided_slice_3:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*(
_output_shapes
:         АЗ
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_47/SigmoidSigmoiddense_47/BiasAdd:output:0*
T0*'
_output_shapes
:         c
IdentityIdentitydense_47/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Ж
NoOpNoOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp^embedding_11/embedding_lookup,^lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp+^lstm_15/lstm_cell_47/MatMul/ReadVariableOp-^lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp^lstm_15/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2>
embedding_11/embedding_lookupembedding_11/embedding_lookup2Z
+lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp+lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp2X
*lstm_15/lstm_cell_47/MatMul/ReadVariableOp*lstm_15/lstm_cell_47/MatMul/ReadVariableOp2\
,lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp,lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp2
lstm_15/whilelstm_15/while:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
─K
Ь
C__inference_lstm_15_layer_call_and_return_conditional_losses_291522

inputs>
+lstm_cell_47_matmul_readvariableop_resource:	dАA
-lstm_cell_47_matmul_1_readvariableop_resource:
АА;
,lstm_cell_47_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_47/BiasAdd/ReadVariableOpв"lstm_cell_47/MatMul/ReadVariableOpв$lstm_cell_47/MatMul_1/ReadVariableOpвwhile;
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
valueB:╤
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
B :Аs
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
:         АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskП
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0Ц
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АФ
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АМ
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АН
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splito
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*(
_output_shapes
:         Аx
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         Аi
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЗ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         А|
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аf
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЛ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_291437*
condR
while_cond_291436*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         А└
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
Р9
Ж
C__inference_lstm_15_layer_call_and_return_conditional_losses_289727

inputs&
lstm_cell_47_289643:	dА'
lstm_cell_47_289645:
АА"
lstm_cell_47_289647:	А
identityИв$lstm_cell_47/StatefulPartitionedCallвwhile;
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
valueB:╤
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
B :Аs
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
:         АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask√
$lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_47_289643lstm_cell_47_289645lstm_cell_47_289647*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_289642n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╗
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_47_289643lstm_cell_47_289645lstm_cell_47_289647*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_289657*
condR
while_cond_289656*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Аu
NoOpNoOp%^lstm_cell_47/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_47/StatefulPartitionedCall$lstm_cell_47/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
╚
Ъ
I__inference_sequential_22_layer_call_and_return_conditional_losses_290486
embedding_11_input'
embedding_11_290465:
Г╙d!
lstm_15_290468:	dА"
lstm_15_290470:
АА
lstm_15_290472:	А#
dense_46_290475:
АА
dense_46_290477:	А"
dense_47_290480:	А
dense_47_290482:
identityИв dense_46/StatefulPartitionedCallв dense_47/StatefulPartitionedCallв$embedding_11/StatefulPartitionedCallвlstm_15/StatefulPartitionedCall№
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputembedding_11_290465*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_289946й
lstm_15/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0lstm_15_290468lstm_15_290470lstm_15_290472*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_290334Ц
 dense_46/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0dense_46_290475dense_46_290477*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_290113Ц
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_290480dense_47_290482*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_290130x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╒
NoOpNoOp!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall:[ W
'
_output_shapes
:         d
,
_user_specified_nameembedding_11_input
╩m
д
I__inference_sequential_22_layer_call_and_return_conditional_losses_290881

inputs8
$embedding_11_embedding_lookup_290720:
Г╙dF
3lstm_15_lstm_cell_47_matmul_readvariableop_resource:	dАI
5lstm_15_lstm_cell_47_matmul_1_readvariableop_resource:
ААC
4lstm_15_lstm_cell_47_biasadd_readvariableop_resource:	А;
'dense_46_matmul_readvariableop_resource:
АА7
(dense_46_biasadd_readvariableop_resource:	А:
'dense_47_matmul_readvariableop_resource:	А6
(dense_47_biasadd_readvariableop_resource:
identityИвdense_46/BiasAdd/ReadVariableOpвdense_46/MatMul/ReadVariableOpвdense_47/BiasAdd/ReadVariableOpвdense_47/MatMul/ReadVariableOpвembedding_11/embedding_lookupв+lstm_15/lstm_cell_47/BiasAdd/ReadVariableOpв*lstm_15/lstm_cell_47/MatMul/ReadVariableOpв,lstm_15/lstm_cell_47/MatMul_1/ReadVariableOpвlstm_15/whileb
embedding_11/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         dя
embedding_11/embedding_lookupResourceGather$embedding_11_embedding_lookup_290720embedding_11/Cast:y:0*
Tindices0*7
_class-
+)loc:@embedding_11/embedding_lookup/290720*+
_output_shapes
:         dd*
dtype0╔
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_11/embedding_lookup/290720*+
_output_shapes
:         ddЫ
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         ddn
lstm_15/ShapeShape1embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:e
lstm_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
lstm_15/strided_sliceStridedSlicelstm_15/Shape:output:0$lstm_15/strided_slice/stack:output:0&lstm_15/strided_slice/stack_1:output:0&lstm_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АЛ
lstm_15/zeros/packedPacklstm_15/strided_slice:output:0lstm_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
lstm_15/zerosFilllstm_15/zeros/packed:output:0lstm_15/zeros/Const:output:0*
T0*(
_output_shapes
:         А[
lstm_15/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :АП
lstm_15/zeros_1/packedPacklstm_15/strided_slice:output:0!lstm_15/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_15/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
lstm_15/zeros_1Filllstm_15/zeros_1/packed:output:0lstm_15/zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аk
lstm_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          и
lstm_15/transpose	Transpose1embedding_11/embedding_lookup/Identity_1:output:0lstm_15/transpose/perm:output:0*
T0*+
_output_shapes
:d         dT
lstm_15/Shape_1Shapelstm_15/transpose:y:0*
T0*
_output_shapes
:g
lstm_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_15/strided_slice_1StridedSlicelstm_15/Shape_1:output:0&lstm_15/strided_slice_1/stack:output:0(lstm_15/strided_slice_1/stack_1:output:0(lstm_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╠
lstm_15/TensorArrayV2TensorListReserve,lstm_15/TensorArrayV2/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥О
=lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   °
/lstm_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_15/transpose:y:0Flstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥g
lstm_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_15/strided_slice_2StridedSlicelstm_15/transpose:y:0&lstm_15/strided_slice_2/stack:output:0(lstm_15/strided_slice_2/stack_1:output:0(lstm_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЯ
*lstm_15/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3lstm_15_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0о
lstm_15/lstm_cell_47/MatMulMatMul lstm_15/strided_slice_2:output:02lstm_15/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ад
,lstm_15/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5lstm_15_lstm_cell_47_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0и
lstm_15/lstm_cell_47/MatMul_1MatMullstm_15/zeros:output:04lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ад
lstm_15/lstm_cell_47/addAddV2%lstm_15/lstm_cell_47/MatMul:product:0'lstm_15/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АЭ
+lstm_15/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4lstm_15_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0н
lstm_15/lstm_cell_47/BiasAddBiasAddlstm_15/lstm_cell_47/add:z:03lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аf
$lstm_15/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :∙
lstm_15/lstm_cell_47/splitSplit-lstm_15/lstm_cell_47/split/split_dim:output:0%lstm_15/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split
lstm_15/lstm_cell_47/SigmoidSigmoid#lstm_15/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         АБ
lstm_15/lstm_cell_47/Sigmoid_1Sigmoid#lstm_15/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АР
lstm_15/lstm_cell_47/mulMul"lstm_15/lstm_cell_47/Sigmoid_1:y:0lstm_15/zeros_1:output:0*
T0*(
_output_shapes
:         Аy
lstm_15/lstm_cell_47/ReluRelu#lstm_15/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЯ
lstm_15/lstm_cell_47/mul_1Mul lstm_15/lstm_cell_47/Sigmoid:y:0'lstm_15/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         АФ
lstm_15/lstm_cell_47/add_1AddV2lstm_15/lstm_cell_47/mul:z:0lstm_15/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         АБ
lstm_15/lstm_cell_47/Sigmoid_2Sigmoid#lstm_15/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аv
lstm_15/lstm_cell_47/Relu_1Relulstm_15/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         Аг
lstm_15/lstm_cell_47/mul_2Mul"lstm_15/lstm_cell_47/Sigmoid_2:y:0)lstm_15/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аv
%lstm_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   f
$lstm_15/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :▌
lstm_15/TensorArrayV2_1TensorListReserve.lstm_15/TensorArrayV2_1/element_shape:output:0-lstm_15/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥N
lstm_15/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         \
lstm_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ў
lstm_15/whileWhile#lstm_15/while/loop_counter:output:0)lstm_15/while/maximum_iterations:output:0lstm_15/time:output:0 lstm_15/TensorArrayV2_1:handle:0lstm_15/zeros:output:0lstm_15/zeros_1:output:0 lstm_15/strided_slice_1:output:0?lstm_15/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_15_lstm_cell_47_matmul_readvariableop_resource5lstm_15_lstm_cell_47_matmul_1_readvariableop_resource4lstm_15_lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_15_while_body_290782*%
condR
lstm_15_while_cond_290781*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Й
8lstm_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   я
*lstm_15/TensorArrayV2Stack/TensorListStackTensorListStacklstm_15/while:output:3Alstm_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsp
lstm_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         i
lstm_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
lstm_15/strided_slice_3StridedSlice3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_15/strided_slice_3/stack:output:0(lstm_15/strided_slice_3/stack_1:output:0(lstm_15/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maskm
lstm_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          п
lstm_15/transpose_1	Transpose3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_15/transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аc
lstm_15/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    И
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ц
dense_46/MatMulMatMul lstm_15/strided_slice_3:output:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*(
_output_shapes
:         АЗ
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_47/SigmoidSigmoiddense_47/BiasAdd:output:0*
T0*'
_output_shapes
:         c
IdentityIdentitydense_47/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Ж
NoOpNoOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp^embedding_11/embedding_lookup,^lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp+^lstm_15/lstm_cell_47/MatMul/ReadVariableOp-^lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp^lstm_15/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2>
embedding_11/embedding_lookupembedding_11/embedding_lookup2Z
+lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp+lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp2X
*lstm_15/lstm_cell_47/MatMul/ReadVariableOp*lstm_15/lstm_cell_47/MatMul/ReadVariableOp2\
,lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp,lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp2
lstm_15/whilelstm_15/while:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Ю

Ў
D__inference_dense_47_layer_call_and_return_conditional_losses_291562

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
∙
ў
-__inference_lstm_cell_47_layer_call_fn_291579

inputs
states_0
states_1
unknown:	dА
	unknown_0:
АА
	unknown_1:	А
identity

identity_1

identity_2ИвStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_289642p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         Аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         А:         А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0:RN
(
_output_shapes
:         А
"
_user_specified_name
states/1
╣
├
while_cond_291146
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_291146___redundant_placeholder04
0while_while_cond_291146___redundant_placeholder14
0while_while_cond_291146___redundant_placeholder24
0while_while_cond_291146___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
чK
Ю
C__inference_lstm_15_layer_call_and_return_conditional_losses_291232
inputs_0>
+lstm_cell_47_matmul_readvariableop_resource:	dАA
-lstm_cell_47_matmul_1_readvariableop_resource:
АА;
,lstm_cell_47_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_47/BiasAdd/ReadVariableOpв"lstm_cell_47/MatMul/ReadVariableOpв$lstm_cell_47/MatMul_1/ReadVariableOpвwhile=
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
valueB:╤
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
B :Аs
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
:         АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskП
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0Ц
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АФ
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АМ
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АН
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splito
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*(
_output_shapes
:         Аx
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         Аi
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЗ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         А|
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аf
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЛ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_291147*
condR
while_cond_291146*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         А└
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
┘	
╦
.__inference_sequential_22_layer_call_fn_290530

inputs
unknown:
Г╙d
	unknown_0:	dА
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_290137o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╛9
╥
while_body_290009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_47_matmul_readvariableop_resource_0:	dАI
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_47_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_47_matmul_readvariableop_resource:	dАG
3while_lstm_cell_47_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_47_biasadd_readvariableop_resource:	АИв)while/lstm_cell_47/BiasAdd/ReadVariableOpв(while/lstm_cell_47/MatMul/ReadVariableOpв*while/lstm_cell_47/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Э
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes
:	dА*
dtype0║
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ав
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0б
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЮ
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АЫ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0з
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split{
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АЗ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Аu
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЩ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         АО
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аr
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЭ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         Аz
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         А╨

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
ы
Е
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_289790

inputs

states
states_11
matmul_readvariableop_resource:	dА4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:         А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:         АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:         Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         АС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         А:         А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_namestates:PL
(
_output_shapes
:         А
 
_user_specified_namestates
Х
╕
(__inference_lstm_15_layer_call_fn_290909
inputs_0
unknown:	dА
	unknown_0:
АА
	unknown_1:	А
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_289727p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
є
З
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_291660

inputs
states_0
states_11
matmul_readvariableop_resource:	dА4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:         А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:         АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:         Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         АС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         А:         А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0:RN
(
_output_shapes
:         А
"
_user_specified_name
states/1
─K
Ь
C__inference_lstm_15_layer_call_and_return_conditional_losses_291377

inputs>
+lstm_cell_47_matmul_readvariableop_resource:	dАA
-lstm_cell_47_matmul_1_readvariableop_resource:
АА;
,lstm_cell_47_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_47/BiasAdd/ReadVariableOpв"lstm_cell_47/MatMul/ReadVariableOpв$lstm_cell_47/MatMul_1/ReadVariableOpвwhile;
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
valueB:╤
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
B :Аs
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
:         АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskП
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0Ц
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АФ
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АМ
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АН
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splito
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*(
_output_shapes
:         Аx
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         Аi
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЗ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         А|
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аf
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЛ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_291292*
condR
while_cond_291291*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         А└
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
 B
╥

lstm_15_while_body_290617,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3+
'lstm_15_while_lstm_15_strided_slice_1_0g
clstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_15_while_lstm_cell_47_matmul_readvariableop_resource_0:	dАQ
=lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource_0:
ААK
<lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource_0:	А
lstm_15_while_identity
lstm_15_while_identity_1
lstm_15_while_identity_2
lstm_15_while_identity_3
lstm_15_while_identity_4
lstm_15_while_identity_5)
%lstm_15_while_lstm_15_strided_slice_1e
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorL
9lstm_15_while_lstm_cell_47_matmul_readvariableop_resource:	dАO
;lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource:
ААI
:lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource:	АИв1lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOpв0lstm_15/while/lstm_cell_47/MatMul/ReadVariableOpв2lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOpР
?lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╬
1lstm_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0lstm_15_while_placeholderHlstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0н
0lstm_15/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp;lstm_15_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes
:	dА*
dtype0╥
!lstm_15/while/lstm_cell_47/MatMulMatMul8lstm_15/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А▓
2lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp=lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0╣
#lstm_15/while/lstm_cell_47/MatMul_1MatMullstm_15_while_placeholder_2:lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╢
lstm_15/while/lstm_cell_47/addAddV2+lstm_15/while/lstm_cell_47/MatMul:product:0-lstm_15/while/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         Ал
1lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp<lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0┐
"lstm_15/while/lstm_cell_47/BiasAddBiasAdd"lstm_15/while/lstm_cell_47/add:z:09lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аl
*lstm_15/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Л
 lstm_15/while/lstm_cell_47/splitSplit3lstm_15/while/lstm_cell_47/split/split_dim:output:0+lstm_15/while/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splitЛ
"lstm_15/while/lstm_cell_47/SigmoidSigmoid)lstm_15/while/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         АН
$lstm_15/while/lstm_cell_47/Sigmoid_1Sigmoid)lstm_15/while/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АЯ
lstm_15/while/lstm_cell_47/mulMul(lstm_15/while/lstm_cell_47/Sigmoid_1:y:0lstm_15_while_placeholder_3*
T0*(
_output_shapes
:         АЕ
lstm_15/while/lstm_cell_47/ReluRelu)lstm_15/while/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         А▒
 lstm_15/while/lstm_cell_47/mul_1Mul&lstm_15/while/lstm_cell_47/Sigmoid:y:0-lstm_15/while/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         Аж
 lstm_15/while/lstm_cell_47/add_1AddV2"lstm_15/while/lstm_cell_47/mul:z:0$lstm_15/while/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         АН
$lstm_15/while/lstm_cell_47/Sigmoid_2Sigmoid)lstm_15/while/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         АВ
!lstm_15/while/lstm_cell_47/Relu_1Relu$lstm_15/while/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         А╡
 lstm_15/while/lstm_cell_47/mul_2Mul(lstm_15/while/lstm_cell_47/Sigmoid_2:y:0/lstm_15/while/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аz
8lstm_15/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Н
2lstm_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_15_while_placeholder_1Alstm_15/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_15/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥U
lstm_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_15/while/addAddV2lstm_15_while_placeholderlstm_15/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_15/while/add_1AddV2(lstm_15_while_lstm_15_while_loop_counterlstm_15/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_15/while/IdentityIdentitylstm_15/while/add_1:z:0^lstm_15/while/NoOp*
T0*
_output_shapes
: К
lstm_15/while/Identity_1Identity.lstm_15_while_lstm_15_while_maximum_iterations^lstm_15/while/NoOp*
T0*
_output_shapes
: q
lstm_15/while/Identity_2Identitylstm_15/while/add:z:0^lstm_15/while/NoOp*
T0*
_output_shapes
: Ю
lstm_15/while/Identity_3IdentityBlstm_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_15/while/NoOp*
T0*
_output_shapes
: Т
lstm_15/while/Identity_4Identity$lstm_15/while/lstm_cell_47/mul_2:z:0^lstm_15/while/NoOp*
T0*(
_output_shapes
:         АТ
lstm_15/while/Identity_5Identity$lstm_15/while/lstm_cell_47/add_1:z:0^lstm_15/while/NoOp*
T0*(
_output_shapes
:         АЁ
lstm_15/while/NoOpNoOp2^lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_15_while_identitylstm_15/while/Identity:output:0"=
lstm_15_while_identity_1!lstm_15/while/Identity_1:output:0"=
lstm_15_while_identity_2!lstm_15/while/Identity_2:output:0"=
lstm_15_while_identity_3!lstm_15/while/Identity_3:output:0"=
lstm_15_while_identity_4!lstm_15/while/Identity_4:output:0"=
lstm_15_while_identity_5!lstm_15/while/Identity_5:output:0"P
%lstm_15_while_lstm_15_strided_slice_1'lstm_15_while_lstm_15_strided_slice_1_0"z
:lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource<lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource_0"|
;lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource=lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource_0"x
9lstm_15_while_lstm_cell_47_matmul_readvariableop_resource;lstm_15_while_lstm_cell_47_matmul_readvariableop_resource_0"╚
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2f
1lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp1lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp2d
0lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp0lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp2h
2lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp2lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
╣
├
while_cond_289656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_289656___redundant_placeholder04
0while_while_cond_289656___redundant_placeholder14
0while_while_cond_289656___redundant_placeholder24
0while_while_cond_289656___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
╣
├
while_cond_291291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_291291___redundant_placeholder04
0while_while_cond_291291___redundant_placeholder14
0while_while_cond_291291___redundant_placeholder24
0while_while_cond_291291___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
╣
├
while_cond_291436
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_291436___redundant_placeholder04
0while_while_cond_291436___redundant_placeholder14
0while_while_cond_291436___redundant_placeholder24
0while_while_cond_291436___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
─K
Ь
C__inference_lstm_15_layer_call_and_return_conditional_losses_290334

inputs>
+lstm_cell_47_matmul_readvariableop_resource:	dАA
-lstm_cell_47_matmul_1_readvariableop_resource:
АА;
,lstm_cell_47_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_47/BiasAdd/ReadVariableOpв"lstm_cell_47/MatMul/ReadVariableOpв$lstm_cell_47/MatMul_1/ReadVariableOpвwhile;
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
valueB:╤
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
B :Аs
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
:         АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskП
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0Ц
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АФ
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АМ
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АН
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splito
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*(
_output_shapes
:         Аx
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         Аi
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЗ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         А|
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аf
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЛ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_290249*
condR
while_cond_290248*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         А└
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
╚
Ч
)__inference_dense_47_layer_call_fn_291551

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_290130o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╬S
Ф
'sequential_22_lstm_15_while_body_289476H
Dsequential_22_lstm_15_while_sequential_22_lstm_15_while_loop_counterN
Jsequential_22_lstm_15_while_sequential_22_lstm_15_while_maximum_iterations+
'sequential_22_lstm_15_while_placeholder-
)sequential_22_lstm_15_while_placeholder_1-
)sequential_22_lstm_15_while_placeholder_2-
)sequential_22_lstm_15_while_placeholder_3G
Csequential_22_lstm_15_while_sequential_22_lstm_15_strided_slice_1_0Г
sequential_22_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_22_lstm_15_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_22_lstm_15_while_lstm_cell_47_matmul_readvariableop_resource_0:	dА_
Ksequential_22_lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource_0:
ААY
Jsequential_22_lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource_0:	А(
$sequential_22_lstm_15_while_identity*
&sequential_22_lstm_15_while_identity_1*
&sequential_22_lstm_15_while_identity_2*
&sequential_22_lstm_15_while_identity_3*
&sequential_22_lstm_15_while_identity_4*
&sequential_22_lstm_15_while_identity_5E
Asequential_22_lstm_15_while_sequential_22_lstm_15_strided_slice_1Б
}sequential_22_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_22_lstm_15_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_22_lstm_15_while_lstm_cell_47_matmul_readvariableop_resource:	dА]
Isequential_22_lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource:
ААW
Hsequential_22_lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource:	АИв?sequential_22/lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOpв>sequential_22/lstm_15/while/lstm_cell_47/MatMul/ReadVariableOpв@sequential_22/lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOpЮ
Msequential_22/lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ф
?sequential_22/lstm_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_22_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_22_lstm_15_tensorarrayunstack_tensorlistfromtensor_0'sequential_22_lstm_15_while_placeholderVsequential_22/lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╔
>sequential_22/lstm_15/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOpIsequential_22_lstm_15_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes
:	dА*
dtype0№
/sequential_22/lstm_15/while/lstm_cell_47/MatMulMatMulFsequential_22/lstm_15/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_22/lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╬
@sequential_22/lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOpKsequential_22_lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0у
1sequential_22/lstm_15/while/lstm_cell_47/MatMul_1MatMul)sequential_22_lstm_15_while_placeholder_2Hsequential_22/lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ар
,sequential_22/lstm_15/while/lstm_cell_47/addAddV29sequential_22/lstm_15/while/lstm_cell_47/MatMul:product:0;sequential_22/lstm_15/while/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         А╟
?sequential_22/lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOpJsequential_22_lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0щ
0sequential_22/lstm_15/while/lstm_cell_47/BiasAddBiasAdd0sequential_22/lstm_15/while/lstm_cell_47/add:z:0Gsequential_22/lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аz
8sequential_22/lstm_15/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
.sequential_22/lstm_15/while/lstm_cell_47/splitSplitAsequential_22/lstm_15/while/lstm_cell_47/split/split_dim:output:09sequential_22/lstm_15/while/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splitз
0sequential_22/lstm_15/while/lstm_cell_47/SigmoidSigmoid7sequential_22/lstm_15/while/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         Ай
2sequential_22/lstm_15/while/lstm_cell_47/Sigmoid_1Sigmoid7sequential_22/lstm_15/while/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         А╔
,sequential_22/lstm_15/while/lstm_cell_47/mulMul6sequential_22/lstm_15/while/lstm_cell_47/Sigmoid_1:y:0)sequential_22_lstm_15_while_placeholder_3*
T0*(
_output_shapes
:         Аб
-sequential_22/lstm_15/while/lstm_cell_47/ReluRelu7sequential_22/lstm_15/while/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         А█
.sequential_22/lstm_15/while/lstm_cell_47/mul_1Mul4sequential_22/lstm_15/while/lstm_cell_47/Sigmoid:y:0;sequential_22/lstm_15/while/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         А╨
.sequential_22/lstm_15/while/lstm_cell_47/add_1AddV20sequential_22/lstm_15/while/lstm_cell_47/mul:z:02sequential_22/lstm_15/while/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         Ай
2sequential_22/lstm_15/while/lstm_cell_47/Sigmoid_2Sigmoid7sequential_22/lstm_15/while/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         АЮ
/sequential_22/lstm_15/while/lstm_cell_47/Relu_1Relu2sequential_22/lstm_15/while/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         А▀
.sequential_22/lstm_15/while/lstm_cell_47/mul_2Mul6sequential_22/lstm_15/while/lstm_cell_47/Sigmoid_2:y:0=sequential_22/lstm_15/while/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         АИ
Fsequential_22/lstm_15/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ┼
@sequential_22/lstm_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_22_lstm_15_while_placeholder_1Osequential_22/lstm_15/while/TensorArrayV2Write/TensorListSetItem/index:output:02sequential_22/lstm_15/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥c
!sequential_22/lstm_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
sequential_22/lstm_15/while/addAddV2'sequential_22_lstm_15_while_placeholder*sequential_22/lstm_15/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_22/lstm_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :┐
!sequential_22/lstm_15/while/add_1AddV2Dsequential_22_lstm_15_while_sequential_22_lstm_15_while_loop_counter,sequential_22/lstm_15/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
$sequential_22/lstm_15/while/IdentityIdentity%sequential_22/lstm_15/while/add_1:z:0!^sequential_22/lstm_15/while/NoOp*
T0*
_output_shapes
: ┬
&sequential_22/lstm_15/while/Identity_1IdentityJsequential_22_lstm_15_while_sequential_22_lstm_15_while_maximum_iterations!^sequential_22/lstm_15/while/NoOp*
T0*
_output_shapes
: Ы
&sequential_22/lstm_15/while/Identity_2Identity#sequential_22/lstm_15/while/add:z:0!^sequential_22/lstm_15/while/NoOp*
T0*
_output_shapes
: ╚
&sequential_22/lstm_15/while/Identity_3IdentityPsequential_22/lstm_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_22/lstm_15/while/NoOp*
T0*
_output_shapes
: ╝
&sequential_22/lstm_15/while/Identity_4Identity2sequential_22/lstm_15/while/lstm_cell_47/mul_2:z:0!^sequential_22/lstm_15/while/NoOp*
T0*(
_output_shapes
:         А╝
&sequential_22/lstm_15/while/Identity_5Identity2sequential_22/lstm_15/while/lstm_cell_47/add_1:z:0!^sequential_22/lstm_15/while/NoOp*
T0*(
_output_shapes
:         Аи
 sequential_22/lstm_15/while/NoOpNoOp@^sequential_22/lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp?^sequential_22/lstm_15/while/lstm_cell_47/MatMul/ReadVariableOpA^sequential_22/lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_22_lstm_15_while_identity-sequential_22/lstm_15/while/Identity:output:0"Y
&sequential_22_lstm_15_while_identity_1/sequential_22/lstm_15/while/Identity_1:output:0"Y
&sequential_22_lstm_15_while_identity_2/sequential_22/lstm_15/while/Identity_2:output:0"Y
&sequential_22_lstm_15_while_identity_3/sequential_22/lstm_15/while/Identity_3:output:0"Y
&sequential_22_lstm_15_while_identity_4/sequential_22/lstm_15/while/Identity_4:output:0"Y
&sequential_22_lstm_15_while_identity_5/sequential_22/lstm_15/while/Identity_5:output:0"Ц
Hsequential_22_lstm_15_while_lstm_cell_47_biasadd_readvariableop_resourceJsequential_22_lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource_0"Ш
Isequential_22_lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resourceKsequential_22_lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource_0"Ф
Gsequential_22_lstm_15_while_lstm_cell_47_matmul_readvariableop_resourceIsequential_22_lstm_15_while_lstm_cell_47_matmul_readvariableop_resource_0"И
Asequential_22_lstm_15_while_sequential_22_lstm_15_strided_slice_1Csequential_22_lstm_15_while_sequential_22_lstm_15_strided_slice_1_0"А
}sequential_22_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_22_lstm_15_tensorarrayunstack_tensorlistfromtensorsequential_22_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_22_lstm_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2В
?sequential_22/lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp?sequential_22/lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp2А
>sequential_22/lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp>sequential_22/lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp2Д
@sequential_22/lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp@sequential_22/lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
¤
╢
(__inference_lstm_15_layer_call_fn_290931

inputs
unknown:	dА
	unknown_0:
АА
	unknown_1:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_290094p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
¤
╢
(__inference_lstm_15_layer_call_fn_290942

inputs
unknown:	dА
	unknown_0:
АА
	unknown_1:	А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_290334p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
є
З
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_291628

inputs
states_0
states_11
matmul_readvariableop_resource:	dА4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:         А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:         АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:         Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         АС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         А:         А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0:RN
(
_output_shapes
:         А
"
_user_specified_name
states/1
ы
Е
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_289642

inputs

states
states_11
matmul_readvariableop_resource:	dА4
 matmul_1_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         АW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         АV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         АO
ReluRelusplit:output:2*
T0*(
_output_shapes
:         А`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:         АU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         АW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         АL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:         Аd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:         АY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         А[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         АС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         А:         А: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_namestates:PL
(
_output_shapes
:         А
 
_user_specified_namestates
Ю

Ў
D__inference_dense_47_layer_call_and_return_conditional_losses_290130

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
з

°
D__inference_dense_46_layer_call_and_return_conditional_losses_291542

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╛9
╥
while_body_290249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_47_matmul_readvariableop_resource_0:	dАI
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_47_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_47_matmul_readvariableop_resource:	dАG
3while_lstm_cell_47_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_47_biasadd_readvariableop_resource:	АИв)while/lstm_cell_47/BiasAdd/ReadVariableOpв(while/lstm_cell_47/MatMul/ReadVariableOpв*while/lstm_cell_47/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Э
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes
:	dА*
dtype0║
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ав
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0б
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЮ
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АЫ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0з
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split{
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АЗ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Аu
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЩ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         АО
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аr
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЭ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         Аz
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         А╨

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
╣
├
while_cond_290008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_290008___redundant_placeholder04
0while_while_cond_290008___redundant_placeholder14
0while_while_cond_290008___redundant_placeholder24
0while_while_cond_290008___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
¤	
╫
.__inference_sequential_22_layer_call_fn_290156
embedding_11_input
unknown:
Г╙d
	unknown_0:	dА
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCall╗
StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_290137o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:         d
,
_user_specified_nameembedding_11_input
∙
ў
-__inference_lstm_cell_47_layer_call_fn_291596

inputs
states_0
states_1
unknown:	dА
	unknown_0:
АА
	unknown_1:	А
identity

identity_1

identity_2ИвStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_289790p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Аr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         Аr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         А:         А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:RN
(
_output_shapes
:         А
"
_user_specified_name
states/0:RN
(
_output_shapes
:         А
"
_user_specified_name
states/1
Х
╕
(__inference_lstm_15_layer_call_fn_290920
inputs_0
unknown:	dА
	unknown_0:
АА
	unknown_1:	А
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_289920p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
ж	
з
H__inference_embedding_11_layer_call_and_return_conditional_losses_290898

inputs+
embedding_lookup_290892:
Г╙d
identityИвembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         d╗
embedding_lookupResourceGatherembedding_lookup_290892Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/290892*+
_output_shapes
:         dd*
dtype0в
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/290892*+
_output_shapes
:         ddБ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         ddw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         ddY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         d: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
┘	
╦
.__inference_sequential_22_layer_call_fn_290551

inputs
unknown:
Г╙d
	unknown_0:	dА
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_290398o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╛9
╥
while_body_291147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_47_matmul_readvariableop_resource_0:	dАI
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_47_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_47_matmul_readvariableop_resource:	dАG
3while_lstm_cell_47_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_47_biasadd_readvariableop_resource:	АИв)while/lstm_cell_47/BiasAdd/ReadVariableOpв(while/lstm_cell_47/MatMul/ReadVariableOpв*while/lstm_cell_47/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Э
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes
:	dА*
dtype0║
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ав
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0б
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЮ
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АЫ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0з
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split{
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АЗ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Аu
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЩ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         АО
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аr
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЭ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         Аz
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         А╨

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
в)
Ў
__inference__traced_save_291731
file_prefix6
2savev2_embedding_11_embeddings_read_readvariableop.
*savev2_dense_46_kernel_read_readvariableop,
(savev2_dense_46_bias_read_readvariableop.
*savev2_dense_47_kernel_read_readvariableop,
(savev2_dense_47_bias_read_readvariableop:
6savev2_lstm_15_lstm_cell_15_kernel_read_readvariableopD
@savev2_lstm_15_lstm_cell_15_recurrent_kernel_read_readvariableop8
4savev2_lstm_15_lstm_cell_15_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ё
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Щ
valueПBМB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHП
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B К
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_11_embeddings_read_readvariableop*savev2_dense_46_kernel_read_readvariableop(savev2_dense_46_bias_read_readvariableop*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop6savev2_lstm_15_lstm_cell_15_kernel_read_readvariableop@savev2_lstm_15_lstm_cell_15_recurrent_kernel_read_readvariableop4savev2_lstm_15_lstm_cell_15_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Й
_input_shapesx
v: :
Г╙d:
АА:А:	А::	dА:
АА:А: : : : :╚:╚:╚:╚: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Г╙d:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::%!

_output_shapes
:	dА:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:	
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
:╚:!

_output_shapes	
:╚:!

_output_shapes	
:╚:!

_output_shapes	
:╚:

_output_shapes
: 
в
√
'sequential_22_lstm_15_while_cond_289475H
Dsequential_22_lstm_15_while_sequential_22_lstm_15_while_loop_counterN
Jsequential_22_lstm_15_while_sequential_22_lstm_15_while_maximum_iterations+
'sequential_22_lstm_15_while_placeholder-
)sequential_22_lstm_15_while_placeholder_1-
)sequential_22_lstm_15_while_placeholder_2-
)sequential_22_lstm_15_while_placeholder_3J
Fsequential_22_lstm_15_while_less_sequential_22_lstm_15_strided_slice_1`
\sequential_22_lstm_15_while_sequential_22_lstm_15_while_cond_289475___redundant_placeholder0`
\sequential_22_lstm_15_while_sequential_22_lstm_15_while_cond_289475___redundant_placeholder1`
\sequential_22_lstm_15_while_sequential_22_lstm_15_while_cond_289475___redundant_placeholder2`
\sequential_22_lstm_15_while_sequential_22_lstm_15_while_cond_289475___redundant_placeholder3(
$sequential_22_lstm_15_while_identity
║
 sequential_22/lstm_15/while/LessLess'sequential_22_lstm_15_while_placeholderFsequential_22_lstm_15_while_less_sequential_22_lstm_15_strided_slice_1*
T0*
_output_shapes
: w
$sequential_22/lstm_15/while/IdentityIdentity$sequential_22/lstm_15/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_22_lstm_15_while_identity-sequential_22/lstm_15/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
д
О
I__inference_sequential_22_layer_call_and_return_conditional_losses_290398

inputs'
embedding_11_290377:
Г╙d!
lstm_15_290380:	dА"
lstm_15_290382:
АА
lstm_15_290384:	А#
dense_46_290387:
АА
dense_46_290389:	А"
dense_47_290392:	А
dense_47_290394:
identityИв dense_46/StatefulPartitionedCallв dense_47/StatefulPartitionedCallв$embedding_11/StatefulPartitionedCallвlstm_15/StatefulPartitionedCallЁ
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_11_290377*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_289946й
lstm_15/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0lstm_15_290380lstm_15_290382lstm_15_290384*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_290334Ц
 dense_46/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0dense_46_290387dense_46_290389*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_290113Ц
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_290392dense_47_290394*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_290130x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╒
NoOpNoOp!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Р$
х
while_body_289657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_47_289681_0:	dА/
while_lstm_cell_47_289683_0:
АА*
while_lstm_cell_47_289685_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_47_289681:	dА-
while_lstm_cell_47_289683:
АА(
while_lstm_cell_47_289685:	АИв*while/lstm_cell_47/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╣
*while/lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_47_289681_0while_lstm_cell_47_289683_0while_lstm_cell_47_289685_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_289642r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_47/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: С
while/Identity_4Identity3while/lstm_cell_47/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         АС
while/Identity_5Identity3while/lstm_cell_47/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         Аy

while/NoOpNoOp+^while/lstm_cell_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_47_289681while_lstm_cell_47_289681_0"8
while_lstm_cell_47_289683while_lstm_cell_47_289683_0"8
while_lstm_cell_47_289685while_lstm_cell_47_289685_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2X
*while/lstm_cell_47/StatefulPartitionedCall*while/lstm_cell_47/StatefulPartitionedCall: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
╚
Ъ
I__inference_sequential_22_layer_call_and_return_conditional_losses_290462
embedding_11_input'
embedding_11_290441:
Г╙d!
lstm_15_290444:	dА"
lstm_15_290446:
АА
lstm_15_290448:	А#
dense_46_290451:
АА
dense_46_290453:	А"
dense_47_290456:	А
dense_47_290458:
identityИв dense_46/StatefulPartitionedCallв dense_47/StatefulPartitionedCallв$embedding_11/StatefulPartitionedCallвlstm_15/StatefulPartitionedCall№
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputembedding_11_290441*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_289946й
lstm_15/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0lstm_15_290444lstm_15_290446lstm_15_290448*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_290094Ц
 dense_46/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0dense_46_290451dense_46_290453*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_290113Ц
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_290456dense_47_290458*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_290130x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╒
NoOpNoOp!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall:[ W
'
_output_shapes
:         d
,
_user_specified_nameembedding_11_input
─K
Ь
C__inference_lstm_15_layer_call_and_return_conditional_losses_290094

inputs>
+lstm_cell_47_matmul_readvariableop_resource:	dАA
-lstm_cell_47_matmul_1_readvariableop_resource:
АА;
,lstm_cell_47_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_47/BiasAdd/ReadVariableOpв"lstm_cell_47/MatMul/ReadVariableOpв$lstm_cell_47/MatMul_1/ReadVariableOpвwhile;
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
valueB:╤
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
B :Аs
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
:         АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskП
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0Ц
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АФ
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АМ
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АН
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splito
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*(
_output_shapes
:         Аx
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         Аi
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЗ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         А|
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аf
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЛ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_290009*
condR
while_cond_290008*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         А└
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
¤	
╫
.__inference_sequential_22_layer_call_fn_290438
embedding_11_input
unknown:
Г╙d
	unknown_0:	dА
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCall╗
StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_sequential_22_layer_call_and_return_conditional_losses_290398o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:         d
,
_user_specified_nameembedding_11_input
╛9
╥
while_body_291437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_47_matmul_readvariableop_resource_0:	dАI
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_47_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_47_matmul_readvariableop_resource:	dАG
3while_lstm_cell_47_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_47_biasadd_readvariableop_resource:	АИв)while/lstm_cell_47/BiasAdd/ReadVariableOpв(while/lstm_cell_47/MatMul/ReadVariableOpв*while/lstm_cell_47/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Э
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes
:	dА*
dtype0║
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ав
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0б
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЮ
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АЫ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0з
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split{
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АЗ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Аu
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЩ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         АО
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аr
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЭ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         Аz
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         А╨

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
Ъ

у
lstm_15_while_cond_290616,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3.
*lstm_15_while_less_lstm_15_strided_slice_1D
@lstm_15_while_lstm_15_while_cond_290616___redundant_placeholder0D
@lstm_15_while_lstm_15_while_cond_290616___redundant_placeholder1D
@lstm_15_while_lstm_15_while_cond_290616___redundant_placeholder2D
@lstm_15_while_lstm_15_while_cond_290616___redundant_placeholder3
lstm_15_while_identity
В
lstm_15/while/LessLesslstm_15_while_placeholder*lstm_15_while_less_lstm_15_strided_slice_1*
T0*
_output_shapes
: [
lstm_15/while/IdentityIdentitylstm_15/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_15_while_identitylstm_15/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
╠
Щ
)__inference_dense_46_layer_call_fn_291531

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_290113p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ъ

у
lstm_15_while_cond_290781,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3.
*lstm_15_while_less_lstm_15_strided_slice_1D
@lstm_15_while_lstm_15_while_cond_290781___redundant_placeholder0D
@lstm_15_while_lstm_15_while_cond_290781___redundant_placeholder1D
@lstm_15_while_lstm_15_while_cond_290781___redundant_placeholder2D
@lstm_15_while_lstm_15_while_cond_290781___redundant_placeholder3
lstm_15_while_identity
В
lstm_15/while/LessLesslstm_15_while_placeholder*lstm_15_while_less_lstm_15_strided_slice_1*
T0*
_output_shapes
: [
lstm_15/while/IdentityIdentitylstm_15/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_15_while_identitylstm_15/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
Р$
х
while_body_289850
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_47_289874_0:	dА/
while_lstm_cell_47_289876_0:
АА*
while_lstm_cell_47_289878_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_47_289874:	dА-
while_lstm_cell_47_289876:
АА(
while_lstm_cell_47_289878:	АИв*while/lstm_cell_47/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╣
*while/lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_47_289874_0while_lstm_cell_47_289876_0while_lstm_cell_47_289878_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_289790r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_47/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: С
while/Identity_4Identity3while/lstm_cell_47/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         АС
while/Identity_5Identity3while/lstm_cell_47/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         Аy

while/NoOpNoOp+^while/lstm_cell_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_47_289874while_lstm_cell_47_289874_0"8
while_lstm_cell_47_289876while_lstm_cell_47_289876_0"8
while_lstm_cell_47_289878while_lstm_cell_47_289878_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2X
*while/lstm_cell_47/StatefulPartitionedCall*while/lstm_cell_47/StatefulPartitionedCall: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
╛9
╥
while_body_291002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_47_matmul_readvariableop_resource_0:	dАI
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_47_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_47_matmul_readvariableop_resource:	dАG
3while_lstm_cell_47_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_47_biasadd_readvariableop_resource:	АИв)while/lstm_cell_47/BiasAdd/ReadVariableOpв(while/lstm_cell_47/MatMul/ReadVariableOpв*while/lstm_cell_47/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Э
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes
:	dА*
dtype0║
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ав
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0б
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЮ
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АЫ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0з
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split{
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АЗ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Аu
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЩ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         АО
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аr
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЭ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         Аz
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         А╨

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
чK
Ю
C__inference_lstm_15_layer_call_and_return_conditional_losses_291087
inputs_0>
+lstm_cell_47_matmul_readvariableop_resource:	dАA
-lstm_cell_47_matmul_1_readvariableop_resource:
АА;
,lstm_cell_47_biasadd_readvariableop_resource:	А
identityИв#lstm_cell_47/BiasAdd/ReadVariableOpв"lstm_cell_47/MatMul/ReadVariableOpв$lstm_cell_47/MatMul_1/ReadVariableOpвwhile=
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
valueB:╤
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
B :Аs
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
:         АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskП
"lstm_cell_47/MatMul/ReadVariableOpReadVariableOp+lstm_cell_47_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0Ц
lstm_cell_47/MatMulMatMulstrided_slice_2:output:0*lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АФ
$lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_47_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Р
lstm_cell_47/MatMul_1MatMulzeros:output:0,lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АМ
lstm_cell_47/addAddV2lstm_cell_47/MatMul:product:0lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АН
#lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
lstm_cell_47/BiasAddBiasAddlstm_cell_47/add:z:0+lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А^
lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :с
lstm_cell_47/splitSplit%lstm_cell_47/split/split_dim:output:0lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splito
lstm_cell_47/SigmoidSigmoidlstm_cell_47/split:output:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_1Sigmoidlstm_cell_47/split:output:1*
T0*(
_output_shapes
:         Аx
lstm_cell_47/mulMullstm_cell_47/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         Аi
lstm_cell_47/ReluRelulstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЗ
lstm_cell_47/mul_1Mullstm_cell_47/Sigmoid:y:0lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         А|
lstm_cell_47/add_1AddV2lstm_cell_47/mul:z:0lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         Аq
lstm_cell_47/Sigmoid_2Sigmoidlstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аf
lstm_cell_47/Relu_1Relulstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЛ
lstm_cell_47/mul_2Mullstm_cell_47/Sigmoid_2:y:0!lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_47_matmul_readvariableop_resource-lstm_cell_47_matmul_1_readvariableop_resource,lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_291002*
condR
while_cond_291001*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         А└
NoOpNoOp$^lstm_cell_47/BiasAdd/ReadVariableOp#^lstm_cell_47/MatMul/ReadVariableOp%^lstm_cell_47/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2J
#lstm_cell_47/BiasAdd/ReadVariableOp#lstm_cell_47/BiasAdd/ReadVariableOp2H
"lstm_cell_47/MatMul/ReadVariableOp"lstm_cell_47/MatMul/ReadVariableOp2L
$lstm_cell_47/MatMul_1/ReadVariableOp$lstm_cell_47/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
 B
╥

lstm_15_while_body_290782,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3+
'lstm_15_while_lstm_15_strided_slice_1_0g
clstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_15_while_lstm_cell_47_matmul_readvariableop_resource_0:	dАQ
=lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource_0:
ААK
<lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource_0:	А
lstm_15_while_identity
lstm_15_while_identity_1
lstm_15_while_identity_2
lstm_15_while_identity_3
lstm_15_while_identity_4
lstm_15_while_identity_5)
%lstm_15_while_lstm_15_strided_slice_1e
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorL
9lstm_15_while_lstm_cell_47_matmul_readvariableop_resource:	dАO
;lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource:
ААI
:lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource:	АИв1lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOpв0lstm_15/while/lstm_cell_47/MatMul/ReadVariableOpв2lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOpР
?lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╬
1lstm_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0lstm_15_while_placeholderHlstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0н
0lstm_15/while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp;lstm_15_while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes
:	dА*
dtype0╥
!lstm_15/while/lstm_cell_47/MatMulMatMul8lstm_15/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А▓
2lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp=lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0╣
#lstm_15/while/lstm_cell_47/MatMul_1MatMullstm_15_while_placeholder_2:lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╢
lstm_15/while/lstm_cell_47/addAddV2+lstm_15/while/lstm_cell_47/MatMul:product:0-lstm_15/while/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         Ал
1lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp<lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0┐
"lstm_15/while/lstm_cell_47/BiasAddBiasAdd"lstm_15/while/lstm_cell_47/add:z:09lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аl
*lstm_15/while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Л
 lstm_15/while/lstm_cell_47/splitSplit3lstm_15/while/lstm_cell_47/split/split_dim:output:0+lstm_15/while/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splitЛ
"lstm_15/while/lstm_cell_47/SigmoidSigmoid)lstm_15/while/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         АН
$lstm_15/while/lstm_cell_47/Sigmoid_1Sigmoid)lstm_15/while/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АЯ
lstm_15/while/lstm_cell_47/mulMul(lstm_15/while/lstm_cell_47/Sigmoid_1:y:0lstm_15_while_placeholder_3*
T0*(
_output_shapes
:         АЕ
lstm_15/while/lstm_cell_47/ReluRelu)lstm_15/while/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         А▒
 lstm_15/while/lstm_cell_47/mul_1Mul&lstm_15/while/lstm_cell_47/Sigmoid:y:0-lstm_15/while/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         Аж
 lstm_15/while/lstm_cell_47/add_1AddV2"lstm_15/while/lstm_cell_47/mul:z:0$lstm_15/while/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         АН
$lstm_15/while/lstm_cell_47/Sigmoid_2Sigmoid)lstm_15/while/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         АВ
!lstm_15/while/lstm_cell_47/Relu_1Relu$lstm_15/while/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         А╡
 lstm_15/while/lstm_cell_47/mul_2Mul(lstm_15/while/lstm_cell_47/Sigmoid_2:y:0/lstm_15/while/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аz
8lstm_15/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Н
2lstm_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_15_while_placeholder_1Alstm_15/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_15/while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥U
lstm_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_15/while/addAddV2lstm_15_while_placeholderlstm_15/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_15/while/add_1AddV2(lstm_15_while_lstm_15_while_loop_counterlstm_15/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_15/while/IdentityIdentitylstm_15/while/add_1:z:0^lstm_15/while/NoOp*
T0*
_output_shapes
: К
lstm_15/while/Identity_1Identity.lstm_15_while_lstm_15_while_maximum_iterations^lstm_15/while/NoOp*
T0*
_output_shapes
: q
lstm_15/while/Identity_2Identitylstm_15/while/add:z:0^lstm_15/while/NoOp*
T0*
_output_shapes
: Ю
lstm_15/while/Identity_3IdentityBlstm_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_15/while/NoOp*
T0*
_output_shapes
: Т
lstm_15/while/Identity_4Identity$lstm_15/while/lstm_cell_47/mul_2:z:0^lstm_15/while/NoOp*
T0*(
_output_shapes
:         АТ
lstm_15/while/Identity_5Identity$lstm_15/while/lstm_cell_47/add_1:z:0^lstm_15/while/NoOp*
T0*(
_output_shapes
:         АЁ
lstm_15/while/NoOpNoOp2^lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_15_while_identitylstm_15/while/Identity:output:0"=
lstm_15_while_identity_1!lstm_15/while/Identity_1:output:0"=
lstm_15_while_identity_2!lstm_15/while/Identity_2:output:0"=
lstm_15_while_identity_3!lstm_15/while/Identity_3:output:0"=
lstm_15_while_identity_4!lstm_15/while/Identity_4:output:0"=
lstm_15_while_identity_5!lstm_15/while/Identity_5:output:0"P
%lstm_15_while_lstm_15_strided_slice_1'lstm_15_while_lstm_15_strided_slice_1_0"z
:lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource<lstm_15_while_lstm_cell_47_biasadd_readvariableop_resource_0"|
;lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource=lstm_15_while_lstm_cell_47_matmul_1_readvariableop_resource_0"x
9lstm_15_while_lstm_cell_47_matmul_readvariableop_resource;lstm_15_while_lstm_cell_47_matmul_readvariableop_resource_0"╚
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2f
1lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp1lstm_15/while/lstm_cell_47/BiasAdd/ReadVariableOp2d
0lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp0lstm_15/while/lstm_cell_47/MatMul/ReadVariableOp2h
2lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp2lstm_15/while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
╫A
▌	
"__inference__traced_restore_291789
file_prefix<
(assignvariableop_embedding_11_embeddings:
Г╙d6
"assignvariableop_1_dense_46_kernel:
АА/
 assignvariableop_2_dense_46_bias:	А5
"assignvariableop_3_dense_47_kernel:	А.
 assignvariableop_4_dense_47_bias:A
.assignvariableop_5_lstm_15_lstm_cell_15_kernel:	dАL
8assignvariableop_6_lstm_15_lstm_cell_15_recurrent_kernel:
АА;
,assignvariableop_7_lstm_15_lstm_cell_15_bias:	А$
assignvariableop_8_total_1: $
assignvariableop_9_count_1: #
assignvariableop_10_total: #
assignvariableop_11_count: 1
"assignvariableop_12_true_positives:	╚1
"assignvariableop_13_true_negatives:	╚2
#assignvariableop_14_false_positives:	╚2
#assignvariableop_15_false_negatives:	╚
identity_17ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9є
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Щ
valueПBМB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHТ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B є
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOpAssignVariableOp(assignvariableop_embedding_11_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_46_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_46_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_47_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_47_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_5AssignVariableOp.assignvariableop_5_lstm_15_lstm_cell_15_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_6AssignVariableOp8assignvariableop_6_lstm_15_lstm_cell_15_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_7AssignVariableOp,assignvariableop_7_lstm_15_lstm_cell_15_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_8AssignVariableOpassignvariableop_8_total_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_9AssignVariableOpassignvariableop_9_count_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_12AssignVariableOp"assignvariableop_12_true_positivesIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp"assignvariableop_13_true_negativesIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_14AssignVariableOp#assignvariableop_14_false_positivesIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_15AssignVariableOp#assignvariableop_15_false_negativesIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 п
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: Ь
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
╣
├
while_cond_290248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_290248___redundant_placeholder04
0while_while_cond_290248___redundant_placeholder14
0while_while_cond_290248___redundant_placeholder24
0while_while_cond_290248___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
╛9
╥
while_body_291292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_47_matmul_readvariableop_resource_0:	dАI
5while_lstm_cell_47_matmul_1_readvariableop_resource_0:
ААC
4while_lstm_cell_47_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_47_matmul_readvariableop_resource:	dАG
3while_lstm_cell_47_matmul_1_readvariableop_resource:
ААA
2while_lstm_cell_47_biasadd_readvariableop_resource:	АИв)while/lstm_cell_47/BiasAdd/ReadVariableOpв(while/lstm_cell_47/MatMul/ReadVariableOpв*while/lstm_cell_47/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Э
(while/lstm_cell_47/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_47_matmul_readvariableop_resource_0*
_output_shapes
:	dА*
dtype0║
while/lstm_cell_47/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ав
*while/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_47_matmul_1_readvariableop_resource_0* 
_output_shapes
:
АА*
dtype0б
while/lstm_cell_47/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЮ
while/lstm_cell_47/addAddV2#while/lstm_cell_47/MatMul:product:0%while/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         АЫ
)while/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_47_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0з
while/lstm_cell_47/BiasAddBiasAddwhile/lstm_cell_47/add:z:01while/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аd
"while/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
while/lstm_cell_47/splitSplit+while/lstm_cell_47/split/split_dim:output:0#while/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_split{
while/lstm_cell_47/SigmoidSigmoid!while/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_1Sigmoid!while/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         АЗ
while/lstm_cell_47/mulMul while/lstm_cell_47/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Аu
while/lstm_cell_47/ReluRelu!while/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         АЩ
while/lstm_cell_47/mul_1Mulwhile/lstm_cell_47/Sigmoid:y:0%while/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         АО
while/lstm_cell_47/add_1AddV2while/lstm_cell_47/mul:z:0while/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         А}
while/lstm_cell_47/Sigmoid_2Sigmoid!while/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         Аr
while/lstm_cell_47/Relu_1Reluwhile/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         АЭ
while/lstm_cell_47/mul_2Mul while/lstm_cell_47/Sigmoid_2:y:0'while/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         Аr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : э
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_47/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_47/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:         Аz
while/Identity_5Identitywhile/lstm_cell_47/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:         А╨

while/NoOpNoOp*^while/lstm_cell_47/BiasAdd/ReadVariableOp)^while/lstm_cell_47/MatMul/ReadVariableOp+^while/lstm_cell_47/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_47_biasadd_readvariableop_resource4while_lstm_cell_47_biasadd_readvariableop_resource_0"l
3while_lstm_cell_47_matmul_1_readvariableop_resource5while_lstm_cell_47_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_47_matmul_readvariableop_resource3while_lstm_cell_47_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         А:         А: : : : : 2V
)while/lstm_cell_47/BiasAdd/ReadVariableOp)while/lstm_cell_47/BiasAdd/ReadVariableOp2T
(while/lstm_cell_47/MatMul/ReadVariableOp(while/lstm_cell_47/MatMul/ReadVariableOp2X
*while/lstm_cell_47/MatMul_1/ReadVariableOp*while/lstm_cell_47/MatMul_1/ReadVariableOp: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
: 
д
О
I__inference_sequential_22_layer_call_and_return_conditional_losses_290137

inputs'
embedding_11_289947:
Г╙d!
lstm_15_290095:	dА"
lstm_15_290097:
АА
lstm_15_290099:	А#
dense_46_290114:
АА
dense_46_290116:	А"
dense_47_290131:	А
dense_47_290133:
identityИв dense_46/StatefulPartitionedCallв dense_47/StatefulPartitionedCallв$embedding_11/StatefulPartitionedCallвlstm_15/StatefulPartitionedCallЁ
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_11_289947*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dd*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_289946й
lstm_15/StatefulPartitionedCallStatefulPartitionedCall-embedding_11/StatefulPartitionedCall:output:0lstm_15_290095lstm_15_290097lstm_15_290099*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_290094Ц
 dense_46/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0dense_46_290114dense_46_290116*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_46_layer_call_and_return_conditional_losses_290113Ц
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_290131dense_47_290133*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dense_47_layer_call_and_return_conditional_losses_290130x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╒
NoOpNoOp!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall%^embedding_11/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
╕Е
Ў
!__inference__wrapped_model_289575
embedding_11_inputF
2sequential_22_embedding_11_embedding_lookup_289414:
Г╙dT
Asequential_22_lstm_15_lstm_cell_47_matmul_readvariableop_resource:	dАW
Csequential_22_lstm_15_lstm_cell_47_matmul_1_readvariableop_resource:
ААQ
Bsequential_22_lstm_15_lstm_cell_47_biasadd_readvariableop_resource:	АI
5sequential_22_dense_46_matmul_readvariableop_resource:
ААE
6sequential_22_dense_46_biasadd_readvariableop_resource:	АH
5sequential_22_dense_47_matmul_readvariableop_resource:	АD
6sequential_22_dense_47_biasadd_readvariableop_resource:
identityИв-sequential_22/dense_46/BiasAdd/ReadVariableOpв,sequential_22/dense_46/MatMul/ReadVariableOpв-sequential_22/dense_47/BiasAdd/ReadVariableOpв,sequential_22/dense_47/MatMul/ReadVariableOpв+sequential_22/embedding_11/embedding_lookupв9sequential_22/lstm_15/lstm_cell_47/BiasAdd/ReadVariableOpв8sequential_22/lstm_15/lstm_cell_47/MatMul/ReadVariableOpв:sequential_22/lstm_15/lstm_cell_47/MatMul_1/ReadVariableOpвsequential_22/lstm_15/while|
sequential_22/embedding_11/CastCastembedding_11_input*

DstT0*

SrcT0*'
_output_shapes
:         dз
+sequential_22/embedding_11/embedding_lookupResourceGather2sequential_22_embedding_11_embedding_lookup_289414#sequential_22/embedding_11/Cast:y:0*
Tindices0*E
_class;
97loc:@sequential_22/embedding_11/embedding_lookup/289414*+
_output_shapes
:         dd*
dtype0є
4sequential_22/embedding_11/embedding_lookup/IdentityIdentity4sequential_22/embedding_11/embedding_lookup:output:0*
T0*E
_class;
97loc:@sequential_22/embedding_11/embedding_lookup/289414*+
_output_shapes
:         dd╖
6sequential_22/embedding_11/embedding_lookup/Identity_1Identity=sequential_22/embedding_11/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         ddК
sequential_22/lstm_15/ShapeShape?sequential_22/embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:s
)sequential_22/lstm_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_22/lstm_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_22/lstm_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_22/lstm_15/strided_sliceStridedSlice$sequential_22/lstm_15/Shape:output:02sequential_22/lstm_15/strided_slice/stack:output:04sequential_22/lstm_15/strided_slice/stack_1:output:04sequential_22/lstm_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$sequential_22/lstm_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А╡
"sequential_22/lstm_15/zeros/packedPack,sequential_22/lstm_15/strided_slice:output:0-sequential_22/lstm_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_22/lstm_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    п
sequential_22/lstm_15/zerosFill+sequential_22/lstm_15/zeros/packed:output:0*sequential_22/lstm_15/zeros/Const:output:0*
T0*(
_output_shapes
:         Аi
&sequential_22/lstm_15/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :А╣
$sequential_22/lstm_15/zeros_1/packedPack,sequential_22/lstm_15/strided_slice:output:0/sequential_22/lstm_15/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_22/lstm_15/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╡
sequential_22/lstm_15/zeros_1Fill-sequential_22/lstm_15/zeros_1/packed:output:0,sequential_22/lstm_15/zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аy
$sequential_22/lstm_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╥
sequential_22/lstm_15/transpose	Transpose?sequential_22/embedding_11/embedding_lookup/Identity_1:output:0-sequential_22/lstm_15/transpose/perm:output:0*
T0*+
_output_shapes
:d         dp
sequential_22/lstm_15/Shape_1Shape#sequential_22/lstm_15/transpose:y:0*
T0*
_output_shapes
:u
+sequential_22/lstm_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_22/lstm_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_22/lstm_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_22/lstm_15/strided_slice_1StridedSlice&sequential_22/lstm_15/Shape_1:output:04sequential_22/lstm_15/strided_slice_1/stack:output:06sequential_22/lstm_15/strided_slice_1/stack_1:output:06sequential_22/lstm_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_22/lstm_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ў
#sequential_22/lstm_15/TensorArrayV2TensorListReserve:sequential_22/lstm_15/TensorArrayV2/element_shape:output:0.sequential_22/lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ь
Ksequential_22/lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   в
=sequential_22/lstm_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_22/lstm_15/transpose:y:0Tsequential_22/lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥u
+sequential_22/lstm_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_22/lstm_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_22/lstm_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╫
%sequential_22/lstm_15/strided_slice_2StridedSlice#sequential_22/lstm_15/transpose:y:04sequential_22/lstm_15/strided_slice_2/stack:output:06sequential_22/lstm_15/strided_slice_2/stack_1:output:06sequential_22/lstm_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask╗
8sequential_22/lstm_15/lstm_cell_47/MatMul/ReadVariableOpReadVariableOpAsequential_22_lstm_15_lstm_cell_47_matmul_readvariableop_resource*
_output_shapes
:	dА*
dtype0╪
)sequential_22/lstm_15/lstm_cell_47/MatMulMatMul.sequential_22/lstm_15/strided_slice_2:output:0@sequential_22/lstm_15/lstm_cell_47/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А└
:sequential_22/lstm_15/lstm_cell_47/MatMul_1/ReadVariableOpReadVariableOpCsequential_22_lstm_15_lstm_cell_47_matmul_1_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╥
+sequential_22/lstm_15/lstm_cell_47/MatMul_1MatMul$sequential_22/lstm_15/zeros:output:0Bsequential_22/lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╬
&sequential_22/lstm_15/lstm_cell_47/addAddV23sequential_22/lstm_15/lstm_cell_47/MatMul:product:05sequential_22/lstm_15/lstm_cell_47/MatMul_1:product:0*
T0*(
_output_shapes
:         А╣
9sequential_22/lstm_15/lstm_cell_47/BiasAdd/ReadVariableOpReadVariableOpBsequential_22_lstm_15_lstm_cell_47_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╫
*sequential_22/lstm_15/lstm_cell_47/BiasAddBiasAdd*sequential_22/lstm_15/lstm_cell_47/add:z:0Asequential_22/lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аt
2sequential_22/lstm_15/lstm_cell_47/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
(sequential_22/lstm_15/lstm_cell_47/splitSplit;sequential_22/lstm_15/lstm_cell_47/split/split_dim:output:03sequential_22/lstm_15/lstm_cell_47/BiasAdd:output:0*
T0*d
_output_shapesR
P:         А:         А:         А:         А*
	num_splitЫ
*sequential_22/lstm_15/lstm_cell_47/SigmoidSigmoid1sequential_22/lstm_15/lstm_cell_47/split:output:0*
T0*(
_output_shapes
:         АЭ
,sequential_22/lstm_15/lstm_cell_47/Sigmoid_1Sigmoid1sequential_22/lstm_15/lstm_cell_47/split:output:1*
T0*(
_output_shapes
:         А║
&sequential_22/lstm_15/lstm_cell_47/mulMul0sequential_22/lstm_15/lstm_cell_47/Sigmoid_1:y:0&sequential_22/lstm_15/zeros_1:output:0*
T0*(
_output_shapes
:         АХ
'sequential_22/lstm_15/lstm_cell_47/ReluRelu1sequential_22/lstm_15/lstm_cell_47/split:output:2*
T0*(
_output_shapes
:         А╔
(sequential_22/lstm_15/lstm_cell_47/mul_1Mul.sequential_22/lstm_15/lstm_cell_47/Sigmoid:y:05sequential_22/lstm_15/lstm_cell_47/Relu:activations:0*
T0*(
_output_shapes
:         А╛
(sequential_22/lstm_15/lstm_cell_47/add_1AddV2*sequential_22/lstm_15/lstm_cell_47/mul:z:0,sequential_22/lstm_15/lstm_cell_47/mul_1:z:0*
T0*(
_output_shapes
:         АЭ
,sequential_22/lstm_15/lstm_cell_47/Sigmoid_2Sigmoid1sequential_22/lstm_15/lstm_cell_47/split:output:3*
T0*(
_output_shapes
:         АТ
)sequential_22/lstm_15/lstm_cell_47/Relu_1Relu,sequential_22/lstm_15/lstm_cell_47/add_1:z:0*
T0*(
_output_shapes
:         А═
(sequential_22/lstm_15/lstm_cell_47/mul_2Mul0sequential_22/lstm_15/lstm_cell_47/Sigmoid_2:y:07sequential_22/lstm_15/lstm_cell_47/Relu_1:activations:0*
T0*(
_output_shapes
:         АД
3sequential_22/lstm_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   t
2sequential_22/lstm_15/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :З
%sequential_22/lstm_15/TensorArrayV2_1TensorListReserve<sequential_22/lstm_15/TensorArrayV2_1/element_shape:output:0;sequential_22/lstm_15/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥\
sequential_22/lstm_15/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_22/lstm_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         j
(sequential_22/lstm_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ║
sequential_22/lstm_15/whileWhile1sequential_22/lstm_15/while/loop_counter:output:07sequential_22/lstm_15/while/maximum_iterations:output:0#sequential_22/lstm_15/time:output:0.sequential_22/lstm_15/TensorArrayV2_1:handle:0$sequential_22/lstm_15/zeros:output:0&sequential_22/lstm_15/zeros_1:output:0.sequential_22/lstm_15/strided_slice_1:output:0Msequential_22/lstm_15/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_22_lstm_15_lstm_cell_47_matmul_readvariableop_resourceCsequential_22_lstm_15_lstm_cell_47_matmul_1_readvariableop_resourceBsequential_22_lstm_15_lstm_cell_47_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *3
body+R)
'sequential_22_lstm_15_while_body_289476*3
cond+R)
'sequential_22_lstm_15_while_cond_289475*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Ч
Fsequential_22/lstm_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   Щ
8sequential_22/lstm_15/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_22/lstm_15/while:output:3Osequential_22/lstm_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elements~
+sequential_22/lstm_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         w
-sequential_22/lstm_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_22/lstm_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
%sequential_22/lstm_15/strided_slice_3StridedSliceAsequential_22/lstm_15/TensorArrayV2Stack/TensorListStack:tensor:04sequential_22/lstm_15/strided_slice_3/stack:output:06sequential_22/lstm_15/strided_slice_3/stack_1:output:06sequential_22/lstm_15/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_mask{
&sequential_22/lstm_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ┘
!sequential_22/lstm_15/transpose_1	TransposeAsequential_22/lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_22/lstm_15/transpose_1/perm:output:0*
T0*,
_output_shapes
:         Аq
sequential_22/lstm_15/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
,sequential_22/dense_46/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_46_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0└
sequential_22/dense_46/MatMulMatMul.sequential_22/lstm_15/strided_slice_3:output:04sequential_22/dense_46/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
-sequential_22/dense_46/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_46_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
sequential_22/dense_46/BiasAddBiasAdd'sequential_22/dense_46/MatMul:product:05sequential_22/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
sequential_22/dense_46/ReluRelu'sequential_22/dense_46/BiasAdd:output:0*
T0*(
_output_shapes
:         Аг
,sequential_22/dense_47/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_47_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0║
sequential_22/dense_47/MatMulMatMul)sequential_22/dense_46/Relu:activations:04sequential_22/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_22/dense_47/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_22/dense_47/BiasAddBiasAdd'sequential_22/dense_47/MatMul:product:05sequential_22/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
sequential_22/dense_47/SigmoidSigmoid'sequential_22/dense_47/BiasAdd:output:0*
T0*'
_output_shapes
:         q
IdentityIdentity"sequential_22/dense_47/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Д
NoOpNoOp.^sequential_22/dense_46/BiasAdd/ReadVariableOp-^sequential_22/dense_46/MatMul/ReadVariableOp.^sequential_22/dense_47/BiasAdd/ReadVariableOp-^sequential_22/dense_47/MatMul/ReadVariableOp,^sequential_22/embedding_11/embedding_lookup:^sequential_22/lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp9^sequential_22/lstm_15/lstm_cell_47/MatMul/ReadVariableOp;^sequential_22/lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp^sequential_22/lstm_15/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 2^
-sequential_22/dense_46/BiasAdd/ReadVariableOp-sequential_22/dense_46/BiasAdd/ReadVariableOp2\
,sequential_22/dense_46/MatMul/ReadVariableOp,sequential_22/dense_46/MatMul/ReadVariableOp2^
-sequential_22/dense_47/BiasAdd/ReadVariableOp-sequential_22/dense_47/BiasAdd/ReadVariableOp2\
,sequential_22/dense_47/MatMul/ReadVariableOp,sequential_22/dense_47/MatMul/ReadVariableOp2Z
+sequential_22/embedding_11/embedding_lookup+sequential_22/embedding_11/embedding_lookup2v
9sequential_22/lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp9sequential_22/lstm_15/lstm_cell_47/BiasAdd/ReadVariableOp2t
8sequential_22/lstm_15/lstm_cell_47/MatMul/ReadVariableOp8sequential_22/lstm_15/lstm_cell_47/MatMul/ReadVariableOp2x
:sequential_22/lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp:sequential_22/lstm_15/lstm_cell_47/MatMul_1/ReadVariableOp2:
sequential_22/lstm_15/whilesequential_22/lstm_15/while:[ W
'
_output_shapes
:         d
,
_user_specified_nameembedding_11_input
╣
├
while_cond_289849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_289849___redundant_placeholder04
0while_while_cond_289849___redundant_placeholder14
0while_while_cond_289849___redundant_placeholder24
0while_while_cond_289849___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         А:         А: ::::: 
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
:         А:.*
(
_output_shapes
:         А:

_output_shapes
: :

_output_shapes
:
Р9
Ж
C__inference_lstm_15_layer_call_and_return_conditional_losses_289920

inputs&
lstm_cell_47_289836:	dА'
lstm_cell_47_289838:
АА"
lstm_cell_47_289840:	А
identityИв$lstm_cell_47/StatefulPartitionedCallвwhile;
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
valueB:╤
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
B :Аs
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
:         АS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Аw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         Аc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask√
$lstm_cell_47/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_47_289836lstm_cell_47_289838lstm_cell_47_289840*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         А:         А:         А*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_289790n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╗
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_47_289836lstm_cell_47_289838lstm_cell_47_289840*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         А:         А: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_289850*
condR
while_cond_289849*M
output_shapes<
:: : : : :         А:         А: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   ╫
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         А*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         А[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:         Аu
NoOpNoOp%^lstm_cell_47/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_47/StatefulPartitionedCall$lstm_cell_47/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
╦	
═
$__inference_signature_wrapper_290509
embedding_11_input
unknown:
Г╙d
	unknown_0:	dА
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallembedding_11_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_289575o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         d: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:         d
,
_user_specified_nameembedding_11_input"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┴
serving_defaultн
Q
embedding_11_input;
$serving_default_embedding_11_input:0         d<
dense_470
StatefulPartitionedCall:0         tensorflow/serving/predict:▌╛
з
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
┌
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
 
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
р
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
р
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
╩
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
ю
;trace_0
<trace_1
=trace_2
>trace_32Г
.__inference_sequential_22_layer_call_fn_290156
.__inference_sequential_22_layer_call_fn_290530
.__inference_sequential_22_layer_call_fn_290551
.__inference_sequential_22_layer_call_fn_290438└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z;trace_0z<trace_1z=trace_2z>trace_3
┌
?trace_0
@trace_1
Atrace_2
Btrace_32я
I__inference_sequential_22_layer_call_and_return_conditional_losses_290716
I__inference_sequential_22_layer_call_and_return_conditional_losses_290881
I__inference_sequential_22_layer_call_and_return_conditional_losses_290462
I__inference_sequential_22_layer_call_and_return_conditional_losses_290486└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z?trace_0z@trace_1zAtrace_2zBtrace_3
╫B╘
!__inference__wrapped_model_289575embedding_11_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
н
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
ё
Itrace_02╘
-__inference_embedding_11_layer_call_fn_290888в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zItrace_0
М
Jtrace_02я
H__inference_embedding_11_layer_call_and_return_conditional_losses_290898в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zJtrace_0
+:)
Г╙d2embedding_11/embeddings
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
╣

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
ы
Qtrace_0
Rtrace_1
Strace_2
Ttrace_32А
(__inference_lstm_15_layer_call_fn_290909
(__inference_lstm_15_layer_call_fn_290920
(__inference_lstm_15_layer_call_fn_290931
(__inference_lstm_15_layer_call_fn_290942╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zQtrace_0zRtrace_1zStrace_2zTtrace_3
╫
Utrace_0
Vtrace_1
Wtrace_2
Xtrace_32ь
C__inference_lstm_15_layer_call_and_return_conditional_losses_291087
C__inference_lstm_15_layer_call_and_return_conditional_losses_291232
C__inference_lstm_15_layer_call_and_return_conditional_losses_291377
C__inference_lstm_15_layer_call_and_return_conditional_losses_291522╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zUtrace_0zVtrace_1zWtrace_2zXtrace_3
"
_generic_user_object
Э
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator
`
state_size

3kernel
4recurrent_kernel
5bias
#a_self_saveable_object_factories"
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
н
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
э
gtrace_02╨
)__inference_dense_46_layer_call_fn_291531в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zgtrace_0
И
htrace_02ы
D__inference_dense_46_layer_call_and_return_conditional_losses_291542в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zhtrace_0
#:!
АА2dense_46/kernel
:А2dense_46/bias
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
н
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
э
ntrace_02╨
)__inference_dense_47_layer_call_fn_291551в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zntrace_0
И
otrace_02ы
D__inference_dense_47_layer_call_and_return_conditional_losses_291562в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zotrace_0
": 	А2dense_47/kernel
:2dense_47/bias
 "
trackable_dict_wrapper
.:,	dА2lstm_15/lstm_cell_15/kernel
9:7
АА2%lstm_15/lstm_cell_15/recurrent_kernel
(:&А2lstm_15/lstm_cell_15/bias
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
p0
q1
r2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
МBЙ
.__inference_sequential_22_layer_call_fn_290156embedding_11_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
АB¤
.__inference_sequential_22_layer_call_fn_290530inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
АB¤
.__inference_sequential_22_layer_call_fn_290551inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
МBЙ
.__inference_sequential_22_layer_call_fn_290438embedding_11_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЫBШ
I__inference_sequential_22_layer_call_and_return_conditional_losses_290716inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЫBШ
I__inference_sequential_22_layer_call_and_return_conditional_losses_290881inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
зBд
I__inference_sequential_22_layer_call_and_return_conditional_losses_290462embedding_11_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
зBд
I__inference_sequential_22_layer_call_and_return_conditional_losses_290486embedding_11_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╓B╙
$__inference_signature_wrapper_290509embedding_11_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
сB▐
-__inference_embedding_11_layer_call_fn_290888inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
H__inference_embedding_11_layer_call_and_return_conditional_losses_290898inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
СBО
(__inference_lstm_15_layer_call_fn_290909inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
СBО
(__inference_lstm_15_layer_call_fn_290920inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ПBМ
(__inference_lstm_15_layer_call_fn_290931inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ПBМ
(__inference_lstm_15_layer_call_fn_290942inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
мBй
C__inference_lstm_15_layer_call_and_return_conditional_losses_291087inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
мBй
C__inference_lstm_15_layer_call_and_return_conditional_losses_291232inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
кBз
C__inference_lstm_15_layer_call_and_return_conditional_losses_291377inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
кBз
C__inference_lstm_15_layer_call_and_return_conditional_losses_291522inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
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
н
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
╓
xtrace_0
ytrace_12Я
-__inference_lstm_cell_47_layer_call_fn_291579
-__inference_lstm_cell_47_layer_call_fn_291596╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zxtrace_0zytrace_1
М
ztrace_0
{trace_12╒
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_291628
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_291660╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zztrace_0z{trace_1
"
_generic_user_object
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
▌B┌
)__inference_dense_46_layer_call_fn_291531inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_dense_46_layer_call_and_return_conditional_losses_291542inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_dense_47_layer_call_fn_291551inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_dense_47_layer_call_and_return_conditional_losses_291562inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
N
|	variables
}	keras_api
	~total
	count"
_tf_keras_metric
c
А	variables
Б	keras_api

Вtotal

Гcount
Д
_fn_kwargs"
_tf_keras_metric
Р
Е	variables
Ж	keras_api
Зtrue_positives
Иtrue_negatives
Йfalse_positives
Кfalse_negatives"
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
СBО
-__inference_lstm_cell_47_layer_call_fn_291579inputsstates/0states/1"╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
СBО
-__inference_lstm_cell_47_layer_call_fn_291596inputsstates/0states/1"╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
мBй
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_291628inputsstates/0states/1"╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
мBй
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_291660inputsstates/0states/1"╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
.
~0
1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
:  (2total
:  (2count
0
В0
Г1"
trackable_list_wrapper
.
А	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
@
З0
И1
Й2
К3"
trackable_list_wrapper
.
Е	variables"
_generic_user_object
:╚ (2true_positives
:╚ (2true_negatives
 :╚ (2false_positives
 :╚ (2false_negativesб
!__inference__wrapped_model_289575|345'(01;в8
1в.
,К)
embedding_11_input         d
к "3к0
.
dense_47"К
dense_47         ж
D__inference_dense_46_layer_call_and_return_conditional_losses_291542^'(0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ ~
)__inference_dense_46_layer_call_fn_291531Q'(0в-
&в#
!К
inputs         А
к "К         Ае
D__inference_dense_47_layer_call_and_return_conditional_losses_291562]010в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ }
)__inference_dense_47_layer_call_fn_291551P010в-
&в#
!К
inputs         А
к "К         л
H__inference_embedding_11_layer_call_and_return_conditional_losses_290898_/в,
%в"
 К
inputs         d
к ")в&
К
0         dd
Ъ Г
-__inference_embedding_11_layer_call_fn_290888R/в,
%в"
 К
inputs         d
к "К         dd┼
C__inference_lstm_15_layer_call_and_return_conditional_losses_291087~345OвL
EвB
4Ъ1
/К,
inputs/0                  d

 
p 

 
к "&в#
К
0         А
Ъ ┼
C__inference_lstm_15_layer_call_and_return_conditional_losses_291232~345OвL
EвB
4Ъ1
/К,
inputs/0                  d

 
p

 
к "&в#
К
0         А
Ъ ╡
C__inference_lstm_15_layer_call_and_return_conditional_losses_291377n345?в<
5в2
$К!
inputs         dd

 
p 

 
к "&в#
К
0         А
Ъ ╡
C__inference_lstm_15_layer_call_and_return_conditional_losses_291522n345?в<
5в2
$К!
inputs         dd

 
p

 
к "&в#
К
0         А
Ъ Э
(__inference_lstm_15_layer_call_fn_290909q345OвL
EвB
4Ъ1
/К,
inputs/0                  d

 
p 

 
к "К         АЭ
(__inference_lstm_15_layer_call_fn_290920q345OвL
EвB
4Ъ1
/К,
inputs/0                  d

 
p

 
к "К         АН
(__inference_lstm_15_layer_call_fn_290931a345?в<
5в2
$К!
inputs         dd

 
p 

 
к "К         АН
(__inference_lstm_15_layer_call_fn_290942a345?в<
5в2
$К!
inputs         dd

 
p

 
к "К         А╧
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_291628В345Вв
xвu
 К
inputs         d
MвJ
#К 
states/0         А
#К 
states/1         А
p 
к "vвs
lвi
К
0/0         А
GЪD
 К
0/1/0         А
 К
0/1/1         А
Ъ ╧
H__inference_lstm_cell_47_layer_call_and_return_conditional_losses_291660В345Вв
xвu
 К
inputs         d
MвJ
#К 
states/0         А
#К 
states/1         А
p
к "vвs
lвi
К
0/0         А
GЪD
 К
0/1/0         А
 К
0/1/1         А
Ъ д
-__inference_lstm_cell_47_layer_call_fn_291579Є345Вв
xвu
 К
inputs         d
MвJ
#К 
states/0         А
#К 
states/1         А
p 
к "fвc
К
0         А
CЪ@
К
1/0         А
К
1/1         Ад
-__inference_lstm_cell_47_layer_call_fn_291596Є345Вв
xвu
 К
inputs         d
MвJ
#К 
states/0         А
#К 
states/1         А
p
к "fвc
К
0         А
CЪ@
К
1/0         А
К
1/1         А├
I__inference_sequential_22_layer_call_and_return_conditional_losses_290462v345'(01Cв@
9в6
,К)
embedding_11_input         d
p 

 
к "%в"
К
0         
Ъ ├
I__inference_sequential_22_layer_call_and_return_conditional_losses_290486v345'(01Cв@
9в6
,К)
embedding_11_input         d
p

 
к "%в"
К
0         
Ъ ╖
I__inference_sequential_22_layer_call_and_return_conditional_losses_290716j345'(017в4
-в*
 К
inputs         d
p 

 
к "%в"
К
0         
Ъ ╖
I__inference_sequential_22_layer_call_and_return_conditional_losses_290881j345'(017в4
-в*
 К
inputs         d
p

 
к "%в"
К
0         
Ъ Ы
.__inference_sequential_22_layer_call_fn_290156i345'(01Cв@
9в6
,К)
embedding_11_input         d
p 

 
к "К         Ы
.__inference_sequential_22_layer_call_fn_290438i345'(01Cв@
9в6
,К)
embedding_11_input         d
p

 
к "К         П
.__inference_sequential_22_layer_call_fn_290530]345'(017в4
-в*
 К
inputs         d
p 

 
к "К         П
.__inference_sequential_22_layer_call_fn_290551]345'(017в4
-в*
 К
inputs         d
p

 
к "К         ╗
$__inference_signature_wrapper_290509Т345'(01QвN
в 
GкD
B
embedding_11_input,К)
embedding_11_input         d"3к0
.
dense_47"К
dense_47         