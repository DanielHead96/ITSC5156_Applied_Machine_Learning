Ý³%
Ý³
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
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
"serve*2.8.22v2.8.2-0-g2ea19cbb5758»Ì#
v
layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*
shared_namelayer1/kernel
o
!layer1/kernel/Read/ReadVariableOpReadVariableOplayer1/kernel*
_output_shapes

:<<*
dtype0
n
layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_namelayer1/bias
g
layer1/bias/Read/ReadVariableOpReadVariableOplayer1/bias*
_output_shapes
:<*
dtype0
v
layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<2*
shared_namelayer2/kernel
o
!layer2/kernel/Read/ReadVariableOpReadVariableOplayer2/kernel*
_output_shapes

:<2*
dtype0
n
layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namelayer2/bias
g
layer2/bias/Read/ReadVariableOpReadVariableOplayer2/bias*
_output_shapes
:2*
dtype0
v
layer4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namelayer4/kernel
o
!layer4/kernel/Read/ReadVariableOpReadVariableOplayer4/kernel*
_output_shapes

:
*
dtype0
n
layer4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer4/bias
g
layer4/bias/Read/ReadVariableOpReadVariableOplayer4/bias*
_output_shapes
:*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
_output_shapes
: *
dtype0

input/lstm_cell_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:áð**
shared_nameinput/lstm_cell_14/kernel

-input/lstm_cell_14/kernel/Read/ReadVariableOpReadVariableOpinput/lstm_cell_14/kernel*!
_output_shapes
:áð*
dtype0
£
#input/lstm_cell_14/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<ð*4
shared_name%#input/lstm_cell_14/recurrent_kernel

7input/lstm_cell_14/recurrent_kernel/Read/ReadVariableOpReadVariableOp#input/lstm_cell_14/recurrent_kernel*
_output_shapes
:	<ð*
dtype0

input/lstm_cell_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*(
shared_nameinput/lstm_cell_14/bias

+input/lstm_cell_14/bias/Read/ReadVariableOpReadVariableOpinput/lstm_cell_14/bias*
_output_shapes	
:ð*
dtype0

layer3/lstm_cell_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*+
shared_namelayer3/lstm_cell_15/kernel

.layer3/lstm_cell_15/kernel/Read/ReadVariableOpReadVariableOplayer3/lstm_cell_15/kernel*
_output_shapes

:2(*
dtype0
¤
$layer3/lstm_cell_15/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*5
shared_name&$layer3/lstm_cell_15/recurrent_kernel

8layer3/lstm_cell_15/recurrent_kernel/Read/ReadVariableOpReadVariableOp$layer3/lstm_cell_15/recurrent_kernel*
_output_shapes

:
(*
dtype0

layer3/lstm_cell_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*)
shared_namelayer3/lstm_cell_15/bias

,layer3/lstm_cell_15/bias/Read/ReadVariableOpReadVariableOplayer3/lstm_cell_15/bias*
_output_shapes
:(*
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

Nadam/layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*&
shared_nameNadam/layer1/kernel/m

)Nadam/layer1/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layer1/kernel/m*
_output_shapes

:<<*
dtype0
~
Nadam/layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*$
shared_nameNadam/layer1/bias/m
w
'Nadam/layer1/bias/m/Read/ReadVariableOpReadVariableOpNadam/layer1/bias/m*
_output_shapes
:<*
dtype0

Nadam/layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<2*&
shared_nameNadam/layer2/kernel/m

)Nadam/layer2/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layer2/kernel/m*
_output_shapes

:<2*
dtype0
~
Nadam/layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameNadam/layer2/bias/m
w
'Nadam/layer2/bias/m/Read/ReadVariableOpReadVariableOpNadam/layer2/bias/m*
_output_shapes
:2*
dtype0

Nadam/layer4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameNadam/layer4/kernel/m

)Nadam/layer4/kernel/m/Read/ReadVariableOpReadVariableOpNadam/layer4/kernel/m*
_output_shapes

:
*
dtype0
~
Nadam/layer4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameNadam/layer4/bias/m
w
'Nadam/layer4/bias/m/Read/ReadVariableOpReadVariableOpNadam/layer4/bias/m*
_output_shapes
:*
dtype0

Nadam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameNadam/output/kernel/m

)Nadam/output/kernel/m/Read/ReadVariableOpReadVariableOpNadam/output/kernel/m*
_output_shapes

:*
dtype0
~
Nadam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameNadam/output/bias/m
w
'Nadam/output/bias/m/Read/ReadVariableOpReadVariableOpNadam/output/bias/m*
_output_shapes
:*
dtype0
¡
!Nadam/input/lstm_cell_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:áð*2
shared_name#!Nadam/input/lstm_cell_14/kernel/m

5Nadam/input/lstm_cell_14/kernel/m/Read/ReadVariableOpReadVariableOp!Nadam/input/lstm_cell_14/kernel/m*!
_output_shapes
:áð*
dtype0
³
+Nadam/input/lstm_cell_14/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<ð*<
shared_name-+Nadam/input/lstm_cell_14/recurrent_kernel/m
¬
?Nadam/input/lstm_cell_14/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp+Nadam/input/lstm_cell_14/recurrent_kernel/m*
_output_shapes
:	<ð*
dtype0

Nadam/input/lstm_cell_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*0
shared_name!Nadam/input/lstm_cell_14/bias/m

3Nadam/input/lstm_cell_14/bias/m/Read/ReadVariableOpReadVariableOpNadam/input/lstm_cell_14/bias/m*
_output_shapes	
:ð*
dtype0
 
"Nadam/layer3/lstm_cell_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Nadam/layer3/lstm_cell_15/kernel/m

6Nadam/layer3/lstm_cell_15/kernel/m/Read/ReadVariableOpReadVariableOp"Nadam/layer3/lstm_cell_15/kernel/m*
_output_shapes

:2(*
dtype0
´
,Nadam/layer3/lstm_cell_15/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Nadam/layer3/lstm_cell_15/recurrent_kernel/m
­
@Nadam/layer3/lstm_cell_15/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Nadam/layer3/lstm_cell_15/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

 Nadam/layer3/lstm_cell_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Nadam/layer3/lstm_cell_15/bias/m

4Nadam/layer3/lstm_cell_15/bias/m/Read/ReadVariableOpReadVariableOp Nadam/layer3/lstm_cell_15/bias/m*
_output_shapes
:(*
dtype0

Nadam/layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*&
shared_nameNadam/layer1/kernel/v

)Nadam/layer1/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layer1/kernel/v*
_output_shapes

:<<*
dtype0
~
Nadam/layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*$
shared_nameNadam/layer1/bias/v
w
'Nadam/layer1/bias/v/Read/ReadVariableOpReadVariableOpNadam/layer1/bias/v*
_output_shapes
:<*
dtype0

Nadam/layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<2*&
shared_nameNadam/layer2/kernel/v

)Nadam/layer2/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layer2/kernel/v*
_output_shapes

:<2*
dtype0
~
Nadam/layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameNadam/layer2/bias/v
w
'Nadam/layer2/bias/v/Read/ReadVariableOpReadVariableOpNadam/layer2/bias/v*
_output_shapes
:2*
dtype0

Nadam/layer4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*&
shared_nameNadam/layer4/kernel/v

)Nadam/layer4/kernel/v/Read/ReadVariableOpReadVariableOpNadam/layer4/kernel/v*
_output_shapes

:
*
dtype0
~
Nadam/layer4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameNadam/layer4/bias/v
w
'Nadam/layer4/bias/v/Read/ReadVariableOpReadVariableOpNadam/layer4/bias/v*
_output_shapes
:*
dtype0

Nadam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameNadam/output/kernel/v

)Nadam/output/kernel/v/Read/ReadVariableOpReadVariableOpNadam/output/kernel/v*
_output_shapes

:*
dtype0
~
Nadam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameNadam/output/bias/v
w
'Nadam/output/bias/v/Read/ReadVariableOpReadVariableOpNadam/output/bias/v*
_output_shapes
:*
dtype0
¡
!Nadam/input/lstm_cell_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:áð*2
shared_name#!Nadam/input/lstm_cell_14/kernel/v

5Nadam/input/lstm_cell_14/kernel/v/Read/ReadVariableOpReadVariableOp!Nadam/input/lstm_cell_14/kernel/v*!
_output_shapes
:áð*
dtype0
³
+Nadam/input/lstm_cell_14/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<ð*<
shared_name-+Nadam/input/lstm_cell_14/recurrent_kernel/v
¬
?Nadam/input/lstm_cell_14/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp+Nadam/input/lstm_cell_14/recurrent_kernel/v*
_output_shapes
:	<ð*
dtype0

Nadam/input/lstm_cell_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*0
shared_name!Nadam/input/lstm_cell_14/bias/v

3Nadam/input/lstm_cell_14/bias/v/Read/ReadVariableOpReadVariableOpNadam/input/lstm_cell_14/bias/v*
_output_shapes	
:ð*
dtype0
 
"Nadam/layer3/lstm_cell_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*3
shared_name$"Nadam/layer3/lstm_cell_15/kernel/v

6Nadam/layer3/lstm_cell_15/kernel/v/Read/ReadVariableOpReadVariableOp"Nadam/layer3/lstm_cell_15/kernel/v*
_output_shapes

:2(*
dtype0
´
,Nadam/layer3/lstm_cell_15/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*=
shared_name.,Nadam/layer3/lstm_cell_15/recurrent_kernel/v
­
@Nadam/layer3/lstm_cell_15/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Nadam/layer3/lstm_cell_15/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

 Nadam/layer3/lstm_cell_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*1
shared_name" Nadam/layer3/lstm_cell_15/bias/v

4Nadam/layer3/lstm_cell_15/bias/v/Read/ReadVariableOpReadVariableOp Nadam/layer3/lstm_cell_15/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
±^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ì]
valueâ]Bß] BØ]
¶
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Á
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses*
¦

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
Á
)cell
*
state_spec
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/_random_generator
0__call__
*1&call_and_return_all_conditional_losses*
¦

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses*
¦

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses*
ð
Biter

Cbeta_1

Dbeta_2
	Edecay
Flearning_rate
Gmomentum_cachemm!m"m2m3m:m;m Hm¡Im¢Jm£Km¤Lm¥Mm¦v§v¨!v©"vª2v«3v¬:v­;v®Hv¯Iv°Jv±Kv²Lv³Mv´*
j
H0
I1
J2
3
4
!5
"6
K7
L8
M9
210
311
:12
;13*
j
H0
I1
J2
3
4
!5
"6
K7
L8
M9
210
311
:12
;13*
* 
°
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Sserving_default* 
ã
T
state_size

Hkernel
Irecurrent_kernel
Jbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y_random_generator
Z__call__
*[&call_and_return_all_conditional_losses*
* 

H0
I1
J2*

H0
I1
J2*
* 


\states
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
]W
VARIABLE_VALUElayer1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
* 
* 
]W
VARIABLE_VALUElayer2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
* 

gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
ã
l
state_size

Kkernel
Lrecurrent_kernel
Mbias
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q_random_generator
r__call__
*s&call_and_return_all_conditional_losses*
* 

K0
L1
M2*

K0
L1
M2*
* 


tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
+	variables
,trainable_variables
-regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*
* 
* 
* 
]W
VARIABLE_VALUElayer4/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer4/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
* 

znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
* 
* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
MG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEinput/lstm_cell_14/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#input/lstm_cell_14/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEinput/lstm_cell_14/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer3/lstm_cell_15/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$layer3/lstm_cell_15/recurrent_kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElayer3/lstm_cell_15/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

0
1*
* 
* 
* 
* 

H0
I1
J2*

H0
I1
J2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
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

K0
L1
M2*

K0
L1
M2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
m	variables
ntrainable_variables
oregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

)0*
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
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
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
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*
{
VARIABLE_VALUENadam/layer1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/layer1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/layer2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/layer2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/layer4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/layer4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/output/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/output/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Nadam/input/lstm_cell_14/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Nadam/input/lstm_cell_14/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUENadam/input/lstm_cell_14/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Nadam/layer3/lstm_cell_15/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Nadam/layer3/lstm_cell_15/recurrent_kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Nadam/layer3/lstm_cell_15/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/layer1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/layer1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/layer2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/layer2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/layer4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/layer4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUENadam/output/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUENadam/output/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Nadam/input/lstm_cell_14/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Nadam/input/lstm_cell_14/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUENadam/input/lstm_cell_14/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Nadam/layer3/lstm_cell_15/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Nadam/layer3/lstm_cell_15/recurrent_kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Nadam/layer3/lstm_cell_15/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_inputPlaceholder*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
dtype0*"
shape:ÿÿÿÿÿÿÿÿÿá
÷
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_inputinput/lstm_cell_14/kernel#input/lstm_cell_14/recurrent_kernelinput/lstm_cell_14/biaslayer1/kernellayer1/biaslayer2/kernellayer2/biaslayer3/lstm_cell_15/kernel$layer3/lstm_cell_15/recurrent_kernellayer3/lstm_cell_15/biaslayer4/kernellayer4/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_873995
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
®
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp!layer2/kernel/Read/ReadVariableOplayer2/bias/Read/ReadVariableOp!layer4/kernel/Read/ReadVariableOplayer4/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOp-input/lstm_cell_14/kernel/Read/ReadVariableOp7input/lstm_cell_14/recurrent_kernel/Read/ReadVariableOp+input/lstm_cell_14/bias/Read/ReadVariableOp.layer3/lstm_cell_15/kernel/Read/ReadVariableOp8layer3/lstm_cell_15/recurrent_kernel/Read/ReadVariableOp,layer3/lstm_cell_15/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Nadam/layer1/kernel/m/Read/ReadVariableOp'Nadam/layer1/bias/m/Read/ReadVariableOp)Nadam/layer2/kernel/m/Read/ReadVariableOp'Nadam/layer2/bias/m/Read/ReadVariableOp)Nadam/layer4/kernel/m/Read/ReadVariableOp'Nadam/layer4/bias/m/Read/ReadVariableOp)Nadam/output/kernel/m/Read/ReadVariableOp'Nadam/output/bias/m/Read/ReadVariableOp5Nadam/input/lstm_cell_14/kernel/m/Read/ReadVariableOp?Nadam/input/lstm_cell_14/recurrent_kernel/m/Read/ReadVariableOp3Nadam/input/lstm_cell_14/bias/m/Read/ReadVariableOp6Nadam/layer3/lstm_cell_15/kernel/m/Read/ReadVariableOp@Nadam/layer3/lstm_cell_15/recurrent_kernel/m/Read/ReadVariableOp4Nadam/layer3/lstm_cell_15/bias/m/Read/ReadVariableOp)Nadam/layer1/kernel/v/Read/ReadVariableOp'Nadam/layer1/bias/v/Read/ReadVariableOp)Nadam/layer2/kernel/v/Read/ReadVariableOp'Nadam/layer2/bias/v/Read/ReadVariableOp)Nadam/layer4/kernel/v/Read/ReadVariableOp'Nadam/layer4/bias/v/Read/ReadVariableOp)Nadam/output/kernel/v/Read/ReadVariableOp'Nadam/output/bias/v/Read/ReadVariableOp5Nadam/input/lstm_cell_14/kernel/v/Read/ReadVariableOp?Nadam/input/lstm_cell_14/recurrent_kernel/v/Read/ReadVariableOp3Nadam/input/lstm_cell_14/bias/v/Read/ReadVariableOp6Nadam/layer3/lstm_cell_15/kernel/v/Read/ReadVariableOp@Nadam/layer3/lstm_cell_15/recurrent_kernel/v/Read/ReadVariableOp4Nadam/layer3/lstm_cell_15/bias/v/Read/ReadVariableOpConst*A
Tin:
826	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_875722

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer1/kernellayer1/biaslayer2/kernellayer2/biaslayer4/kernellayer4/biasoutput/kerneloutput/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cacheinput/lstm_cell_14/kernel#input/lstm_cell_14/recurrent_kernelinput/lstm_cell_14/biaslayer3/lstm_cell_15/kernel$layer3/lstm_cell_15/recurrent_kernellayer3/lstm_cell_15/biastotalcounttotal_1count_1Nadam/layer1/kernel/mNadam/layer1/bias/mNadam/layer2/kernel/mNadam/layer2/bias/mNadam/layer4/kernel/mNadam/layer4/bias/mNadam/output/kernel/mNadam/output/bias/m!Nadam/input/lstm_cell_14/kernel/m+Nadam/input/lstm_cell_14/recurrent_kernel/mNadam/input/lstm_cell_14/bias/m"Nadam/layer3/lstm_cell_15/kernel/m,Nadam/layer3/lstm_cell_15/recurrent_kernel/m Nadam/layer3/lstm_cell_15/bias/mNadam/layer1/kernel/vNadam/layer1/bias/vNadam/layer2/kernel/vNadam/layer2/bias/vNadam/layer4/kernel/vNadam/layer4/bias/vNadam/output/kernel/vNadam/output/bias/v!Nadam/input/lstm_cell_14/kernel/v+Nadam/input/lstm_cell_14/recurrent_kernel/vNadam/input/lstm_cell_14/bias/v"Nadam/layer3/lstm_cell_15/kernel/v,Nadam/layer3/lstm_cell_15/recurrent_kernel/v Nadam/layer3/lstm_cell_15/bias/v*@
Tin9
725*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_875888ÏÛ!
¾

'__inference_output_layer_call_fn_875336

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_872567o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ

H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_875543

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
\
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
¿ 
é
H__inference_sequential_7_layer_call_and_return_conditional_losses_873150
input_input!
input_873115:áð
input_873117:	<ð
input_873119:	ð
layer1_873122:<<
layer1_873124:<
layer2_873127:<2
layer2_873129:2
layer3_873132:2(
layer3_873134:
(
layer3_873136:(
layer4_873139:

layer4_873141:
output_873144:
output_873146:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallý
input/StatefulPartitionedCallStatefulPartitionedCallinput_inputinput_873115input_873117input_873119*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_872307
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_873122layer1_873124*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_872346
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_873127layer2_873129*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_872383
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_873132layer3_873134layer3_873136*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_872531
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_873139layer4_873141*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_872550
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_873144output_873146*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_872567v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^input/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2>
input/StatefulPartitionedCallinput/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:Z V
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
%
_user_specified_nameinput_input
è
ó
-__inference_lstm_cell_15_layer_call_fn_875462

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_871875o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
J

B__inference_layer3_layer_call_and_return_conditional_losses_875164

inputs=
+lstm_cell_15_matmul_readvariableop_resource:2(?
-lstm_cell_15_matmul_1_readvariableop_resource:
(:
,lstm_cell_15_biasadd_readvariableop_resource:(
identity¢#lstm_cell_15/BiasAdd/ReadVariableOp¢"lstm_cell_15/MatMul/ReadVariableOp¢$lstm_cell_15/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_3Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_15/Sigmoid_4Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_3:y:0lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_875080*
condR
while_cond_875079*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Õ

H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_875511

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
\
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
µ
Ã
while_cond_875079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_875079___redundant_placeholder04
0while_while_cond_875079___redundant_placeholder14
0while_while_cond_875079___redundant_placeholder24
0while_while_cond_875079___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
ì
ï
-__inference_sequential_7_layer_call_fn_872605
input_input
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
	unknown_2:<<
	unknown_3:<
	unknown_4:<2
	unknown_5:2
	unknown_6:2(
	unknown_7:
(
	unknown_8:(
	unknown_9:


unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_872574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
%
_user_specified_nameinput_input
ù	
Ï
layer3_while_cond_873511*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3,
(layer3_while_less_layer3_strided_slice_1B
>layer3_while_layer3_while_cond_873511___redundant_placeholder0B
>layer3_while_layer3_while_cond_873511___redundant_placeholder1B
>layer3_while_layer3_while_cond_873511___redundant_placeholder2B
>layer3_while_layer3_while_cond_873511___redundant_placeholder3
layer3_while_identity
~
layer3/while/LessLesslayer3_while_placeholder(layer3_while_less_layer3_strided_slice_1*
T0*
_output_shapes
: Y
layer3/while/IdentityIdentitylayer3/while/Less:z:0*
T0
*
_output_shapes
: "7
layer3_while_identitylayer3/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
§8
Ô
while_body_874384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_14_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_14_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_14_matmul_readvariableop_resource:áðF
3while_lstm_cell_14_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_14_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_14/BiasAdd/ReadVariableOp¢(while/lstm_cell_14/MatMul/ReadVariableOp¢*while/lstm_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 


ó
B__inference_output_layer_call_and_return_conditional_losses_875347

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
Û
!__inference__wrapped_model_871458
input_inputS
>sequential_7_input_lstm_cell_14_matmul_readvariableop_resource:áðS
@sequential_7_input_lstm_cell_14_matmul_1_readvariableop_resource:	<ðN
?sequential_7_input_lstm_cell_14_biasadd_readvariableop_resource:	ðG
5sequential_7_layer1_tensordot_readvariableop_resource:<<A
3sequential_7_layer1_biasadd_readvariableop_resource:<G
5sequential_7_layer2_tensordot_readvariableop_resource:<2A
3sequential_7_layer2_biasadd_readvariableop_resource:2Q
?sequential_7_layer3_lstm_cell_15_matmul_readvariableop_resource:2(S
Asequential_7_layer3_lstm_cell_15_matmul_1_readvariableop_resource:
(N
@sequential_7_layer3_lstm_cell_15_biasadd_readvariableop_resource:(D
2sequential_7_layer4_matmul_readvariableop_resource:
A
3sequential_7_layer4_biasadd_readvariableop_resource:D
2sequential_7_output_matmul_readvariableop_resource:A
3sequential_7_output_biasadd_readvariableop_resource:
identity¢6sequential_7/input/lstm_cell_14/BiasAdd/ReadVariableOp¢5sequential_7/input/lstm_cell_14/MatMul/ReadVariableOp¢7sequential_7/input/lstm_cell_14/MatMul_1/ReadVariableOp¢sequential_7/input/while¢*sequential_7/layer1/BiasAdd/ReadVariableOp¢,sequential_7/layer1/Tensordot/ReadVariableOp¢*sequential_7/layer2/BiasAdd/ReadVariableOp¢,sequential_7/layer2/Tensordot/ReadVariableOp¢7sequential_7/layer3/lstm_cell_15/BiasAdd/ReadVariableOp¢6sequential_7/layer3/lstm_cell_15/MatMul/ReadVariableOp¢8sequential_7/layer3/lstm_cell_15/MatMul_1/ReadVariableOp¢sequential_7/layer3/while¢*sequential_7/layer4/BiasAdd/ReadVariableOp¢)sequential_7/layer4/MatMul/ReadVariableOp¢*sequential_7/output/BiasAdd/ReadVariableOp¢)sequential_7/output/MatMul/ReadVariableOpS
sequential_7/input/ShapeShapeinput_input*
T0*
_output_shapes
:p
&sequential_7/input/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential_7/input/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential_7/input/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 sequential_7/input/strided_sliceStridedSlice!sequential_7/input/Shape:output:0/sequential_7/input/strided_slice/stack:output:01sequential_7/input/strided_slice/stack_1:output:01sequential_7/input/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!sequential_7/input/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<¬
sequential_7/input/zeros/packedPack)sequential_7/input/strided_slice:output:0*sequential_7/input/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
sequential_7/input/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¥
sequential_7/input/zerosFill(sequential_7/input/zeros/packed:output:0'sequential_7/input/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
#sequential_7/input/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<°
!sequential_7/input/zeros_1/packedPack)sequential_7/input/strided_slice:output:0,sequential_7/input/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_7/input/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_7/input/zeros_1Fill*sequential_7/input/zeros_1/packed:output:0)sequential_7/input/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<v
!sequential_7/input/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_7/input/transpose	Transposeinput_input*sequential_7/input/transpose/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿáj
sequential_7/input/Shape_1Shape sequential_7/input/transpose:y:0*
T0*
_output_shapes
:r
(sequential_7/input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_7/input/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_7/input/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"sequential_7/input/strided_slice_1StridedSlice#sequential_7/input/Shape_1:output:01sequential_7/input/strided_slice_1/stack:output:03sequential_7/input/strided_slice_1/stack_1:output:03sequential_7/input/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
.sequential_7/input/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿí
 sequential_7/input/TensorArrayV2TensorListReserve7sequential_7/input/TensorArrayV2/element_shape:output:0+sequential_7/input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Hsequential_7/input/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá 
:sequential_7/input/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_7/input/transpose:y:0Qsequential_7/input/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒr
(sequential_7/input/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_7/input/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_7/input/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ê
"sequential_7/input/strided_slice_2StridedSlice sequential_7/input/transpose:y:01sequential_7/input/strided_slice_2/stack:output:03sequential_7/input/strided_slice_2/stack_1:output:03sequential_7/input/strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask·
5sequential_7/input/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp>sequential_7_input_lstm_cell_14_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0Ï
&sequential_7/input/lstm_cell_14/MatMulMatMul+sequential_7/input/strided_slice_2:output:0=sequential_7/input/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¹
7sequential_7/input/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp@sequential_7_input_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0É
(sequential_7/input/lstm_cell_14/MatMul_1MatMul!sequential_7/input/zeros:output:0?sequential_7/input/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÅ
#sequential_7/input/lstm_cell_14/addAddV20sequential_7/input/lstm_cell_14/MatMul:product:02sequential_7/input/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð³
6sequential_7/input/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp?sequential_7_input_lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0Î
'sequential_7/input/lstm_cell_14/BiasAddBiasAdd'sequential_7/input/lstm_cell_14/add:z:0>sequential_7/input/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðq
/sequential_7/input/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_7/input/lstm_cell_14/splitSplit8sequential_7/input/lstm_cell_14/split/split_dim:output:00sequential_7/input/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
'sequential_7/input/lstm_cell_14/SigmoidSigmoid.sequential_7/input/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
)sequential_7/input/lstm_cell_14/Sigmoid_1Sigmoid.sequential_7/input/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<°
#sequential_7/input/lstm_cell_14/mulMul-sequential_7/input/lstm_cell_14/Sigmoid_1:y:0#sequential_7/input/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
$sequential_7/input/lstm_cell_14/ReluRelu.sequential_7/input/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¿
%sequential_7/input/lstm_cell_14/mul_1Mul+sequential_7/input/lstm_cell_14/Sigmoid:y:02sequential_7/input/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<´
%sequential_7/input/lstm_cell_14/add_1AddV2'sequential_7/input/lstm_cell_14/mul:z:0)sequential_7/input/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
)sequential_7/input/lstm_cell_14/Sigmoid_2Sigmoid.sequential_7/input/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
&sequential_7/input/lstm_cell_14/Relu_1Relu)sequential_7/input/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ã
%sequential_7/input/lstm_cell_14/mul_2Mul-sequential_7/input/lstm_cell_14/Sigmoid_2:y:04sequential_7/input/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
0sequential_7/input/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ñ
"sequential_7/input/TensorArrayV2_1TensorListReserve9sequential_7/input/TensorArrayV2_1/element_shape:output:0+sequential_7/input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒY
sequential_7/input/timeConst*
_output_shapes
: *
dtype0*
value	B : v
+sequential_7/input/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿg
%sequential_7/input/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_7/input/whileWhile.sequential_7/input/while/loop_counter:output:04sequential_7/input/while/maximum_iterations:output:0 sequential_7/input/time:output:0+sequential_7/input/TensorArrayV2_1:handle:0!sequential_7/input/zeros:output:0#sequential_7/input/zeros_1:output:0+sequential_7/input/strided_slice_1:output:0Jsequential_7/input/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_7_input_lstm_cell_14_matmul_readvariableop_resource@sequential_7_input_lstm_cell_14_matmul_1_readvariableop_resource?sequential_7_input_lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *0
body(R&
$sequential_7_input_while_body_871167*0
cond(R&
$sequential_7_input_while_cond_871166*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
Csequential_7/input/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   û
5sequential_7/input/TensorArrayV2Stack/TensorListStackTensorListStack!sequential_7/input/while:output:3Lsequential_7/input/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
element_dtype0{
(sequential_7/input/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿt
*sequential_7/input/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: t
*sequential_7/input/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:æ
"sequential_7/input/strided_slice_3StridedSlice>sequential_7/input/TensorArrayV2Stack/TensorListStack:tensor:01sequential_7/input/strided_slice_3/stack:output:03sequential_7/input/strided_slice_3/stack_1:output:03sequential_7/input/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maskx
#sequential_7/input/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ï
sequential_7/input/transpose_1	Transpose>sequential_7/input/TensorArrayV2Stack/TensorListStack:tensor:0,sequential_7/input/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
sequential_7/input/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¢
,sequential_7/layer1/Tensordot/ReadVariableOpReadVariableOp5sequential_7_layer1_tensordot_readvariableop_resource*
_output_shapes

:<<*
dtype0l
"sequential_7/layer1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:s
"sequential_7/layer1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       u
#sequential_7/layer1/Tensordot/ShapeShape"sequential_7/input/transpose_1:y:0*
T0*
_output_shapes
:m
+sequential_7/layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&sequential_7/layer1/Tensordot/GatherV2GatherV2,sequential_7/layer1/Tensordot/Shape:output:0+sequential_7/layer1/Tensordot/free:output:04sequential_7/layer1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
-sequential_7/layer1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_7/layer1/Tensordot/GatherV2_1GatherV2,sequential_7/layer1/Tensordot/Shape:output:0+sequential_7/layer1/Tensordot/axes:output:06sequential_7/layer1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
#sequential_7/layer1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ª
"sequential_7/layer1/Tensordot/ProdProd/sequential_7/layer1/Tensordot/GatherV2:output:0,sequential_7/layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: o
%sequential_7/layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: °
$sequential_7/layer1/Tensordot/Prod_1Prod1sequential_7/layer1/Tensordot/GatherV2_1:output:0.sequential_7/layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: k
)sequential_7/layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
$sequential_7/layer1/Tensordot/concatConcatV2+sequential_7/layer1/Tensordot/free:output:0+sequential_7/layer1/Tensordot/axes:output:02sequential_7/layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:µ
#sequential_7/layer1/Tensordot/stackPack+sequential_7/layer1/Tensordot/Prod:output:0-sequential_7/layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:½
'sequential_7/layer1/Tensordot/transpose	Transpose"sequential_7/input/transpose_1:y:0-sequential_7/layer1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Æ
%sequential_7/layer1/Tensordot/ReshapeReshape+sequential_7/layer1/Tensordot/transpose:y:0,sequential_7/layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÆ
$sequential_7/layer1/Tensordot/MatMulMatMul.sequential_7/layer1/Tensordot/Reshape:output:04sequential_7/layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
%sequential_7/layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:<m
+sequential_7/layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
&sequential_7/layer1/Tensordot/concat_1ConcatV2/sequential_7/layer1/Tensordot/GatherV2:output:0.sequential_7/layer1/Tensordot/Const_2:output:04sequential_7/layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¿
sequential_7/layer1/TensordotReshape.sequential_7/layer1/Tensordot/MatMul:product:0/sequential_7/layer1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
*sequential_7/layer1/BiasAdd/ReadVariableOpReadVariableOp3sequential_7_layer1_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0¸
sequential_7/layer1/BiasAddBiasAdd&sequential_7/layer1/Tensordot:output:02sequential_7/layer1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
sequential_7/layer1/ReluRelu$sequential_7/layer1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¢
,sequential_7/layer2/Tensordot/ReadVariableOpReadVariableOp5sequential_7_layer2_tensordot_readvariableop_resource*
_output_shapes

:<2*
dtype0l
"sequential_7/layer2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:s
"sequential_7/layer2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
#sequential_7/layer2/Tensordot/ShapeShape&sequential_7/layer1/Relu:activations:0*
T0*
_output_shapes
:m
+sequential_7/layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&sequential_7/layer2/Tensordot/GatherV2GatherV2,sequential_7/layer2/Tensordot/Shape:output:0+sequential_7/layer2/Tensordot/free:output:04sequential_7/layer2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
-sequential_7/layer2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_7/layer2/Tensordot/GatherV2_1GatherV2,sequential_7/layer2/Tensordot/Shape:output:0+sequential_7/layer2/Tensordot/axes:output:06sequential_7/layer2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
#sequential_7/layer2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ª
"sequential_7/layer2/Tensordot/ProdProd/sequential_7/layer2/Tensordot/GatherV2:output:0,sequential_7/layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: o
%sequential_7/layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: °
$sequential_7/layer2/Tensordot/Prod_1Prod1sequential_7/layer2/Tensordot/GatherV2_1:output:0.sequential_7/layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: k
)sequential_7/layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
$sequential_7/layer2/Tensordot/concatConcatV2+sequential_7/layer2/Tensordot/free:output:0+sequential_7/layer2/Tensordot/axes:output:02sequential_7/layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:µ
#sequential_7/layer2/Tensordot/stackPack+sequential_7/layer2/Tensordot/Prod:output:0-sequential_7/layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Á
'sequential_7/layer2/Tensordot/transpose	Transpose&sequential_7/layer1/Relu:activations:0-sequential_7/layer2/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Æ
%sequential_7/layer2/Tensordot/ReshapeReshape+sequential_7/layer2/Tensordot/transpose:y:0,sequential_7/layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÆ
$sequential_7/layer2/Tensordot/MatMulMatMul.sequential_7/layer2/Tensordot/Reshape:output:04sequential_7/layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2o
%sequential_7/layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2m
+sequential_7/layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
&sequential_7/layer2/Tensordot/concat_1ConcatV2/sequential_7/layer2/Tensordot/GatherV2:output:0.sequential_7/layer2/Tensordot/Const_2:output:04sequential_7/layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¿
sequential_7/layer2/TensordotReshape.sequential_7/layer2/Tensordot/MatMul:product:0/sequential_7/layer2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*sequential_7/layer2/BiasAdd/ReadVariableOpReadVariableOp3sequential_7_layer2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¸
sequential_7/layer2/BiasAddBiasAdd&sequential_7/layer2/Tensordot:output:02sequential_7/layer2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_7/layer2/SigmoidSigmoid$sequential_7/layer2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
sequential_7/layer3/ShapeShapesequential_7/layer2/Sigmoid:y:0*
T0*
_output_shapes
:q
'sequential_7/layer3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_7/layer3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_7/layer3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_7/layer3/strided_sliceStridedSlice"sequential_7/layer3/Shape:output:00sequential_7/layer3/strided_slice/stack:output:02sequential_7/layer3/strided_slice/stack_1:output:02sequential_7/layer3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_7/layer3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¯
 sequential_7/layer3/zeros/packedPack*sequential_7/layer3/strided_slice:output:0+sequential_7/layer3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_7/layer3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¨
sequential_7/layer3/zerosFill)sequential_7/layer3/zeros/packed:output:0(sequential_7/layer3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
f
$sequential_7/layer3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
³
"sequential_7/layer3/zeros_1/packedPack*sequential_7/layer3/strided_slice:output:0-sequential_7/layer3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_7/layer3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_7/layer3/zeros_1Fill+sequential_7/layer3/zeros_1/packed:output:0*sequential_7/layer3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
"sequential_7/layer3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
sequential_7/layer3/transpose	Transposesequential_7/layer2/Sigmoid:y:0+sequential_7/layer3/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2l
sequential_7/layer3/Shape_1Shape!sequential_7/layer3/transpose:y:0*
T0*
_output_shapes
:s
)sequential_7/layer3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_7/layer3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_7/layer3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_7/layer3/strided_slice_1StridedSlice$sequential_7/layer3/Shape_1:output:02sequential_7/layer3/strided_slice_1/stack:output:04sequential_7/layer3/strided_slice_1/stack_1:output:04sequential_7/layer3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_7/layer3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿð
!sequential_7/layer3/TensorArrayV2TensorListReserve8sequential_7/layer3/TensorArrayV2/element_shape:output:0,sequential_7/layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Isequential_7/layer3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
;sequential_7/layer3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_7/layer3/transpose:y:0Rsequential_7/layer3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒs
)sequential_7/layer3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_7/layer3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_7/layer3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
#sequential_7/layer3/strided_slice_2StridedSlice!sequential_7/layer3/transpose:y:02sequential_7/layer3/strided_slice_2/stack:output:04sequential_7/layer3/strided_slice_2/stack_1:output:04sequential_7/layer3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask¶
6sequential_7/layer3/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp?sequential_7_layer3_lstm_cell_15_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ñ
'sequential_7/layer3/lstm_cell_15/MatMulMatMul,sequential_7/layer3/strided_slice_2:output:0>sequential_7/layer3/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(º
8sequential_7/layer3/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOpAsequential_7_layer3_lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ë
)sequential_7/layer3/lstm_cell_15/MatMul_1MatMul"sequential_7/layer3/zeros:output:0@sequential_7/layer3/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ç
$sequential_7/layer3/lstm_cell_15/addAddV21sequential_7/layer3/lstm_cell_15/MatMul:product:03sequential_7/layer3/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(´
7sequential_7/layer3/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp@sequential_7_layer3_lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ð
(sequential_7/layer3/lstm_cell_15/BiasAddBiasAdd(sequential_7/layer3/lstm_cell_15/add:z:0?sequential_7/layer3/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
0sequential_7/layer3/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&sequential_7/layer3/lstm_cell_15/splitSplit9sequential_7/layer3/lstm_cell_15/split/split_dim:output:01sequential_7/layer3/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
(sequential_7/layer3/lstm_cell_15/SigmoidSigmoid/sequential_7/layer3/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*sequential_7/layer3/lstm_cell_15/Sigmoid_1Sigmoid/sequential_7/layer3/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
$sequential_7/layer3/lstm_cell_15/mulMul.sequential_7/layer3/lstm_cell_15/Sigmoid_1:y:0$sequential_7/layer3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*sequential_7/layer3/lstm_cell_15/Sigmoid_2Sigmoid/sequential_7/layer3/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
½
&sequential_7/layer3/lstm_cell_15/mul_1Mul,sequential_7/layer3/lstm_cell_15/Sigmoid:y:0.sequential_7/layer3/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
·
&sequential_7/layer3/lstm_cell_15/add_1AddV2(sequential_7/layer3/lstm_cell_15/mul:z:0*sequential_7/layer3/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*sequential_7/layer3/lstm_cell_15/Sigmoid_3Sigmoid/sequential_7/layer3/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*sequential_7/layer3/lstm_cell_15/Sigmoid_4Sigmoid*sequential_7/layer3/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¿
&sequential_7/layer3/lstm_cell_15/mul_2Mul.sequential_7/layer3/lstm_cell_15/Sigmoid_3:y:0.sequential_7/layer3/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

1sequential_7/layer3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ô
#sequential_7/layer3/TensorArrayV2_1TensorListReserve:sequential_7/layer3/TensorArrayV2_1/element_shape:output:0,sequential_7/layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒZ
sequential_7/layer3/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_7/layer3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿh
&sequential_7/layer3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_7/layer3/whileWhile/sequential_7/layer3/while/loop_counter:output:05sequential_7/layer3/while/maximum_iterations:output:0!sequential_7/layer3/time:output:0,sequential_7/layer3/TensorArrayV2_1:handle:0"sequential_7/layer3/zeros:output:0$sequential_7/layer3/zeros_1:output:0,sequential_7/layer3/strided_slice_1:output:0Ksequential_7/layer3/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_7_layer3_lstm_cell_15_matmul_readvariableop_resourceAsequential_7_layer3_lstm_cell_15_matmul_1_readvariableop_resource@sequential_7_layer3_lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_7_layer3_while_body_871360*1
cond)R'
%sequential_7_layer3_while_cond_871359*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
Dsequential_7/layer3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   þ
6sequential_7/layer3/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_7/layer3/while:output:3Msequential_7/layer3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0|
)sequential_7/layer3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿu
+sequential_7/layer3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_7/layer3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ë
#sequential_7/layer3/strided_slice_3StridedSlice?sequential_7/layer3/TensorArrayV2Stack/TensorListStack:tensor:02sequential_7/layer3/strided_slice_3/stack:output:04sequential_7/layer3/strided_slice_3/stack_1:output:04sequential_7/layer3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_masky
$sequential_7/layer3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ò
sequential_7/layer3/transpose_1	Transpose?sequential_7/layer3/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_7/layer3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
o
sequential_7/layer3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
)sequential_7/layer4/MatMul/ReadVariableOpReadVariableOp2sequential_7_layer4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0·
sequential_7/layer4/MatMulMatMul,sequential_7/layer3/strided_slice_3:output:01sequential_7/layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_7/layer4/BiasAdd/ReadVariableOpReadVariableOp3sequential_7_layer4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
sequential_7/layer4/BiasAddBiasAdd$sequential_7/layer4/MatMul:product:02sequential_7/layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
sequential_7/layer4/SigmoidSigmoid$sequential_7/layer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential_7/output/MatMul/ReadVariableOpReadVariableOp2sequential_7_output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ª
sequential_7/output/MatMulMatMulsequential_7/layer4/Sigmoid:y:01sequential_7/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_7/output/BiasAdd/ReadVariableOpReadVariableOp3sequential_7_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
sequential_7/output/BiasAddBiasAdd$sequential_7/output/MatMul:product:02sequential_7/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
sequential_7/output/SigmoidSigmoid$sequential_7/output/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
IdentityIdentitysequential_7/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp7^sequential_7/input/lstm_cell_14/BiasAdd/ReadVariableOp6^sequential_7/input/lstm_cell_14/MatMul/ReadVariableOp8^sequential_7/input/lstm_cell_14/MatMul_1/ReadVariableOp^sequential_7/input/while+^sequential_7/layer1/BiasAdd/ReadVariableOp-^sequential_7/layer1/Tensordot/ReadVariableOp+^sequential_7/layer2/BiasAdd/ReadVariableOp-^sequential_7/layer2/Tensordot/ReadVariableOp8^sequential_7/layer3/lstm_cell_15/BiasAdd/ReadVariableOp7^sequential_7/layer3/lstm_cell_15/MatMul/ReadVariableOp9^sequential_7/layer3/lstm_cell_15/MatMul_1/ReadVariableOp^sequential_7/layer3/while+^sequential_7/layer4/BiasAdd/ReadVariableOp*^sequential_7/layer4/MatMul/ReadVariableOp+^sequential_7/output/BiasAdd/ReadVariableOp*^sequential_7/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2p
6sequential_7/input/lstm_cell_14/BiasAdd/ReadVariableOp6sequential_7/input/lstm_cell_14/BiasAdd/ReadVariableOp2n
5sequential_7/input/lstm_cell_14/MatMul/ReadVariableOp5sequential_7/input/lstm_cell_14/MatMul/ReadVariableOp2r
7sequential_7/input/lstm_cell_14/MatMul_1/ReadVariableOp7sequential_7/input/lstm_cell_14/MatMul_1/ReadVariableOp24
sequential_7/input/whilesequential_7/input/while2X
*sequential_7/layer1/BiasAdd/ReadVariableOp*sequential_7/layer1/BiasAdd/ReadVariableOp2\
,sequential_7/layer1/Tensordot/ReadVariableOp,sequential_7/layer1/Tensordot/ReadVariableOp2X
*sequential_7/layer2/BiasAdd/ReadVariableOp*sequential_7/layer2/BiasAdd/ReadVariableOp2\
,sequential_7/layer2/Tensordot/ReadVariableOp,sequential_7/layer2/Tensordot/ReadVariableOp2r
7sequential_7/layer3/lstm_cell_15/BiasAdd/ReadVariableOp7sequential_7/layer3/lstm_cell_15/BiasAdd/ReadVariableOp2p
6sequential_7/layer3/lstm_cell_15/MatMul/ReadVariableOp6sequential_7/layer3/lstm_cell_15/MatMul/ReadVariableOp2t
8sequential_7/layer3/lstm_cell_15/MatMul_1/ReadVariableOp8sequential_7/layer3/lstm_cell_15/MatMul_1/ReadVariableOp26
sequential_7/layer3/whilesequential_7/layer3/while2X
*sequential_7/layer4/BiasAdd/ReadVariableOp*sequential_7/layer4/BiasAdd/ReadVariableOp2V
)sequential_7/layer4/MatMul/ReadVariableOp)sequential_7/layer4/MatMul/ReadVariableOp2X
*sequential_7/output/BiasAdd/ReadVariableOp*sequential_7/output/BiasAdd/ReadVariableOp2V
)sequential_7/output/MatMul/ReadVariableOp)sequential_7/output/MatMul/ReadVariableOp:Z V
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
%
_user_specified_nameinput_input
å

H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_875445

inputs
states_0
states_13
matmul_readvariableop_resource:áð3
 matmul_1_readvariableop_resource:	<ð.
biasadd_readvariableop_resource:	ð
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿá:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"
_user_specified_name
states/1
° 
ä
H__inference_sequential_7_layer_call_and_return_conditional_losses_872574

inputs!
input_872308:áð
input_872310:	<ð
input_872312:	ð
layer1_872347:<<
layer1_872349:<
layer2_872384:<2
layer2_872386:2
layer3_872532:2(
layer3_872534:
(
layer3_872536:(
layer4_872551:

layer4_872553:
output_872568:
output_872570:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallø
input/StatefulPartitionedCallStatefulPartitionedCallinputsinput_872308input_872310input_872312*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_872307
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_872347layer1_872349*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_872346
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_872384layer2_872386*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_872383
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_872532layer3_872534layer3_872536*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_872531
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_872551layer4_872553*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_872550
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_872568output_872570*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_872567v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^input/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2>
input/StatefulPartitionedCallinput/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
ÿ"
ç
while_body_871730
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_14_871754_0:áð.
while_lstm_cell_14_871756_0:	<ð*
while_lstm_cell_14_871758_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_14_871754:áð,
while_lstm_cell_14_871756:	<ð(
while_lstm_cell_14_871758:	ð¢*while/lstm_cell_14/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0³
*while/lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14_871754_0while_lstm_cell_14_871756_0while_lstm_cell_14_871758_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_871671Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_14/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/Identity_5Identity3while/lstm_cell_14/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y

while/NoOpNoOp+^while/lstm_cell_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_14_871754while_lstm_cell_14_871754_0"8
while_lstm_cell_14_871756while_lstm_cell_14_871756_0"8
while_lstm_cell_14_871758while_lstm_cell_14_871758_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2X
*while/lstm_cell_14/StatefulPartitionedCall*while/lstm_cell_14/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 
ó"
Ý
while_body_872080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_15_872104_0:2(-
while_lstm_cell_15_872106_0:
()
while_lstm_cell_15_872108_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_15_872104:2(+
while_lstm_cell_15_872106:
('
while_lstm_cell_15_872108:(¢*while/lstm_cell_15/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0³
*while/lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_15_872104_0while_lstm_cell_15_872106_0while_lstm_cell_15_872108_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_872021Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_15/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_15/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity3while/lstm_cell_15/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y

while/NoOpNoOp+^while/lstm_cell_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_15_872104while_lstm_cell_15_872104_0"8
while_lstm_cell_15_872106while_lstm_cell_15_872106_0"8
while_lstm_cell_15_872108while_lstm_cell_15_872108_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_15/StatefulPartitionedCall*while/lstm_cell_15/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Î

'__inference_layer2_layer_call_fn_874660

inputs
unknown:<2
	unknown_0:2
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_872383s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
µ
Ã
while_cond_871729
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_871729___redundant_placeholder04
0while_while_cond_871729___redundant_placeholder14
0while_while_cond_871729___redundant_placeholder24
0while_while_cond_871729___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
§8
Ô
while_body_872223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_14_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_14_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_14_matmul_readvariableop_resource:áðF
3while_lstm_cell_14_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_14_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_14/BiasAdd/ReadVariableOp¢(while/lstm_cell_14/MatMul/ReadVariableOp¢*while/lstm_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_875222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_875222___redundant_placeholder04
0while_while_cond_875222___redundant_placeholder14
0while_while_cond_875222___redundant_placeholder24
0while_while_cond_875222___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
8
Ê
while_body_874794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_15_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_15_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_15_matmul_readvariableop_resource:2(E
3while_lstm_cell_15_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_15_biasadd_readvariableop_resource:(¢)while/lstm_cell_15/BiasAdd/ReadVariableOp¢(while/lstm_cell_15/MatMul/ReadVariableOp¢*while/lstm_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0 while/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_3Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_15/Sigmoid_4Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_3:y:0 while/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
Ý	
»
input_while_cond_873318(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3*
&input_while_less_input_strided_slice_1@
<input_while_input_while_cond_873318___redundant_placeholder0@
<input_while_input_while_cond_873318___redundant_placeholder1@
<input_while_input_while_cond_873318___redundant_placeholder2@
<input_while_input_while_cond_873318___redundant_placeholder3
input_while_identity
z
input/while/LessLessinput_while_placeholder&input_while_less_input_strided_slice_1*
T0*
_output_shapes
: W
input/while/IdentityIdentityinput/while/Less:z:0*
T0
*
_output_shapes
: "5
input_while_identityinput/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_871888
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_871888___redundant_placeholder04
0while_while_cond_871888___redundant_placeholder14
0while_while_cond_871888___redundant_placeholder24
0while_while_cond_871888___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
ØN
´
$sequential_7_input_while_body_871167B
>sequential_7_input_while_sequential_7_input_while_loop_counterH
Dsequential_7_input_while_sequential_7_input_while_maximum_iterations(
$sequential_7_input_while_placeholder*
&sequential_7_input_while_placeholder_1*
&sequential_7_input_while_placeholder_2*
&sequential_7_input_while_placeholder_3A
=sequential_7_input_while_sequential_7_input_strided_slice_1_0}
ysequential_7_input_while_tensorarrayv2read_tensorlistgetitem_sequential_7_input_tensorarrayunstack_tensorlistfromtensor_0[
Fsequential_7_input_while_lstm_cell_14_matmul_readvariableop_resource_0:áð[
Hsequential_7_input_while_lstm_cell_14_matmul_1_readvariableop_resource_0:	<ðV
Gsequential_7_input_while_lstm_cell_14_biasadd_readvariableop_resource_0:	ð%
!sequential_7_input_while_identity'
#sequential_7_input_while_identity_1'
#sequential_7_input_while_identity_2'
#sequential_7_input_while_identity_3'
#sequential_7_input_while_identity_4'
#sequential_7_input_while_identity_5?
;sequential_7_input_while_sequential_7_input_strided_slice_1{
wsequential_7_input_while_tensorarrayv2read_tensorlistgetitem_sequential_7_input_tensorarrayunstack_tensorlistfromtensorY
Dsequential_7_input_while_lstm_cell_14_matmul_readvariableop_resource:áðY
Fsequential_7_input_while_lstm_cell_14_matmul_1_readvariableop_resource:	<ðT
Esequential_7_input_while_lstm_cell_14_biasadd_readvariableop_resource:	ð¢<sequential_7/input/while/lstm_cell_14/BiasAdd/ReadVariableOp¢;sequential_7/input/while/lstm_cell_14/MatMul/ReadVariableOp¢=sequential_7/input/while/lstm_cell_14/MatMul_1/ReadVariableOp
Jsequential_7/input/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá 
<sequential_7/input/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemysequential_7_input_while_tensorarrayv2read_tensorlistgetitem_sequential_7_input_tensorarrayunstack_tensorlistfromtensor_0$sequential_7_input_while_placeholderSsequential_7/input/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0Å
;sequential_7/input/while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOpFsequential_7_input_while_lstm_cell_14_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0ó
,sequential_7/input/while/lstm_cell_14/MatMulMatMulCsequential_7/input/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_7/input/while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÇ
=sequential_7/input/while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOpHsequential_7_input_while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0Ú
.sequential_7/input/while/lstm_cell_14/MatMul_1MatMul&sequential_7_input_while_placeholder_2Esequential_7/input/while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð×
)sequential_7/input/while/lstm_cell_14/addAddV26sequential_7/input/while/lstm_cell_14/MatMul:product:08sequential_7/input/while/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÁ
<sequential_7/input/while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOpGsequential_7_input_while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0à
-sequential_7/input/while/lstm_cell_14/BiasAddBiasAdd-sequential_7/input/while/lstm_cell_14/add:z:0Dsequential_7/input/while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðw
5sequential_7/input/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
+sequential_7/input/while/lstm_cell_14/splitSplit>sequential_7/input/while/lstm_cell_14/split/split_dim:output:06sequential_7/input/while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split 
-sequential_7/input/while/lstm_cell_14/SigmoidSigmoid4sequential_7/input/while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¢
/sequential_7/input/while/lstm_cell_14/Sigmoid_1Sigmoid4sequential_7/input/while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¿
)sequential_7/input/while/lstm_cell_14/mulMul3sequential_7/input/while/lstm_cell_14/Sigmoid_1:y:0&sequential_7_input_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
*sequential_7/input/while/lstm_cell_14/ReluRelu4sequential_7/input/while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ñ
+sequential_7/input/while/lstm_cell_14/mul_1Mul1sequential_7/input/while/lstm_cell_14/Sigmoid:y:08sequential_7/input/while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Æ
+sequential_7/input/while/lstm_cell_14/add_1AddV2-sequential_7/input/while/lstm_cell_14/mul:z:0/sequential_7/input/while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¢
/sequential_7/input/while/lstm_cell_14/Sigmoid_2Sigmoid4sequential_7/input/while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
,sequential_7/input/while/lstm_cell_14/Relu_1Relu/sequential_7/input/while/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Õ
+sequential_7/input/while/lstm_cell_14/mul_2Mul3sequential_7/input/while/lstm_cell_14/Sigmoid_2:y:0:sequential_7/input/while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
=sequential_7/input/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&sequential_7_input_while_placeholder_1$sequential_7_input_while_placeholder/sequential_7/input/while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ`
sequential_7/input/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_7/input/while/addAddV2$sequential_7_input_while_placeholder'sequential_7/input/while/add/y:output:0*
T0*
_output_shapes
: b
 sequential_7/input/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :³
sequential_7/input/while/add_1AddV2>sequential_7_input_while_sequential_7_input_while_loop_counter)sequential_7/input/while/add_1/y:output:0*
T0*
_output_shapes
: 
!sequential_7/input/while/IdentityIdentity"sequential_7/input/while/add_1:z:0^sequential_7/input/while/NoOp*
T0*
_output_shapes
: ¶
#sequential_7/input/while/Identity_1IdentityDsequential_7_input_while_sequential_7_input_while_maximum_iterations^sequential_7/input/while/NoOp*
T0*
_output_shapes
: 
#sequential_7/input/while/Identity_2Identity sequential_7/input/while/add:z:0^sequential_7/input/while/NoOp*
T0*
_output_shapes
: Ò
#sequential_7/input/while/Identity_3IdentityMsequential_7/input/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_7/input/while/NoOp*
T0*
_output_shapes
: :éèÒ²
#sequential_7/input/while/Identity_4Identity/sequential_7/input/while/lstm_cell_14/mul_2:z:0^sequential_7/input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<²
#sequential_7/input/while/Identity_5Identity/sequential_7/input/while/lstm_cell_14/add_1:z:0^sequential_7/input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
sequential_7/input/while/NoOpNoOp=^sequential_7/input/while/lstm_cell_14/BiasAdd/ReadVariableOp<^sequential_7/input/while/lstm_cell_14/MatMul/ReadVariableOp>^sequential_7/input/while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "O
!sequential_7_input_while_identity*sequential_7/input/while/Identity:output:0"S
#sequential_7_input_while_identity_1,sequential_7/input/while/Identity_1:output:0"S
#sequential_7_input_while_identity_2,sequential_7/input/while/Identity_2:output:0"S
#sequential_7_input_while_identity_3,sequential_7/input/while/Identity_3:output:0"S
#sequential_7_input_while_identity_4,sequential_7/input/while/Identity_4:output:0"S
#sequential_7_input_while_identity_5,sequential_7/input/while/Identity_5:output:0"
Esequential_7_input_while_lstm_cell_14_biasadd_readvariableop_resourceGsequential_7_input_while_lstm_cell_14_biasadd_readvariableop_resource_0"
Fsequential_7_input_while_lstm_cell_14_matmul_1_readvariableop_resourceHsequential_7_input_while_lstm_cell_14_matmul_1_readvariableop_resource_0"
Dsequential_7_input_while_lstm_cell_14_matmul_readvariableop_resourceFsequential_7_input_while_lstm_cell_14_matmul_readvariableop_resource_0"|
;sequential_7_input_while_sequential_7_input_strided_slice_1=sequential_7_input_while_sequential_7_input_strided_slice_1_0"ô
wsequential_7_input_while_tensorarrayv2read_tensorlistgetitem_sequential_7_input_tensorarrayunstack_tensorlistfromtensorysequential_7_input_while_tensorarrayv2read_tensorlistgetitem_sequential_7_input_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2|
<sequential_7/input/while/lstm_cell_14/BiasAdd/ReadVariableOp<sequential_7/input/while/lstm_cell_14/BiasAdd/ReadVariableOp2z
;sequential_7/input/while/lstm_cell_14/MatMul/ReadVariableOp;sequential_7/input/while/lstm_cell_14/MatMul/ReadVariableOp2~
=sequential_7/input/while/lstm_cell_14/MatMul_1/ReadVariableOp=sequential_7/input/while/lstm_cell_14/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 
«
·
&__inference_input_layer_call_fn_874006
inputs_0
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_871608|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
"
_user_specified_name
inputs/0


ó
B__inference_output_layer_call_and_return_conditional_losses_872567

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
Ã
while_cond_872446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_872446___redundant_placeholder04
0while_while_cond_872446___redundant_placeholder14
0while_while_cond_872446___redundant_placeholder24
0while_while_cond_872446___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
8
Ê
while_body_872697
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_15_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_15_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_15_matmul_readvariableop_resource:2(E
3while_lstm_cell_15_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_15_biasadd_readvariableop_resource:(¢)while/lstm_cell_15/BiasAdd/ReadVariableOp¢(while/lstm_cell_15/MatMul/ReadVariableOp¢*while/lstm_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0 while/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_3Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_15/Sigmoid_4Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_3:y:0 while/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
¿ 
é
H__inference_sequential_7_layer_call_and_return_conditional_losses_873188
input_input!
input_873153:áð
input_873155:	<ð
input_873157:	ð
layer1_873160:<<
layer1_873162:<
layer2_873165:<2
layer2_873167:2
layer3_873170:2(
layer3_873172:
(
layer3_873174:(
layer4_873177:

layer4_873179:
output_873182:
output_873184:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallý
input/StatefulPartitionedCallStatefulPartitionedCallinput_inputinput_873153input_873155input_873157*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_872966
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_873160layer1_873162*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_872346
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_873165layer2_873167*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_872383
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_873170layer3_873172layer3_873174*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_872781
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_873177layer4_873179*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_872550
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_873182output_873184*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_872567v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^input/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2>
input/StatefulPartitionedCallinput/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:Z V
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
%
_user_specified_nameinput_input
¼
æ
$__inference_signature_wrapper_873995
input_input
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
	unknown_2:<<
	unknown_3:<
	unknown_4:<2
	unknown_5:2
	unknown_6:2(
	unknown_7:
(
	unknown_8:(
	unknown_9:


unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_871458o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
%
_user_specified_nameinput_input
µ
Ã
while_cond_874936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_874936___redundant_placeholder04
0while_while_cond_874936___redundant_placeholder14
0while_while_cond_874936___redundant_placeholder24
0while_while_cond_874936___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
¾

'__inference_layer4_layer_call_fn_875316

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_872550o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Òë
÷
H__inference_sequential_7_layer_call_and_return_conditional_losses_873610

inputsF
1input_lstm_cell_14_matmul_readvariableop_resource:áðF
3input_lstm_cell_14_matmul_1_readvariableop_resource:	<ðA
2input_lstm_cell_14_biasadd_readvariableop_resource:	ð:
(layer1_tensordot_readvariableop_resource:<<4
&layer1_biasadd_readvariableop_resource:<:
(layer2_tensordot_readvariableop_resource:<24
&layer2_biasadd_readvariableop_resource:2D
2layer3_lstm_cell_15_matmul_readvariableop_resource:2(F
4layer3_lstm_cell_15_matmul_1_readvariableop_resource:
(A
3layer3_lstm_cell_15_biasadd_readvariableop_resource:(7
%layer4_matmul_readvariableop_resource:
4
&layer4_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢)input/lstm_cell_14/BiasAdd/ReadVariableOp¢(input/lstm_cell_14/MatMul/ReadVariableOp¢*input/lstm_cell_14/MatMul_1/ReadVariableOp¢input/while¢layer1/BiasAdd/ReadVariableOp¢layer1/Tensordot/ReadVariableOp¢layer2/BiasAdd/ReadVariableOp¢layer2/Tensordot/ReadVariableOp¢*layer3/lstm_cell_15/BiasAdd/ReadVariableOp¢)layer3/lstm_cell_15/MatMul/ReadVariableOp¢+layer3/lstm_cell_15/MatMul_1/ReadVariableOp¢layer3/while¢layer4/BiasAdd/ReadVariableOp¢layer4/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpA
input/ShapeShapeinputs*
T0*
_output_shapes
:c
input/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
input/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
input/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
input/strided_sliceStridedSliceinput/Shape:output:0"input/strided_slice/stack:output:0$input/strided_slice/stack_1:output:0$input/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
input/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<
input/zeros/packedPackinput/strided_slice:output:0input/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
input/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
input/zerosFillinput/zeros/packed:output:0input/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<X
input/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<
input/zeros_1/packedPackinput/strided_slice:output:0input/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
input/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
input/zeros_1Fillinput/zeros_1/packed:output:0input/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<i
input/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
input/transpose	Transposeinputsinput/transpose/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿáP
input/Shape_1Shapeinput/transpose:y:0*
T0*
_output_shapes
:e
input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
input/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
input/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
input/strided_slice_1StridedSliceinput/Shape_1:output:0$input/strided_slice_1/stack:output:0&input/strided_slice_1/stack_1:output:0&input/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!input/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
input/TensorArrayV2TensorListReserve*input/TensorArrayV2/element_shape:output:0input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;input/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ò
-input/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinput/transpose:y:0Dinput/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
input/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
input/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
input/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
input/strided_slice_2StridedSliceinput/transpose:y:0$input/strided_slice_2/stack:output:0&input/strided_slice_2/stack_1:output:0&input/strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask
(input/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp1input_lstm_cell_14_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0¨
input/lstm_cell_14/MatMulMatMulinput/strided_slice_2:output:00input/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
*input/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp3input_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0¢
input/lstm_cell_14/MatMul_1MatMulinput/zeros:output:02input/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
input/lstm_cell_14/addAddV2#input/lstm_cell_14/MatMul:product:0%input/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)input/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp2input_lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0§
input/lstm_cell_14/BiasAddBiasAddinput/lstm_cell_14/add:z:01input/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"input/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
input/lstm_cell_14/splitSplit+input/lstm_cell_14/split/split_dim:output:0#input/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
input/lstm_cell_14/SigmoidSigmoid!input/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
input/lstm_cell_14/Sigmoid_1Sigmoid!input/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_14/mulMul input/lstm_cell_14/Sigmoid_1:y:0input/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
input/lstm_cell_14/ReluRelu!input/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_14/mul_1Mulinput/lstm_cell_14/Sigmoid:y:0%input/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_14/add_1AddV2input/lstm_cell_14/mul:z:0input/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
input/lstm_cell_14/Sigmoid_2Sigmoid!input/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
input/lstm_cell_14/Relu_1Reluinput/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_14/mul_2Mul input/lstm_cell_14/Sigmoid_2:y:0'input/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
#input/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Ê
input/TensorArrayV2_1TensorListReserve,input/TensorArrayV2_1/element_shape:output:0input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

input/timeConst*
_output_shapes
: *
dtype0*
value	B : i
input/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
input/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
input/whileWhile!input/while/loop_counter:output:0'input/while/maximum_iterations:output:0input/time:output:0input/TensorArrayV2_1:handle:0input/zeros:output:0input/zeros_1:output:0input/strided_slice_1:output:0=input/TensorArrayUnstack/TensorListFromTensor:output_handle:01input_lstm_cell_14_matmul_readvariableop_resource3input_lstm_cell_14_matmul_1_readvariableop_resource2input_lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
input_while_body_873319*#
condR
input_while_cond_873318*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
6input/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Ô
(input/TensorArrayV2Stack/TensorListStackTensorListStackinput/while:output:3?input/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
element_dtype0n
input/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
input/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
input/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
input/strided_slice_3StridedSlice1input/TensorArrayV2Stack/TensorListStack:tensor:0$input/strided_slice_3/stack:output:0&input/strided_slice_3/stack_1:output:0&input/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maskk
input/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
input/transpose_1	Transpose1input/TensorArrayV2Stack/TensorListStack:tensor:0input/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<a
input/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
layer1/Tensordot/ReadVariableOpReadVariableOp(layer1_tensordot_readvariableop_resource*
_output_shapes

:<<*
dtype0_
layer1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:f
layer1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       [
layer1/Tensordot/ShapeShapeinput/transpose_1:y:0*
T0*
_output_shapes
:`
layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
layer1/Tensordot/GatherV2GatherV2layer1/Tensordot/Shape:output:0layer1/Tensordot/free:output:0'layer1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
 layer1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
layer1/Tensordot/GatherV2_1GatherV2layer1/Tensordot/Shape:output:0layer1/Tensordot/axes:output:0)layer1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:`
layer1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/Tensordot/ProdProd"layer1/Tensordot/GatherV2:output:0layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: b
layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
layer1/Tensordot/Prod_1Prod$layer1/Tensordot/GatherV2_1:output:0!layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ^
layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
layer1/Tensordot/concatConcatV2layer1/Tensordot/free:output:0layer1/Tensordot/axes:output:0%layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
layer1/Tensordot/stackPacklayer1/Tensordot/Prod:output:0 layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
layer1/Tensordot/transpose	Transposeinput/transpose_1:y:0 layer1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
layer1/Tensordot/ReshapeReshapelayer1/Tensordot/transpose:y:0layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
layer1/Tensordot/MatMulMatMul!layer1/Tensordot/Reshape:output:0'layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<b
layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:<`
layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
layer1/Tensordot/concat_1ConcatV2"layer1/Tensordot/GatherV2:output:0!layer1/Tensordot/Const_2:output:0'layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
layer1/TensordotReshape!layer1/Tensordot/MatMul:product:0"layer1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
layer1/BiasAddBiasAddlayer1/Tensordot:output:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<b
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
layer2/Tensordot/ReadVariableOpReadVariableOp(layer2_tensordot_readvariableop_resource*
_output_shapes

:<2*
dtype0_
layer2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:f
layer2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
layer2/Tensordot/ShapeShapelayer1/Relu:activations:0*
T0*
_output_shapes
:`
layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
layer2/Tensordot/GatherV2GatherV2layer2/Tensordot/Shape:output:0layer2/Tensordot/free:output:0'layer2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
 layer2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
layer2/Tensordot/GatherV2_1GatherV2layer2/Tensordot/Shape:output:0layer2/Tensordot/axes:output:0)layer2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:`
layer2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer2/Tensordot/ProdProd"layer2/Tensordot/GatherV2:output:0layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: b
layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
layer2/Tensordot/Prod_1Prod$layer2/Tensordot/GatherV2_1:output:0!layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ^
layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
layer2/Tensordot/concatConcatV2layer2/Tensordot/free:output:0layer2/Tensordot/axes:output:0%layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
layer2/Tensordot/stackPacklayer2/Tensordot/Prod:output:0 layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
layer2/Tensordot/transpose	Transposelayer1/Relu:activations:0 layer2/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
layer2/Tensordot/ReshapeReshapelayer2/Tensordot/transpose:y:0layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
layer2/Tensordot/MatMulMatMul!layer2/Tensordot/Reshape:output:0'layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2b
layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2`
layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
layer2/Tensordot/concat_1ConcatV2"layer2/Tensordot/GatherV2:output:0!layer2/Tensordot/Const_2:output:0'layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
layer2/TensordotReshape!layer2/Tensordot/MatMul:product:0"layer2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
layer2/BiasAdd/ReadVariableOpReadVariableOp&layer2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
layer2/BiasAddBiasAddlayer2/Tensordot:output:0%layer2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
layer2/SigmoidSigmoidlayer2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
layer3/ShapeShapelayer2/Sigmoid:y:0*
T0*
_output_shapes
:d
layer3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
layer3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
layer3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
layer3/strided_sliceStridedSlicelayer3/Shape:output:0#layer3/strided_slice/stack:output:0%layer3/strided_slice/stack_1:output:0%layer3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
layer3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

layer3/zeros/packedPacklayer3/strided_slice:output:0layer3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
layer3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
layer3/zerosFilllayer3/zeros/packed:output:0layer3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Y
layer3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

layer3/zeros_1/packedPacklayer3/strided_slice:output:0 layer3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
layer3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
layer3/zeros_1Filllayer3/zeros_1/packed:output:0layer3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
layer3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
layer3/transpose	Transposelayer2/Sigmoid:y:0layer3/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
layer3/Shape_1Shapelayer3/transpose:y:0*
T0*
_output_shapes
:f
layer3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
layer3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
layer3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
layer3/strided_slice_1StridedSlicelayer3/Shape_1:output:0%layer3/strided_slice_1/stack:output:0'layer3/strided_slice_1/stack_1:output:0'layer3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"layer3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
layer3/TensorArrayV2TensorListReserve+layer3/TensorArrayV2/element_shape:output:0layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<layer3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   õ
.layer3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlayer3/transpose:y:0Elayer3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
layer3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
layer3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
layer3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
layer3/strided_slice_2StridedSlicelayer3/transpose:y:0%layer3/strided_slice_2/stack:output:0'layer3/strided_slice_2/stack_1:output:0'layer3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
)layer3/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp2layer3_lstm_cell_15_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0ª
layer3/lstm_cell_15/MatMulMatMullayer3/strided_slice_2:output:01layer3/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
+layer3/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp4layer3_lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0¤
layer3/lstm_cell_15/MatMul_1MatMullayer3/zeros:output:03layer3/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
layer3/lstm_cell_15/addAddV2$layer3/lstm_cell_15/MatMul:product:0&layer3/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*layer3/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp3layer3_lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0©
layer3/lstm_cell_15/BiasAddBiasAddlayer3/lstm_cell_15/add:z:02layer3/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#layer3/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
layer3/lstm_cell_15/splitSplit,layer3/lstm_cell_15/split/split_dim:output:0$layer3/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
layer3/lstm_cell_15/SigmoidSigmoid"layer3/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_15/Sigmoid_1Sigmoid"layer3/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_15/mulMul!layer3/lstm_cell_15/Sigmoid_1:y:0layer3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_15/Sigmoid_2Sigmoid"layer3/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_15/mul_1Mullayer3/lstm_cell_15/Sigmoid:y:0!layer3/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_15/add_1AddV2layer3/lstm_cell_15/mul:z:0layer3/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_15/Sigmoid_3Sigmoid"layer3/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
layer3/lstm_cell_15/Sigmoid_4Sigmoidlayer3/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_15/mul_2Mul!layer3/lstm_cell_15/Sigmoid_3:y:0!layer3/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
$layer3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Í
layer3/TensorArrayV2_1TensorListReserve-layer3/TensorArrayV2_1/element_shape:output:0layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
layer3/timeConst*
_output_shapes
: *
dtype0*
value	B : j
layer3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
layer3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ä
layer3/whileWhile"layer3/while/loop_counter:output:0(layer3/while/maximum_iterations:output:0layer3/time:output:0layer3/TensorArrayV2_1:handle:0layer3/zeros:output:0layer3/zeros_1:output:0layer3/strided_slice_1:output:0>layer3/TensorArrayUnstack/TensorListFromTensor:output_handle:02layer3_lstm_cell_15_matmul_readvariableop_resource4layer3_lstm_cell_15_matmul_1_readvariableop_resource3layer3_lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
layer3_while_body_873512*$
condR
layer3_while_cond_873511*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
7layer3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ×
)layer3/TensorArrayV2Stack/TensorListStackTensorListStacklayer3/while:output:3@layer3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0o
layer3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
layer3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
layer3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
layer3/strided_slice_3StridedSlice2layer3/TensorArrayV2Stack/TensorListStack:tensor:0%layer3/strided_slice_3/stack:output:0'layer3/strided_slice_3/stack_1:output:0'layer3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskl
layer3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
layer3/transpose_1	Transpose2layer3/TensorArrayV2Stack/TensorListStack:tensor:0 layer3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
b
layer3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
layer4/MatMulMatMullayer3/strided_slice_3:output:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
layer4/SigmoidSigmoidlayer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
output/MatMulMatMullayer4/Sigmoid:y:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
NoOpNoOp*^input/lstm_cell_14/BiasAdd/ReadVariableOp)^input/lstm_cell_14/MatMul/ReadVariableOp+^input/lstm_cell_14/MatMul_1/ReadVariableOp^input/while^layer1/BiasAdd/ReadVariableOp ^layer1/Tensordot/ReadVariableOp^layer2/BiasAdd/ReadVariableOp ^layer2/Tensordot/ReadVariableOp+^layer3/lstm_cell_15/BiasAdd/ReadVariableOp*^layer3/lstm_cell_15/MatMul/ReadVariableOp,^layer3/lstm_cell_15/MatMul_1/ReadVariableOp^layer3/while^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2V
)input/lstm_cell_14/BiasAdd/ReadVariableOp)input/lstm_cell_14/BiasAdd/ReadVariableOp2T
(input/lstm_cell_14/MatMul/ReadVariableOp(input/lstm_cell_14/MatMul/ReadVariableOp2X
*input/lstm_cell_14/MatMul_1/ReadVariableOp*input/lstm_cell_14/MatMul_1/ReadVariableOp2
input/whileinput/while2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2B
layer1/Tensordot/ReadVariableOplayer1/Tensordot/ReadVariableOp2>
layer2/BiasAdd/ReadVariableOplayer2/BiasAdd/ReadVariableOp2B
layer2/Tensordot/ReadVariableOplayer2/Tensordot/ReadVariableOp2X
*layer3/lstm_cell_15/BiasAdd/ReadVariableOp*layer3/lstm_cell_15/BiasAdd/ReadVariableOp2V
)layer3/lstm_cell_15/MatMul/ReadVariableOp)layer3/lstm_cell_15/MatMul/ReadVariableOp2Z
+layer3/lstm_cell_15/MatMul_1/ReadVariableOp+layer3/lstm_cell_15/MatMul_1/ReadVariableOp2
layer3/whilelayer3/while2>
layer4/BiasAdd/ReadVariableOplayer4/BiasAdd/ReadVariableOp2<
layer4/MatMul/ReadVariableOplayer4/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
Ý
ê
-__inference_sequential_7_layer_call_fn_873227

inputs
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
	unknown_2:<<
	unknown_3:<
	unknown_4:<2
	unknown_5:2
	unknown_6:2(
	unknown_7:
(
	unknown_8:(
	unknown_9:


unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_872574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
æ
Ó
%sequential_7_layer3_while_cond_871359D
@sequential_7_layer3_while_sequential_7_layer3_while_loop_counterJ
Fsequential_7_layer3_while_sequential_7_layer3_while_maximum_iterations)
%sequential_7_layer3_while_placeholder+
'sequential_7_layer3_while_placeholder_1+
'sequential_7_layer3_while_placeholder_2+
'sequential_7_layer3_while_placeholder_3F
Bsequential_7_layer3_while_less_sequential_7_layer3_strided_slice_1\
Xsequential_7_layer3_while_sequential_7_layer3_while_cond_871359___redundant_placeholder0\
Xsequential_7_layer3_while_sequential_7_layer3_while_cond_871359___redundant_placeholder1\
Xsequential_7_layer3_while_sequential_7_layer3_while_cond_871359___redundant_placeholder2\
Xsequential_7_layer3_while_sequential_7_layer3_while_cond_871359___redundant_placeholder3&
"sequential_7_layer3_while_identity
²
sequential_7/layer3/while/LessLess%sequential_7_layer3_while_placeholderBsequential_7_layer3_while_less_sequential_7_layer3_strided_slice_1*
T0*
_output_shapes
: s
"sequential_7/layer3/while/IdentityIdentity"sequential_7/layer3/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_7_layer3_while_identity+sequential_7/layer3/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
ëJ

A__inference_input_layer_call_and_return_conditional_losses_874182
inputs_0@
+lstm_cell_14_matmul_readvariableop_resource:áð@
-lstm_cell_14_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_14_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_14/BiasAdd/ReadVariableOp¢"lstm_cell_14/MatMul/ReadVariableOp¢$lstm_cell_14/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          z
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿáD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ë
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_874098*
condR
while_cond_874097*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<À
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:` \
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
"
_user_specified_name
inputs/0
µ
Ã
while_cond_872222
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_872222___redundant_placeholder04
0while_while_cond_872222___redundant_placeholder14
0while_while_cond_872222___redundant_placeholder24
0while_while_cond_872222___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_872696
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_872696___redundant_placeholder04
0while_while_cond_872696___redundant_placeholder14
0while_while_cond_872696___redundant_placeholder24
0while_while_cond_872696___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
ù	
Ï
layer3_while_cond_873861*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3,
(layer3_while_less_layer3_strided_slice_1B
>layer3_while_layer3_while_cond_873861___redundant_placeholder0B
>layer3_while_layer3_while_cond_873861___redundant_placeholder1B
>layer3_while_layer3_while_cond_873861___redundant_placeholder2B
>layer3_while_layer3_while_cond_873861___redundant_placeholder3
layer3_while_identity
~
layer3/while/LessLesslayer3_while_placeholder(layer3_while_less_layer3_strided_slice_1*
T0*
_output_shapes
: Y
layer3/while/IdentityIdentitylayer3/while/Less:z:0*
T0
*
_output_shapes
: "7
layer3_while_identitylayer3/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
«
·
&__inference_input_layer_call_fn_874017
inputs_0
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_871799|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
"
_user_specified_name
inputs/0
­J

A__inference_input_layer_call_and_return_conditional_losses_874611

inputs@
+lstm_cell_14_matmul_readvariableop_resource:áð@
-lstm_cell_14_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_14_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_14/BiasAdd/ReadVariableOp¢"lstm_cell_14/MatMul/ReadVariableOp¢$lstm_cell_14/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿáD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ë
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_874527*
condR
while_cond_874526*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<À
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
8

A__inference_input_layer_call_and_return_conditional_losses_871799

inputs(
lstm_cell_14_871717:áð&
lstm_cell_14_871719:	<ð"
lstm_cell_14_871721:	ð
identity¢$lstm_cell_14/StatefulPartitionedCall¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputstranspose/perm:output:0*
T0*6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿáD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ë
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_maskõ
$lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_14_871717lstm_cell_14_871719lstm_cell_14_871721*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_871671n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_14_871717lstm_cell_14_871719lstm_cell_14_871721*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_871730*
condR
while_cond_871729*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<u
NoOpNoOp%^lstm_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2L
$lstm_cell_14/StatefulPartitionedCall$lstm_cell_14/StatefulPartitionedCall2
whilewhile:^ Z
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
§8
Ô
while_body_874241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_14_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_14_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_14_matmul_readvariableop_resource:áðF
3while_lstm_cell_14_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_14_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_14/BiasAdd/ReadVariableOp¢(while/lstm_cell_14/MatMul/ReadVariableOp¢*while/lstm_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 

³
'__inference_layer3_layer_call_fn_874702
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_871958o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
8
Ê
while_body_874937
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_15_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_15_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_15_matmul_readvariableop_resource:2(E
3while_lstm_cell_15_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_15_biasadd_readvariableop_resource:(¢)while/lstm_cell_15/BiasAdd/ReadVariableOp¢(while/lstm_cell_15/MatMul/ReadVariableOp¢*while/lstm_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0 while/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_3Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_15/Sigmoid_4Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_3:y:0 while/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
è
ó
-__inference_lstm_cell_15_layer_call_fn_875479

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_872021o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
states/1
§8
Ô
while_body_874098
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_14_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_14_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_14_matmul_readvariableop_resource:áðF
3while_lstm_cell_14_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_14_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_14/BiasAdd/ReadVariableOp¢(while/lstm_cell_14/MatMul/ReadVariableOp¢*while/lstm_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 
Ý

H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_871671

inputs

states
states_13
matmul_readvariableop_resource:áð3
 matmul_1_readvariableop_resource:	<ð.
biasadd_readvariableop_resource:	ð
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿá:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_namestates
Ê
¿
$sequential_7_input_while_cond_871166B
>sequential_7_input_while_sequential_7_input_while_loop_counterH
Dsequential_7_input_while_sequential_7_input_while_maximum_iterations(
$sequential_7_input_while_placeholder*
&sequential_7_input_while_placeholder_1*
&sequential_7_input_while_placeholder_2*
&sequential_7_input_while_placeholder_3D
@sequential_7_input_while_less_sequential_7_input_strided_slice_1Z
Vsequential_7_input_while_sequential_7_input_while_cond_871166___redundant_placeholder0Z
Vsequential_7_input_while_sequential_7_input_while_cond_871166___redundant_placeholder1Z
Vsequential_7_input_while_sequential_7_input_while_cond_871166___redundant_placeholder2Z
Vsequential_7_input_while_sequential_7_input_while_cond_871166___redundant_placeholder3%
!sequential_7_input_while_identity
®
sequential_7/input/while/LessLess$sequential_7_input_while_placeholder@sequential_7_input_while_less_sequential_7_input_strided_slice_1*
T0*
_output_shapes
: q
!sequential_7/input/while/IdentityIdentity!sequential_7/input/while/Less:z:0*
T0
*
_output_shapes
: "O
!sequential_7_input_while_identity*sequential_7/input/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_871538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_871538___redundant_placeholder04
0while_while_cond_871538___redundant_placeholder14
0while_while_cond_871538___redundant_placeholder24
0while_while_cond_871538___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
§8
Ô
while_body_872882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_14_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_14_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_14_matmul_readvariableop_resource:áðF
3while_lstm_cell_14_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_14_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_14/BiasAdd/ReadVariableOp¢(while/lstm_cell_14/MatMul/ReadVariableOp¢*while/lstm_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 
­J

A__inference_input_layer_call_and_return_conditional_losses_872307

inputs@
+lstm_cell_14_matmul_readvariableop_resource:áð@
-lstm_cell_14_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_14_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_14/BiasAdd/ReadVariableOp¢"lstm_cell_14/MatMul/ReadVariableOp¢$lstm_cell_14/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿáD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ë
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_872223*
condR
while_cond_872222*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<À
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
µ
Ã
while_cond_874383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_874383___redundant_placeholder04
0while_while_cond_874383___redundant_placeholder14
0while_while_cond_874383___redundant_placeholder24
0while_while_cond_874383___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
 
ù
B__inference_layer2_layer_call_and_return_conditional_losses_872383

inputs3
!tensordot_readvariableop_resource:<2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:<2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
SigmoidSigmoidBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2^
IdentityIdentitySigmoid:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
° 
ä
H__inference_sequential_7_layer_call_and_return_conditional_losses_873048

inputs!
input_873013:áð
input_873015:	<ð
input_873017:	ð
layer1_873020:<<
layer1_873022:<
layer2_873025:<2
layer2_873027:2
layer3_873030:2(
layer3_873032:
(
layer3_873034:(
layer4_873037:

layer4_873039:
output_873042:
output_873044:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallø
input/StatefulPartitionedCallStatefulPartitionedCallinputsinput_873013input_873015input_873017*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_872966
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_873020layer1_873022*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_872346
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_873025layer2_873027*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_872383
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_873030layer3_873032layer3_873034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_872781
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_873037layer4_873039*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_872550
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_873042output_873044*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_872567v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^input/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2>
input/StatefulPartitionedCallinput/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
Î

'__inference_layer1_layer_call_fn_874620

inputs
unknown:<<
	unknown_0:<
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_872346s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
ì
ï
-__inference_sequential_7_layer_call_fn_873112
input_input
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
	unknown_2:<<
	unknown_3:<
	unknown_4:<2
	unknown_5:2
	unknown_6:2(
	unknown_7:
(
	unknown_8:(
	unknown_9:


unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_873048o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
%
_user_specified_nameinput_input
8

B__inference_layer3_layer_call_and_return_conditional_losses_871958

inputs%
lstm_cell_15_871876:2(%
lstm_cell_15_871878:
(!
lstm_cell_15_871880:(
identity¢$lstm_cell_15/StatefulPartitionedCall¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskõ
$lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_15_871876lstm_cell_15_871878lstm_cell_15_871880*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_871875n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_15_871876lstm_cell_15_871878lstm_cell_15_871880*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_871889*
condR
while_cond_871888*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
NoOpNoOp%^lstm_cell_15/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_15/StatefulPartitionedCall$lstm_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ÝO
Ê
%sequential_7_layer3_while_body_871360D
@sequential_7_layer3_while_sequential_7_layer3_while_loop_counterJ
Fsequential_7_layer3_while_sequential_7_layer3_while_maximum_iterations)
%sequential_7_layer3_while_placeholder+
'sequential_7_layer3_while_placeholder_1+
'sequential_7_layer3_while_placeholder_2+
'sequential_7_layer3_while_placeholder_3C
?sequential_7_layer3_while_sequential_7_layer3_strided_slice_1_0
{sequential_7_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_7_layer3_tensorarrayunstack_tensorlistfromtensor_0Y
Gsequential_7_layer3_while_lstm_cell_15_matmul_readvariableop_resource_0:2([
Isequential_7_layer3_while_lstm_cell_15_matmul_1_readvariableop_resource_0:
(V
Hsequential_7_layer3_while_lstm_cell_15_biasadd_readvariableop_resource_0:(&
"sequential_7_layer3_while_identity(
$sequential_7_layer3_while_identity_1(
$sequential_7_layer3_while_identity_2(
$sequential_7_layer3_while_identity_3(
$sequential_7_layer3_while_identity_4(
$sequential_7_layer3_while_identity_5A
=sequential_7_layer3_while_sequential_7_layer3_strided_slice_1}
ysequential_7_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_7_layer3_tensorarrayunstack_tensorlistfromtensorW
Esequential_7_layer3_while_lstm_cell_15_matmul_readvariableop_resource:2(Y
Gsequential_7_layer3_while_lstm_cell_15_matmul_1_readvariableop_resource:
(T
Fsequential_7_layer3_while_lstm_cell_15_biasadd_readvariableop_resource:(¢=sequential_7/layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp¢<sequential_7/layer3/while/lstm_cell_15/MatMul/ReadVariableOp¢>sequential_7/layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp
Ksequential_7/layer3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
=sequential_7/layer3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_7_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_7_layer3_tensorarrayunstack_tensorlistfromtensor_0%sequential_7_layer3_while_placeholderTsequential_7/layer3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0Ä
<sequential_7/layer3/while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOpGsequential_7_layer3_while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0õ
-sequential_7/layer3/while/lstm_cell_15/MatMulMatMulDsequential_7/layer3/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_7/layer3/while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(È
>sequential_7/layer3/while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOpIsequential_7_layer3_while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ü
/sequential_7/layer3/while/lstm_cell_15/MatMul_1MatMul'sequential_7_layer3_while_placeholder_2Fsequential_7/layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ù
*sequential_7/layer3/while/lstm_cell_15/addAddV27sequential_7/layer3/while/lstm_cell_15/MatMul:product:09sequential_7/layer3/while/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Â
=sequential_7/layer3/while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOpHsequential_7_layer3_while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0â
.sequential_7/layer3/while/lstm_cell_15/BiasAddBiasAdd.sequential_7/layer3/while/lstm_cell_15/add:z:0Esequential_7/layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
6sequential_7/layer3/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
,sequential_7/layer3/while/lstm_cell_15/splitSplit?sequential_7/layer3/while/lstm_cell_15/split/split_dim:output:07sequential_7/layer3/while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split¢
.sequential_7/layer3/while/lstm_cell_15/SigmoidSigmoid5sequential_7/layer3/while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¤
0sequential_7/layer3/while/lstm_cell_15/Sigmoid_1Sigmoid5sequential_7/layer3/while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Â
*sequential_7/layer3/while/lstm_cell_15/mulMul4sequential_7/layer3/while/lstm_cell_15/Sigmoid_1:y:0'sequential_7_layer3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¤
0sequential_7/layer3/while/lstm_cell_15/Sigmoid_2Sigmoid5sequential_7/layer3/while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ï
,sequential_7/layer3/while/lstm_cell_15/mul_1Mul2sequential_7/layer3/while/lstm_cell_15/Sigmoid:y:04sequential_7/layer3/while/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
É
,sequential_7/layer3/while/lstm_cell_15/add_1AddV2.sequential_7/layer3/while/lstm_cell_15/mul:z:00sequential_7/layer3/while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¤
0sequential_7/layer3/while/lstm_cell_15/Sigmoid_3Sigmoid5sequential_7/layer3/while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

0sequential_7/layer3/while/lstm_cell_15/Sigmoid_4Sigmoid0sequential_7/layer3/while/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ñ
,sequential_7/layer3/while/lstm_cell_15/mul_2Mul4sequential_7/layer3/while/lstm_cell_15/Sigmoid_3:y:04sequential_7/layer3/while/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

>sequential_7/layer3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_7_layer3_while_placeholder_1%sequential_7_layer3_while_placeholder0sequential_7/layer3/while/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒa
sequential_7/layer3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_7/layer3/while/addAddV2%sequential_7_layer3_while_placeholder(sequential_7/layer3/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_7/layer3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :·
sequential_7/layer3/while/add_1AddV2@sequential_7_layer3_while_sequential_7_layer3_while_loop_counter*sequential_7/layer3/while/add_1/y:output:0*
T0*
_output_shapes
: 
"sequential_7/layer3/while/IdentityIdentity#sequential_7/layer3/while/add_1:z:0^sequential_7/layer3/while/NoOp*
T0*
_output_shapes
: º
$sequential_7/layer3/while/Identity_1IdentityFsequential_7_layer3_while_sequential_7_layer3_while_maximum_iterations^sequential_7/layer3/while/NoOp*
T0*
_output_shapes
: 
$sequential_7/layer3/while/Identity_2Identity!sequential_7/layer3/while/add:z:0^sequential_7/layer3/while/NoOp*
T0*
_output_shapes
: Õ
$sequential_7/layer3/while/Identity_3IdentityNsequential_7/layer3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_7/layer3/while/NoOp*
T0*
_output_shapes
: :éèÒµ
$sequential_7/layer3/while/Identity_4Identity0sequential_7/layer3/while/lstm_cell_15/mul_2:z:0^sequential_7/layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
µ
$sequential_7/layer3/while/Identity_5Identity0sequential_7/layer3/while/lstm_cell_15/add_1:z:0^sequential_7/layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
sequential_7/layer3/while/NoOpNoOp>^sequential_7/layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp=^sequential_7/layer3/while/lstm_cell_15/MatMul/ReadVariableOp?^sequential_7/layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_7_layer3_while_identity+sequential_7/layer3/while/Identity:output:0"U
$sequential_7_layer3_while_identity_1-sequential_7/layer3/while/Identity_1:output:0"U
$sequential_7_layer3_while_identity_2-sequential_7/layer3/while/Identity_2:output:0"U
$sequential_7_layer3_while_identity_3-sequential_7/layer3/while/Identity_3:output:0"U
$sequential_7_layer3_while_identity_4-sequential_7/layer3/while/Identity_4:output:0"U
$sequential_7_layer3_while_identity_5-sequential_7/layer3/while/Identity_5:output:0"
Fsequential_7_layer3_while_lstm_cell_15_biasadd_readvariableop_resourceHsequential_7_layer3_while_lstm_cell_15_biasadd_readvariableop_resource_0"
Gsequential_7_layer3_while_lstm_cell_15_matmul_1_readvariableop_resourceIsequential_7_layer3_while_lstm_cell_15_matmul_1_readvariableop_resource_0"
Esequential_7_layer3_while_lstm_cell_15_matmul_readvariableop_resourceGsequential_7_layer3_while_lstm_cell_15_matmul_readvariableop_resource_0"
=sequential_7_layer3_while_sequential_7_layer3_strided_slice_1?sequential_7_layer3_while_sequential_7_layer3_strided_slice_1_0"ø
ysequential_7_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_7_layer3_tensorarrayunstack_tensorlistfromtensor{sequential_7_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_7_layer3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2~
=sequential_7/layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp=sequential_7/layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp2|
<sequential_7/layer3/while/lstm_cell_15/MatMul/ReadVariableOp<sequential_7/layer3/while/lstm_cell_15/MatMul/ReadVariableOp2
>sequential_7/layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp>sequential_7/layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
¡
ù
B__inference_layer1_layer_call_and_return_conditional_losses_872346

inputs3
!tensordot_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:<<*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:<Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
Ý	
»
input_while_cond_873668(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3*
&input_while_less_input_strided_slice_1@
<input_while_input_while_cond_873668___redundant_placeholder0@
<input_while_input_while_cond_873668___redundant_placeholder1@
<input_while_input_while_cond_873668___redundant_placeholder2@
<input_while_input_while_cond_873668___redundant_placeholder3
input_while_identity
z
input/while/LessLessinput_while_placeholder&input_while_less_input_strided_slice_1*
T0*
_output_shapes
: W
input/while/IdentityIdentityinput/while/Less:z:0*
T0
*
_output_shapes
: "5
input_while_identityinput/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_872881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_872881___redundant_placeholder04
0while_while_cond_872881___redundant_placeholder14
0while_while_cond_872881___redundant_placeholder24
0while_while_cond_872881___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
J

B__inference_layer3_layer_call_and_return_conditional_losses_872781

inputs=
+lstm_cell_15_matmul_readvariableop_resource:2(?
-lstm_cell_15_matmul_1_readvariableop_resource:
(:
,lstm_cell_15_biasadd_readvariableop_resource:(
identity¢#lstm_cell_15/BiasAdd/ReadVariableOp¢"lstm_cell_15/MatMul/ReadVariableOp¢$lstm_cell_15/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_3Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_15/Sigmoid_4Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_3:y:0lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_872697*
condR
while_cond_872696*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Òë
÷
H__inference_sequential_7_layer_call_and_return_conditional_losses_873960

inputsF
1input_lstm_cell_14_matmul_readvariableop_resource:áðF
3input_lstm_cell_14_matmul_1_readvariableop_resource:	<ðA
2input_lstm_cell_14_biasadd_readvariableop_resource:	ð:
(layer1_tensordot_readvariableop_resource:<<4
&layer1_biasadd_readvariableop_resource:<:
(layer2_tensordot_readvariableop_resource:<24
&layer2_biasadd_readvariableop_resource:2D
2layer3_lstm_cell_15_matmul_readvariableop_resource:2(F
4layer3_lstm_cell_15_matmul_1_readvariableop_resource:
(A
3layer3_lstm_cell_15_biasadd_readvariableop_resource:(7
%layer4_matmul_readvariableop_resource:
4
&layer4_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢)input/lstm_cell_14/BiasAdd/ReadVariableOp¢(input/lstm_cell_14/MatMul/ReadVariableOp¢*input/lstm_cell_14/MatMul_1/ReadVariableOp¢input/while¢layer1/BiasAdd/ReadVariableOp¢layer1/Tensordot/ReadVariableOp¢layer2/BiasAdd/ReadVariableOp¢layer2/Tensordot/ReadVariableOp¢*layer3/lstm_cell_15/BiasAdd/ReadVariableOp¢)layer3/lstm_cell_15/MatMul/ReadVariableOp¢+layer3/lstm_cell_15/MatMul_1/ReadVariableOp¢layer3/while¢layer4/BiasAdd/ReadVariableOp¢layer4/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpA
input/ShapeShapeinputs*
T0*
_output_shapes
:c
input/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
input/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
input/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
input/strided_sliceStridedSliceinput/Shape:output:0"input/strided_slice/stack:output:0$input/strided_slice/stack_1:output:0$input/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
input/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<
input/zeros/packedPackinput/strided_slice:output:0input/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
input/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
input/zerosFillinput/zeros/packed:output:0input/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<X
input/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<
input/zeros_1/packedPackinput/strided_slice:output:0input/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:X
input/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
input/zeros_1Fillinput/zeros_1/packed:output:0input/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<i
input/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
input/transpose	Transposeinputsinput/transpose/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿáP
input/Shape_1Shapeinput/transpose:y:0*
T0*
_output_shapes
:e
input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
input/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
input/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
input/strided_slice_1StridedSliceinput/Shape_1:output:0$input/strided_slice_1/stack:output:0&input/strided_slice_1/stack_1:output:0&input/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!input/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÆ
input/TensorArrayV2TensorListReserve*input/TensorArrayV2/element_shape:output:0input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;input/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ò
-input/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinput/transpose:y:0Dinput/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒe
input/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
input/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
input/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
input/strided_slice_2StridedSliceinput/transpose:y:0$input/strided_slice_2/stack:output:0&input/strided_slice_2/stack_1:output:0&input/strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask
(input/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp1input_lstm_cell_14_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0¨
input/lstm_cell_14/MatMulMatMulinput/strided_slice_2:output:00input/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
*input/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp3input_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0¢
input/lstm_cell_14/MatMul_1MatMulinput/zeros:output:02input/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
input/lstm_cell_14/addAddV2#input/lstm_cell_14/MatMul:product:0%input/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)input/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp2input_lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0§
input/lstm_cell_14/BiasAddBiasAddinput/lstm_cell_14/add:z:01input/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"input/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
input/lstm_cell_14/splitSplit+input/lstm_cell_14/split/split_dim:output:0#input/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
input/lstm_cell_14/SigmoidSigmoid!input/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
input/lstm_cell_14/Sigmoid_1Sigmoid!input/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_14/mulMul input/lstm_cell_14/Sigmoid_1:y:0input/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
input/lstm_cell_14/ReluRelu!input/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_14/mul_1Mulinput/lstm_cell_14/Sigmoid:y:0%input/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_14/add_1AddV2input/lstm_cell_14/mul:z:0input/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
input/lstm_cell_14/Sigmoid_2Sigmoid!input/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
input/lstm_cell_14/Relu_1Reluinput/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_14/mul_2Mul input/lstm_cell_14/Sigmoid_2:y:0'input/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
#input/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Ê
input/TensorArrayV2_1TensorListReserve,input/TensorArrayV2_1/element_shape:output:0input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒL

input/timeConst*
_output_shapes
: *
dtype0*
value	B : i
input/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿZ
input/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
input/whileWhile!input/while/loop_counter:output:0'input/while/maximum_iterations:output:0input/time:output:0input/TensorArrayV2_1:handle:0input/zeros:output:0input/zeros_1:output:0input/strided_slice_1:output:0=input/TensorArrayUnstack/TensorListFromTensor:output_handle:01input_lstm_cell_14_matmul_readvariableop_resource3input_lstm_cell_14_matmul_1_readvariableop_resource2input_lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
input_while_body_873669*#
condR
input_while_cond_873668*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
6input/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Ô
(input/TensorArrayV2Stack/TensorListStackTensorListStackinput/while:output:3?input/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
element_dtype0n
input/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿg
input/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
input/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¥
input/strided_slice_3StridedSlice1input/TensorArrayV2Stack/TensorListStack:tensor:0$input/strided_slice_3/stack:output:0&input/strided_slice_3/stack_1:output:0&input/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maskk
input/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
input/transpose_1	Transpose1input/TensorArrayV2Stack/TensorListStack:tensor:0input/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<a
input/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
layer1/Tensordot/ReadVariableOpReadVariableOp(layer1_tensordot_readvariableop_resource*
_output_shapes

:<<*
dtype0_
layer1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:f
layer1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       [
layer1/Tensordot/ShapeShapeinput/transpose_1:y:0*
T0*
_output_shapes
:`
layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
layer1/Tensordot/GatherV2GatherV2layer1/Tensordot/Shape:output:0layer1/Tensordot/free:output:0'layer1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
 layer1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
layer1/Tensordot/GatherV2_1GatherV2layer1/Tensordot/Shape:output:0layer1/Tensordot/axes:output:0)layer1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:`
layer1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer1/Tensordot/ProdProd"layer1/Tensordot/GatherV2:output:0layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: b
layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
layer1/Tensordot/Prod_1Prod$layer1/Tensordot/GatherV2_1:output:0!layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ^
layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
layer1/Tensordot/concatConcatV2layer1/Tensordot/free:output:0layer1/Tensordot/axes:output:0%layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
layer1/Tensordot/stackPacklayer1/Tensordot/Prod:output:0 layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
layer1/Tensordot/transpose	Transposeinput/transpose_1:y:0 layer1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
layer1/Tensordot/ReshapeReshapelayer1/Tensordot/transpose:y:0layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
layer1/Tensordot/MatMulMatMul!layer1/Tensordot/Reshape:output:0'layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<b
layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:<`
layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
layer1/Tensordot/concat_1ConcatV2"layer1/Tensordot/GatherV2:output:0!layer1/Tensordot/Const_2:output:0'layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
layer1/TensordotReshape!layer1/Tensordot/MatMul:product:0"layer1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
layer1/BiasAddBiasAddlayer1/Tensordot:output:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<b
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
layer2/Tensordot/ReadVariableOpReadVariableOp(layer2_tensordot_readvariableop_resource*
_output_shapes

:<2*
dtype0_
layer2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:f
layer2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
layer2/Tensordot/ShapeShapelayer1/Relu:activations:0*
T0*
_output_shapes
:`
layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
layer2/Tensordot/GatherV2GatherV2layer2/Tensordot/Shape:output:0layer2/Tensordot/free:output:0'layer2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
 layer2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
layer2/Tensordot/GatherV2_1GatherV2layer2/Tensordot/Shape:output:0layer2/Tensordot/axes:output:0)layer2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:`
layer2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
layer2/Tensordot/ProdProd"layer2/Tensordot/GatherV2:output:0layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: b
layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
layer2/Tensordot/Prod_1Prod$layer2/Tensordot/GatherV2_1:output:0!layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ^
layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¸
layer2/Tensordot/concatConcatV2layer2/Tensordot/free:output:0layer2/Tensordot/axes:output:0%layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
layer2/Tensordot/stackPacklayer2/Tensordot/Prod:output:0 layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
layer2/Tensordot/transpose	Transposelayer1/Relu:activations:0 layer2/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
layer2/Tensordot/ReshapeReshapelayer2/Tensordot/transpose:y:0layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
layer2/Tensordot/MatMulMatMul!layer2/Tensordot/Reshape:output:0'layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2b
layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2`
layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
layer2/Tensordot/concat_1ConcatV2"layer2/Tensordot/GatherV2:output:0!layer2/Tensordot/Const_2:output:0'layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
layer2/TensordotReshape!layer2/Tensordot/MatMul:product:0"layer2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
layer2/BiasAdd/ReadVariableOpReadVariableOp&layer2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0
layer2/BiasAddBiasAddlayer2/Tensordot:output:0%layer2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
layer2/SigmoidSigmoidlayer2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
layer3/ShapeShapelayer2/Sigmoid:y:0*
T0*
_output_shapes
:d
layer3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
layer3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
layer3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
layer3/strided_sliceStridedSlicelayer3/Shape:output:0#layer3/strided_slice/stack:output:0%layer3/strided_slice/stack_1:output:0%layer3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
layer3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

layer3/zeros/packedPacklayer3/strided_slice:output:0layer3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
layer3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
layer3/zerosFilllayer3/zeros/packed:output:0layer3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Y
layer3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :

layer3/zeros_1/packedPacklayer3/strided_slice:output:0 layer3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
layer3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
layer3/zeros_1Filllayer3/zeros_1/packed:output:0layer3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
layer3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
layer3/transpose	Transposelayer2/Sigmoid:y:0layer3/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2R
layer3/Shape_1Shapelayer3/transpose:y:0*
T0*
_output_shapes
:f
layer3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
layer3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
layer3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
layer3/strided_slice_1StridedSlicelayer3/Shape_1:output:0%layer3/strided_slice_1/stack:output:0'layer3/strided_slice_1/stack_1:output:0'layer3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"layer3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
layer3/TensorArrayV2TensorListReserve+layer3/TensorArrayV2/element_shape:output:0layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<layer3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   õ
.layer3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlayer3/transpose:y:0Elayer3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
layer3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
layer3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
layer3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
layer3/strided_slice_2StridedSlicelayer3/transpose:y:0%layer3/strided_slice_2/stack:output:0'layer3/strided_slice_2/stack_1:output:0'layer3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
)layer3/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp2layer3_lstm_cell_15_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0ª
layer3/lstm_cell_15/MatMulMatMullayer3/strided_slice_2:output:01layer3/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
+layer3/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp4layer3_lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0¤
layer3/lstm_cell_15/MatMul_1MatMullayer3/zeros:output:03layer3/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
layer3/lstm_cell_15/addAddV2$layer3/lstm_cell_15/MatMul:product:0&layer3/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*layer3/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp3layer3_lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0©
layer3/lstm_cell_15/BiasAddBiasAddlayer3/lstm_cell_15/add:z:02layer3/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#layer3/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
layer3/lstm_cell_15/splitSplit,layer3/lstm_cell_15/split/split_dim:output:0$layer3/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
layer3/lstm_cell_15/SigmoidSigmoid"layer3/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_15/Sigmoid_1Sigmoid"layer3/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_15/mulMul!layer3/lstm_cell_15/Sigmoid_1:y:0layer3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_15/Sigmoid_2Sigmoid"layer3/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_15/mul_1Mullayer3/lstm_cell_15/Sigmoid:y:0!layer3/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_15/add_1AddV2layer3/lstm_cell_15/mul:z:0layer3/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_15/Sigmoid_3Sigmoid"layer3/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
layer3/lstm_cell_15/Sigmoid_4Sigmoidlayer3/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_15/mul_2Mul!layer3/lstm_cell_15/Sigmoid_3:y:0!layer3/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
$layer3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Í
layer3/TensorArrayV2_1TensorListReserve-layer3/TensorArrayV2_1/element_shape:output:0layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
layer3/timeConst*
_output_shapes
: *
dtype0*
value	B : j
layer3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
layer3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ä
layer3/whileWhile"layer3/while/loop_counter:output:0(layer3/while/maximum_iterations:output:0layer3/time:output:0layer3/TensorArrayV2_1:handle:0layer3/zeros:output:0layer3/zeros_1:output:0layer3/strided_slice_1:output:0>layer3/TensorArrayUnstack/TensorListFromTensor:output_handle:02layer3_lstm_cell_15_matmul_readvariableop_resource4layer3_lstm_cell_15_matmul_1_readvariableop_resource3layer3_lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
layer3_while_body_873862*$
condR
layer3_while_cond_873861*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
7layer3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ×
)layer3/TensorArrayV2Stack/TensorListStackTensorListStacklayer3/while:output:3@layer3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0o
layer3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
layer3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
layer3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
layer3/strided_slice_3StridedSlice2layer3/TensorArrayV2Stack/TensorListStack:tensor:0%layer3/strided_slice_3/stack:output:0'layer3/strided_slice_3/stack_1:output:0'layer3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskl
layer3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
layer3/transpose_1	Transpose2layer3/TensorArrayV2Stack/TensorListStack:tensor:0 layer3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
b
layer3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
layer4/MatMulMatMullayer3/strided_slice_3:output:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
layer4/SigmoidSigmoidlayer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
output/MatMulMatMullayer4/Sigmoid:y:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
NoOpNoOp*^input/lstm_cell_14/BiasAdd/ReadVariableOp)^input/lstm_cell_14/MatMul/ReadVariableOp+^input/lstm_cell_14/MatMul_1/ReadVariableOp^input/while^layer1/BiasAdd/ReadVariableOp ^layer1/Tensordot/ReadVariableOp^layer2/BiasAdd/ReadVariableOp ^layer2/Tensordot/ReadVariableOp+^layer3/lstm_cell_15/BiasAdd/ReadVariableOp*^layer3/lstm_cell_15/MatMul/ReadVariableOp,^layer3/lstm_cell_15/MatMul_1/ReadVariableOp^layer3/while^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2V
)input/lstm_cell_14/BiasAdd/ReadVariableOp)input/lstm_cell_14/BiasAdd/ReadVariableOp2T
(input/lstm_cell_14/MatMul/ReadVariableOp(input/lstm_cell_14/MatMul/ReadVariableOp2X
*input/lstm_cell_14/MatMul_1/ReadVariableOp*input/lstm_cell_14/MatMul_1/ReadVariableOp2
input/whileinput/while2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2B
layer1/Tensordot/ReadVariableOplayer1/Tensordot/ReadVariableOp2>
layer2/BiasAdd/ReadVariableOplayer2/BiasAdd/ReadVariableOp2B
layer2/Tensordot/ReadVariableOplayer2/Tensordot/ReadVariableOp2X
*layer3/lstm_cell_15/BiasAdd/ReadVariableOp*layer3/lstm_cell_15/BiasAdd/ReadVariableOp2V
)layer3/lstm_cell_15/MatMul/ReadVariableOp)layer3/lstm_cell_15/MatMul/ReadVariableOp2Z
+layer3/lstm_cell_15/MatMul_1/ReadVariableOp+layer3/lstm_cell_15/MatMul_1/ReadVariableOp2
layer3/whilelayer3/while2>
layer4/BiasAdd/ReadVariableOplayer4/BiasAdd/ReadVariableOp2<
layer4/MatMul/ReadVariableOplayer4/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
ò
±
'__inference_layer3_layer_call_fn_874735

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_872781o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
8
Ê
while_body_875080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_15_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_15_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_15_matmul_readvariableop_resource:2(E
3while_lstm_cell_15_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_15_biasadd_readvariableop_resource:(¢)while/lstm_cell_15/BiasAdd/ReadVariableOp¢(while/lstm_cell_15/MatMul/ReadVariableOp¢*while/lstm_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0 while/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_3Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_15/Sigmoid_4Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_3:y:0 while/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
ò
±
'__inference_layer3_layer_call_fn_874724

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_872531o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
8
Ê
while_body_875223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_15_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_15_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_15_matmul_readvariableop_resource:2(E
3while_lstm_cell_15_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_15_biasadd_readvariableop_resource:(¢)while/lstm_cell_15/BiasAdd/ReadVariableOp¢(while/lstm_cell_15/MatMul/ReadVariableOp¢*while/lstm_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0 while/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_3Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_15/Sigmoid_4Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_3:y:0 while/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_874240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_874240___redundant_placeholder04
0while_while_cond_874240___redundant_placeholder14
0while_while_cond_874240___redundant_placeholder24
0while_while_cond_874240___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
ÔJ

B__inference_layer3_layer_call_and_return_conditional_losses_874878
inputs_0=
+lstm_cell_15_matmul_readvariableop_resource:2(?
-lstm_cell_15_matmul_1_readvariableop_resource:
(:
,lstm_cell_15_biasadd_readvariableop_resource:(
identity¢#lstm_cell_15/BiasAdd/ReadVariableOp¢"lstm_cell_15/MatMul/ReadVariableOp¢$lstm_cell_15/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_3Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_15/Sigmoid_4Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_3:y:0lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_874794*
condR
while_cond_874793*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
Í

H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_871875

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
\
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates
Ý
ê
-__inference_sequential_7_layer_call_fn_873260

inputs
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
	unknown_2:<<
	unknown_3:<
	unknown_4:<2
	unknown_5:2
	unknown_6:2(
	unknown_7:
(
	unknown_8:(
	unknown_9:


unknown_10:

unknown_11:

unknown_12:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_873048o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
·@
ª

layer3_while_body_873512*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3)
%layer3_while_layer3_strided_slice_1_0e
alayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0L
:layer3_while_lstm_cell_15_matmul_readvariableop_resource_0:2(N
<layer3_while_lstm_cell_15_matmul_1_readvariableop_resource_0:
(I
;layer3_while_lstm_cell_15_biasadd_readvariableop_resource_0:(
layer3_while_identity
layer3_while_identity_1
layer3_while_identity_2
layer3_while_identity_3
layer3_while_identity_4
layer3_while_identity_5'
#layer3_while_layer3_strided_slice_1c
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensorJ
8layer3_while_lstm_cell_15_matmul_readvariableop_resource:2(L
:layer3_while_lstm_cell_15_matmul_1_readvariableop_resource:
(G
9layer3_while_lstm_cell_15_biasadd_readvariableop_resource:(¢0layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp¢/layer3/while/lstm_cell_15/MatMul/ReadVariableOp¢1layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp
>layer3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   É
0layer3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0layer3_while_placeholderGlayer3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0ª
/layer3/while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp:layer3_while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Î
 layer3/while/lstm_cell_15/MatMulMatMul7layer3/while/TensorArrayV2Read/TensorListGetItem:item:07layer3/while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(®
1layer3/while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp<layer3_while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0µ
"layer3/while/lstm_cell_15/MatMul_1MatMullayer3_while_placeholder_29layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
layer3/while/lstm_cell_15/addAddV2*layer3/while/lstm_cell_15/MatMul:product:0,layer3/while/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¨
0layer3/while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp;layer3_while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0»
!layer3/while/lstm_cell_15/BiasAddBiasAdd!layer3/while/lstm_cell_15/add:z:08layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(k
)layer3/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
layer3/while/lstm_cell_15/splitSplit2layer3/while/lstm_cell_15/split/split_dim:output:0*layer3/while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
!layer3/while/lstm_cell_15/SigmoidSigmoid(layer3/while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_15/Sigmoid_1Sigmoid(layer3/while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/lstm_cell_15/mulMul'layer3/while/lstm_cell_15/Sigmoid_1:y:0layer3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_15/Sigmoid_2Sigmoid(layer3/while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
layer3/while/lstm_cell_15/mul_1Mul%layer3/while/lstm_cell_15/Sigmoid:y:0'layer3/while/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
layer3/while/lstm_cell_15/add_1AddV2!layer3/while/lstm_cell_15/mul:z:0#layer3/while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_15/Sigmoid_3Sigmoid(layer3/while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_15/Sigmoid_4Sigmoid#layer3/while/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
layer3/while/lstm_cell_15/mul_2Mul'layer3/while/lstm_cell_15/Sigmoid_3:y:0'layer3/while/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
1layer3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlayer3_while_placeholder_1layer3_while_placeholder#layer3/while/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒT
layer3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
layer3/while/addAddV2layer3_while_placeholderlayer3/while/add/y:output:0*
T0*
_output_shapes
: V
layer3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
layer3/while/add_1AddV2&layer3_while_layer3_while_loop_counterlayer3/while/add_1/y:output:0*
T0*
_output_shapes
: n
layer3/while/IdentityIdentitylayer3/while/add_1:z:0^layer3/while/NoOp*
T0*
_output_shapes
: 
layer3/while/Identity_1Identity,layer3_while_layer3_while_maximum_iterations^layer3/while/NoOp*
T0*
_output_shapes
: n
layer3/while/Identity_2Identitylayer3/while/add:z:0^layer3/while/NoOp*
T0*
_output_shapes
: ®
layer3/while/Identity_3IdentityAlayer3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^layer3/while/NoOp*
T0*
_output_shapes
: :éèÒ
layer3/while/Identity_4Identity#layer3/while/lstm_cell_15/mul_2:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/Identity_5Identity#layer3/while/lstm_cell_15/add_1:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ì
layer3/while/NoOpNoOp1^layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp0^layer3/while/lstm_cell_15/MatMul/ReadVariableOp2^layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
layer3_while_identitylayer3/while/Identity:output:0";
layer3_while_identity_1 layer3/while/Identity_1:output:0";
layer3_while_identity_2 layer3/while/Identity_2:output:0";
layer3_while_identity_3 layer3/while/Identity_3:output:0";
layer3_while_identity_4 layer3/while/Identity_4:output:0";
layer3_while_identity_5 layer3/while/Identity_5:output:0"L
#layer3_while_layer3_strided_slice_1%layer3_while_layer3_strided_slice_1_0"x
9layer3_while_lstm_cell_15_biasadd_readvariableop_resource;layer3_while_lstm_cell_15_biasadd_readvariableop_resource_0"z
:layer3_while_lstm_cell_15_matmul_1_readvariableop_resource<layer3_while_lstm_cell_15_matmul_1_readvariableop_resource_0"v
8layer3_while_lstm_cell_15_matmul_readvariableop_resource:layer3_while_lstm_cell_15_matmul_readvariableop_resource_0"Ä
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensoralayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2d
0layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp0layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp2b
/layer3/while/lstm_cell_15/MatMul/ReadVariableOp/layer3/while/lstm_cell_15/MatMul/ReadVariableOp2f
1layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp1layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_874097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_874097___redundant_placeholder04
0while_while_cond_874097___redundant_placeholder14
0while_while_cond_874097___redundant_placeholder24
0while_while_cond_874097___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:

µ
&__inference_input_layer_call_fn_874039

inputs
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_872966s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
µ
Ã
while_cond_874526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_874526___redundant_placeholder04
0while_while_cond_874526___redundant_placeholder14
0while_while_cond_874526___redundant_placeholder24
0while_while_cond_874526___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
:
ÿ"
ç
while_body_871539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_14_871563_0:áð.
while_lstm_cell_14_871565_0:	<ð*
while_lstm_cell_14_871567_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_14_871563:áð,
while_lstm_cell_14_871565:	<ð(
while_lstm_cell_14_871567:	ð¢*while/lstm_cell_14/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0³
*while/lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14_871563_0while_lstm_cell_14_871565_0while_lstm_cell_14_871567_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_871525Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_14/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/Identity_5Identity3while/lstm_cell_14/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y

while/NoOpNoOp+^while/lstm_cell_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_14_871563while_lstm_cell_14_871563_0"8
while_lstm_cell_14_871565while_lstm_cell_14_871565_0"8
while_lstm_cell_14_871567while_lstm_cell_14_871567_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2X
*while/lstm_cell_14/StatefulPartitionedCall*while/lstm_cell_14/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 
Ý

H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_871525

inputs

states
states_13
matmul_readvariableop_resource:áð3
 matmul_1_readvariableop_resource:	<ð.
biasadd_readvariableop_resource:	ð
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿá:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_namestates
·@
ª

layer3_while_body_873862*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3)
%layer3_while_layer3_strided_slice_1_0e
alayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0L
:layer3_while_lstm_cell_15_matmul_readvariableop_resource_0:2(N
<layer3_while_lstm_cell_15_matmul_1_readvariableop_resource_0:
(I
;layer3_while_lstm_cell_15_biasadd_readvariableop_resource_0:(
layer3_while_identity
layer3_while_identity_1
layer3_while_identity_2
layer3_while_identity_3
layer3_while_identity_4
layer3_while_identity_5'
#layer3_while_layer3_strided_slice_1c
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensorJ
8layer3_while_lstm_cell_15_matmul_readvariableop_resource:2(L
:layer3_while_lstm_cell_15_matmul_1_readvariableop_resource:
(G
9layer3_while_lstm_cell_15_biasadd_readvariableop_resource:(¢0layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp¢/layer3/while/lstm_cell_15/MatMul/ReadVariableOp¢1layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp
>layer3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   É
0layer3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0layer3_while_placeholderGlayer3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0ª
/layer3/while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp:layer3_while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Î
 layer3/while/lstm_cell_15/MatMulMatMul7layer3/while/TensorArrayV2Read/TensorListGetItem:item:07layer3/while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(®
1layer3/while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp<layer3_while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0µ
"layer3/while/lstm_cell_15/MatMul_1MatMullayer3_while_placeholder_29layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
layer3/while/lstm_cell_15/addAddV2*layer3/while/lstm_cell_15/MatMul:product:0,layer3/while/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¨
0layer3/while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp;layer3_while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0»
!layer3/while/lstm_cell_15/BiasAddBiasAdd!layer3/while/lstm_cell_15/add:z:08layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(k
)layer3/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
layer3/while/lstm_cell_15/splitSplit2layer3/while/lstm_cell_15/split/split_dim:output:0*layer3/while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
!layer3/while/lstm_cell_15/SigmoidSigmoid(layer3/while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_15/Sigmoid_1Sigmoid(layer3/while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/lstm_cell_15/mulMul'layer3/while/lstm_cell_15/Sigmoid_1:y:0layer3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_15/Sigmoid_2Sigmoid(layer3/while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
layer3/while/lstm_cell_15/mul_1Mul%layer3/while/lstm_cell_15/Sigmoid:y:0'layer3/while/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
layer3/while/lstm_cell_15/add_1AddV2!layer3/while/lstm_cell_15/mul:z:0#layer3/while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_15/Sigmoid_3Sigmoid(layer3/while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_15/Sigmoid_4Sigmoid#layer3/while/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
layer3/while/lstm_cell_15/mul_2Mul'layer3/while/lstm_cell_15/Sigmoid_3:y:0'layer3/while/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
1layer3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlayer3_while_placeholder_1layer3_while_placeholder#layer3/while/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒT
layer3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
layer3/while/addAddV2layer3_while_placeholderlayer3/while/add/y:output:0*
T0*
_output_shapes
: V
layer3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
layer3/while/add_1AddV2&layer3_while_layer3_while_loop_counterlayer3/while/add_1/y:output:0*
T0*
_output_shapes
: n
layer3/while/IdentityIdentitylayer3/while/add_1:z:0^layer3/while/NoOp*
T0*
_output_shapes
: 
layer3/while/Identity_1Identity,layer3_while_layer3_while_maximum_iterations^layer3/while/NoOp*
T0*
_output_shapes
: n
layer3/while/Identity_2Identitylayer3/while/add:z:0^layer3/while/NoOp*
T0*
_output_shapes
: ®
layer3/while/Identity_3IdentityAlayer3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^layer3/while/NoOp*
T0*
_output_shapes
: :éèÒ
layer3/while/Identity_4Identity#layer3/while/lstm_cell_15/mul_2:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/Identity_5Identity#layer3/while/lstm_cell_15/add_1:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ì
layer3/while/NoOpNoOp1^layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp0^layer3/while/lstm_cell_15/MatMul/ReadVariableOp2^layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
layer3_while_identitylayer3/while/Identity:output:0";
layer3_while_identity_1 layer3/while/Identity_1:output:0";
layer3_while_identity_2 layer3/while/Identity_2:output:0";
layer3_while_identity_3 layer3/while/Identity_3:output:0";
layer3_while_identity_4 layer3/while/Identity_4:output:0";
layer3_while_identity_5 layer3/while/Identity_5:output:0"L
#layer3_while_layer3_strided_slice_1%layer3_while_layer3_strided_slice_1_0"x
9layer3_while_lstm_cell_15_biasadd_readvariableop_resource;layer3_while_lstm_cell_15_biasadd_readvariableop_resource_0"z
:layer3_while_lstm_cell_15_matmul_1_readvariableop_resource<layer3_while_lstm_cell_15_matmul_1_readvariableop_resource_0"v
8layer3_while_lstm_cell_15_matmul_readvariableop_resource:layer3_while_lstm_cell_15_matmul_readvariableop_resource_0"Ä
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensoralayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2d
0layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp0layer3/while/lstm_cell_15/BiasAdd/ReadVariableOp2b
/layer3/while/lstm_cell_15/MatMul/ReadVariableOp/layer3/while/lstm_cell_15/MatMul/ReadVariableOp2f
1layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp1layer3/while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
¡
ù
B__inference_layer1_layer_call_and_return_conditional_losses_874651

inputs3
!tensordot_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:<<*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:<Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
ëJ

A__inference_input_layer_call_and_return_conditional_losses_874325
inputs_0@
+lstm_cell_14_matmul_readvariableop_resource:áð@
-lstm_cell_14_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_14_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_14/BiasAdd/ReadVariableOp¢"lstm_cell_14/MatMul/ReadVariableOp¢$lstm_cell_14/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          z
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿáD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ë
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_874241*
condR
while_cond_874240*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<À
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:` \
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
"
_user_specified_name
inputs/0
 
ù
B__inference_layer2_layer_call_and_return_conditional_losses_874691

inputs3
!tensordot_readvariableop_resource:<2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:<2*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Z
SigmoidSigmoidBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2^
IdentityIdentitySigmoid:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

³
'__inference_layer3_layer_call_fn_874713
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_872149o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
ó"
Ý
while_body_871889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_15_871913_0:2(-
while_lstm_cell_15_871915_0:
()
while_lstm_cell_15_871917_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_15_871913:2(+
while_lstm_cell_15_871915:
('
while_lstm_cell_15_871917:(¢*while/lstm_cell_15/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0³
*while/lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_15_871913_0while_lstm_cell_15_871915_0while_lstm_cell_15_871917_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_871875Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_15/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_15/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity3while/lstm_cell_15/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y

while/NoOpNoOp+^while/lstm_cell_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_15_871913while_lstm_cell_15_871913_0"8
while_lstm_cell_15_871915while_lstm_cell_15_871915_0"8
while_lstm_cell_15_871917while_lstm_cell_15_871917_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_15/StatefulPartitionedCall*while/lstm_cell_15/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 


ó
B__inference_layer4_layer_call_and_return_conditional_losses_875327

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


ó
B__inference_layer4_layer_call_and_return_conditional_losses_872550

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
J

B__inference_layer3_layer_call_and_return_conditional_losses_872531

inputs=
+lstm_cell_15_matmul_readvariableop_resource:2(?
-lstm_cell_15_matmul_1_readvariableop_resource:
(:
,lstm_cell_15_biasadd_readvariableop_resource:(
identity¢#lstm_cell_15/BiasAdd/ReadVariableOp¢"lstm_cell_15/MatMul/ReadVariableOp¢$lstm_cell_15/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_3Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_15/Sigmoid_4Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_3:y:0lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_872447*
condR
while_cond_872446*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
²?


input_while_body_873319(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3'
#input_while_input_strided_slice_1_0c
_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0N
9input_while_lstm_cell_14_matmul_readvariableop_resource_0:áðN
;input_while_lstm_cell_14_matmul_1_readvariableop_resource_0:	<ðI
:input_while_lstm_cell_14_biasadd_readvariableop_resource_0:	ð
input_while_identity
input_while_identity_1
input_while_identity_2
input_while_identity_3
input_while_identity_4
input_while_identity_5%
!input_while_input_strided_slice_1a
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensorL
7input_while_lstm_cell_14_matmul_readvariableop_resource:áðL
9input_while_lstm_cell_14_matmul_1_readvariableop_resource:	<ðG
8input_while_lstm_cell_14_biasadd_readvariableop_resource:	ð¢/input/while/lstm_cell_14/BiasAdd/ReadVariableOp¢.input/while/lstm_cell_14/MatMul/ReadVariableOp¢0input/while/lstm_cell_14/MatMul_1/ReadVariableOp
=input/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá Æ
/input/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0input_while_placeholderFinput/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0«
.input/while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp9input_while_lstm_cell_14_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0Ì
input/while/lstm_cell_14/MatMulMatMul6input/while/TensorArrayV2Read/TensorListGetItem:item:06input/while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð­
0input/while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp;input_while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0³
!input/while/lstm_cell_14/MatMul_1MatMulinput_while_placeholder_28input/while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð°
input/while/lstm_cell_14/addAddV2)input/while/lstm_cell_14/MatMul:product:0+input/while/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð§
/input/while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp:input_while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¹
 input/while/lstm_cell_14/BiasAddBiasAdd input/while/lstm_cell_14/add:z:07input/while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðj
(input/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
input/while/lstm_cell_14/splitSplit1input/while/lstm_cell_14/split/split_dim:output:0)input/while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
 input/while/lstm_cell_14/SigmoidSigmoid'input/while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"input/while/lstm_cell_14/Sigmoid_1Sigmoid'input/while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_14/mulMul&input/while/lstm_cell_14/Sigmoid_1:y:0input_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_14/ReluRelu'input/while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<ª
input/while/lstm_cell_14/mul_1Mul$input/while/lstm_cell_14/Sigmoid:y:0+input/while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_14/add_1AddV2 input/while/lstm_cell_14/mul:z:0"input/while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"input/while/lstm_cell_14/Sigmoid_2Sigmoid'input/while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<}
input/while/lstm_cell_14/Relu_1Relu"input/while/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<®
input/while/lstm_cell_14/mul_2Mul&input/while/lstm_cell_14/Sigmoid_2:y:0-input/while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ý
0input/while/TensorArrayV2Write/TensorListSetItemTensorListSetIteminput_while_placeholder_1input_while_placeholder"input/while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
input/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
input/while/addAddV2input_while_placeholderinput/while/add/y:output:0*
T0*
_output_shapes
: U
input/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
input/while/add_1AddV2$input_while_input_while_loop_counterinput/while/add_1/y:output:0*
T0*
_output_shapes
: k
input/while/IdentityIdentityinput/while/add_1:z:0^input/while/NoOp*
T0*
_output_shapes
: 
input/while/Identity_1Identity*input_while_input_while_maximum_iterations^input/while/NoOp*
T0*
_output_shapes
: k
input/while/Identity_2Identityinput/while/add:z:0^input/while/NoOp*
T0*
_output_shapes
: «
input/while/Identity_3Identity@input/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^input/while/NoOp*
T0*
_output_shapes
: :éèÒ
input/while/Identity_4Identity"input/while/lstm_cell_14/mul_2:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/Identity_5Identity"input/while/lstm_cell_14/add_1:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<è
input/while/NoOpNoOp0^input/while/lstm_cell_14/BiasAdd/ReadVariableOp/^input/while/lstm_cell_14/MatMul/ReadVariableOp1^input/while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
input_while_identityinput/while/Identity:output:0"9
input_while_identity_1input/while/Identity_1:output:0"9
input_while_identity_2input/while/Identity_2:output:0"9
input_while_identity_3input/while/Identity_3:output:0"9
input_while_identity_4input/while/Identity_4:output:0"9
input_while_identity_5input/while/Identity_5:output:0"H
!input_while_input_strided_slice_1#input_while_input_strided_slice_1_0"v
8input_while_lstm_cell_14_biasadd_readvariableop_resource:input_while_lstm_cell_14_biasadd_readvariableop_resource_0"x
9input_while_lstm_cell_14_matmul_1_readvariableop_resource;input_while_lstm_cell_14_matmul_1_readvariableop_resource_0"t
7input_while_lstm_cell_14_matmul_readvariableop_resource9input_while_lstm_cell_14_matmul_readvariableop_resource_0"À
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2b
/input/while/lstm_cell_14/BiasAdd/ReadVariableOp/input/while/lstm_cell_14/BiasAdd/ReadVariableOp2`
.input/while/lstm_cell_14/MatMul/ReadVariableOp.input/while/lstm_cell_14/MatMul/ReadVariableOp2d
0input/while/lstm_cell_14/MatMul_1/ReadVariableOp0input/while/lstm_cell_14/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 
­J

A__inference_input_layer_call_and_return_conditional_losses_874468

inputs@
+lstm_cell_14_matmul_readvariableop_resource:áð@
-lstm_cell_14_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_14_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_14/BiasAdd/ReadVariableOp¢"lstm_cell_14/MatMul/ReadVariableOp¢$lstm_cell_14/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿáD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ë
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_874384*
condR
while_cond_874383*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<À
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
8

B__inference_layer3_layer_call_and_return_conditional_losses_872149

inputs%
lstm_cell_15_872067:2(%
lstm_cell_15_872069:
(!
lstm_cell_15_872071:(
identity¢$lstm_cell_15/StatefulPartitionedCall¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_maskõ
$lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_15_872067lstm_cell_15_872069lstm_cell_15_872071*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_872021n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_15_872067lstm_cell_15_872069lstm_cell_15_872071*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_872080*
condR
while_cond_872079*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
NoOpNoOp%^lstm_cell_15/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_15/StatefulPartitionedCall$lstm_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
²?


input_while_body_873669(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3'
#input_while_input_strided_slice_1_0c
_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0N
9input_while_lstm_cell_14_matmul_readvariableop_resource_0:áðN
;input_while_lstm_cell_14_matmul_1_readvariableop_resource_0:	<ðI
:input_while_lstm_cell_14_biasadd_readvariableop_resource_0:	ð
input_while_identity
input_while_identity_1
input_while_identity_2
input_while_identity_3
input_while_identity_4
input_while_identity_5%
!input_while_input_strided_slice_1a
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensorL
7input_while_lstm_cell_14_matmul_readvariableop_resource:áðL
9input_while_lstm_cell_14_matmul_1_readvariableop_resource:	<ðG
8input_while_lstm_cell_14_biasadd_readvariableop_resource:	ð¢/input/while/lstm_cell_14/BiasAdd/ReadVariableOp¢.input/while/lstm_cell_14/MatMul/ReadVariableOp¢0input/while/lstm_cell_14/MatMul_1/ReadVariableOp
=input/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá Æ
/input/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0input_while_placeholderFinput/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0«
.input/while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp9input_while_lstm_cell_14_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0Ì
input/while/lstm_cell_14/MatMulMatMul6input/while/TensorArrayV2Read/TensorListGetItem:item:06input/while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð­
0input/while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp;input_while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0³
!input/while/lstm_cell_14/MatMul_1MatMulinput_while_placeholder_28input/while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð°
input/while/lstm_cell_14/addAddV2)input/while/lstm_cell_14/MatMul:product:0+input/while/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð§
/input/while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp:input_while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¹
 input/while/lstm_cell_14/BiasAddBiasAdd input/while/lstm_cell_14/add:z:07input/while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðj
(input/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
input/while/lstm_cell_14/splitSplit1input/while/lstm_cell_14/split/split_dim:output:0)input/while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
 input/while/lstm_cell_14/SigmoidSigmoid'input/while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"input/while/lstm_cell_14/Sigmoid_1Sigmoid'input/while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_14/mulMul&input/while/lstm_cell_14/Sigmoid_1:y:0input_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_14/ReluRelu'input/while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<ª
input/while/lstm_cell_14/mul_1Mul$input/while/lstm_cell_14/Sigmoid:y:0+input/while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_14/add_1AddV2 input/while/lstm_cell_14/mul:z:0"input/while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"input/while/lstm_cell_14/Sigmoid_2Sigmoid'input/while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<}
input/while/lstm_cell_14/Relu_1Relu"input/while/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<®
input/while/lstm_cell_14/mul_2Mul&input/while/lstm_cell_14/Sigmoid_2:y:0-input/while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ý
0input/while/TensorArrayV2Write/TensorListSetItemTensorListSetIteminput_while_placeholder_1input_while_placeholder"input/while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒS
input/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
input/while/addAddV2input_while_placeholderinput/while/add/y:output:0*
T0*
_output_shapes
: U
input/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
input/while/add_1AddV2$input_while_input_while_loop_counterinput/while/add_1/y:output:0*
T0*
_output_shapes
: k
input/while/IdentityIdentityinput/while/add_1:z:0^input/while/NoOp*
T0*
_output_shapes
: 
input/while/Identity_1Identity*input_while_input_while_maximum_iterations^input/while/NoOp*
T0*
_output_shapes
: k
input/while/Identity_2Identityinput/while/add:z:0^input/while/NoOp*
T0*
_output_shapes
: «
input/while/Identity_3Identity@input/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^input/while/NoOp*
T0*
_output_shapes
: :éèÒ
input/while/Identity_4Identity"input/while/lstm_cell_14/mul_2:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/Identity_5Identity"input/while/lstm_cell_14/add_1:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<è
input/while/NoOpNoOp0^input/while/lstm_cell_14/BiasAdd/ReadVariableOp/^input/while/lstm_cell_14/MatMul/ReadVariableOp1^input/while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
input_while_identityinput/while/Identity:output:0"9
input_while_identity_1input/while/Identity_1:output:0"9
input_while_identity_2input/while/Identity_2:output:0"9
input_while_identity_3input/while/Identity_3:output:0"9
input_while_identity_4input/while/Identity_4:output:0"9
input_while_identity_5input/while/Identity_5:output:0"H
!input_while_input_strided_slice_1#input_while_input_strided_slice_1_0"v
8input_while_lstm_cell_14_biasadd_readvariableop_resource:input_while_lstm_cell_14_biasadd_readvariableop_resource_0"x
9input_while_lstm_cell_14_matmul_1_readvariableop_resource;input_while_lstm_cell_14_matmul_1_readvariableop_resource_0"t
7input_while_lstm_cell_14_matmul_readvariableop_resource9input_while_lstm_cell_14_matmul_readvariableop_resource_0"À
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2b
/input/while/lstm_cell_14/BiasAdd/ReadVariableOp/input/while/lstm_cell_14/BiasAdd/ReadVariableOp2`
.input/while/lstm_cell_14/MatMul/ReadVariableOp.input/while/lstm_cell_14/MatMul/ReadVariableOp2d
0input/while/lstm_cell_14/MatMul_1/ReadVariableOp0input/while/lstm_cell_14/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 
Ð
§!
"__inference__traced_restore_875888
file_prefix0
assignvariableop_layer1_kernel:<<,
assignvariableop_1_layer1_bias:<2
 assignvariableop_2_layer2_kernel:<2,
assignvariableop_3_layer2_bias:22
 assignvariableop_4_layer4_kernel:
,
assignvariableop_5_layer4_bias:2
 assignvariableop_6_output_kernel:,
assignvariableop_7_output_bias:'
assignvariableop_8_nadam_iter:	 )
assignvariableop_9_nadam_beta_1: *
 assignvariableop_10_nadam_beta_2: )
assignvariableop_11_nadam_decay: 1
'assignvariableop_12_nadam_learning_rate: 2
(assignvariableop_13_nadam_momentum_cache: B
-assignvariableop_14_input_lstm_cell_14_kernel:áðJ
7assignvariableop_15_input_lstm_cell_14_recurrent_kernel:	<ð:
+assignvariableop_16_input_lstm_cell_14_bias:	ð@
.assignvariableop_17_layer3_lstm_cell_15_kernel:2(J
8assignvariableop_18_layer3_lstm_cell_15_recurrent_kernel:
(:
,assignvariableop_19_layer3_lstm_cell_15_bias:(#
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: ;
)assignvariableop_24_nadam_layer1_kernel_m:<<5
'assignvariableop_25_nadam_layer1_bias_m:<;
)assignvariableop_26_nadam_layer2_kernel_m:<25
'assignvariableop_27_nadam_layer2_bias_m:2;
)assignvariableop_28_nadam_layer4_kernel_m:
5
'assignvariableop_29_nadam_layer4_bias_m:;
)assignvariableop_30_nadam_output_kernel_m:5
'assignvariableop_31_nadam_output_bias_m:J
5assignvariableop_32_nadam_input_lstm_cell_14_kernel_m:áðR
?assignvariableop_33_nadam_input_lstm_cell_14_recurrent_kernel_m:	<ðB
3assignvariableop_34_nadam_input_lstm_cell_14_bias_m:	ðH
6assignvariableop_35_nadam_layer3_lstm_cell_15_kernel_m:2(R
@assignvariableop_36_nadam_layer3_lstm_cell_15_recurrent_kernel_m:
(B
4assignvariableop_37_nadam_layer3_lstm_cell_15_bias_m:(;
)assignvariableop_38_nadam_layer1_kernel_v:<<5
'assignvariableop_39_nadam_layer1_bias_v:<;
)assignvariableop_40_nadam_layer2_kernel_v:<25
'assignvariableop_41_nadam_layer2_bias_v:2;
)assignvariableop_42_nadam_layer4_kernel_v:
5
'assignvariableop_43_nadam_layer4_bias_v:;
)assignvariableop_44_nadam_output_kernel_v:5
'assignvariableop_45_nadam_output_bias_v:J
5assignvariableop_46_nadam_input_lstm_cell_14_kernel_v:áðR
?assignvariableop_47_nadam_input_lstm_cell_14_recurrent_kernel_v:	<ðB
3assignvariableop_48_nadam_input_lstm_cell_14_bias_v:	ðH
6assignvariableop_49_nadam_layer3_lstm_cell_15_kernel_v:2(R
@assignvariableop_50_nadam_layer3_lstm_cell_15_recurrent_kernel_v:
(B
4assignvariableop_51_nadam_layer3_lstm_cell_15_bias_v:(
identity_53¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:5*
dtype0*­
value£B 5B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÚ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:5*
dtype0*}
valuetBr5B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ª
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ê
_output_shapes×
Ô:::::::::::::::::::::::::::::::::::::::::::::::::::::*C
dtypes9
725	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp assignvariableop_2_layer2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp assignvariableop_4_layer4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_layer4_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp assignvariableop_6_output_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_output_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_nadam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_nadam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp assignvariableop_10_nadam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_nadam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp'assignvariableop_12_nadam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp(assignvariableop_13_nadam_momentum_cacheIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp-assignvariableop_14_input_lstm_cell_14_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_15AssignVariableOp7assignvariableop_15_input_lstm_cell_14_recurrent_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp+assignvariableop_16_input_lstm_cell_14_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp.assignvariableop_17_layer3_lstm_cell_15_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_18AssignVariableOp8assignvariableop_18_layer3_lstm_cell_15_recurrent_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp,assignvariableop_19_layer3_lstm_cell_15_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp)assignvariableop_24_nadam_layer1_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp'assignvariableop_25_nadam_layer1_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_nadam_layer2_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp'assignvariableop_27_nadam_layer2_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp)assignvariableop_28_nadam_layer4_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp'assignvariableop_29_nadam_layer4_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp)assignvariableop_30_nadam_output_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp'assignvariableop_31_nadam_output_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_32AssignVariableOp5assignvariableop_32_nadam_input_lstm_cell_14_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_33AssignVariableOp?assignvariableop_33_nadam_input_lstm_cell_14_recurrent_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_34AssignVariableOp3assignvariableop_34_nadam_input_lstm_cell_14_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_35AssignVariableOp6assignvariableop_35_nadam_layer3_lstm_cell_15_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_36AssignVariableOp@assignvariableop_36_nadam_layer3_lstm_cell_15_recurrent_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_37AssignVariableOp4assignvariableop_37_nadam_layer3_lstm_cell_15_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp)assignvariableop_38_nadam_layer1_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp'assignvariableop_39_nadam_layer1_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp)assignvariableop_40_nadam_layer2_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp'assignvariableop_41_nadam_layer2_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp)assignvariableop_42_nadam_layer4_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp'assignvariableop_43_nadam_layer4_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp)assignvariableop_44_nadam_output_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp'assignvariableop_45_nadam_output_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_46AssignVariableOp5assignvariableop_46_nadam_input_lstm_cell_14_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_47AssignVariableOp?assignvariableop_47_nadam_input_lstm_cell_14_recurrent_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_48AssignVariableOp3assignvariableop_48_nadam_input_lstm_cell_14_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_49AssignVariableOp6assignvariableop_49_nadam_layer3_lstm_cell_15_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_50AssignVariableOp@assignvariableop_50_nadam_layer3_lstm_cell_15_recurrent_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_51AssignVariableOp4assignvariableop_51_nadam_layer3_lstm_cell_15_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ç	
Identity_52Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_53IdentityIdentity_52:output:0^NoOp_1*
T0*
_output_shapes
: ´	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_53Identity_53:output:0*}
_input_shapesl
j: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_51AssignVariableOp_512(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
§8
Ô
while_body_874527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_14_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_14_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_14_matmul_readvariableop_resource:áðF
3while_lstm_cell_14_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_14_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_14/BiasAdd/ReadVariableOp¢(while/lstm_cell_14/MatMul/ReadVariableOp¢*while/lstm_cell_14/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_872079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_872079___redundant_placeholder04
0while_while_cond_872079___redundant_placeholder14
0while_while_cond_872079___redundant_placeholder24
0while_while_cond_872079___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:
Àh

__inference__traced_save_875722
file_prefix,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop,
(savev2_layer2_kernel_read_readvariableop*
&savev2_layer2_bias_read_readvariableop,
(savev2_layer4_kernel_read_readvariableop*
&savev2_layer4_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop8
4savev2_input_lstm_cell_14_kernel_read_readvariableopB
>savev2_input_lstm_cell_14_recurrent_kernel_read_readvariableop6
2savev2_input_lstm_cell_14_bias_read_readvariableop9
5savev2_layer3_lstm_cell_15_kernel_read_readvariableopC
?savev2_layer3_lstm_cell_15_recurrent_kernel_read_readvariableop7
3savev2_layer3_lstm_cell_15_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_nadam_layer1_kernel_m_read_readvariableop2
.savev2_nadam_layer1_bias_m_read_readvariableop4
0savev2_nadam_layer2_kernel_m_read_readvariableop2
.savev2_nadam_layer2_bias_m_read_readvariableop4
0savev2_nadam_layer4_kernel_m_read_readvariableop2
.savev2_nadam_layer4_bias_m_read_readvariableop4
0savev2_nadam_output_kernel_m_read_readvariableop2
.savev2_nadam_output_bias_m_read_readvariableop@
<savev2_nadam_input_lstm_cell_14_kernel_m_read_readvariableopJ
Fsavev2_nadam_input_lstm_cell_14_recurrent_kernel_m_read_readvariableop>
:savev2_nadam_input_lstm_cell_14_bias_m_read_readvariableopA
=savev2_nadam_layer3_lstm_cell_15_kernel_m_read_readvariableopK
Gsavev2_nadam_layer3_lstm_cell_15_recurrent_kernel_m_read_readvariableop?
;savev2_nadam_layer3_lstm_cell_15_bias_m_read_readvariableop4
0savev2_nadam_layer1_kernel_v_read_readvariableop2
.savev2_nadam_layer1_bias_v_read_readvariableop4
0savev2_nadam_layer2_kernel_v_read_readvariableop2
.savev2_nadam_layer2_bias_v_read_readvariableop4
0savev2_nadam_layer4_kernel_v_read_readvariableop2
.savev2_nadam_layer4_bias_v_read_readvariableop4
0savev2_nadam_output_kernel_v_read_readvariableop2
.savev2_nadam_output_bias_v_read_readvariableop@
<savev2_nadam_input_lstm_cell_14_kernel_v_read_readvariableopJ
Fsavev2_nadam_input_lstm_cell_14_recurrent_kernel_v_read_readvariableop>
:savev2_nadam_input_lstm_cell_14_bias_v_read_readvariableopA
=savev2_nadam_layer3_lstm_cell_15_kernel_v_read_readvariableopK
Gsavev2_nadam_layer3_lstm_cell_15_recurrent_kernel_v_read_readvariableop?
;savev2_nadam_layer3_lstm_cell_15_bias_v_read_readvariableop
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:5*
dtype0*­
value£B 5B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH×
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:5*
dtype0*}
valuetBr5B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¯
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_layer2_kernel_read_readvariableop&savev2_layer2_bias_read_readvariableop(savev2_layer4_kernel_read_readvariableop&savev2_layer4_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop4savev2_input_lstm_cell_14_kernel_read_readvariableop>savev2_input_lstm_cell_14_recurrent_kernel_read_readvariableop2savev2_input_lstm_cell_14_bias_read_readvariableop5savev2_layer3_lstm_cell_15_kernel_read_readvariableop?savev2_layer3_lstm_cell_15_recurrent_kernel_read_readvariableop3savev2_layer3_lstm_cell_15_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_nadam_layer1_kernel_m_read_readvariableop.savev2_nadam_layer1_bias_m_read_readvariableop0savev2_nadam_layer2_kernel_m_read_readvariableop.savev2_nadam_layer2_bias_m_read_readvariableop0savev2_nadam_layer4_kernel_m_read_readvariableop.savev2_nadam_layer4_bias_m_read_readvariableop0savev2_nadam_output_kernel_m_read_readvariableop.savev2_nadam_output_bias_m_read_readvariableop<savev2_nadam_input_lstm_cell_14_kernel_m_read_readvariableopFsavev2_nadam_input_lstm_cell_14_recurrent_kernel_m_read_readvariableop:savev2_nadam_input_lstm_cell_14_bias_m_read_readvariableop=savev2_nadam_layer3_lstm_cell_15_kernel_m_read_readvariableopGsavev2_nadam_layer3_lstm_cell_15_recurrent_kernel_m_read_readvariableop;savev2_nadam_layer3_lstm_cell_15_bias_m_read_readvariableop0savev2_nadam_layer1_kernel_v_read_readvariableop.savev2_nadam_layer1_bias_v_read_readvariableop0savev2_nadam_layer2_kernel_v_read_readvariableop.savev2_nadam_layer2_bias_v_read_readvariableop0savev2_nadam_layer4_kernel_v_read_readvariableop.savev2_nadam_layer4_bias_v_read_readvariableop0savev2_nadam_output_kernel_v_read_readvariableop.savev2_nadam_output_bias_v_read_readvariableop<savev2_nadam_input_lstm_cell_14_kernel_v_read_readvariableopFsavev2_nadam_input_lstm_cell_14_recurrent_kernel_v_read_readvariableop:savev2_nadam_input_lstm_cell_14_bias_v_read_readvariableop=savev2_nadam_layer3_lstm_cell_15_kernel_v_read_readvariableopGsavev2_nadam_layer3_lstm_cell_15_recurrent_kernel_v_read_readvariableop;savev2_nadam_layer3_lstm_cell_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *C
dtypes9
725	
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

identity_1Identity_1:output:0*
_input_shapes
: :<<:<:<2:2:
:::: : : : : : :áð:	<ð:ð:2(:
(:(: : : : :<<:<:<2:2:
::::áð:	<ð:ð:2(:
(:(:<<:<:<2:2:
::::áð:	<ð:ð:2(:
(:(: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:<<: 

_output_shapes
:<:$ 

_output_shapes

:<2: 

_output_shapes
:2:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	
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
: :

_output_shapes
: :'#
!
_output_shapes
:áð:%!

_output_shapes
:	<ð:!

_output_shapes	
:ð:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:<<: 

_output_shapes
:<:$ 

_output_shapes

:<2: 

_output_shapes
:2:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

::  

_output_shapes
::'!#
!
_output_shapes
:áð:%"!

_output_shapes
:	<ð:!#

_output_shapes	
:ð:$$ 

_output_shapes

:2(:$% 

_output_shapes

:
(: &

_output_shapes
:(:$' 

_output_shapes

:<<: (

_output_shapes
:<:$) 

_output_shapes

:<2: *

_output_shapes
:2:$+ 

_output_shapes

:
: ,

_output_shapes
::$- 

_output_shapes

:: .

_output_shapes
::'/#
!
_output_shapes
:áð:%0!

_output_shapes
:	<ð:!1

_output_shapes	
:ð:$2 

_output_shapes

:2(:$3 

_output_shapes

:
(: 4

_output_shapes
:(:5

_output_shapes
: 
8

A__inference_input_layer_call_and_return_conditional_losses_871608

inputs(
lstm_cell_14_871526:áð&
lstm_cell_14_871528:	<ð"
lstm_cell_14_871530:	ð
identity¢$lstm_cell_14/StatefulPartitionedCall¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputstranspose/perm:output:0*
T0*6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿáD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ë
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_maskõ
$lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_14_871526lstm_cell_14_871528lstm_cell_14_871530*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_871525n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_14_871526lstm_cell_14_871528lstm_cell_14_871530*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_871539*
condR
while_cond_871538*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<u
NoOpNoOp%^lstm_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2L
$lstm_cell_14/StatefulPartitionedCall$lstm_cell_14/StatefulPartitionedCall2
whilewhile:^ Z
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
Í

H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_872021

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_2Sigmoidsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z
mul_1MulSigmoid:y:0Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
V
	Sigmoid_3Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Q
	Sigmoid_4Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
\
mul_2MulSigmoid_3:y:0Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_namestates
ÔJ

B__inference_layer3_layer_call_and_return_conditional_losses_875021
inputs_0=
+lstm_cell_15_matmul_readvariableop_resource:2(?
-lstm_cell_15_matmul_1_readvariableop_resource:
(:
,lstm_cell_15_biasadd_readvariableop_resource:(
identity¢#lstm_cell_15/BiasAdd/ReadVariableOp¢"lstm_cell_15/MatMul/ReadVariableOp¢$lstm_cell_15/MatMul_1/ReadVariableOp¢while=
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_3Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_15/Sigmoid_4Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_3:y:0lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_874937*
condR
while_cond_874936*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
å

H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_875413

inputs
states_0
states_13
matmul_readvariableop_resource:áð3
 matmul_1_readvariableop_resource:	<ð.
biasadd_readvariableop_resource:	ð
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿá:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"
_user_specified_name
states/1
8
Ê
while_body_872447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_15_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_15_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_15_matmul_readvariableop_resource:2(E
3while_lstm_cell_15_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_15_biasadd_readvariableop_resource:(¢)while/lstm_cell_15/BiasAdd/ReadVariableOp¢(while/lstm_cell_15/MatMul/ReadVariableOp¢*while/lstm_cell_15/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0 while/lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_15/Sigmoid_3Sigmoid!while/lstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_15/Sigmoid_4Sigmoidwhile/lstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_3:y:0 while/lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
: 
ñ
ø
-__inference_lstm_cell_14_layer_call_fn_875364

inputs
states_0
states_1
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_871525o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿá:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"
_user_specified_name
states/1

µ
&__inference_input_layer_call_fn_874028

inputs
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_input_layer_call_and_return_conditional_losses_872307s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
ñ
ø
-__inference_lstm_cell_14_layer_call_fn_875381

inputs
states_0
states_1
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_871671o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿá:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"
_user_specified_name
states/1
­J

A__inference_input_layer_call_and_return_conditional_losses_872966

inputs@
+lstm_cell_14_matmul_readvariableop_resource:áð@
-lstm_cell_14_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_14_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_14/BiasAdd/ReadVariableOp¢"lstm_cell_14/MatMul/ReadVariableOp¢$lstm_cell_14/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿáD
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
valueB:ë
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_872882*
condR
while_cond_872881*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<À
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
J

B__inference_layer3_layer_call_and_return_conditional_losses_875307

inputs=
+lstm_cell_15_matmul_readvariableop_resource:2(?
-lstm_cell_15_matmul_1_readvariableop_resource:
(:
,lstm_cell_15_biasadd_readvariableop_resource:(
identity¢#lstm_cell_15/BiasAdd/ReadVariableOp¢"lstm_cell_15/MatMul/ReadVariableOp¢$lstm_cell_15/MatMul_1/ReadVariableOp¢while;
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
s
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
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
valueB:Û
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
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
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
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_15/Sigmoid_3Sigmoidlstm_cell_15/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_15/Sigmoid_4Sigmoidlstm_cell_15/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_3:y:0lstm_cell_15/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
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
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_875223*
condR
while_cond_875222*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
NoOpNoOp$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
µ
Ã
while_cond_874793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_874793___redundant_placeholder04
0while_while_cond_874793___redundant_placeholder14
0while_while_cond_874793___redundant_placeholder24
0while_while_cond_874793___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: ::::: 
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
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:

_output_shapes
: :

_output_shapes
:"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*·
serving_default£
I
input_input:
serving_default_input_input:0ÿÿÿÿÿÿÿÿÿá:
output0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÑÇ
Ð
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ú
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
»

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
Ú
)cell
*
state_spec
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/_random_generator
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
»

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
ÿ
Biter

Cbeta_1

Dbeta_2
	Edecay
Flearning_rate
Gmomentum_cachemm!m"m2m3m:m;m Hm¡Im¢Jm£Km¤Lm¥Mm¦v§v¨!v©"vª2v«3v¬:v­;v®Hv¯Iv°Jv±Kv²Lv³Mv´"
	optimizer

H0
I1
J2
3
4
!5
"6
K7
L8
M9
210
311
:12
;13"
trackable_list_wrapper

H0
I1
J2
3
4
!5
"6
K7
L8
M9
210
311
:12
;13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_7_layer_call_fn_872605
-__inference_sequential_7_layer_call_fn_873227
-__inference_sequential_7_layer_call_fn_873260
-__inference_sequential_7_layer_call_fn_873112À
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
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_7_layer_call_and_return_conditional_losses_873610
H__inference_sequential_7_layer_call_and_return_conditional_losses_873960
H__inference_sequential_7_layer_call_and_return_conditional_losses_873150
H__inference_sequential_7_layer_call_and_return_conditional_losses_873188À
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
kwonlydefaultsª 
annotationsª *
 
ÐBÍ
!__inference__wrapped_model_871458input_input"
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
annotationsª *
 
,
Sserving_default"
signature_map
ø
T
state_size

Hkernel
Irecurrent_kernel
Jbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y_random_generator
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

\states
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
û2ø
&__inference_input_layer_call_fn_874006
&__inference_input_layer_call_fn_874017
&__inference_input_layer_call_fn_874028
&__inference_input_layer_call_fn_874039Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
ç2ä
A__inference_input_layer_call_and_return_conditional_losses_874182
A__inference_input_layer_call_and_return_conditional_losses_874325
A__inference_input_layer_call_and_return_conditional_losses_874468
A__inference_input_layer_call_and_return_conditional_losses_874611Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
:<<2layer1/kernel
:<2layer1/bias
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
­
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer1_layer_call_fn_874620¢
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
annotationsª *
 
ì2é
B__inference_layer1_layer_call_and_return_conditional_losses_874651¢
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
annotationsª *
 
:<22layer2/kernel
:22layer2/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer2_layer_call_fn_874660¢
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
annotationsª *
 
ì2é
B__inference_layer2_layer_call_and_return_conditional_losses_874691¢
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
annotationsª *
 
ø
l
state_size

Kkernel
Lrecurrent_kernel
Mbias
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q_random_generator
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
K0
L1
M2"
trackable_list_wrapper
5
K0
L1
M2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
+	variables
,trainable_variables
-regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ÿ2ü
'__inference_layer3_layer_call_fn_874702
'__inference_layer3_layer_call_fn_874713
'__inference_layer3_layer_call_fn_874724
'__inference_layer3_layer_call_fn_874735Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
ë2è
B__inference_layer3_layer_call_and_return_conditional_losses_874878
B__inference_layer3_layer_call_and_return_conditional_losses_875021
B__inference_layer3_layer_call_and_return_conditional_losses_875164
B__inference_layer3_layer_call_and_return_conditional_losses_875307Õ
Ì²È
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
kwonlydefaultsª 
annotationsª *
 
:
2layer4/kernel
:2layer4/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
­
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer4_layer_call_fn_875316¢
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
annotationsª *
 
ì2é
B__inference_layer4_layer_call_and_return_conditional_losses_875327¢
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
annotationsª *
 
:2output/kernel
:2output/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
±
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_output_layer_call_fn_875336¢
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
annotationsª *
 
ì2é
B__inference_output_layer_call_and_return_conditional_losses_875347¢
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
annotationsª *
 
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
.:,áð2input/lstm_cell_14/kernel
6:4	<ð2#input/lstm_cell_14/recurrent_kernel
&:$ð2input/lstm_cell_14/bias
,:*2(2layer3/lstm_cell_15/kernel
6:4
(2$layer3/lstm_cell_15/recurrent_kernel
&:$(2layer3/lstm_cell_15/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÏBÌ
$__inference_signature_wrapper_873995input_input"
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
annotationsª *
 
 "
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
¢2
-__inference_lstm_cell_14_layer_call_fn_875364
-__inference_lstm_cell_14_layer_call_fn_875381¾
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
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_875413
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_875445¾
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
5
K0
L1
M2"
trackable_list_wrapper
5
K0
L1
M2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
m	variables
ntrainable_variables
oregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
¢2
-__inference_lstm_cell_15_layer_call_fn_875462
-__inference_lstm_cell_15_layer_call_fn_875479¾
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
kwonlydefaultsª 
annotationsª *
 
Ø2Õ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_875511
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_875543¾
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
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
)0"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
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
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
%:#<<2Nadam/layer1/kernel/m
:<2Nadam/layer1/bias/m
%:#<22Nadam/layer2/kernel/m
:22Nadam/layer2/bias/m
%:#
2Nadam/layer4/kernel/m
:2Nadam/layer4/bias/m
%:#2Nadam/output/kernel/m
:2Nadam/output/bias/m
4:2áð2!Nadam/input/lstm_cell_14/kernel/m
<::	<ð2+Nadam/input/lstm_cell_14/recurrent_kernel/m
,:*ð2Nadam/input/lstm_cell_14/bias/m
2:02(2"Nadam/layer3/lstm_cell_15/kernel/m
<::
(2,Nadam/layer3/lstm_cell_15/recurrent_kernel/m
,:*(2 Nadam/layer3/lstm_cell_15/bias/m
%:#<<2Nadam/layer1/kernel/v
:<2Nadam/layer1/bias/v
%:#<22Nadam/layer2/kernel/v
:22Nadam/layer2/bias/v
%:#
2Nadam/layer4/kernel/v
:2Nadam/layer4/bias/v
%:#2Nadam/output/kernel/v
:2Nadam/output/bias/v
4:2áð2!Nadam/input/lstm_cell_14/kernel/v
<::	<ð2+Nadam/input/lstm_cell_14/recurrent_kernel/v
,:*ð2Nadam/input/lstm_cell_14/bias/v
2:02(2"Nadam/layer3/lstm_cell_15/kernel/v
<::
(2,Nadam/layer3/lstm_cell_15/recurrent_kernel/v
,:*(2 Nadam/layer3/lstm_cell_15/bias/v¢
!__inference__wrapped_model_871458}HIJ!"KLM23:;:¢7
0¢-
+(
input_inputÿÿÿÿÿÿÿÿÿá
ª "/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿÒ
A__inference_input_layer_call_and_return_conditional_losses_874182HIJQ¢N
G¢D
63
1.
inputs/0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<
 Ò
A__inference_input_layer_call_and_return_conditional_losses_874325HIJQ¢N
G¢D
63
1.
inputs/0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<
 ¸
A__inference_input_layer_call_and_return_conditional_losses_874468sHIJA¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿá

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ<
 ¸
A__inference_input_layer_call_and_return_conditional_losses_874611sHIJA¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿá

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ<
 ©
&__inference_input_layer_call_fn_874006HIJQ¢N
G¢D
63
1.
inputs/0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<©
&__inference_input_layer_call_fn_874017HIJQ¢N
G¢D
63
1.
inputs/0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<
&__inference_input_layer_call_fn_874028fHIJA¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿá

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ<
&__inference_input_layer_call_fn_874039fHIJA¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿá

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ<ª
B__inference_layer1_layer_call_and_return_conditional_losses_874651d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ<
 
'__inference_layer1_layer_call_fn_874620W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ<ª
B__inference_layer2_layer_call_and_return_conditional_losses_874691d!"3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 
'__inference_layer2_layer_call_fn_874660W!"3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ2Ã
B__inference_layer3_layer_call_and_return_conditional_losses_874878}KLMO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ã
B__inference_layer3_layer_call_and_return_conditional_losses_875021}KLMO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ³
B__inference_layer3_layer_call_and_return_conditional_losses_875164mKLM?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ³
B__inference_layer3_layer_call_and_return_conditional_losses_875307mKLM?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
'__inference_layer3_layer_call_fn_874702pKLMO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

'__inference_layer3_layer_call_fn_874713pKLMO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ

'__inference_layer3_layer_call_fn_874724`KLM?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

'__inference_layer3_layer_call_fn_874735`KLM?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
¢
B__inference_layer4_layer_call_and_return_conditional_losses_875327\23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_layer4_layer_call_fn_875316O23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿÌ
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_875413ÿHIJ¢
x¢u
"
inputsÿÿÿÿÿÿÿÿÿá
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ<
"
states/1ÿÿÿÿÿÿÿÿÿ<
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ<
EB

0/1/0ÿÿÿÿÿÿÿÿÿ<

0/1/1ÿÿÿÿÿÿÿÿÿ<
 Ì
H__inference_lstm_cell_14_layer_call_and_return_conditional_losses_875445ÿHIJ¢
x¢u
"
inputsÿÿÿÿÿÿÿÿÿá
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ<
"
states/1ÿÿÿÿÿÿÿÿÿ<
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ<
EB

0/1/0ÿÿÿÿÿÿÿÿÿ<

0/1/1ÿÿÿÿÿÿÿÿÿ<
 ¡
-__inference_lstm_cell_14_layer_call_fn_875364ïHIJ¢
x¢u
"
inputsÿÿÿÿÿÿÿÿÿá
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ<
"
states/1ÿÿÿÿÿÿÿÿÿ<
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ<
A>

1/0ÿÿÿÿÿÿÿÿÿ<

1/1ÿÿÿÿÿÿÿÿÿ<¡
-__inference_lstm_cell_14_layer_call_fn_875381ïHIJ¢
x¢u
"
inputsÿÿÿÿÿÿÿÿÿá
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ<
"
states/1ÿÿÿÿÿÿÿÿÿ<
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ<
A>

1/0ÿÿÿÿÿÿÿÿÿ<

1/1ÿÿÿÿÿÿÿÿÿ<Ê
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_875511ýKLM¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ

EB

0/1/0ÿÿÿÿÿÿÿÿÿ


0/1/1ÿÿÿÿÿÿÿÿÿ

 Ê
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_875543ýKLM¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ

EB

0/1/0ÿÿÿÿÿÿÿÿÿ


0/1/1ÿÿÿÿÿÿÿÿÿ

 
-__inference_lstm_cell_15_layer_call_fn_875462íKLM¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ

A>

1/0ÿÿÿÿÿÿÿÿÿ


1/1ÿÿÿÿÿÿÿÿÿ

-__inference_lstm_cell_15_layer_call_fn_875479íKLM¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ2
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ

"
states/1ÿÿÿÿÿÿÿÿÿ

p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ

A>

1/0ÿÿÿÿÿÿÿÿÿ


1/1ÿÿÿÿÿÿÿÿÿ
¢
B__inference_output_layer_call_and_return_conditional_losses_875347\:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_output_layer_call_fn_875336O:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÇ
H__inference_sequential_7_layer_call_and_return_conditional_losses_873150{HIJ!"KLM23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ç
H__inference_sequential_7_layer_call_and_return_conditional_losses_873188{HIJ!"KLM23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
H__inference_sequential_7_layer_call_and_return_conditional_losses_873610vHIJ!"KLM23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
H__inference_sequential_7_layer_call_and_return_conditional_losses_873960vHIJ!"KLM23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_7_layer_call_fn_872605nHIJ!"KLM23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_7_layer_call_fn_873112nHIJ!"KLM23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_7_layer_call_fn_873227iHIJ!"KLM23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_7_layer_call_fn_873260iHIJ!"KLM23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
$__inference_signature_wrapper_873995HIJ!"KLM23:;I¢F
¢ 
?ª<
:
input_input+(
input_inputÿÿÿÿÿÿÿÿÿá"/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ