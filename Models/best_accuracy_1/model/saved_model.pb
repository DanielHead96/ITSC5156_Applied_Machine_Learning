½%
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
"serve*2.8.22v2.8.2-0-g2ea19cbb5758¬#
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

input/lstm_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:áð*)
shared_nameinput/lstm_cell_4/kernel

,input/lstm_cell_4/kernel/Read/ReadVariableOpReadVariableOpinput/lstm_cell_4/kernel*!
_output_shapes
:áð*
dtype0
¡
"input/lstm_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<ð*3
shared_name$"input/lstm_cell_4/recurrent_kernel

6input/lstm_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOp"input/lstm_cell_4/recurrent_kernel*
_output_shapes
:	<ð*
dtype0

input/lstm_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*'
shared_nameinput/lstm_cell_4/bias
~
*input/lstm_cell_4/bias/Read/ReadVariableOpReadVariableOpinput/lstm_cell_4/bias*
_output_shapes	
:ð*
dtype0

layer3/lstm_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(**
shared_namelayer3/lstm_cell_5/kernel

-layer3/lstm_cell_5/kernel/Read/ReadVariableOpReadVariableOplayer3/lstm_cell_5/kernel*
_output_shapes

:2(*
dtype0
¢
#layer3/lstm_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*4
shared_name%#layer3/lstm_cell_5/recurrent_kernel

7layer3/lstm_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp#layer3/lstm_cell_5/recurrent_kernel*
_output_shapes

:
(*
dtype0

layer3/lstm_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*(
shared_namelayer3/lstm_cell_5/bias

+layer3/lstm_cell_5/bias/Read/ReadVariableOpReadVariableOplayer3/lstm_cell_5/bias*
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

Adam/layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*%
shared_nameAdam/layer1/kernel/m
}
(Adam/layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer1/kernel/m*
_output_shapes

:<<*
dtype0
|
Adam/layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*#
shared_nameAdam/layer1/bias/m
u
&Adam/layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer1/bias/m*
_output_shapes
:<*
dtype0

Adam/layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<2*%
shared_nameAdam/layer2/kernel/m
}
(Adam/layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer2/kernel/m*
_output_shapes

:<2*
dtype0
|
Adam/layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/layer2/bias/m
u
&Adam/layer2/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer2/bias/m*
_output_shapes
:2*
dtype0

Adam/layer4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/layer4/kernel/m
}
(Adam/layer4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer4/kernel/m*
_output_shapes

:
*
dtype0
|
Adam/layer4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/layer4/bias/m
u
&Adam/layer4/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer4/bias/m*
_output_shapes
:*
dtype0

Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0

Adam/input/lstm_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:áð*0
shared_name!Adam/input/lstm_cell_4/kernel/m

3Adam/input/lstm_cell_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/input/lstm_cell_4/kernel/m*!
_output_shapes
:áð*
dtype0
¯
)Adam/input/lstm_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<ð*:
shared_name+)Adam/input/lstm_cell_4/recurrent_kernel/m
¨
=Adam/input/lstm_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp)Adam/input/lstm_cell_4/recurrent_kernel/m*
_output_shapes
:	<ð*
dtype0

Adam/input/lstm_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*.
shared_nameAdam/input/lstm_cell_4/bias/m

1Adam/input/lstm_cell_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/input/lstm_cell_4/bias/m*
_output_shapes	
:ð*
dtype0

 Adam/layer3/lstm_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*1
shared_name" Adam/layer3/lstm_cell_5/kernel/m

4Adam/layer3/lstm_cell_5/kernel/m/Read/ReadVariableOpReadVariableOp Adam/layer3/lstm_cell_5/kernel/m*
_output_shapes

:2(*
dtype0
°
*Adam/layer3/lstm_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*;
shared_name,*Adam/layer3/lstm_cell_5/recurrent_kernel/m
©
>Adam/layer3/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/layer3/lstm_cell_5/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

Adam/layer3/lstm_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*/
shared_name Adam/layer3/lstm_cell_5/bias/m

2Adam/layer3/lstm_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer3/lstm_cell_5/bias/m*
_output_shapes
:(*
dtype0

Adam/layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*%
shared_nameAdam/layer1/kernel/v
}
(Adam/layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer1/kernel/v*
_output_shapes

:<<*
dtype0
|
Adam/layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*#
shared_nameAdam/layer1/bias/v
u
&Adam/layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer1/bias/v*
_output_shapes
:<*
dtype0

Adam/layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<2*%
shared_nameAdam/layer2/kernel/v
}
(Adam/layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer2/kernel/v*
_output_shapes

:<2*
dtype0
|
Adam/layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/layer2/bias/v
u
&Adam/layer2/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer2/bias/v*
_output_shapes
:2*
dtype0

Adam/layer4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/layer4/kernel/v
}
(Adam/layer4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer4/kernel/v*
_output_shapes

:
*
dtype0
|
Adam/layer4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/layer4/bias/v
u
&Adam/layer4/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer4/bias/v*
_output_shapes
:*
dtype0

Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

Adam/input/lstm_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:áð*0
shared_name!Adam/input/lstm_cell_4/kernel/v

3Adam/input/lstm_cell_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/input/lstm_cell_4/kernel/v*!
_output_shapes
:áð*
dtype0
¯
)Adam/input/lstm_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<ð*:
shared_name+)Adam/input/lstm_cell_4/recurrent_kernel/v
¨
=Adam/input/lstm_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp)Adam/input/lstm_cell_4/recurrent_kernel/v*
_output_shapes
:	<ð*
dtype0

Adam/input/lstm_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*.
shared_nameAdam/input/lstm_cell_4/bias/v

1Adam/input/lstm_cell_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/input/lstm_cell_4/bias/v*
_output_shapes	
:ð*
dtype0

 Adam/layer3/lstm_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*1
shared_name" Adam/layer3/lstm_cell_5/kernel/v

4Adam/layer3/lstm_cell_5/kernel/v/Read/ReadVariableOpReadVariableOp Adam/layer3/lstm_cell_5/kernel/v*
_output_shapes

:2(*
dtype0
°
*Adam/layer3/lstm_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*;
shared_name,*Adam/layer3/lstm_cell_5/recurrent_kernel/v
©
>Adam/layer3/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/layer3/lstm_cell_5/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

Adam/layer3/lstm_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*/
shared_name Adam/layer3/lstm_cell_5/bias/v

2Adam/layer3/lstm_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer3/lstm_cell_5/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
]
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¿\
valueµ\B²\ B«\
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
Ü
Biter

Cbeta_1

Dbeta_2
	Edecay
Flearning_ratemm!m"m2m3m:m;mGm Hm¡Im¢Jm£Km¤Lm¥v¦v§!v¨"v©2vª3v«:v¬;v­Gv®Hv¯Iv°Jv±Kv²Lv³*
j
G0
H1
I2
3
4
!5
"6
J7
K8
L9
210
311
:12
;13*
j
G0
H1
I2
3
4
!5
"6
J7
K8
L9
210
311
:12
;13*
* 
°
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
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
Rserving_default* 
ã
S
state_size

Gkernel
Hrecurrent_kernel
Ibias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X_random_generator
Y__call__
*Z&call_and_return_all_conditional_losses*
* 

G0
H1
I2*

G0
H1
I2*
* 


[states
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
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
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
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
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
ã
k
state_size

Jkernel
Krecurrent_kernel
Lbias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p_random_generator
q__call__
*r&call_and_return_all_conditional_losses*
* 

J0
K1
L2*

J0
K1
L2*
* 


sstates
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
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
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
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

~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEinput/lstm_cell_4/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"input/lstm_cell_4/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEinput/lstm_cell_4/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer3/lstm_cell_5/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#layer3/lstm_cell_5/recurrent_kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElayer3/lstm_cell_5/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

0
1*
* 
* 
* 
* 

G0
H1
I2*

G0
H1
I2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*
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
J0
K1
L2*

J0
K1
L2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
l	variables
mtrainable_variables
nregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*
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

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
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
0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*
z
VARIABLE_VALUEAdam/layer1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/layer1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/layer2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/layer2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/layer4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/layer4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/input/lstm_cell_4/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/input/lstm_cell_4/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/input/lstm_cell_4/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/layer3/lstm_cell_5/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/layer3/lstm_cell_5/recurrent_kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/layer3/lstm_cell_5/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/layer1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/layer1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/layer2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/layer2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/layer4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/layer4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/input/lstm_cell_4/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/input/lstm_cell_4/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/input/lstm_cell_4/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/layer3/lstm_cell_5/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/layer3/lstm_cell_5/recurrent_kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/layer3/lstm_cell_5/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_inputPlaceholder*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
dtype0*"
shape:ÿÿÿÿÿÿÿÿÿá
ñ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_inputinput/lstm_cell_4/kernel"input/lstm_cell_4/recurrent_kernelinput/lstm_cell_4/biaslayer1/kernellayer1/biaslayer2/kernellayer2/biaslayer3/lstm_cell_5/kernel#layer3/lstm_cell_5/recurrent_kernellayer3/lstm_cell_5/biaslayer4/kernellayer4/biasoutput/kerneloutput/bias*
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
$__inference_signature_wrapper_865146
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ð
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp!layer2/kernel/Read/ReadVariableOplayer2/bias/Read/ReadVariableOp!layer4/kernel/Read/ReadVariableOplayer4/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp,input/lstm_cell_4/kernel/Read/ReadVariableOp6input/lstm_cell_4/recurrent_kernel/Read/ReadVariableOp*input/lstm_cell_4/bias/Read/ReadVariableOp-layer3/lstm_cell_5/kernel/Read/ReadVariableOp7layer3/lstm_cell_5/recurrent_kernel/Read/ReadVariableOp+layer3/lstm_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/layer1/kernel/m/Read/ReadVariableOp&Adam/layer1/bias/m/Read/ReadVariableOp(Adam/layer2/kernel/m/Read/ReadVariableOp&Adam/layer2/bias/m/Read/ReadVariableOp(Adam/layer4/kernel/m/Read/ReadVariableOp&Adam/layer4/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp3Adam/input/lstm_cell_4/kernel/m/Read/ReadVariableOp=Adam/input/lstm_cell_4/recurrent_kernel/m/Read/ReadVariableOp1Adam/input/lstm_cell_4/bias/m/Read/ReadVariableOp4Adam/layer3/lstm_cell_5/kernel/m/Read/ReadVariableOp>Adam/layer3/lstm_cell_5/recurrent_kernel/m/Read/ReadVariableOp2Adam/layer3/lstm_cell_5/bias/m/Read/ReadVariableOp(Adam/layer1/kernel/v/Read/ReadVariableOp&Adam/layer1/bias/v/Read/ReadVariableOp(Adam/layer2/kernel/v/Read/ReadVariableOp&Adam/layer2/bias/v/Read/ReadVariableOp(Adam/layer4/kernel/v/Read/ReadVariableOp&Adam/layer4/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOp3Adam/input/lstm_cell_4/kernel/v/Read/ReadVariableOp=Adam/input/lstm_cell_4/recurrent_kernel/v/Read/ReadVariableOp1Adam/input/lstm_cell_4/bias/v/Read/ReadVariableOp4Adam/layer3/lstm_cell_5/kernel/v/Read/ReadVariableOp>Adam/layer3/lstm_cell_5/recurrent_kernel/v/Read/ReadVariableOp2Adam/layer3/lstm_cell_5/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
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
__inference__traced_save_866870
Ï
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer1/kernellayer1/biaslayer2/kernellayer2/biaslayer4/kernellayer4/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateinput/lstm_cell_4/kernel"input/lstm_cell_4/recurrent_kernelinput/lstm_cell_4/biaslayer3/lstm_cell_5/kernel#layer3/lstm_cell_5/recurrent_kernellayer3/lstm_cell_5/biastotalcounttotal_1count_1Adam/layer1/kernel/mAdam/layer1/bias/mAdam/layer2/kernel/mAdam/layer2/bias/mAdam/layer4/kernel/mAdam/layer4/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/input/lstm_cell_4/kernel/m)Adam/input/lstm_cell_4/recurrent_kernel/mAdam/input/lstm_cell_4/bias/m Adam/layer3/lstm_cell_5/kernel/m*Adam/layer3/lstm_cell_5/recurrent_kernel/mAdam/layer3/lstm_cell_5/bias/mAdam/layer1/kernel/vAdam/layer1/bias/vAdam/layer2/kernel/vAdam/layer2/bias/vAdam/layer4/kernel/vAdam/layer4/bias/vAdam/output/kernel/vAdam/output/bias/vAdam/input/lstm_cell_4/kernel/v)Adam/input/lstm_cell_4/recurrent_kernel/vAdam/input/lstm_cell_4/bias/v Adam/layer3/lstm_cell_5/kernel/v*Adam/layer3/lstm_cell_5/recurrent_kernel/vAdam/layer3/lstm_cell_5/bias/v*?
Tin8
624*
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
"__inference__traced_restore_867033ÅÁ!
Ì

G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_863026

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
»
input_while_cond_864469(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3*
&input_while_less_input_strided_slice_1@
<input_while_input_while_cond_864469___redundant_placeholder0@
<input_while_input_while_cond_864469___redundant_placeholder1@
<input_while_input_while_cond_864469___redundant_placeholder2@
<input_while_input_while_cond_864469___redundant_placeholder3
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
¾

'__inference_output_layer_call_fn_866487

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
B__inference_output_layer_call_and_return_conditional_losses_863718o
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
æ
ò
,__inference_lstm_cell_5_layer_call_fn_866613

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCall§
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_863026o
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
µ
Ã
while_cond_863373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_863373___redundant_placeholder04
0while_while_cond_863373___redundant_placeholder14
0while_while_cond_863373___redundant_placeholder24
0while_while_cond_863373___redundant_placeholder3
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
° 
ä
H__inference_sequential_2_layer_call_and_return_conditional_losses_863725

inputs!
input_863459:áð
input_863461:	<ð
input_863463:	ð
layer1_863498:<<
layer1_863500:<
layer2_863535:<2
layer2_863537:2
layer3_863683:2(
layer3_863685:
(
layer3_863687:(
layer4_863702:

layer4_863704:
output_863719:
output_863721:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallø
input/StatefulPartitionedCallStatefulPartitionedCallinputsinput_863459input_863461input_863463*
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
A__inference_input_layer_call_and_return_conditional_losses_863458
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_863498layer1_863500*
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
B__inference_layer1_layer_call_and_return_conditional_losses_863497
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_863535layer2_863537*
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
B__inference_layer2_layer_call_and_return_conditional_losses_863534
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_863683layer3_863685layer3_863687*
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
B__inference_layer3_layer_call_and_return_conditional_losses_863682
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_863702layer4_863704*
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
B__inference_layer4_layer_call_and_return_conditional_losses_863701
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_863719output_863721*
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
B__inference_output_layer_call_and_return_conditional_losses_863718v
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
Üê
ë
H__inference_sequential_2_layer_call_and_return_conditional_losses_865111

inputsE
0input_lstm_cell_4_matmul_readvariableop_resource:áðE
2input_lstm_cell_4_matmul_1_readvariableop_resource:	<ð@
1input_lstm_cell_4_biasadd_readvariableop_resource:	ð:
(layer1_tensordot_readvariableop_resource:<<4
&layer1_biasadd_readvariableop_resource:<:
(layer2_tensordot_readvariableop_resource:<24
&layer2_biasadd_readvariableop_resource:2C
1layer3_lstm_cell_5_matmul_readvariableop_resource:2(E
3layer3_lstm_cell_5_matmul_1_readvariableop_resource:
(@
2layer3_lstm_cell_5_biasadd_readvariableop_resource:(7
%layer4_matmul_readvariableop_resource:
4
&layer4_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢(input/lstm_cell_4/BiasAdd/ReadVariableOp¢'input/lstm_cell_4/MatMul/ReadVariableOp¢)input/lstm_cell_4/MatMul_1/ReadVariableOp¢input/while¢layer1/BiasAdd/ReadVariableOp¢layer1/Tensordot/ReadVariableOp¢layer2/BiasAdd/ReadVariableOp¢layer2/Tensordot/ReadVariableOp¢)layer3/lstm_cell_5/BiasAdd/ReadVariableOp¢(layer3/lstm_cell_5/MatMul/ReadVariableOp¢*layer3/lstm_cell_5/MatMul_1/ReadVariableOp¢layer3/while¢layer4/BiasAdd/ReadVariableOp¢layer4/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpA
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
shrink_axis_mask
'input/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp0input_lstm_cell_4_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0¦
input/lstm_cell_4/MatMulMatMulinput/strided_slice_2:output:0/input/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)input/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp2input_lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0 
input/lstm_cell_4/MatMul_1MatMulinput/zeros:output:01input/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
input/lstm_cell_4/addAddV2"input/lstm_cell_4/MatMul:product:0$input/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
(input/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp1input_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0¤
input/lstm_cell_4/BiasAddBiasAddinput/lstm_cell_4/add:z:00input/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðc
!input/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
input/lstm_cell_4/splitSplit*input/lstm_cell_4/split/split_dim:output:0"input/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitx
input/lstm_cell_4/SigmoidSigmoid input/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
input/lstm_cell_4/Sigmoid_1Sigmoid input/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_4/mulMulinput/lstm_cell_4/Sigmoid_1:y:0input/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
input/lstm_cell_4/ReluRelu input/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_4/mul_1Mulinput/lstm_cell_4/Sigmoid:y:0$input/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_4/add_1AddV2input/lstm_cell_4/mul:z:0input/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
input/lstm_cell_4/Sigmoid_2Sigmoid input/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
input/lstm_cell_4/Relu_1Reluinput/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_4/mul_2Mulinput/lstm_cell_4/Sigmoid_2:y:0&input/lstm_cell_4/Relu_1:activations:0*
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
value	B : Ó
input/whileWhile!input/while/loop_counter:output:0'input/while/maximum_iterations:output:0input/time:output:0input/TensorArrayV2_1:handle:0input/zeros:output:0input/zeros_1:output:0input/strided_slice_1:output:0=input/TensorArrayUnstack/TensorListFromTensor:output_handle:00input_lstm_cell_4_matmul_readvariableop_resource2input_lstm_cell_4_matmul_1_readvariableop_resource1input_lstm_cell_4_biasadd_readvariableop_resource*
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
input_while_body_864820*#
condR
input_while_cond_864819*K
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
shrink_axis_mask
(layer3/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1layer3_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¨
layer3/lstm_cell_5/MatMulMatMullayer3/strided_slice_2:output:00layer3/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*layer3/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3layer3_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0¢
layer3/lstm_cell_5/MatMul_1MatMullayer3/zeros:output:02layer3/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
layer3/lstm_cell_5/addAddV2#layer3/lstm_cell_5/MatMul:product:0%layer3/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)layer3/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2layer3_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¦
layer3/lstm_cell_5/BiasAddBiasAddlayer3/lstm_cell_5/add:z:01layer3/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"layer3/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
layer3/lstm_cell_5/splitSplit+layer3/lstm_cell_5/split/split_dim:output:0#layer3/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
layer3/lstm_cell_5/SigmoidSigmoid!layer3/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
layer3/lstm_cell_5/Sigmoid_1Sigmoid!layer3/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_5/mulMul layer3/lstm_cell_5/Sigmoid_1:y:0layer3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
layer3/lstm_cell_5/Sigmoid_2Sigmoid!layer3/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_5/mul_1Mullayer3/lstm_cell_5/Sigmoid:y:0 layer3/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_5/add_1AddV2layer3/lstm_cell_5/mul:z:0layer3/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
layer3/lstm_cell_5/Sigmoid_3Sigmoid!layer3/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
layer3/lstm_cell_5/Sigmoid_4Sigmoidlayer3/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_5/mul_2Mul layer3/lstm_cell_5/Sigmoid_3:y:0 layer3/lstm_cell_5/Sigmoid_4:y:0*
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
value	B : á
layer3/whileWhile"layer3/while/loop_counter:output:0(layer3/while/maximum_iterations:output:0layer3/time:output:0layer3/TensorArrayV2_1:handle:0layer3/zeros:output:0layer3/zeros_1:output:0layer3/strided_slice_1:output:0>layer3/TensorArrayUnstack/TensorListFromTensor:output_handle:01layer3_lstm_cell_5_matmul_readvariableop_resource3layer3_lstm_cell_5_matmul_1_readvariableop_resource2layer3_lstm_cell_5_biasadd_readvariableop_resource*
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
layer3_while_body_865013*$
condR
layer3_while_cond_865012*K
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
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp)^input/lstm_cell_4/BiasAdd/ReadVariableOp(^input/lstm_cell_4/MatMul/ReadVariableOp*^input/lstm_cell_4/MatMul_1/ReadVariableOp^input/while^layer1/BiasAdd/ReadVariableOp ^layer1/Tensordot/ReadVariableOp^layer2/BiasAdd/ReadVariableOp ^layer2/Tensordot/ReadVariableOp*^layer3/lstm_cell_5/BiasAdd/ReadVariableOp)^layer3/lstm_cell_5/MatMul/ReadVariableOp+^layer3/lstm_cell_5/MatMul_1/ReadVariableOp^layer3/while^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2T
(input/lstm_cell_4/BiasAdd/ReadVariableOp(input/lstm_cell_4/BiasAdd/ReadVariableOp2R
'input/lstm_cell_4/MatMul/ReadVariableOp'input/lstm_cell_4/MatMul/ReadVariableOp2V
)input/lstm_cell_4/MatMul_1/ReadVariableOp)input/lstm_cell_4/MatMul_1/ReadVariableOp2
input/whileinput/while2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2B
layer1/Tensordot/ReadVariableOplayer1/Tensordot/ReadVariableOp2>
layer2/BiasAdd/ReadVariableOplayer2/BiasAdd/ReadVariableOp2B
layer2/Tensordot/ReadVariableOplayer2/Tensordot/ReadVariableOp2V
)layer3/lstm_cell_5/BiasAdd/ReadVariableOp)layer3/lstm_cell_5/BiasAdd/ReadVariableOp2T
(layer3/lstm_cell_5/MatMul/ReadVariableOp(layer3/lstm_cell_5/MatMul/ReadVariableOp2X
*layer3/lstm_cell_5/MatMul_1/ReadVariableOp*layer3/lstm_cell_5/MatMul_1/ReadVariableOp2
layer3/whilelayer3/while2>
layer4/BiasAdd/ReadVariableOplayer4/BiasAdd/ReadVariableOp2<
layer4/MatMul/ReadVariableOplayer4/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
°J

A__inference_input_layer_call_and_return_conditional_losses_865476
inputs_0?
*lstm_cell_4_matmul_readvariableop_resource:áð?
,lstm_cell_4_matmul_1_readvariableop_resource:	<ð:
+lstm_cell_4_biasadd_readvariableop_resource:	ð
identity¢"lstm_cell_4/BiasAdd/ReadVariableOp¢!lstm_cell_4/MatMul/ReadVariableOp¢#lstm_cell_4/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð]
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitl
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<u
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
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
while_body_865392*
condR
while_cond_865391*K
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<½
NoOpNoOp#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:` \
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
"
_user_specified_name
inputs/0
¾

'__inference_layer4_layer_call_fn_866467

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
B__inference_layer4_layer_call_and_return_conditional_losses_863701o
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
Û"
Ö
while_body_863040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_5_863064_0:2(,
while_lstm_cell_5_863066_0:
((
while_lstm_cell_5_863068_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_5_863064:2(*
while_lstm_cell_5_863066:
(&
while_lstm_cell_5_863068:(¢)while/lstm_cell_5/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_863064_0while_lstm_cell_5_863066_0while_lstm_cell_5_863068_0*
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_863026Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
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
: :éèÒ
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x

while/NoOpNoOp*^while/lstm_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_5_863064while_lstm_cell_5_863064_0"6
while_lstm_cell_5_863066while_lstm_cell_5_863066_0"6
while_lstm_cell_5_863068while_lstm_cell_5_863068_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_864339
input_input!
input_864304:áð
input_864306:	<ð
input_864308:	ð
layer1_864311:<<
layer1_864313:<
layer2_864316:<2
layer2_864318:2
layer3_864321:2(
layer3_864323:
(
layer3_864325:(
layer4_864328:

layer4_864330:
output_864333:
output_864335:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallý
input/StatefulPartitionedCallStatefulPartitionedCallinput_inputinput_864304input_864306input_864308*
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
A__inference_input_layer_call_and_return_conditional_losses_864117
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_864311layer1_864313*
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
B__inference_layer1_layer_call_and_return_conditional_losses_863497
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_864316layer2_864318*
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
B__inference_layer2_layer_call_and_return_conditional_losses_863534
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_864321layer3_864323layer3_864325*
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
B__inference_layer3_layer_call_and_return_conditional_losses_863932
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_864328layer4_864330*
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
B__inference_layer4_layer_call_and_return_conditional_losses_863701
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_864333output_864335*
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
B__inference_output_layer_call_and_return_conditional_losses_863718v
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
µ
Ã
while_cond_863039
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_863039___redundant_placeholder04
0while_while_cond_863039___redundant_placeholder14
0while_while_cond_863039___redundant_placeholder24
0while_while_cond_863039___redundant_placeholder3
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
ç"
à
while_body_862881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_4_862905_0:áð-
while_lstm_cell_4_862907_0:	<ð)
while_lstm_cell_4_862909_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_4_862905:áð+
while_lstm_cell_4_862907:	<ð'
while_lstm_cell_4_862909:	ð¢)while/lstm_cell_4/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0®
)while/lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_4_862905_0while_lstm_cell_4_862907_0while_lstm_cell_4_862909_0*
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_862822Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_4/StatefulPartitionedCall:output:0*
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
: :éèÒ
while/Identity_4Identity2while/lstm_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/Identity_5Identity2while/lstm_cell_4/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x

while/NoOpNoOp*^while/lstm_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_4_862905while_lstm_cell_4_862905_0"6
while_lstm_cell_4_862907while_lstm_cell_4_862907_0"6
while_lstm_cell_4_862909while_lstm_cell_4_862909_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_4/StatefulPartitionedCall)while/lstm_cell_4/StatefulPartitionedCall: 
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
Ð7
Á
while_body_863598
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_5_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_5_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_5_matmul_readvariableop_resource:2(D
2while_lstm_cell_5_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_5_biasadd_readvariableop_resource:(¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0·
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0£
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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

³
'__inference_layer3_layer_call_fn_865853
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
B__inference_layer3_layer_call_and_return_conditional_losses_863109o
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
O
Á
%sequential_2_layer3_while_body_862511D
@sequential_2_layer3_while_sequential_2_layer3_while_loop_counterJ
Fsequential_2_layer3_while_sequential_2_layer3_while_maximum_iterations)
%sequential_2_layer3_while_placeholder+
'sequential_2_layer3_while_placeholder_1+
'sequential_2_layer3_while_placeholder_2+
'sequential_2_layer3_while_placeholder_3C
?sequential_2_layer3_while_sequential_2_layer3_strided_slice_1_0
{sequential_2_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_2_layer3_tensorarrayunstack_tensorlistfromtensor_0X
Fsequential_2_layer3_while_lstm_cell_5_matmul_readvariableop_resource_0:2(Z
Hsequential_2_layer3_while_lstm_cell_5_matmul_1_readvariableop_resource_0:
(U
Gsequential_2_layer3_while_lstm_cell_5_biasadd_readvariableop_resource_0:(&
"sequential_2_layer3_while_identity(
$sequential_2_layer3_while_identity_1(
$sequential_2_layer3_while_identity_2(
$sequential_2_layer3_while_identity_3(
$sequential_2_layer3_while_identity_4(
$sequential_2_layer3_while_identity_5A
=sequential_2_layer3_while_sequential_2_layer3_strided_slice_1}
ysequential_2_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_2_layer3_tensorarrayunstack_tensorlistfromtensorV
Dsequential_2_layer3_while_lstm_cell_5_matmul_readvariableop_resource:2(X
Fsequential_2_layer3_while_lstm_cell_5_matmul_1_readvariableop_resource:
(S
Esequential_2_layer3_while_lstm_cell_5_biasadd_readvariableop_resource:(¢<sequential_2/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp¢;sequential_2/layer3/while/lstm_cell_5/MatMul/ReadVariableOp¢=sequential_2/layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp
Ksequential_2/layer3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
=sequential_2/layer3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_2_layer3_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_layer3_while_placeholderTsequential_2/layer3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0Â
;sequential_2/layer3/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOpFsequential_2_layer3_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ó
,sequential_2/layer3/while/lstm_cell_5/MatMulMatMulDsequential_2/layer3/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_2/layer3/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Æ
=sequential_2/layer3/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOpHsequential_2_layer3_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ú
.sequential_2/layer3/while/lstm_cell_5/MatMul_1MatMul'sequential_2_layer3_while_placeholder_2Esequential_2/layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ö
)sequential_2/layer3/while/lstm_cell_5/addAddV26sequential_2/layer3/while/lstm_cell_5/MatMul:product:08sequential_2/layer3/while/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(À
<sequential_2/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOpGsequential_2_layer3_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ß
-sequential_2/layer3/while/lstm_cell_5/BiasAddBiasAdd-sequential_2/layer3/while/lstm_cell_5/add:z:0Dsequential_2/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(w
5sequential_2/layer3/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
+sequential_2/layer3/while/lstm_cell_5/splitSplit>sequential_2/layer3/while/lstm_cell_5/split/split_dim:output:06sequential_2/layer3/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split 
-sequential_2/layer3/while/lstm_cell_5/SigmoidSigmoid4sequential_2/layer3/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
/sequential_2/layer3/while/lstm_cell_5/Sigmoid_1Sigmoid4sequential_2/layer3/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
)sequential_2/layer3/while/lstm_cell_5/mulMul3sequential_2/layer3/while/lstm_cell_5/Sigmoid_1:y:0'sequential_2_layer3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
/sequential_2/layer3/while/lstm_cell_5/Sigmoid_2Sigmoid4sequential_2/layer3/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ì
+sequential_2/layer3/while/lstm_cell_5/mul_1Mul1sequential_2/layer3/while/lstm_cell_5/Sigmoid:y:03sequential_2/layer3/while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Æ
+sequential_2/layer3/while/lstm_cell_5/add_1AddV2-sequential_2/layer3/while/lstm_cell_5/mul:z:0/sequential_2/layer3/while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
/sequential_2/layer3/while/lstm_cell_5/Sigmoid_3Sigmoid4sequential_2/layer3/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

/sequential_2/layer3/while/lstm_cell_5/Sigmoid_4Sigmoid/sequential_2/layer3/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Î
+sequential_2/layer3/while/lstm_cell_5/mul_2Mul3sequential_2/layer3/while/lstm_cell_5/Sigmoid_3:y:03sequential_2/layer3/while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

>sequential_2/layer3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_layer3_while_placeholder_1%sequential_2_layer3_while_placeholder/sequential_2/layer3/while/lstm_cell_5/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒa
sequential_2/layer3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_2/layer3/while/addAddV2%sequential_2_layer3_while_placeholder(sequential_2/layer3/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_2/layer3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :·
sequential_2/layer3/while/add_1AddV2@sequential_2_layer3_while_sequential_2_layer3_while_loop_counter*sequential_2/layer3/while/add_1/y:output:0*
T0*
_output_shapes
: 
"sequential_2/layer3/while/IdentityIdentity#sequential_2/layer3/while/add_1:z:0^sequential_2/layer3/while/NoOp*
T0*
_output_shapes
: º
$sequential_2/layer3/while/Identity_1IdentityFsequential_2_layer3_while_sequential_2_layer3_while_maximum_iterations^sequential_2/layer3/while/NoOp*
T0*
_output_shapes
: 
$sequential_2/layer3/while/Identity_2Identity!sequential_2/layer3/while/add:z:0^sequential_2/layer3/while/NoOp*
T0*
_output_shapes
: Õ
$sequential_2/layer3/while/Identity_3IdentityNsequential_2/layer3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/layer3/while/NoOp*
T0*
_output_shapes
: :éèÒ´
$sequential_2/layer3/while/Identity_4Identity/sequential_2/layer3/while/lstm_cell_5/mul_2:z:0^sequential_2/layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
´
$sequential_2/layer3/while/Identity_5Identity/sequential_2/layer3/while/lstm_cell_5/add_1:z:0^sequential_2/layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

sequential_2/layer3/while/NoOpNoOp=^sequential_2/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp<^sequential_2/layer3/while/lstm_cell_5/MatMul/ReadVariableOp>^sequential_2/layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_2_layer3_while_identity+sequential_2/layer3/while/Identity:output:0"U
$sequential_2_layer3_while_identity_1-sequential_2/layer3/while/Identity_1:output:0"U
$sequential_2_layer3_while_identity_2-sequential_2/layer3/while/Identity_2:output:0"U
$sequential_2_layer3_while_identity_3-sequential_2/layer3/while/Identity_3:output:0"U
$sequential_2_layer3_while_identity_4-sequential_2/layer3/while/Identity_4:output:0"U
$sequential_2_layer3_while_identity_5-sequential_2/layer3/while/Identity_5:output:0"
Esequential_2_layer3_while_lstm_cell_5_biasadd_readvariableop_resourceGsequential_2_layer3_while_lstm_cell_5_biasadd_readvariableop_resource_0"
Fsequential_2_layer3_while_lstm_cell_5_matmul_1_readvariableop_resourceHsequential_2_layer3_while_lstm_cell_5_matmul_1_readvariableop_resource_0"
Dsequential_2_layer3_while_lstm_cell_5_matmul_readvariableop_resourceFsequential_2_layer3_while_lstm_cell_5_matmul_readvariableop_resource_0"
=sequential_2_layer3_while_sequential_2_layer3_strided_slice_1?sequential_2_layer3_while_sequential_2_layer3_strided_slice_1_0"ø
ysequential_2_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_2_layer3_tensorarrayunstack_tensorlistfromtensor{sequential_2_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_2_layer3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2|
<sequential_2/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp<sequential_2/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp2z
;sequential_2/layer3/while/lstm_cell_5/MatMul/ReadVariableOp;sequential_2/layer3/while/lstm_cell_5/MatMul/ReadVariableOp2~
=sequential_2/layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp=sequential_2/layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
Ô

G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_866694

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
¡
ù
B__inference_layer1_layer_call_and_return_conditional_losses_863497

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
æ
ò
,__inference_lstm_cell_5_layer_call_fn_866630

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCall§
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_863172o
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
ò
±
'__inference_layer3_layer_call_fn_865886

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
B__inference_layer3_layer_call_and_return_conditional_losses_863932o
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
Û"
Ö
while_body_863231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_5_863255_0:2(,
while_lstm_cell_5_863257_0:
((
while_lstm_cell_5_863259_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_5_863255:2(*
while_lstm_cell_5_863257:
(&
while_lstm_cell_5_863259:(¢)while/lstm_cell_5/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0®
)while/lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_5_863255_0while_lstm_cell_5_863257_0while_lstm_cell_5_863259_0*
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_863172Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_5/StatefulPartitionedCall:output:0*
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
: :éèÒ
while/Identity_4Identity2while/lstm_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity2while/lstm_cell_5/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x

while/NoOpNoOp*^while/lstm_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_5_863255while_lstm_cell_5_863255_0"6
while_lstm_cell_5_863257while_lstm_cell_5_863257_0"6
while_lstm_cell_5_863259while_lstm_cell_5_863259_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_5/StatefulPartitionedCall)while/lstm_cell_5/StatefulPartitionedCall: 
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
ó?
¡

layer3_while_body_864663*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3)
%layer3_while_layer3_strided_slice_1_0e
alayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0K
9layer3_while_lstm_cell_5_matmul_readvariableop_resource_0:2(M
;layer3_while_lstm_cell_5_matmul_1_readvariableop_resource_0:
(H
:layer3_while_lstm_cell_5_biasadd_readvariableop_resource_0:(
layer3_while_identity
layer3_while_identity_1
layer3_while_identity_2
layer3_while_identity_3
layer3_while_identity_4
layer3_while_identity_5'
#layer3_while_layer3_strided_slice_1c
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensorI
7layer3_while_lstm_cell_5_matmul_readvariableop_resource:2(K
9layer3_while_lstm_cell_5_matmul_1_readvariableop_resource:
(F
8layer3_while_lstm_cell_5_biasadd_readvariableop_resource:(¢/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp¢.layer3/while/lstm_cell_5/MatMul/ReadVariableOp¢0layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp
>layer3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   É
0layer3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0layer3_while_placeholderGlayer3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¨
.layer3/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9layer3_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ì
layer3/while/lstm_cell_5/MatMulMatMul7layer3/while/TensorArrayV2Read/TensorListGetItem:item:06layer3/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
0layer3/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;layer3_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0³
!layer3/while/lstm_cell_5/MatMul_1MatMullayer3_while_placeholder_28layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¯
layer3/while/lstm_cell_5/addAddV2)layer3/while/lstm_cell_5/MatMul:product:0+layer3/while/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:layer3_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¸
 layer3/while/lstm_cell_5/BiasAddBiasAdd layer3/while/lstm_cell_5/add:z:07layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(j
(layer3/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
layer3/while/lstm_cell_5/splitSplit1layer3/while/lstm_cell_5/split/split_dim:output:0)layer3/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
 layer3/while/lstm_cell_5/SigmoidSigmoid'layer3/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"layer3/while/lstm_cell_5/Sigmoid_1Sigmoid'layer3/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/lstm_cell_5/mulMul&layer3/while/lstm_cell_5/Sigmoid_1:y:0layer3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"layer3/while/lstm_cell_5/Sigmoid_2Sigmoid'layer3/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
layer3/while/lstm_cell_5/mul_1Mul$layer3/while/lstm_cell_5/Sigmoid:y:0&layer3/while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/lstm_cell_5/add_1AddV2 layer3/while/lstm_cell_5/mul:z:0"layer3/while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"layer3/while/lstm_cell_5/Sigmoid_3Sigmoid'layer3/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"layer3/while/lstm_cell_5/Sigmoid_4Sigmoid"layer3/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
§
layer3/while/lstm_cell_5/mul_2Mul&layer3/while/lstm_cell_5/Sigmoid_3:y:0&layer3/while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
à
1layer3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlayer3_while_placeholder_1layer3_while_placeholder"layer3/while/lstm_cell_5/mul_2:z:0*
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
: :éèÒ
layer3/while/Identity_4Identity"layer3/while/lstm_cell_5/mul_2:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/Identity_5Identity"layer3/while/lstm_cell_5/add_1:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
é
layer3/while/NoOpNoOp0^layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp/^layer3/while/lstm_cell_5/MatMul/ReadVariableOp1^layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
layer3_while_identitylayer3/while/Identity:output:0";
layer3_while_identity_1 layer3/while/Identity_1:output:0";
layer3_while_identity_2 layer3/while/Identity_2:output:0";
layer3_while_identity_3 layer3/while/Identity_3:output:0";
layer3_while_identity_4 layer3/while/Identity_4:output:0";
layer3_while_identity_5 layer3/while/Identity_5:output:0"L
#layer3_while_layer3_strided_slice_1%layer3_while_layer3_strided_slice_1_0"v
8layer3_while_lstm_cell_5_biasadd_readvariableop_resource:layer3_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9layer3_while_lstm_cell_5_matmul_1_readvariableop_resource;layer3_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7layer3_while_lstm_cell_5_matmul_readvariableop_resource9layer3_while_lstm_cell_5_matmul_readvariableop_resource_0"Ä
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensoralayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2b
/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.layer3/while/lstm_cell_5/MatMul/ReadVariableOp.layer3/while/lstm_cell_5/MatMul/ReadVariableOp2d
0layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp0layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
Ð7
Á
while_body_866374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_5_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_5_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_5_matmul_readvariableop_resource:2(D
2while_lstm_cell_5_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_5_biasadd_readvariableop_resource:(¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0·
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0£
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
ï
÷
,__inference_lstm_cell_4_layer_call_fn_866532

inputs
states_0
states_1
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity

identity_1

identity_2¢StatefulPartitionedCall§
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_862822o
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
«
·
&__inference_input_layer_call_fn_865168
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
A__inference_input_layer_call_and_return_conditional_losses_862950|
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
µ
Ã
while_cond_866230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_866230___redundant_placeholder04
0while_while_cond_866230___redundant_placeholder14
0while_while_cond_866230___redundant_placeholder24
0while_while_cond_866230___redundant_placeholder3
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
ãI

B__inference_layer3_layer_call_and_return_conditional_losses_863932

inputs<
*lstm_cell_5_matmul_readvariableop_resource:2(>
,lstm_cell_5_matmul_1_readvariableop_resource:
(9
+lstm_cell_5_biasadd_readvariableop_resource:(
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_863848*
condR
while_cond_863847*K
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
½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ì
ï
-__inference_sequential_2_layer_call_fn_864263
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_864199o
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
ã7
Ë
while_body_865678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
2while_lstm_cell_4_matmul_readvariableop_resource_0:áðG
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	<ðB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
0while_lstm_cell_4_matmul_readvariableop_resource:áðE
2while_lstm_cell_4_matmul_1_readvariableop_resource:	<ð@
1while_lstm_cell_4_biasadd_readvariableop_resource:	ð¢(while/lstm_cell_4/BiasAdd/ReadVariableOp¢'while/lstm_cell_4/MatMul/ReadVariableOp¢)while/lstm_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0¸
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¤
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðc
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitx
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Í

while/NoOpNoOp)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
8

A__inference_input_layer_call_and_return_conditional_losses_862950

inputs'
lstm_cell_4_862868:áð%
lstm_cell_4_862870:	<ð!
lstm_cell_4_862872:	ð
identity¢#lstm_cell_4/StatefulPartitionedCall¢while;
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
shrink_axis_maskð
#lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_4_862868lstm_cell_4_862870lstm_cell_4_862872*
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_862822n
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
value	B : ´
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_4_862868lstm_cell_4_862870lstm_cell_4_862872*
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
while_body_862881*
condR
while_cond_862880*K
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<t
NoOpNoOp$^lstm_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_4/StatefulPartitionedCall#lstm_cell_4/StatefulPartitionedCall2
whilewhile:^ Z
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
ù	
Ï
layer3_while_cond_865012*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3,
(layer3_while_less_layer3_strided_slice_1B
>layer3_while_layer3_while_cond_865012___redundant_placeholder0B
>layer3_while_layer3_while_cond_865012___redundant_placeholder1B
>layer3_while_layer3_while_cond_865012___redundant_placeholder2B
>layer3_while_layer3_while_cond_865012___redundant_placeholder3
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
ã7
Ë
while_body_865249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
2while_lstm_cell_4_matmul_readvariableop_resource_0:áðG
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	<ðB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
0while_lstm_cell_4_matmul_readvariableop_resource:áðE
2while_lstm_cell_4_matmul_1_readvariableop_resource:	<ð@
1while_lstm_cell_4_biasadd_readvariableop_resource:	ð¢(while/lstm_cell_4/BiasAdd/ReadVariableOp¢'while/lstm_cell_4/MatMul/ReadVariableOp¢)while/lstm_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0¸
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¤
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðc
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitx
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Í

while/NoOpNoOp)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
while_cond_866373
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_866373___redundant_placeholder04
0while_while_cond_866373___redundant_placeholder14
0while_while_cond_866373___redundant_placeholder24
0while_while_cond_866373___redundant_placeholder3
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
ä

G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_866564

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
æ
Ó
%sequential_2_layer3_while_cond_862510D
@sequential_2_layer3_while_sequential_2_layer3_while_loop_counterJ
Fsequential_2_layer3_while_sequential_2_layer3_while_maximum_iterations)
%sequential_2_layer3_while_placeholder+
'sequential_2_layer3_while_placeholder_1+
'sequential_2_layer3_while_placeholder_2+
'sequential_2_layer3_while_placeholder_3F
Bsequential_2_layer3_while_less_sequential_2_layer3_strided_slice_1\
Xsequential_2_layer3_while_sequential_2_layer3_while_cond_862510___redundant_placeholder0\
Xsequential_2_layer3_while_sequential_2_layer3_while_cond_862510___redundant_placeholder1\
Xsequential_2_layer3_while_sequential_2_layer3_while_cond_862510___redundant_placeholder2\
Xsequential_2_layer3_while_sequential_2_layer3_while_cond_862510___redundant_placeholder3&
"sequential_2_layer3_while_identity
²
sequential_2/layer3/while/LessLess%sequential_2_layer3_while_placeholderBsequential_2_layer3_while_less_sequential_2_layer3_strided_slice_1*
T0*
_output_shapes
: s
"sequential_2/layer3/while/IdentityIdentity"sequential_2/layer3/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_2_layer3_while_identity+sequential_2/layer3/while/Identity:output:0*(
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
° 
ä
H__inference_sequential_2_layer_call_and_return_conditional_losses_864199

inputs!
input_864164:áð
input_864166:	<ð
input_864168:	ð
layer1_864171:<<
layer1_864173:<
layer2_864176:<2
layer2_864178:2
layer3_864181:2(
layer3_864183:
(
layer3_864185:(
layer4_864188:

layer4_864190:
output_864193:
output_864195:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallø
input/StatefulPartitionedCallStatefulPartitionedCallinputsinput_864164input_864166input_864168*
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
A__inference_input_layer_call_and_return_conditional_losses_864117
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_864171layer1_864173*
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
B__inference_layer1_layer_call_and_return_conditional_losses_863497
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_864176layer2_864178*
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
B__inference_layer2_layer_call_and_return_conditional_losses_863534
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_864181layer3_864183layer3_864185*
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
B__inference_layer3_layer_call_and_return_conditional_losses_863932
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_864188layer4_864190*
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
B__inference_layer4_layer_call_and_return_conditional_losses_863701
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_864193output_864195*
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
B__inference_output_layer_call_and_return_conditional_losses_863718v
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
¼
æ
$__inference_signature_wrapper_865146
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
!__inference__wrapped_model_862609o
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
ì
ï
-__inference_sequential_2_layer_call_fn_863756
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_863725o
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
Ý
ê
-__inference_sequential_2_layer_call_fn_864378

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
H__inference_sequential_2_layer_call_and_return_conditional_losses_863725o
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
ó?
¡

layer3_while_body_865013*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3)
%layer3_while_layer3_strided_slice_1_0e
alayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0K
9layer3_while_lstm_cell_5_matmul_readvariableop_resource_0:2(M
;layer3_while_lstm_cell_5_matmul_1_readvariableop_resource_0:
(H
:layer3_while_lstm_cell_5_biasadd_readvariableop_resource_0:(
layer3_while_identity
layer3_while_identity_1
layer3_while_identity_2
layer3_while_identity_3
layer3_while_identity_4
layer3_while_identity_5'
#layer3_while_layer3_strided_slice_1c
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensorI
7layer3_while_lstm_cell_5_matmul_readvariableop_resource:2(K
9layer3_while_lstm_cell_5_matmul_1_readvariableop_resource:
(F
8layer3_while_lstm_cell_5_biasadd_readvariableop_resource:(¢/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp¢.layer3/while/lstm_cell_5/MatMul/ReadVariableOp¢0layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp
>layer3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   É
0layer3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0layer3_while_placeholderGlayer3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0¨
.layer3/while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp9layer3_while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ì
layer3/while/lstm_cell_5/MatMulMatMul7layer3/while/TensorArrayV2Read/TensorListGetItem:item:06layer3/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¬
0layer3/while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp;layer3_while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0³
!layer3/while/lstm_cell_5/MatMul_1MatMullayer3_while_placeholder_28layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¯
layer3/while/lstm_cell_5/addAddV2)layer3/while/lstm_cell_5/MatMul:product:0+layer3/while/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¦
/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp:layer3_while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¸
 layer3/while/lstm_cell_5/BiasAddBiasAdd layer3/while/lstm_cell_5/add:z:07layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(j
(layer3/while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
layer3/while/lstm_cell_5/splitSplit1layer3/while/lstm_cell_5/split/split_dim:output:0)layer3/while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
 layer3/while/lstm_cell_5/SigmoidSigmoid'layer3/while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"layer3/while/lstm_cell_5/Sigmoid_1Sigmoid'layer3/while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/lstm_cell_5/mulMul&layer3/while/lstm_cell_5/Sigmoid_1:y:0layer3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"layer3/while/lstm_cell_5/Sigmoid_2Sigmoid'layer3/while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
layer3/while/lstm_cell_5/mul_1Mul$layer3/while/lstm_cell_5/Sigmoid:y:0&layer3/while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/lstm_cell_5/add_1AddV2 layer3/while/lstm_cell_5/mul:z:0"layer3/while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"layer3/while/lstm_cell_5/Sigmoid_3Sigmoid'layer3/while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"layer3/while/lstm_cell_5/Sigmoid_4Sigmoid"layer3/while/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
§
layer3/while/lstm_cell_5/mul_2Mul&layer3/while/lstm_cell_5/Sigmoid_3:y:0&layer3/while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
à
1layer3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlayer3_while_placeholder_1layer3_while_placeholder"layer3/while/lstm_cell_5/mul_2:z:0*
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
: :éèÒ
layer3/while/Identity_4Identity"layer3/while/lstm_cell_5/mul_2:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/Identity_5Identity"layer3/while/lstm_cell_5/add_1:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
é
layer3/while/NoOpNoOp0^layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp/^layer3/while/lstm_cell_5/MatMul/ReadVariableOp1^layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
layer3_while_identitylayer3/while/Identity:output:0";
layer3_while_identity_1 layer3/while/Identity_1:output:0";
layer3_while_identity_2 layer3/while/Identity_2:output:0";
layer3_while_identity_3 layer3/while/Identity_3:output:0";
layer3_while_identity_4 layer3/while/Identity_4:output:0";
layer3_while_identity_5 layer3/while/Identity_5:output:0"L
#layer3_while_layer3_strided_slice_1%layer3_while_layer3_strided_slice_1_0"v
8layer3_while_lstm_cell_5_biasadd_readvariableop_resource:layer3_while_lstm_cell_5_biasadd_readvariableop_resource_0"x
9layer3_while_lstm_cell_5_matmul_1_readvariableop_resource;layer3_while_lstm_cell_5_matmul_1_readvariableop_resource_0"t
7layer3_while_lstm_cell_5_matmul_readvariableop_resource9layer3_while_lstm_cell_5_matmul_readvariableop_resource_0"Ä
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensoralayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2b
/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp/layer3/while/lstm_cell_5/BiasAdd/ReadVariableOp2`
.layer3/while/lstm_cell_5/MatMul/ReadVariableOp.layer3/while/lstm_cell_5/MatMul/ReadVariableOp2d
0layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp0layer3/while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
while_cond_866087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_866087___redundant_placeholder04
0while_while_cond_866087___redundant_placeholder14
0while_while_cond_866087___redundant_placeholder24
0while_while_cond_866087___redundant_placeholder3
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
ãI

B__inference_layer3_layer_call_and_return_conditional_losses_863682

inputs<
*lstm_cell_5_matmul_readvariableop_resource:2(>
,lstm_cell_5_matmul_1_readvariableop_resource:
(9
+lstm_cell_5_biasadd_readvariableop_resource:(
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_863598*
condR
while_cond_863597*K
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
½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ä

G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_866596

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
ãI

B__inference_layer3_layer_call_and_return_conditional_losses_866315

inputs<
*lstm_cell_5_matmul_readvariableop_resource:2(>
,lstm_cell_5_matmul_1_readvariableop_resource:
(9
+lstm_cell_5_biasadd_readvariableop_resource:(
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_866231*
condR
while_cond_866230*K
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
½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
f

__inference__traced_save_866870
file_prefix,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop,
(savev2_layer2_kernel_read_readvariableop*
&savev2_layer2_bias_read_readvariableop,
(savev2_layer4_kernel_read_readvariableop*
&savev2_layer4_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop7
3savev2_input_lstm_cell_4_kernel_read_readvariableopA
=savev2_input_lstm_cell_4_recurrent_kernel_read_readvariableop5
1savev2_input_lstm_cell_4_bias_read_readvariableop8
4savev2_layer3_lstm_cell_5_kernel_read_readvariableopB
>savev2_layer3_lstm_cell_5_recurrent_kernel_read_readvariableop6
2savev2_layer3_lstm_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_layer1_kernel_m_read_readvariableop1
-savev2_adam_layer1_bias_m_read_readvariableop3
/savev2_adam_layer2_kernel_m_read_readvariableop1
-savev2_adam_layer2_bias_m_read_readvariableop3
/savev2_adam_layer4_kernel_m_read_readvariableop1
-savev2_adam_layer4_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop>
:savev2_adam_input_lstm_cell_4_kernel_m_read_readvariableopH
Dsavev2_adam_input_lstm_cell_4_recurrent_kernel_m_read_readvariableop<
8savev2_adam_input_lstm_cell_4_bias_m_read_readvariableop?
;savev2_adam_layer3_lstm_cell_5_kernel_m_read_readvariableopI
Esavev2_adam_layer3_lstm_cell_5_recurrent_kernel_m_read_readvariableop=
9savev2_adam_layer3_lstm_cell_5_bias_m_read_readvariableop3
/savev2_adam_layer1_kernel_v_read_readvariableop1
-savev2_adam_layer1_bias_v_read_readvariableop3
/savev2_adam_layer2_kernel_v_read_readvariableop1
-savev2_adam_layer2_bias_v_read_readvariableop3
/savev2_adam_layer4_kernel_v_read_readvariableop1
-savev2_adam_layer4_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop>
:savev2_adam_input_lstm_cell_4_kernel_v_read_readvariableopH
Dsavev2_adam_input_lstm_cell_4_recurrent_kernel_v_read_readvariableop<
8savev2_adam_input_lstm_cell_4_bias_v_read_readvariableop?
;savev2_adam_layer3_lstm_cell_5_kernel_v_read_readvariableopI
Esavev2_adam_layer3_lstm_cell_5_recurrent_kernel_v_read_readvariableop=
9savev2_adam_layer3_lstm_cell_5_bias_v_read_readvariableop
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
: Ï
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*ø
valueîBë4B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÕ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ê
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_layer2_kernel_read_readvariableop&savev2_layer2_bias_read_readvariableop(savev2_layer4_kernel_read_readvariableop&savev2_layer4_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop3savev2_input_lstm_cell_4_kernel_read_readvariableop=savev2_input_lstm_cell_4_recurrent_kernel_read_readvariableop1savev2_input_lstm_cell_4_bias_read_readvariableop4savev2_layer3_lstm_cell_5_kernel_read_readvariableop>savev2_layer3_lstm_cell_5_recurrent_kernel_read_readvariableop2savev2_layer3_lstm_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_layer1_kernel_m_read_readvariableop-savev2_adam_layer1_bias_m_read_readvariableop/savev2_adam_layer2_kernel_m_read_readvariableop-savev2_adam_layer2_bias_m_read_readvariableop/savev2_adam_layer4_kernel_m_read_readvariableop-savev2_adam_layer4_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop:savev2_adam_input_lstm_cell_4_kernel_m_read_readvariableopDsavev2_adam_input_lstm_cell_4_recurrent_kernel_m_read_readvariableop8savev2_adam_input_lstm_cell_4_bias_m_read_readvariableop;savev2_adam_layer3_lstm_cell_5_kernel_m_read_readvariableopEsavev2_adam_layer3_lstm_cell_5_recurrent_kernel_m_read_readvariableop9savev2_adam_layer3_lstm_cell_5_bias_m_read_readvariableop/savev2_adam_layer1_kernel_v_read_readvariableop-savev2_adam_layer1_bias_v_read_readvariableop/savev2_adam_layer2_kernel_v_read_readvariableop-savev2_adam_layer2_bias_v_read_readvariableop/savev2_adam_layer4_kernel_v_read_readvariableop-savev2_adam_layer4_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableop:savev2_adam_input_lstm_cell_4_kernel_v_read_readvariableopDsavev2_adam_input_lstm_cell_4_recurrent_kernel_v_read_readvariableop8savev2_adam_input_lstm_cell_4_bias_v_read_readvariableop;savev2_adam_layer3_lstm_cell_5_kernel_v_read_readvariableopEsavev2_adam_layer3_lstm_cell_5_recurrent_kernel_v_read_readvariableop9savev2_adam_layer3_lstm_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	
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

identity_1Identity_1:output:0*
_input_shapes
: :<<:<:<2:2:
:::: : : : : :áð:	<ð:ð:2(:
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
: :'#
!
_output_shapes
:áð:%!

_output_shapes
:	<ð:!

_output_shapes	
:ð:$ 

_output_shapes

:2(:$ 

_output_shapes

:
(: 

_output_shapes
:(:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:<<: 

_output_shapes
:<:$ 

_output_shapes

:<2: 

_output_shapes
:2:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::' #
!
_output_shapes
:áð:%!!

_output_shapes
:	<ð:!"

_output_shapes	
:ð:$# 

_output_shapes

:2(:$$ 

_output_shapes

:
(: %

_output_shapes
:(:$& 

_output_shapes

:<<: '

_output_shapes
:<:$( 

_output_shapes

:<2: )

_output_shapes
:2:$* 

_output_shapes

:
: +

_output_shapes
::$, 

_output_shapes

:: -

_output_shapes
::'.#
!
_output_shapes
:áð:%/!

_output_shapes
:	<ð:!0

_output_shapes	
:ð:$1 

_output_shapes

:2(:$2 

_output_shapes

:
(: 3

_output_shapes
:(:4

_output_shapes
: 
8

A__inference_input_layer_call_and_return_conditional_losses_862759

inputs'
lstm_cell_4_862677:áð%
lstm_cell_4_862679:	<ð!
lstm_cell_4_862681:	ð
identity¢#lstm_cell_4/StatefulPartitionedCall¢while;
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
shrink_axis_maskð
#lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_4_862677lstm_cell_4_862679lstm_cell_4_862681*
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_862676n
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
value	B : ´
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_4_862677lstm_cell_4_862679lstm_cell_4_862681*
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
while_body_862690*
condR
while_cond_862689*K
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<t
NoOpNoOp$^lstm_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_4/StatefulPartitionedCall#lstm_cell_4/StatefulPartitionedCall2
whilewhile:^ Z
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
µ
Ã
while_cond_865944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865944___redundant_placeholder04
0while_while_cond_865944___redundant_placeholder14
0while_while_cond_865944___redundant_placeholder24
0while_while_cond_865944___redundant_placeholder3
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
J

B__inference_layer3_layer_call_and_return_conditional_losses_866029
inputs_0<
*lstm_cell_5_matmul_readvariableop_resource:2(>
,lstm_cell_5_matmul_1_readvariableop_resource:
(9
+lstm_cell_5_biasadd_readvariableop_resource:(
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_865945*
condR
while_cond_865944*K
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
½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
í>


input_while_body_864470(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3'
#input_while_input_strided_slice_1_0c
_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0M
8input_while_lstm_cell_4_matmul_readvariableop_resource_0:áðM
:input_while_lstm_cell_4_matmul_1_readvariableop_resource_0:	<ðH
9input_while_lstm_cell_4_biasadd_readvariableop_resource_0:	ð
input_while_identity
input_while_identity_1
input_while_identity_2
input_while_identity_3
input_while_identity_4
input_while_identity_5%
!input_while_input_strided_slice_1a
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensorK
6input_while_lstm_cell_4_matmul_readvariableop_resource:áðK
8input_while_lstm_cell_4_matmul_1_readvariableop_resource:	<ðF
7input_while_lstm_cell_4_biasadd_readvariableop_resource:	ð¢.input/while/lstm_cell_4/BiasAdd/ReadVariableOp¢-input/while/lstm_cell_4/MatMul/ReadVariableOp¢/input/while/lstm_cell_4/MatMul_1/ReadVariableOp
=input/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá Æ
/input/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0input_while_placeholderFinput/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0©
-input/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp8input_while_lstm_cell_4_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0Ê
input/while/lstm_cell_4/MatMulMatMul6input/while/TensorArrayV2Read/TensorListGetItem:item:05input/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð«
/input/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp:input_while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0±
 input/while/lstm_cell_4/MatMul_1MatMulinput_while_placeholder_27input/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð­
input/while/lstm_cell_4/addAddV2(input/while/lstm_cell_4/MatMul:product:0*input/while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¥
.input/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp9input_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¶
input/while/lstm_cell_4/BiasAddBiasAddinput/while/lstm_cell_4/add:z:06input/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿði
'input/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
input/while/lstm_cell_4/splitSplit0input/while/lstm_cell_4/split/split_dim:output:0(input/while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
input/while/lstm_cell_4/SigmoidSigmoid&input/while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
!input/while/lstm_cell_4/Sigmoid_1Sigmoid&input/while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_4/mulMul%input/while/lstm_cell_4/Sigmoid_1:y:0input_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<~
input/while/lstm_cell_4/ReluRelu&input/while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<§
input/while/lstm_cell_4/mul_1Mul#input/while/lstm_cell_4/Sigmoid:y:0*input/while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_4/add_1AddV2input/while/lstm_cell_4/mul:z:0!input/while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
!input/while/lstm_cell_4/Sigmoid_2Sigmoid&input/while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
input/while/lstm_cell_4/Relu_1Relu!input/while/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<«
input/while/lstm_cell_4/mul_2Mul%input/while/lstm_cell_4/Sigmoid_2:y:0,input/while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ü
0input/while/TensorArrayV2Write/TensorListSetItemTensorListSetIteminput_while_placeholder_1input_while_placeholder!input/while/lstm_cell_4/mul_2:z:0*
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
: :éèÒ
input/while/Identity_4Identity!input/while/lstm_cell_4/mul_2:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/Identity_5Identity!input/while/lstm_cell_4/add_1:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<å
input/while/NoOpNoOp/^input/while/lstm_cell_4/BiasAdd/ReadVariableOp.^input/while/lstm_cell_4/MatMul/ReadVariableOp0^input/while/lstm_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
input_while_identityinput/while/Identity:output:0"9
input_while_identity_1input/while/Identity_1:output:0"9
input_while_identity_2input/while/Identity_2:output:0"9
input_while_identity_3input/while/Identity_3:output:0"9
input_while_identity_4input/while/Identity_4:output:0"9
input_while_identity_5input/while/Identity_5:output:0"H
!input_while_input_strided_slice_1#input_while_input_strided_slice_1_0"t
7input_while_lstm_cell_4_biasadd_readvariableop_resource9input_while_lstm_cell_4_biasadd_readvariableop_resource_0"v
8input_while_lstm_cell_4_matmul_1_readvariableop_resource:input_while_lstm_cell_4_matmul_1_readvariableop_resource_0"r
6input_while_lstm_cell_4_matmul_readvariableop_resource8input_while_lstm_cell_4_matmul_readvariableop_resource_0"À
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2`
.input/while/lstm_cell_4/BiasAdd/ReadVariableOp.input/while/lstm_cell_4/BiasAdd/ReadVariableOp2^
-input/while/lstm_cell_4/MatMul/ReadVariableOp-input/while/lstm_cell_4/MatMul/ReadVariableOp2b
/input/while/lstm_cell_4/MatMul_1/ReadVariableOp/input/while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
&__inference_input_layer_call_fn_865157
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
A__inference_input_layer_call_and_return_conditional_losses_862759|
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

µ
&__inference_input_layer_call_fn_865190

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
A__inference_input_layer_call_and_return_conditional_losses_864117s
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
ç"
à
while_body_862690
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_4_862714_0:áð-
while_lstm_cell_4_862716_0:	<ð)
while_lstm_cell_4_862718_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_4_862714:áð+
while_lstm_cell_4_862716:	<ð'
while_lstm_cell_4_862718:	ð¢)while/lstm_cell_4/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0®
)while/lstm_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_4_862714_0while_lstm_cell_4_862716_0while_lstm_cell_4_862718_0*
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_862676Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_4/StatefulPartitionedCall:output:0*
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
: :éèÒ
while/Identity_4Identity2while/lstm_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/Identity_5Identity2while/lstm_cell_4/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x

while/NoOpNoOp*^while/lstm_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_4_862714while_lstm_cell_4_862714_0"6
while_lstm_cell_4_862716while_lstm_cell_4_862716_0"6
while_lstm_cell_4_862718while_lstm_cell_4_862718_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_4/StatefulPartitionedCall)while/lstm_cell_4/StatefulPartitionedCall: 
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
ãI

B__inference_layer3_layer_call_and_return_conditional_losses_866458

inputs<
*lstm_cell_5_matmul_readvariableop_resource:2(>
,lstm_cell_5_matmul_1_readvariableop_resource:
(9
+lstm_cell_5_biasadd_readvariableop_resource:(
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_866374*
condR
while_cond_866373*K
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
½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
°J

A__inference_input_layer_call_and_return_conditional_losses_865333
inputs_0?
*lstm_cell_4_matmul_readvariableop_resource:áð?
,lstm_cell_4_matmul_1_readvariableop_resource:	<ð:
+lstm_cell_4_biasadd_readvariableop_resource:	ð
identity¢"lstm_cell_4/BiasAdd/ReadVariableOp¢!lstm_cell_4/MatMul/ReadVariableOp¢#lstm_cell_4/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð]
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitl
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<u
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
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
while_body_865249*
condR
while_cond_865248*K
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<½
NoOpNoOp#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:` \
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
"
_user_specified_name
inputs/0
µ
Ã
while_cond_862880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_862880___redundant_placeholder04
0while_while_cond_862880___redundant_placeholder14
0while_while_cond_862880___redundant_placeholder24
0while_while_cond_862880___redundant_placeholder3
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


ó
B__inference_layer4_layer_call_and_return_conditional_losses_866478

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
ã7
Ë
while_body_865535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
2while_lstm_cell_4_matmul_readvariableop_resource_0:áðG
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	<ðB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
0while_lstm_cell_4_matmul_readvariableop_resource:áðE
2while_lstm_cell_4_matmul_1_readvariableop_resource:	<ð@
1while_lstm_cell_4_biasadd_readvariableop_resource:	ð¢(while/lstm_cell_4/BiasAdd/ReadVariableOp¢'while/lstm_cell_4/MatMul/ReadVariableOp¢)while/lstm_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0¸
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¤
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðc
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitx
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Í

while/NoOpNoOp)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
òI

A__inference_input_layer_call_and_return_conditional_losses_865619

inputs?
*lstm_cell_4_matmul_readvariableop_resource:áð?
,lstm_cell_4_matmul_1_readvariableop_resource:	<ð:
+lstm_cell_4_biasadd_readvariableop_resource:	ð
identity¢"lstm_cell_4/BiasAdd/ReadVariableOp¢!lstm_cell_4/MatMul/ReadVariableOp¢#lstm_cell_4/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð]
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitl
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<u
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
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
while_body_865535*
condR
while_cond_865534*K
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
:ÿÿÿÿÿÿÿÿÿ<½
NoOpNoOp#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
Î

'__inference_layer1_layer_call_fn_865771

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
B__inference_layer1_layer_call_and_return_conditional_losses_863497s
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
Ð7
Á
while_body_866231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_5_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_5_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_5_matmul_readvariableop_resource:2(D
2while_lstm_cell_5_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_5_biasadd_readvariableop_resource:(¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0·
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0£
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
û7
ý
B__inference_layer3_layer_call_and_return_conditional_losses_863300

inputs$
lstm_cell_5_863218:2($
lstm_cell_5_863220:
( 
lstm_cell_5_863222:(
identity¢#lstm_cell_5/StatefulPartitionedCall¢while;
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
shrink_axis_maskð
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_863218lstm_cell_5_863220lstm_cell_5_863222*
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_863172n
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
value	B : ´
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_863218lstm_cell_5_863220lstm_cell_5_863222*
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
while_body_863231*
condR
while_cond_863230*K
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
t
NoOpNoOp$^lstm_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ý
ê
-__inference_sequential_2_layer_call_fn_864411

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
H__inference_sequential_2_layer_call_and_return_conditional_losses_864199o
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
ã7
Ë
while_body_863374
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
2while_lstm_cell_4_matmul_readvariableop_resource_0:áðG
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	<ðB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
0while_lstm_cell_4_matmul_readvariableop_resource:áðE
2while_lstm_cell_4_matmul_1_readvariableop_resource:	<ð@
1while_lstm_cell_4_biasadd_readvariableop_resource:	ð¢(while/lstm_cell_4/BiasAdd/ReadVariableOp¢'while/lstm_cell_4/MatMul/ReadVariableOp¢)while/lstm_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0¸
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¤
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðc
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitx
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Í

while/NoOpNoOp)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
û7
ý
B__inference_layer3_layer_call_and_return_conditional_losses_863109

inputs$
lstm_cell_5_863027:2($
lstm_cell_5_863029:
( 
lstm_cell_5_863031:(
identity¢#lstm_cell_5/StatefulPartitionedCall¢while;
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
shrink_axis_maskð
#lstm_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_5_863027lstm_cell_5_863029lstm_cell_5_863031*
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_863026n
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
value	B : ´
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_5_863027lstm_cell_5_863029lstm_cell_5_863031*
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
while_body_863040*
condR
while_cond_863039*K
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
t
NoOpNoOp$^lstm_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_5/StatefulPartitionedCall#lstm_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
µ
Ã
while_cond_865677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865677___redundant_placeholder04
0while_while_cond_865677___redundant_placeholder14
0while_while_cond_865677___redundant_placeholder24
0while_while_cond_865677___redundant_placeholder3
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
while_cond_865391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865391___redundant_placeholder04
0while_while_cond_865391___redundant_placeholder14
0while_while_cond_865391___redundant_placeholder24
0while_while_cond_865391___redundant_placeholder3
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
Ê
¿
$sequential_2_input_while_cond_862317B
>sequential_2_input_while_sequential_2_input_while_loop_counterH
Dsequential_2_input_while_sequential_2_input_while_maximum_iterations(
$sequential_2_input_while_placeholder*
&sequential_2_input_while_placeholder_1*
&sequential_2_input_while_placeholder_2*
&sequential_2_input_while_placeholder_3D
@sequential_2_input_while_less_sequential_2_input_strided_slice_1Z
Vsequential_2_input_while_sequential_2_input_while_cond_862317___redundant_placeholder0Z
Vsequential_2_input_while_sequential_2_input_while_cond_862317___redundant_placeholder1Z
Vsequential_2_input_while_sequential_2_input_while_cond_862317___redundant_placeholder2Z
Vsequential_2_input_while_sequential_2_input_while_cond_862317___redundant_placeholder3%
!sequential_2_input_while_identity
®
sequential_2/input/while/LessLess$sequential_2_input_while_placeholder@sequential_2_input_while_less_sequential_2_input_strided_slice_1*
T0*
_output_shapes
: q
!sequential_2/input/while/IdentityIdentity!sequential_2/input/while/Less:z:0*
T0
*
_output_shapes
: "O
!sequential_2_input_while_identity*sequential_2/input/while/Identity:output:0*(
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
&__inference_input_layer_call_fn_865179

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
A__inference_input_layer_call_and_return_conditional_losses_863458s
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
J

B__inference_layer3_layer_call_and_return_conditional_losses_866172
inputs_0<
*lstm_cell_5_matmul_readvariableop_resource:2(>
,lstm_cell_5_matmul_1_readvariableop_resource:
(9
+lstm_cell_5_biasadd_readvariableop_resource:(
identity¢"lstm_cell_5/BiasAdd/ReadVariableOp¢!lstm_cell_5/MatMul/ReadVariableOp¢#lstm_cell_5/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
!lstm_cell_5/MatMul/ReadVariableOpReadVariableOp*lstm_cell_5_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_5/MatMulMatMulstrided_slice_2:output:0)lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_5/MatMul_1MatMulzeros:output:0+lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_5/addAddV2lstm_cell_5/MatMul:product:0lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
"lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_5/BiasAddBiasAddlstm_cell_5/add:z:0*lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(]
lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_5/splitSplit$lstm_cell_5/split/split_dim:output:0lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitl
lstm_cell_5/SigmoidSigmoidlstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_1Sigmoidlstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
lstm_cell_5/mulMullstm_cell_5/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_2Sigmoidlstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
lstm_cell_5/mul_1Mullstm_cell_5/Sigmoid:y:0lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
lstm_cell_5/add_1AddV2lstm_cell_5/mul:z:0lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
n
lstm_cell_5/Sigmoid_3Sigmoidlstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
lstm_cell_5/Sigmoid_4Sigmoidlstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_5/mul_2Mullstm_cell_5/Sigmoid_3:y:0lstm_cell_5/Sigmoid_4:y:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_5_matmul_readvariableop_resource,lstm_cell_5_matmul_1_readvariableop_resource+lstm_cell_5_biasadd_readvariableop_resource*
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
while_body_866088*
condR
while_cond_866087*K
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
½
NoOpNoOp#^lstm_cell_5/BiasAdd/ReadVariableOp"^lstm_cell_5/MatMul/ReadVariableOp$^lstm_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2H
"lstm_cell_5/BiasAdd/ReadVariableOp"lstm_cell_5/BiasAdd/ReadVariableOp2F
!lstm_cell_5/MatMul/ReadVariableOp!lstm_cell_5/MatMul/ReadVariableOp2J
#lstm_cell_5/MatMul_1/ReadVariableOp#lstm_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
ÊË
ª 
"__inference__traced_restore_867033
file_prefix0
assignvariableop_layer1_kernel:<<,
assignvariableop_1_layer1_bias:<2
 assignvariableop_2_layer2_kernel:<2,
assignvariableop_3_layer2_bias:22
 assignvariableop_4_layer4_kernel:
,
assignvariableop_5_layer4_bias:2
 assignvariableop_6_output_kernel:,
assignvariableop_7_output_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: A
,assignvariableop_13_input_lstm_cell_4_kernel:áðI
6assignvariableop_14_input_lstm_cell_4_recurrent_kernel:	<ð9
*assignvariableop_15_input_lstm_cell_4_bias:	ð?
-assignvariableop_16_layer3_lstm_cell_5_kernel:2(I
7assignvariableop_17_layer3_lstm_cell_5_recurrent_kernel:
(9
+assignvariableop_18_layer3_lstm_cell_5_bias:(#
assignvariableop_19_total: #
assignvariableop_20_count: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: :
(assignvariableop_23_adam_layer1_kernel_m:<<4
&assignvariableop_24_adam_layer1_bias_m:<:
(assignvariableop_25_adam_layer2_kernel_m:<24
&assignvariableop_26_adam_layer2_bias_m:2:
(assignvariableop_27_adam_layer4_kernel_m:
4
&assignvariableop_28_adam_layer4_bias_m::
(assignvariableop_29_adam_output_kernel_m:4
&assignvariableop_30_adam_output_bias_m:H
3assignvariableop_31_adam_input_lstm_cell_4_kernel_m:áðP
=assignvariableop_32_adam_input_lstm_cell_4_recurrent_kernel_m:	<ð@
1assignvariableop_33_adam_input_lstm_cell_4_bias_m:	ðF
4assignvariableop_34_adam_layer3_lstm_cell_5_kernel_m:2(P
>assignvariableop_35_adam_layer3_lstm_cell_5_recurrent_kernel_m:
(@
2assignvariableop_36_adam_layer3_lstm_cell_5_bias_m:(:
(assignvariableop_37_adam_layer1_kernel_v:<<4
&assignvariableop_38_adam_layer1_bias_v:<:
(assignvariableop_39_adam_layer2_kernel_v:<24
&assignvariableop_40_adam_layer2_bias_v:2:
(assignvariableop_41_adam_layer4_kernel_v:
4
&assignvariableop_42_adam_layer4_bias_v::
(assignvariableop_43_adam_output_kernel_v:4
&assignvariableop_44_adam_output_bias_v:H
3assignvariableop_45_adam_input_lstm_cell_4_kernel_v:áðP
=assignvariableop_46_adam_input_lstm_cell_4_recurrent_kernel_v:	<ð@
1assignvariableop_47_adam_input_lstm_cell_4_bias_v:	ðF
4assignvariableop_48_adam_layer3_lstm_cell_5_kernel_v:2(P
>assignvariableop_49_adam_layer3_lstm_cell_5_recurrent_kernel_v:
(@
2assignvariableop_50_adam_layer3_lstm_cell_5_bias_v:(
identity_52¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ò
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*ø
valueîBë4B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHØ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¥
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*æ
_output_shapesÓ
Ð::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
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
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp,assignvariableop_13_input_lstm_cell_4_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_14AssignVariableOp6assignvariableop_14_input_lstm_cell_4_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp*assignvariableop_15_input_lstm_cell_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp-assignvariableop_16_layer3_lstm_cell_5_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_17AssignVariableOp7assignvariableop_17_layer3_lstm_cell_5_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp+assignvariableop_18_layer3_lstm_cell_5_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_layer1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_layer1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_layer2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_layer2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_layer4_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_layer4_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_output_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_output_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_31AssignVariableOp3assignvariableop_31_adam_input_lstm_cell_4_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_32AssignVariableOp=assignvariableop_32_adam_input_lstm_cell_4_recurrent_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_33AssignVariableOp1assignvariableop_33_adam_input_lstm_cell_4_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_layer3_lstm_cell_5_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_layer3_lstm_cell_5_recurrent_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_36AssignVariableOp2assignvariableop_36_adam_layer3_lstm_cell_5_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_layer1_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_layer1_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_layer2_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_layer2_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_layer4_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_layer4_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_output_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_output_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_45AssignVariableOp3assignvariableop_45_adam_input_lstm_cell_4_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_46AssignVariableOp=assignvariableop_46_adam_input_lstm_cell_4_recurrent_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_47AssignVariableOp1assignvariableop_47_adam_input_lstm_cell_4_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_layer3_lstm_cell_5_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_49AssignVariableOp>assignvariableop_49_adam_layer3_lstm_cell_5_recurrent_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_50AssignVariableOp2assignvariableop_50_adam_layer3_lstm_cell_5_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ±	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: 	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
µ
Ã
while_cond_863230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_863230___redundant_placeholder04
0while_while_cond_863230___redundant_placeholder14
0while_while_cond_863230___redundant_placeholder24
0while_while_cond_863230___redundant_placeholder3
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


ó
B__inference_output_layer_call_and_return_conditional_losses_863718

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
N
«
$sequential_2_input_while_body_862318B
>sequential_2_input_while_sequential_2_input_while_loop_counterH
Dsequential_2_input_while_sequential_2_input_while_maximum_iterations(
$sequential_2_input_while_placeholder*
&sequential_2_input_while_placeholder_1*
&sequential_2_input_while_placeholder_2*
&sequential_2_input_while_placeholder_3A
=sequential_2_input_while_sequential_2_input_strided_slice_1_0}
ysequential_2_input_while_tensorarrayv2read_tensorlistgetitem_sequential_2_input_tensorarrayunstack_tensorlistfromtensor_0Z
Esequential_2_input_while_lstm_cell_4_matmul_readvariableop_resource_0:áðZ
Gsequential_2_input_while_lstm_cell_4_matmul_1_readvariableop_resource_0:	<ðU
Fsequential_2_input_while_lstm_cell_4_biasadd_readvariableop_resource_0:	ð%
!sequential_2_input_while_identity'
#sequential_2_input_while_identity_1'
#sequential_2_input_while_identity_2'
#sequential_2_input_while_identity_3'
#sequential_2_input_while_identity_4'
#sequential_2_input_while_identity_5?
;sequential_2_input_while_sequential_2_input_strided_slice_1{
wsequential_2_input_while_tensorarrayv2read_tensorlistgetitem_sequential_2_input_tensorarrayunstack_tensorlistfromtensorX
Csequential_2_input_while_lstm_cell_4_matmul_readvariableop_resource:áðX
Esequential_2_input_while_lstm_cell_4_matmul_1_readvariableop_resource:	<ðS
Dsequential_2_input_while_lstm_cell_4_biasadd_readvariableop_resource:	ð¢;sequential_2/input/while/lstm_cell_4/BiasAdd/ReadVariableOp¢:sequential_2/input/while/lstm_cell_4/MatMul/ReadVariableOp¢<sequential_2/input/while/lstm_cell_4/MatMul_1/ReadVariableOp
Jsequential_2/input/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá 
<sequential_2/input/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemysequential_2_input_while_tensorarrayv2read_tensorlistgetitem_sequential_2_input_tensorarrayunstack_tensorlistfromtensor_0$sequential_2_input_while_placeholderSsequential_2/input/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0Ã
:sequential_2/input/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOpEsequential_2_input_while_lstm_cell_4_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0ñ
+sequential_2/input/while/lstm_cell_4/MatMulMatMulCsequential_2/input/while/TensorArrayV2Read/TensorListGetItem:item:0Bsequential_2/input/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÅ
<sequential_2/input/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOpGsequential_2_input_while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0Ø
-sequential_2/input/while/lstm_cell_4/MatMul_1MatMul&sequential_2_input_while_placeholder_2Dsequential_2/input/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÔ
(sequential_2/input/while/lstm_cell_4/addAddV25sequential_2/input/while/lstm_cell_4/MatMul:product:07sequential_2/input/while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¿
;sequential_2/input/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOpFsequential_2_input_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0Ý
,sequential_2/input/while/lstm_cell_4/BiasAddBiasAdd,sequential_2/input/while/lstm_cell_4/add:z:0Csequential_2/input/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðv
4sequential_2/input/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¥
*sequential_2/input/while/lstm_cell_4/splitSplit=sequential_2/input/while/lstm_cell_4/split/split_dim:output:05sequential_2/input/while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
,sequential_2/input/while/lstm_cell_4/SigmoidSigmoid3sequential_2/input/while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ< 
.sequential_2/input/while/lstm_cell_4/Sigmoid_1Sigmoid3sequential_2/input/while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<½
(sequential_2/input/while/lstm_cell_4/mulMul2sequential_2/input/while/lstm_cell_4/Sigmoid_1:y:0&sequential_2_input_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
)sequential_2/input/while/lstm_cell_4/ReluRelu3sequential_2/input/while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Î
*sequential_2/input/while/lstm_cell_4/mul_1Mul0sequential_2/input/while/lstm_cell_4/Sigmoid:y:07sequential_2/input/while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ã
*sequential_2/input/while/lstm_cell_4/add_1AddV2,sequential_2/input/while/lstm_cell_4/mul:z:0.sequential_2/input/while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ< 
.sequential_2/input/while/lstm_cell_4/Sigmoid_2Sigmoid3sequential_2/input/while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
+sequential_2/input/while/lstm_cell_4/Relu_1Relu.sequential_2/input/while/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ò
*sequential_2/input/while/lstm_cell_4/mul_2Mul2sequential_2/input/while/lstm_cell_4/Sigmoid_2:y:09sequential_2/input/while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
=sequential_2/input/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&sequential_2_input_while_placeholder_1$sequential_2_input_while_placeholder.sequential_2/input/while/lstm_cell_4/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ`
sequential_2/input/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_2/input/while/addAddV2$sequential_2_input_while_placeholder'sequential_2/input/while/add/y:output:0*
T0*
_output_shapes
: b
 sequential_2/input/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :³
sequential_2/input/while/add_1AddV2>sequential_2_input_while_sequential_2_input_while_loop_counter)sequential_2/input/while/add_1/y:output:0*
T0*
_output_shapes
: 
!sequential_2/input/while/IdentityIdentity"sequential_2/input/while/add_1:z:0^sequential_2/input/while/NoOp*
T0*
_output_shapes
: ¶
#sequential_2/input/while/Identity_1IdentityDsequential_2_input_while_sequential_2_input_while_maximum_iterations^sequential_2/input/while/NoOp*
T0*
_output_shapes
: 
#sequential_2/input/while/Identity_2Identity sequential_2/input/while/add:z:0^sequential_2/input/while/NoOp*
T0*
_output_shapes
: Ò
#sequential_2/input/while/Identity_3IdentityMsequential_2/input/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/input/while/NoOp*
T0*
_output_shapes
: :éèÒ±
#sequential_2/input/while/Identity_4Identity.sequential_2/input/while/lstm_cell_4/mul_2:z:0^sequential_2/input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<±
#sequential_2/input/while/Identity_5Identity.sequential_2/input/while/lstm_cell_4/add_1:z:0^sequential_2/input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
sequential_2/input/while/NoOpNoOp<^sequential_2/input/while/lstm_cell_4/BiasAdd/ReadVariableOp;^sequential_2/input/while/lstm_cell_4/MatMul/ReadVariableOp=^sequential_2/input/while/lstm_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "O
!sequential_2_input_while_identity*sequential_2/input/while/Identity:output:0"S
#sequential_2_input_while_identity_1,sequential_2/input/while/Identity_1:output:0"S
#sequential_2_input_while_identity_2,sequential_2/input/while/Identity_2:output:0"S
#sequential_2_input_while_identity_3,sequential_2/input/while/Identity_3:output:0"S
#sequential_2_input_while_identity_4,sequential_2/input/while/Identity_4:output:0"S
#sequential_2_input_while_identity_5,sequential_2/input/while/Identity_5:output:0"
Dsequential_2_input_while_lstm_cell_4_biasadd_readvariableop_resourceFsequential_2_input_while_lstm_cell_4_biasadd_readvariableop_resource_0"
Esequential_2_input_while_lstm_cell_4_matmul_1_readvariableop_resourceGsequential_2_input_while_lstm_cell_4_matmul_1_readvariableop_resource_0"
Csequential_2_input_while_lstm_cell_4_matmul_readvariableop_resourceEsequential_2_input_while_lstm_cell_4_matmul_readvariableop_resource_0"|
;sequential_2_input_while_sequential_2_input_strided_slice_1=sequential_2_input_while_sequential_2_input_strided_slice_1_0"ô
wsequential_2_input_while_tensorarrayv2read_tensorlistgetitem_sequential_2_input_tensorarrayunstack_tensorlistfromtensorysequential_2_input_while_tensorarrayv2read_tensorlistgetitem_sequential_2_input_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2z
;sequential_2/input/while/lstm_cell_4/BiasAdd/ReadVariableOp;sequential_2/input/while/lstm_cell_4/BiasAdd/ReadVariableOp2x
:sequential_2/input/while/lstm_cell_4/MatMul/ReadVariableOp:sequential_2/input/while/lstm_cell_4/MatMul/ReadVariableOp2|
<sequential_2/input/while/lstm_cell_4/MatMul_1/ReadVariableOp<sequential_2/input/while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
while_cond_863597
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_863597___redundant_placeholder04
0while_while_cond_863597___redundant_placeholder14
0while_while_cond_863597___redundant_placeholder24
0while_while_cond_863597___redundant_placeholder3
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
ò
±
'__inference_layer3_layer_call_fn_865875

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
B__inference_layer3_layer_call_and_return_conditional_losses_863682o
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
¡
ù
B__inference_layer1_layer_call_and_return_conditional_losses_865802

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
ï
÷
,__inference_lstm_cell_4_layer_call_fn_866515

inputs
states_0
states_1
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity

identity_1

identity_2¢StatefulPartitionedCall§
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
GPU 2J 8 *P
fKRI
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_862676o
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
Ü

G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_862676

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
Ü

G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_862822

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
ã7
Ë
while_body_864033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
2while_lstm_cell_4_matmul_readvariableop_resource_0:áðG
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	<ðB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
0while_lstm_cell_4_matmul_readvariableop_resource:áðE
2while_lstm_cell_4_matmul_1_readvariableop_resource:	<ð@
1while_lstm_cell_4_biasadd_readvariableop_resource:	ð¢(while/lstm_cell_4/BiasAdd/ReadVariableOp¢'while/lstm_cell_4/MatMul/ReadVariableOp¢)while/lstm_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0¸
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¤
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðc
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitx
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Í

while/NoOpNoOp)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
while_cond_865534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865534___redundant_placeholder04
0while_while_cond_865534___redundant_placeholder14
0while_while_cond_865534___redundant_placeholder24
0while_while_cond_865534___redundant_placeholder3
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
ù	
Ï
layer3_while_cond_864662*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3,
(layer3_while_less_layer3_strided_slice_1B
>layer3_while_layer3_while_cond_864662___redundant_placeholder0B
>layer3_while_layer3_while_cond_864662___redundant_placeholder1B
>layer3_while_layer3_while_cond_864662___redundant_placeholder2B
>layer3_while_layer3_while_cond_864662___redundant_placeholder3
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


ó
B__inference_output_layer_call_and_return_conditional_losses_866498

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
while_cond_863847
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_863847___redundant_placeholder04
0while_while_cond_863847___redundant_placeholder14
0while_while_cond_863847___redundant_placeholder24
0while_while_cond_863847___redundant_placeholder3
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
µ
Ã
while_cond_864032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_864032___redundant_placeholder04
0while_while_cond_864032___redundant_placeholder14
0while_while_cond_864032___redundant_placeholder24
0while_while_cond_864032___redundant_placeholder3
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
Ð7
Á
while_body_863848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_5_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_5_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_5_matmul_readvariableop_resource:2(D
2while_lstm_cell_5_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_5_biasadd_readvariableop_resource:(¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0·
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0£
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
òI

A__inference_input_layer_call_and_return_conditional_losses_863458

inputs?
*lstm_cell_4_matmul_readvariableop_resource:áð?
,lstm_cell_4_matmul_1_readvariableop_resource:	<ð:
+lstm_cell_4_biasadd_readvariableop_resource:	ð
identity¢"lstm_cell_4/BiasAdd/ReadVariableOp¢!lstm_cell_4/MatMul/ReadVariableOp¢#lstm_cell_4/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð]
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitl
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<u
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
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
while_body_863374*
condR
while_cond_863373*K
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
:ÿÿÿÿÿÿÿÿÿ<½
NoOpNoOp#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
µ
Ã
while_cond_865248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_865248___redundant_placeholder04
0while_while_cond_865248___redundant_placeholder14
0while_while_cond_865248___redundant_placeholder24
0while_while_cond_865248___redundant_placeholder3
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


ó
B__inference_layer4_layer_call_and_return_conditional_losses_863701

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
Üê
ë
H__inference_sequential_2_layer_call_and_return_conditional_losses_864761

inputsE
0input_lstm_cell_4_matmul_readvariableop_resource:áðE
2input_lstm_cell_4_matmul_1_readvariableop_resource:	<ð@
1input_lstm_cell_4_biasadd_readvariableop_resource:	ð:
(layer1_tensordot_readvariableop_resource:<<4
&layer1_biasadd_readvariableop_resource:<:
(layer2_tensordot_readvariableop_resource:<24
&layer2_biasadd_readvariableop_resource:2C
1layer3_lstm_cell_5_matmul_readvariableop_resource:2(E
3layer3_lstm_cell_5_matmul_1_readvariableop_resource:
(@
2layer3_lstm_cell_5_biasadd_readvariableop_resource:(7
%layer4_matmul_readvariableop_resource:
4
&layer4_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢(input/lstm_cell_4/BiasAdd/ReadVariableOp¢'input/lstm_cell_4/MatMul/ReadVariableOp¢)input/lstm_cell_4/MatMul_1/ReadVariableOp¢input/while¢layer1/BiasAdd/ReadVariableOp¢layer1/Tensordot/ReadVariableOp¢layer2/BiasAdd/ReadVariableOp¢layer2/Tensordot/ReadVariableOp¢)layer3/lstm_cell_5/BiasAdd/ReadVariableOp¢(layer3/lstm_cell_5/MatMul/ReadVariableOp¢*layer3/lstm_cell_5/MatMul_1/ReadVariableOp¢layer3/while¢layer4/BiasAdd/ReadVariableOp¢layer4/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpA
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
shrink_axis_mask
'input/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp0input_lstm_cell_4_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0¦
input/lstm_cell_4/MatMulMatMulinput/strided_slice_2:output:0/input/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)input/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp2input_lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0 
input/lstm_cell_4/MatMul_1MatMulinput/zeros:output:01input/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
input/lstm_cell_4/addAddV2"input/lstm_cell_4/MatMul:product:0$input/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
(input/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp1input_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0¤
input/lstm_cell_4/BiasAddBiasAddinput/lstm_cell_4/add:z:00input/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðc
!input/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
input/lstm_cell_4/splitSplit*input/lstm_cell_4/split/split_dim:output:0"input/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitx
input/lstm_cell_4/SigmoidSigmoid input/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
input/lstm_cell_4/Sigmoid_1Sigmoid input/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_4/mulMulinput/lstm_cell_4/Sigmoid_1:y:0input/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
input/lstm_cell_4/ReluRelu input/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_4/mul_1Mulinput/lstm_cell_4/Sigmoid:y:0$input/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_4/add_1AddV2input/lstm_cell_4/mul:z:0input/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
input/lstm_cell_4/Sigmoid_2Sigmoid input/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
input/lstm_cell_4/Relu_1Reluinput/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_4/mul_2Mulinput/lstm_cell_4/Sigmoid_2:y:0&input/lstm_cell_4/Relu_1:activations:0*
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
value	B : Ó
input/whileWhile!input/while/loop_counter:output:0'input/while/maximum_iterations:output:0input/time:output:0input/TensorArrayV2_1:handle:0input/zeros:output:0input/zeros_1:output:0input/strided_slice_1:output:0=input/TensorArrayUnstack/TensorListFromTensor:output_handle:00input_lstm_cell_4_matmul_readvariableop_resource2input_lstm_cell_4_matmul_1_readvariableop_resource1input_lstm_cell_4_biasadd_readvariableop_resource*
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
input_while_body_864470*#
condR
input_while_cond_864469*K
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
shrink_axis_mask
(layer3/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp1layer3_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0¨
layer3/lstm_cell_5/MatMulMatMullayer3/strided_slice_2:output:00layer3/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*layer3/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp3layer3_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0¢
layer3/lstm_cell_5/MatMul_1MatMullayer3/zeros:output:02layer3/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
layer3/lstm_cell_5/addAddV2#layer3/lstm_cell_5/MatMul:product:0%layer3/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)layer3/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp2layer3_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¦
layer3/lstm_cell_5/BiasAddBiasAddlayer3/lstm_cell_5/add:z:01layer3/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"layer3/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
layer3/lstm_cell_5/splitSplit+layer3/lstm_cell_5/split/split_dim:output:0#layer3/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
layer3/lstm_cell_5/SigmoidSigmoid!layer3/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
layer3/lstm_cell_5/Sigmoid_1Sigmoid!layer3/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_5/mulMul layer3/lstm_cell_5/Sigmoid_1:y:0layer3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
layer3/lstm_cell_5/Sigmoid_2Sigmoid!layer3/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_5/mul_1Mullayer3/lstm_cell_5/Sigmoid:y:0 layer3/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_5/add_1AddV2layer3/lstm_cell_5/mul:z:0layer3/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
layer3/lstm_cell_5/Sigmoid_3Sigmoid!layer3/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
layer3/lstm_cell_5/Sigmoid_4Sigmoidlayer3/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_5/mul_2Mul layer3/lstm_cell_5/Sigmoid_3:y:0 layer3/lstm_cell_5/Sigmoid_4:y:0*
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
value	B : á
layer3/whileWhile"layer3/while/loop_counter:output:0(layer3/while/maximum_iterations:output:0layer3/time:output:0layer3/TensorArrayV2_1:handle:0layer3/zeros:output:0layer3/zeros_1:output:0layer3/strided_slice_1:output:0>layer3/TensorArrayUnstack/TensorListFromTensor:output_handle:01layer3_lstm_cell_5_matmul_readvariableop_resource3layer3_lstm_cell_5_matmul_1_readvariableop_resource2layer3_lstm_cell_5_biasadd_readvariableop_resource*
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
layer3_while_body_864663*$
condR
layer3_while_cond_864662*K
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
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp)^input/lstm_cell_4/BiasAdd/ReadVariableOp(^input/lstm_cell_4/MatMul/ReadVariableOp*^input/lstm_cell_4/MatMul_1/ReadVariableOp^input/while^layer1/BiasAdd/ReadVariableOp ^layer1/Tensordot/ReadVariableOp^layer2/BiasAdd/ReadVariableOp ^layer2/Tensordot/ReadVariableOp*^layer3/lstm_cell_5/BiasAdd/ReadVariableOp)^layer3/lstm_cell_5/MatMul/ReadVariableOp+^layer3/lstm_cell_5/MatMul_1/ReadVariableOp^layer3/while^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2T
(input/lstm_cell_4/BiasAdd/ReadVariableOp(input/lstm_cell_4/BiasAdd/ReadVariableOp2R
'input/lstm_cell_4/MatMul/ReadVariableOp'input/lstm_cell_4/MatMul/ReadVariableOp2V
)input/lstm_cell_4/MatMul_1/ReadVariableOp)input/lstm_cell_4/MatMul_1/ReadVariableOp2
input/whileinput/while2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2B
layer1/Tensordot/ReadVariableOplayer1/Tensordot/ReadVariableOp2>
layer2/BiasAdd/ReadVariableOplayer2/BiasAdd/ReadVariableOp2B
layer2/Tensordot/ReadVariableOplayer2/Tensordot/ReadVariableOp2V
)layer3/lstm_cell_5/BiasAdd/ReadVariableOp)layer3/lstm_cell_5/BiasAdd/ReadVariableOp2T
(layer3/lstm_cell_5/MatMul/ReadVariableOp(layer3/lstm_cell_5/MatMul/ReadVariableOp2X
*layer3/lstm_cell_5/MatMul_1/ReadVariableOp*layer3/lstm_cell_5/MatMul_1/ReadVariableOp2
layer3/whilelayer3/while2>
layer4/BiasAdd/ReadVariableOplayer4/BiasAdd/ReadVariableOp2<
layer4/MatMul/ReadVariableOplayer4/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
òI

A__inference_input_layer_call_and_return_conditional_losses_864117

inputs?
*lstm_cell_4_matmul_readvariableop_resource:áð?
,lstm_cell_4_matmul_1_readvariableop_resource:	<ð:
+lstm_cell_4_biasadd_readvariableop_resource:	ð
identity¢"lstm_cell_4/BiasAdd/ReadVariableOp¢!lstm_cell_4/MatMul/ReadVariableOp¢#lstm_cell_4/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð]
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitl
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<u
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
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
while_body_864033*
condR
while_cond_864032*K
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
:ÿÿÿÿÿÿÿÿÿ<½
NoOpNoOp#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
Ð7
Á
while_body_866088
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_5_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_5_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_5_matmul_readvariableop_resource:2(D
2while_lstm_cell_5_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_5_biasadd_readvariableop_resource:(¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0·
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0£
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
Ô

G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_866662

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
Ç
Ï
!__inference__wrapped_model_862609
input_inputR
=sequential_2_input_lstm_cell_4_matmul_readvariableop_resource:áðR
?sequential_2_input_lstm_cell_4_matmul_1_readvariableop_resource:	<ðM
>sequential_2_input_lstm_cell_4_biasadd_readvariableop_resource:	ðG
5sequential_2_layer1_tensordot_readvariableop_resource:<<A
3sequential_2_layer1_biasadd_readvariableop_resource:<G
5sequential_2_layer2_tensordot_readvariableop_resource:<2A
3sequential_2_layer2_biasadd_readvariableop_resource:2P
>sequential_2_layer3_lstm_cell_5_matmul_readvariableop_resource:2(R
@sequential_2_layer3_lstm_cell_5_matmul_1_readvariableop_resource:
(M
?sequential_2_layer3_lstm_cell_5_biasadd_readvariableop_resource:(D
2sequential_2_layer4_matmul_readvariableop_resource:
A
3sequential_2_layer4_biasadd_readvariableop_resource:D
2sequential_2_output_matmul_readvariableop_resource:A
3sequential_2_output_biasadd_readvariableop_resource:
identity¢5sequential_2/input/lstm_cell_4/BiasAdd/ReadVariableOp¢4sequential_2/input/lstm_cell_4/MatMul/ReadVariableOp¢6sequential_2/input/lstm_cell_4/MatMul_1/ReadVariableOp¢sequential_2/input/while¢*sequential_2/layer1/BiasAdd/ReadVariableOp¢,sequential_2/layer1/Tensordot/ReadVariableOp¢*sequential_2/layer2/BiasAdd/ReadVariableOp¢,sequential_2/layer2/Tensordot/ReadVariableOp¢6sequential_2/layer3/lstm_cell_5/BiasAdd/ReadVariableOp¢5sequential_2/layer3/lstm_cell_5/MatMul/ReadVariableOp¢7sequential_2/layer3/lstm_cell_5/MatMul_1/ReadVariableOp¢sequential_2/layer3/while¢*sequential_2/layer4/BiasAdd/ReadVariableOp¢)sequential_2/layer4/MatMul/ReadVariableOp¢*sequential_2/output/BiasAdd/ReadVariableOp¢)sequential_2/output/MatMul/ReadVariableOpS
sequential_2/input/ShapeShapeinput_input*
T0*
_output_shapes
:p
&sequential_2/input/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential_2/input/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential_2/input/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 sequential_2/input/strided_sliceStridedSlice!sequential_2/input/Shape:output:0/sequential_2/input/strided_slice/stack:output:01sequential_2/input/strided_slice/stack_1:output:01sequential_2/input/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!sequential_2/input/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<¬
sequential_2/input/zeros/packedPack)sequential_2/input/strided_slice:output:0*sequential_2/input/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
sequential_2/input/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¥
sequential_2/input/zerosFill(sequential_2/input/zeros/packed:output:0'sequential_2/input/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
#sequential_2/input/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<°
!sequential_2/input/zeros_1/packedPack)sequential_2/input/strided_slice:output:0,sequential_2/input/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_2/input/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_2/input/zeros_1Fill*sequential_2/input/zeros_1/packed:output:0)sequential_2/input/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<v
!sequential_2/input/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_2/input/transpose	Transposeinput_input*sequential_2/input/transpose/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿáj
sequential_2/input/Shape_1Shape sequential_2/input/transpose:y:0*
T0*
_output_shapes
:r
(sequential_2/input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_2/input/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_2/input/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"sequential_2/input/strided_slice_1StridedSlice#sequential_2/input/Shape_1:output:01sequential_2/input/strided_slice_1/stack:output:03sequential_2/input/strided_slice_1/stack_1:output:03sequential_2/input/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
.sequential_2/input/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿí
 sequential_2/input/TensorArrayV2TensorListReserve7sequential_2/input/TensorArrayV2/element_shape:output:0+sequential_2/input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Hsequential_2/input/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá 
:sequential_2/input/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_2/input/transpose:y:0Qsequential_2/input/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒr
(sequential_2/input/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_2/input/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_2/input/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ê
"sequential_2/input/strided_slice_2StridedSlice sequential_2/input/transpose:y:01sequential_2/input/strided_slice_2/stack:output:03sequential_2/input/strided_slice_2/stack_1:output:03sequential_2/input/strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_maskµ
4sequential_2/input/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp=sequential_2_input_lstm_cell_4_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0Í
%sequential_2/input/lstm_cell_4/MatMulMatMul+sequential_2/input/strided_slice_2:output:0<sequential_2/input/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð·
6sequential_2/input/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp?sequential_2_input_lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0Ç
'sequential_2/input/lstm_cell_4/MatMul_1MatMul!sequential_2/input/zeros:output:0>sequential_2/input/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÂ
"sequential_2/input/lstm_cell_4/addAddV2/sequential_2/input/lstm_cell_4/MatMul:product:01sequential_2/input/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð±
5sequential_2/input/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp>sequential_2_input_lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0Ë
&sequential_2/input/lstm_cell_4/BiasAddBiasAdd&sequential_2/input/lstm_cell_4/add:z:0=sequential_2/input/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðp
.sequential_2/input/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$sequential_2/input/lstm_cell_4/splitSplit7sequential_2/input/lstm_cell_4/split/split_dim:output:0/sequential_2/input/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
&sequential_2/input/lstm_cell_4/SigmoidSigmoid-sequential_2/input/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
(sequential_2/input/lstm_cell_4/Sigmoid_1Sigmoid-sequential_2/input/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<®
"sequential_2/input/lstm_cell_4/mulMul,sequential_2/input/lstm_cell_4/Sigmoid_1:y:0#sequential_2/input/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
#sequential_2/input/lstm_cell_4/ReluRelu-sequential_2/input/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¼
$sequential_2/input/lstm_cell_4/mul_1Mul*sequential_2/input/lstm_cell_4/Sigmoid:y:01sequential_2/input/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<±
$sequential_2/input/lstm_cell_4/add_1AddV2&sequential_2/input/lstm_cell_4/mul:z:0(sequential_2/input/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
(sequential_2/input/lstm_cell_4/Sigmoid_2Sigmoid-sequential_2/input/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
%sequential_2/input/lstm_cell_4/Relu_1Relu(sequential_2/input/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<À
$sequential_2/input/lstm_cell_4/mul_2Mul,sequential_2/input/lstm_cell_4/Sigmoid_2:y:03sequential_2/input/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
0sequential_2/input/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ñ
"sequential_2/input/TensorArrayV2_1TensorListReserve9sequential_2/input/TensorArrayV2_1/element_shape:output:0+sequential_2/input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒY
sequential_2/input/timeConst*
_output_shapes
: *
dtype0*
value	B : v
+sequential_2/input/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿg
%sequential_2/input/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_2/input/whileWhile.sequential_2/input/while/loop_counter:output:04sequential_2/input/while/maximum_iterations:output:0 sequential_2/input/time:output:0+sequential_2/input/TensorArrayV2_1:handle:0!sequential_2/input/zeros:output:0#sequential_2/input/zeros_1:output:0+sequential_2/input/strided_slice_1:output:0Jsequential_2/input/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_2_input_lstm_cell_4_matmul_readvariableop_resource?sequential_2_input_lstm_cell_4_matmul_1_readvariableop_resource>sequential_2_input_lstm_cell_4_biasadd_readvariableop_resource*
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
$sequential_2_input_while_body_862318*0
cond(R&
$sequential_2_input_while_cond_862317*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
Csequential_2/input/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   û
5sequential_2/input/TensorArrayV2Stack/TensorListStackTensorListStack!sequential_2/input/while:output:3Lsequential_2/input/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
element_dtype0{
(sequential_2/input/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿt
*sequential_2/input/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: t
*sequential_2/input/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:æ
"sequential_2/input/strided_slice_3StridedSlice>sequential_2/input/TensorArrayV2Stack/TensorListStack:tensor:01sequential_2/input/strided_slice_3/stack:output:03sequential_2/input/strided_slice_3/stack_1:output:03sequential_2/input/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_maskx
#sequential_2/input/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ï
sequential_2/input/transpose_1	Transpose>sequential_2/input/TensorArrayV2Stack/TensorListStack:tensor:0,sequential_2/input/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
sequential_2/input/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¢
,sequential_2/layer1/Tensordot/ReadVariableOpReadVariableOp5sequential_2_layer1_tensordot_readvariableop_resource*
_output_shapes

:<<*
dtype0l
"sequential_2/layer1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:s
"sequential_2/layer1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       u
#sequential_2/layer1/Tensordot/ShapeShape"sequential_2/input/transpose_1:y:0*
T0*
_output_shapes
:m
+sequential_2/layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&sequential_2/layer1/Tensordot/GatherV2GatherV2,sequential_2/layer1/Tensordot/Shape:output:0+sequential_2/layer1/Tensordot/free:output:04sequential_2/layer1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
-sequential_2/layer1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/layer1/Tensordot/GatherV2_1GatherV2,sequential_2/layer1/Tensordot/Shape:output:0+sequential_2/layer1/Tensordot/axes:output:06sequential_2/layer1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
#sequential_2/layer1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ª
"sequential_2/layer1/Tensordot/ProdProd/sequential_2/layer1/Tensordot/GatherV2:output:0,sequential_2/layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: o
%sequential_2/layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/layer1/Tensordot/Prod_1Prod1sequential_2/layer1/Tensordot/GatherV2_1:output:0.sequential_2/layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: k
)sequential_2/layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
$sequential_2/layer1/Tensordot/concatConcatV2+sequential_2/layer1/Tensordot/free:output:0+sequential_2/layer1/Tensordot/axes:output:02sequential_2/layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:µ
#sequential_2/layer1/Tensordot/stackPack+sequential_2/layer1/Tensordot/Prod:output:0-sequential_2/layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:½
'sequential_2/layer1/Tensordot/transpose	Transpose"sequential_2/input/transpose_1:y:0-sequential_2/layer1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Æ
%sequential_2/layer1/Tensordot/ReshapeReshape+sequential_2/layer1/Tensordot/transpose:y:0,sequential_2/layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÆ
$sequential_2/layer1/Tensordot/MatMulMatMul.sequential_2/layer1/Tensordot/Reshape:output:04sequential_2/layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
%sequential_2/layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:<m
+sequential_2/layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
&sequential_2/layer1/Tensordot/concat_1ConcatV2/sequential_2/layer1/Tensordot/GatherV2:output:0.sequential_2/layer1/Tensordot/Const_2:output:04sequential_2/layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¿
sequential_2/layer1/TensordotReshape.sequential_2/layer1/Tensordot/MatMul:product:0/sequential_2/layer1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
*sequential_2/layer1/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_layer1_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0¸
sequential_2/layer1/BiasAddBiasAdd&sequential_2/layer1/Tensordot:output:02sequential_2/layer1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
sequential_2/layer1/ReluRelu$sequential_2/layer1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¢
,sequential_2/layer2/Tensordot/ReadVariableOpReadVariableOp5sequential_2_layer2_tensordot_readvariableop_resource*
_output_shapes

:<2*
dtype0l
"sequential_2/layer2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:s
"sequential_2/layer2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
#sequential_2/layer2/Tensordot/ShapeShape&sequential_2/layer1/Relu:activations:0*
T0*
_output_shapes
:m
+sequential_2/layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
&sequential_2/layer2/Tensordot/GatherV2GatherV2,sequential_2/layer2/Tensordot/Shape:output:0+sequential_2/layer2/Tensordot/free:output:04sequential_2/layer2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
-sequential_2/layer2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
(sequential_2/layer2/Tensordot/GatherV2_1GatherV2,sequential_2/layer2/Tensordot/Shape:output:0+sequential_2/layer2/Tensordot/axes:output:06sequential_2/layer2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
#sequential_2/layer2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ª
"sequential_2/layer2/Tensordot/ProdProd/sequential_2/layer2/Tensordot/GatherV2:output:0,sequential_2/layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: o
%sequential_2/layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: °
$sequential_2/layer2/Tensordot/Prod_1Prod1sequential_2/layer2/Tensordot/GatherV2_1:output:0.sequential_2/layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: k
)sequential_2/layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ì
$sequential_2/layer2/Tensordot/concatConcatV2+sequential_2/layer2/Tensordot/free:output:0+sequential_2/layer2/Tensordot/axes:output:02sequential_2/layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:µ
#sequential_2/layer2/Tensordot/stackPack+sequential_2/layer2/Tensordot/Prod:output:0-sequential_2/layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Á
'sequential_2/layer2/Tensordot/transpose	Transpose&sequential_2/layer1/Relu:activations:0-sequential_2/layer2/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Æ
%sequential_2/layer2/Tensordot/ReshapeReshape+sequential_2/layer2/Tensordot/transpose:y:0,sequential_2/layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÆ
$sequential_2/layer2/Tensordot/MatMulMatMul.sequential_2/layer2/Tensordot/Reshape:output:04sequential_2/layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2o
%sequential_2/layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2m
+sequential_2/layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
&sequential_2/layer2/Tensordot/concat_1ConcatV2/sequential_2/layer2/Tensordot/GatherV2:output:0.sequential_2/layer2/Tensordot/Const_2:output:04sequential_2/layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¿
sequential_2/layer2/TensordotReshape.sequential_2/layer2/Tensordot/MatMul:product:0/sequential_2/layer2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
*sequential_2/layer2/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_layer2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0¸
sequential_2/layer2/BiasAddBiasAdd&sequential_2/layer2/Tensordot:output:02sequential_2/layer2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/layer2/SigmoidSigmoid$sequential_2/layer2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2h
sequential_2/layer3/ShapeShapesequential_2/layer2/Sigmoid:y:0*
T0*
_output_shapes
:q
'sequential_2/layer3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_2/layer3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_2/layer3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_2/layer3/strided_sliceStridedSlice"sequential_2/layer3/Shape:output:00sequential_2/layer3/strided_slice/stack:output:02sequential_2/layer3/strided_slice/stack_1:output:02sequential_2/layer3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_2/layer3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¯
 sequential_2/layer3/zeros/packedPack*sequential_2/layer3/strided_slice:output:0+sequential_2/layer3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_2/layer3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¨
sequential_2/layer3/zerosFill)sequential_2/layer3/zeros/packed:output:0(sequential_2/layer3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
f
$sequential_2/layer3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
³
"sequential_2/layer3/zeros_1/packedPack*sequential_2/layer3/strided_slice:output:0-sequential_2/layer3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_2/layer3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_2/layer3/zeros_1Fill+sequential_2/layer3/zeros_1/packed:output:0*sequential_2/layer3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
"sequential_2/layer3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
sequential_2/layer3/transpose	Transposesequential_2/layer2/Sigmoid:y:0+sequential_2/layer3/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2l
sequential_2/layer3/Shape_1Shape!sequential_2/layer3/transpose:y:0*
T0*
_output_shapes
:s
)sequential_2/layer3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/layer3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/layer3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_2/layer3/strided_slice_1StridedSlice$sequential_2/layer3/Shape_1:output:02sequential_2/layer3/strided_slice_1/stack:output:04sequential_2/layer3/strided_slice_1/stack_1:output:04sequential_2/layer3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_2/layer3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿð
!sequential_2/layer3/TensorArrayV2TensorListReserve8sequential_2/layer3/TensorArrayV2/element_shape:output:0,sequential_2/layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Isequential_2/layer3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
;sequential_2/layer3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/layer3/transpose:y:0Rsequential_2/layer3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒs
)sequential_2/layer3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/layer3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/layer3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
#sequential_2/layer3/strided_slice_2StridedSlice!sequential_2/layer3/transpose:y:02sequential_2/layer3/strided_slice_2/stack:output:04sequential_2/layer3/strided_slice_2/stack_1:output:04sequential_2/layer3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask´
5sequential_2/layer3/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp>sequential_2_layer3_lstm_cell_5_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ï
&sequential_2/layer3/lstm_cell_5/MatMulMatMul,sequential_2/layer3/strided_slice_2:output:0=sequential_2/layer3/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¸
7sequential_2/layer3/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp@sequential_2_layer3_lstm_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0É
(sequential_2/layer3/lstm_cell_5/MatMul_1MatMul"sequential_2/layer3/zeros:output:0?sequential_2/layer3/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ä
#sequential_2/layer3/lstm_cell_5/addAddV20sequential_2/layer3/lstm_cell_5/MatMul:product:02sequential_2/layer3/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
6sequential_2/layer3/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp?sequential_2_layer3_lstm_cell_5_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Í
'sequential_2/layer3/lstm_cell_5/BiasAddBiasAdd'sequential_2/layer3/lstm_cell_5/add:z:0>sequential_2/layer3/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(q
/sequential_2/layer3/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%sequential_2/layer3/lstm_cell_5/splitSplit8sequential_2/layer3/lstm_cell_5/split/split_dim:output:00sequential_2/layer3/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
'sequential_2/layer3/lstm_cell_5/SigmoidSigmoid.sequential_2/layer3/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

)sequential_2/layer3/lstm_cell_5/Sigmoid_1Sigmoid.sequential_2/layer3/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
±
#sequential_2/layer3/lstm_cell_5/mulMul-sequential_2/layer3/lstm_cell_5/Sigmoid_1:y:0$sequential_2/layer3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

)sequential_2/layer3/lstm_cell_5/Sigmoid_2Sigmoid.sequential_2/layer3/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
º
%sequential_2/layer3/lstm_cell_5/mul_1Mul+sequential_2/layer3/lstm_cell_5/Sigmoid:y:0-sequential_2/layer3/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
´
%sequential_2/layer3/lstm_cell_5/add_1AddV2'sequential_2/layer3/lstm_cell_5/mul:z:0)sequential_2/layer3/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

)sequential_2/layer3/lstm_cell_5/Sigmoid_3Sigmoid.sequential_2/layer3/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

)sequential_2/layer3/lstm_cell_5/Sigmoid_4Sigmoid)sequential_2/layer3/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¼
%sequential_2/layer3/lstm_cell_5/mul_2Mul-sequential_2/layer3/lstm_cell_5/Sigmoid_3:y:0-sequential_2/layer3/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

1sequential_2/layer3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ô
#sequential_2/layer3/TensorArrayV2_1TensorListReserve:sequential_2/layer3/TensorArrayV2_1/element_shape:output:0,sequential_2/layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒZ
sequential_2/layer3/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_2/layer3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿh
&sequential_2/layer3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_2/layer3/whileWhile/sequential_2/layer3/while/loop_counter:output:05sequential_2/layer3/while/maximum_iterations:output:0!sequential_2/layer3/time:output:0,sequential_2/layer3/TensorArrayV2_1:handle:0"sequential_2/layer3/zeros:output:0$sequential_2/layer3/zeros_1:output:0,sequential_2/layer3/strided_slice_1:output:0Ksequential_2/layer3/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_2_layer3_lstm_cell_5_matmul_readvariableop_resource@sequential_2_layer3_lstm_cell_5_matmul_1_readvariableop_resource?sequential_2_layer3_lstm_cell_5_biasadd_readvariableop_resource*
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
%sequential_2_layer3_while_body_862511*1
cond)R'
%sequential_2_layer3_while_cond_862510*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
Dsequential_2/layer3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   þ
6sequential_2/layer3/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/layer3/while:output:3Msequential_2/layer3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0|
)sequential_2/layer3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿu
+sequential_2/layer3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/layer3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ë
#sequential_2/layer3/strided_slice_3StridedSlice?sequential_2/layer3/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/layer3/strided_slice_3/stack:output:04sequential_2/layer3/strided_slice_3/stack_1:output:04sequential_2/layer3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_masky
$sequential_2/layer3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ò
sequential_2/layer3/transpose_1	Transpose?sequential_2/layer3/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/layer3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
o
sequential_2/layer3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
)sequential_2/layer4/MatMul/ReadVariableOpReadVariableOp2sequential_2_layer4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0·
sequential_2/layer4/MatMulMatMul,sequential_2/layer3/strided_slice_3:output:01sequential_2/layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_2/layer4/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_layer4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
sequential_2/layer4/BiasAddBiasAdd$sequential_2/layer4/MatMul:product:02sequential_2/layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
sequential_2/layer4/SigmoidSigmoid$sequential_2/layer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential_2/output/MatMul/ReadVariableOpReadVariableOp2sequential_2_output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0ª
sequential_2/output/MatMulMatMulsequential_2/layer4/Sigmoid:y:01sequential_2/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_2/output/BiasAdd/ReadVariableOpReadVariableOp3sequential_2_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
sequential_2/output/BiasAddBiasAdd$sequential_2/output/MatMul:product:02sequential_2/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
sequential_2/output/SigmoidSigmoid$sequential_2/output/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
IdentityIdentitysequential_2/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp6^sequential_2/input/lstm_cell_4/BiasAdd/ReadVariableOp5^sequential_2/input/lstm_cell_4/MatMul/ReadVariableOp7^sequential_2/input/lstm_cell_4/MatMul_1/ReadVariableOp^sequential_2/input/while+^sequential_2/layer1/BiasAdd/ReadVariableOp-^sequential_2/layer1/Tensordot/ReadVariableOp+^sequential_2/layer2/BiasAdd/ReadVariableOp-^sequential_2/layer2/Tensordot/ReadVariableOp7^sequential_2/layer3/lstm_cell_5/BiasAdd/ReadVariableOp6^sequential_2/layer3/lstm_cell_5/MatMul/ReadVariableOp8^sequential_2/layer3/lstm_cell_5/MatMul_1/ReadVariableOp^sequential_2/layer3/while+^sequential_2/layer4/BiasAdd/ReadVariableOp*^sequential_2/layer4/MatMul/ReadVariableOp+^sequential_2/output/BiasAdd/ReadVariableOp*^sequential_2/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2n
5sequential_2/input/lstm_cell_4/BiasAdd/ReadVariableOp5sequential_2/input/lstm_cell_4/BiasAdd/ReadVariableOp2l
4sequential_2/input/lstm_cell_4/MatMul/ReadVariableOp4sequential_2/input/lstm_cell_4/MatMul/ReadVariableOp2p
6sequential_2/input/lstm_cell_4/MatMul_1/ReadVariableOp6sequential_2/input/lstm_cell_4/MatMul_1/ReadVariableOp24
sequential_2/input/whilesequential_2/input/while2X
*sequential_2/layer1/BiasAdd/ReadVariableOp*sequential_2/layer1/BiasAdd/ReadVariableOp2\
,sequential_2/layer1/Tensordot/ReadVariableOp,sequential_2/layer1/Tensordot/ReadVariableOp2X
*sequential_2/layer2/BiasAdd/ReadVariableOp*sequential_2/layer2/BiasAdd/ReadVariableOp2\
,sequential_2/layer2/Tensordot/ReadVariableOp,sequential_2/layer2/Tensordot/ReadVariableOp2p
6sequential_2/layer3/lstm_cell_5/BiasAdd/ReadVariableOp6sequential_2/layer3/lstm_cell_5/BiasAdd/ReadVariableOp2n
5sequential_2/layer3/lstm_cell_5/MatMul/ReadVariableOp5sequential_2/layer3/lstm_cell_5/MatMul/ReadVariableOp2r
7sequential_2/layer3/lstm_cell_5/MatMul_1/ReadVariableOp7sequential_2/layer3/lstm_cell_5/MatMul_1/ReadVariableOp26
sequential_2/layer3/whilesequential_2/layer3/while2X
*sequential_2/layer4/BiasAdd/ReadVariableOp*sequential_2/layer4/BiasAdd/ReadVariableOp2V
)sequential_2/layer4/MatMul/ReadVariableOp)sequential_2/layer4/MatMul/ReadVariableOp2X
*sequential_2/output/BiasAdd/ReadVariableOp*sequential_2/output/BiasAdd/ReadVariableOp2V
)sequential_2/output/MatMul/ReadVariableOp)sequential_2/output/MatMul/ReadVariableOp:Z V
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
%
_user_specified_nameinput_input
Ý	
»
input_while_cond_864819(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3*
&input_while_less_input_strided_slice_1@
<input_while_input_while_cond_864819___redundant_placeholder0@
<input_while_input_while_cond_864819___redundant_placeholder1@
<input_while_input_while_cond_864819___redundant_placeholder2@
<input_while_input_while_cond_864819___redundant_placeholder3
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
í>


input_while_body_864820(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3'
#input_while_input_strided_slice_1_0c
_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0M
8input_while_lstm_cell_4_matmul_readvariableop_resource_0:áðM
:input_while_lstm_cell_4_matmul_1_readvariableop_resource_0:	<ðH
9input_while_lstm_cell_4_biasadd_readvariableop_resource_0:	ð
input_while_identity
input_while_identity_1
input_while_identity_2
input_while_identity_3
input_while_identity_4
input_while_identity_5%
!input_while_input_strided_slice_1a
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensorK
6input_while_lstm_cell_4_matmul_readvariableop_resource:áðK
8input_while_lstm_cell_4_matmul_1_readvariableop_resource:	<ðF
7input_while_lstm_cell_4_biasadd_readvariableop_resource:	ð¢.input/while/lstm_cell_4/BiasAdd/ReadVariableOp¢-input/while/lstm_cell_4/MatMul/ReadVariableOp¢/input/while/lstm_cell_4/MatMul_1/ReadVariableOp
=input/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá Æ
/input/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0input_while_placeholderFinput/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0©
-input/while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp8input_while_lstm_cell_4_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0Ê
input/while/lstm_cell_4/MatMulMatMul6input/while/TensorArrayV2Read/TensorListGetItem:item:05input/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð«
/input/while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp:input_while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0±
 input/while/lstm_cell_4/MatMul_1MatMulinput_while_placeholder_27input/while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð­
input/while/lstm_cell_4/addAddV2(input/while/lstm_cell_4/MatMul:product:0*input/while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¥
.input/while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp9input_while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¶
input/while/lstm_cell_4/BiasAddBiasAddinput/while/lstm_cell_4/add:z:06input/while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿði
'input/while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :þ
input/while/lstm_cell_4/splitSplit0input/while/lstm_cell_4/split/split_dim:output:0(input/while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
input/while/lstm_cell_4/SigmoidSigmoid&input/while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
!input/while/lstm_cell_4/Sigmoid_1Sigmoid&input/while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_4/mulMul%input/while/lstm_cell_4/Sigmoid_1:y:0input_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<~
input/while/lstm_cell_4/ReluRelu&input/while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<§
input/while/lstm_cell_4/mul_1Mul#input/while/lstm_cell_4/Sigmoid:y:0*input/while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_4/add_1AddV2input/while/lstm_cell_4/mul:z:0!input/while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
!input/while/lstm_cell_4/Sigmoid_2Sigmoid&input/while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
input/while/lstm_cell_4/Relu_1Relu!input/while/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<«
input/while/lstm_cell_4/mul_2Mul%input/while/lstm_cell_4/Sigmoid_2:y:0,input/while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ü
0input/while/TensorArrayV2Write/TensorListSetItemTensorListSetIteminput_while_placeholder_1input_while_placeholder!input/while/lstm_cell_4/mul_2:z:0*
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
: :éèÒ
input/while/Identity_4Identity!input/while/lstm_cell_4/mul_2:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/Identity_5Identity!input/while/lstm_cell_4/add_1:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<å
input/while/NoOpNoOp/^input/while/lstm_cell_4/BiasAdd/ReadVariableOp.^input/while/lstm_cell_4/MatMul/ReadVariableOp0^input/while/lstm_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "5
input_while_identityinput/while/Identity:output:0"9
input_while_identity_1input/while/Identity_1:output:0"9
input_while_identity_2input/while/Identity_2:output:0"9
input_while_identity_3input/while/Identity_3:output:0"9
input_while_identity_4input/while/Identity_4:output:0"9
input_while_identity_5input/while/Identity_5:output:0"H
!input_while_input_strided_slice_1#input_while_input_strided_slice_1_0"t
7input_while_lstm_cell_4_biasadd_readvariableop_resource9input_while_lstm_cell_4_biasadd_readvariableop_resource_0"v
8input_while_lstm_cell_4_matmul_1_readvariableop_resource:input_while_lstm_cell_4_matmul_1_readvariableop_resource_0"r
6input_while_lstm_cell_4_matmul_readvariableop_resource8input_while_lstm_cell_4_matmul_readvariableop_resource_0"À
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2`
.input/while/lstm_cell_4/BiasAdd/ReadVariableOp.input/while/lstm_cell_4/BiasAdd/ReadVariableOp2^
-input/while/lstm_cell_4/MatMul/ReadVariableOp-input/while/lstm_cell_4/MatMul/ReadVariableOp2b
/input/while/lstm_cell_4/MatMul_1/ReadVariableOp/input/while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
ã7
Ë
while_body_865392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
2while_lstm_cell_4_matmul_readvariableop_resource_0:áðG
4while_lstm_cell_4_matmul_1_readvariableop_resource_0:	<ðB
3while_lstm_cell_4_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
0while_lstm_cell_4_matmul_readvariableop_resource:áðE
2while_lstm_cell_4_matmul_1_readvariableop_resource:	<ð@
1while_lstm_cell_4_biasadd_readvariableop_resource:	ð¢(while/lstm_cell_4/BiasAdd/ReadVariableOp¢'while/lstm_cell_4/MatMul/ReadVariableOp¢)while/lstm_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
'while/lstm_cell_4/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_4_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0¸
while/lstm_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0
while/lstm_cell_4/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_4/addAddV2"while/lstm_cell_4/MatMul:product:0$while/lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
(while/lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¤
while/lstm_cell_4/BiasAddBiasAddwhile/lstm_cell_4/add:z:00while/lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðc
!while/lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_4/splitSplit*while/lstm_cell_4/split/split_dim:output:0"while/lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitx
while/lstm_cell_4/SigmoidSigmoid while/lstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_1Sigmoid while/lstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mulMulwhile/lstm_cell_4/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
while/lstm_cell_4/ReluRelu while/lstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_1Mulwhile/lstm_cell_4/Sigmoid:y:0$while/lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/add_1AddV2while/lstm_cell_4/mul:z:0while/lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<z
while/lstm_cell_4/Sigmoid_2Sigmoid while/lstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
while/lstm_cell_4/Relu_1Reluwhile/lstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_4/mul_2Mulwhile/lstm_cell_4/Sigmoid_2:y:0&while/lstm_cell_4/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_4/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_4/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
while/Identity_5Identitywhile/lstm_cell_4/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Í

while/NoOpNoOp)^while/lstm_cell_4/BiasAdd/ReadVariableOp(^while/lstm_cell_4/MatMul/ReadVariableOp*^while/lstm_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_4_biasadd_readvariableop_resource3while_lstm_cell_4_biasadd_readvariableop_resource_0"j
2while_lstm_cell_4_matmul_1_readvariableop_resource4while_lstm_cell_4_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_4_matmul_readvariableop_resource2while_lstm_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2T
(while/lstm_cell_4/BiasAdd/ReadVariableOp(while/lstm_cell_4/BiasAdd/ReadVariableOp2R
'while/lstm_cell_4/MatMul/ReadVariableOp'while/lstm_cell_4/MatMul/ReadVariableOp2V
)while/lstm_cell_4/MatMul_1/ReadVariableOp)while/lstm_cell_4/MatMul_1/ReadVariableOp: 
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
òI

A__inference_input_layer_call_and_return_conditional_losses_865762

inputs?
*lstm_cell_4_matmul_readvariableop_resource:áð?
,lstm_cell_4_matmul_1_readvariableop_resource:	<ð:
+lstm_cell_4_biasadd_readvariableop_resource:	ð
identity¢"lstm_cell_4/BiasAdd/ReadVariableOp¢!lstm_cell_4/MatMul/ReadVariableOp¢#lstm_cell_4/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
!lstm_cell_4/MatMul/ReadVariableOpReadVariableOp*lstm_cell_4_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_4/MatMulMatMulstrided_slice_2:output:0)lstm_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_4/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_4_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_4/MatMul_1MatMulzeros:output:0+lstm_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_4/addAddV2lstm_cell_4/MatMul:product:0lstm_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
"lstm_cell_4/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_4/BiasAddBiasAddlstm_cell_4/add:z:0*lstm_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð]
lstm_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_4/splitSplit$lstm_cell_4/split/split_dim:output:0lstm_cell_4/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitl
lstm_cell_4/SigmoidSigmoidlstm_cell_4/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_1Sigmoidlstm_cell_4/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<u
lstm_cell_4/mulMullstm_cell_4/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
lstm_cell_4/ReluRelulstm_cell_4/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_1Mullstm_cell_4/Sigmoid:y:0lstm_cell_4/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<x
lstm_cell_4/add_1AddV2lstm_cell_4/mul:z:0lstm_cell_4/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<n
lstm_cell_4/Sigmoid_2Sigmoidlstm_cell_4/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<c
lstm_cell_4/Relu_1Relulstm_cell_4/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_4/mul_2Mullstm_cell_4/Sigmoid_2:y:0 lstm_cell_4/Relu_1:activations:0*
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
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_4_matmul_readvariableop_resource,lstm_cell_4_matmul_1_readvariableop_resource+lstm_cell_4_biasadd_readvariableop_resource*
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
while_body_865678*
condR
while_cond_865677*K
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
:ÿÿÿÿÿÿÿÿÿ<½
NoOpNoOp#^lstm_cell_4/BiasAdd/ReadVariableOp"^lstm_cell_4/MatMul/ReadVariableOp$^lstm_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2H
"lstm_cell_4/BiasAdd/ReadVariableOp"lstm_cell_4/BiasAdd/ReadVariableOp2F
!lstm_cell_4/MatMul/ReadVariableOp!lstm_cell_4/MatMul/ReadVariableOp2J
#lstm_cell_4/MatMul_1/ReadVariableOp#lstm_cell_4/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
Ì

G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_863172

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
µ
Ã
while_cond_862689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_862689___redundant_placeholder04
0while_while_cond_862689___redundant_placeholder14
0while_while_cond_862689___redundant_placeholder24
0while_while_cond_862689___redundant_placeholder3
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
Ð7
Á
while_body_865945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_5_matmul_readvariableop_resource_0:2(F
4while_lstm_cell_5_matmul_1_readvariableop_resource_0:
(A
3while_lstm_cell_5_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_5_matmul_readvariableop_resource:2(D
2while_lstm_cell_5_matmul_1_readvariableop_resource:
(?
1while_lstm_cell_5_biasadd_readvariableop_resource:(¢(while/lstm_cell_5/BiasAdd/ReadVariableOp¢'while/lstm_cell_5/MatMul/ReadVariableOp¢)while/lstm_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
'while/lstm_cell_5/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0·
while/lstm_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_5/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0
while/lstm_cell_5/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_5/addAddV2"while/lstm_cell_5/MatMul:product:0$while/lstm_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
(while/lstm_cell_5/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0£
while/lstm_cell_5/BiasAddBiasAddwhile/lstm_cell_5/add:z:00while/lstm_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(c
!while/lstm_cell_5/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_5/splitSplit*while/lstm_cell_5/split/split_dim:output:0"while/lstm_cell_5/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitx
while/lstm_cell_5/SigmoidSigmoid while/lstm_cell_5/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_1Sigmoid while/lstm_cell_5/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mulMulwhile/lstm_cell_5/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_2Sigmoid while/lstm_cell_5/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_1Mulwhile/lstm_cell_5/Sigmoid:y:0while/lstm_cell_5/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/add_1AddV2while/lstm_cell_5/mul:z:0while/lstm_cell_5/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
while/lstm_cell_5/Sigmoid_3Sigmoid while/lstm_cell_5/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
while/lstm_cell_5/Sigmoid_4Sigmoidwhile/lstm_cell_5/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_5/mul_2Mulwhile/lstm_cell_5/Sigmoid_3:y:0while/lstm_cell_5/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_5/mul_2:z:0*
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
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_5/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
while/Identity_5Identitywhile/lstm_cell_5/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í

while/NoOpNoOp)^while/lstm_cell_5/BiasAdd/ReadVariableOp(^while/lstm_cell_5/MatMul/ReadVariableOp*^while/lstm_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_5_biasadd_readvariableop_resource3while_lstm_cell_5_biasadd_readvariableop_resource_0"j
2while_lstm_cell_5_matmul_1_readvariableop_resource4while_lstm_cell_5_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_5_matmul_readvariableop_resource2while_lstm_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2T
(while/lstm_cell_5/BiasAdd/ReadVariableOp(while/lstm_cell_5/BiasAdd/ReadVariableOp2R
'while/lstm_cell_5/MatMul/ReadVariableOp'while/lstm_cell_5/MatMul/ReadVariableOp2V
)while/lstm_cell_5/MatMul_1/ReadVariableOp)while/lstm_cell_5/MatMul_1/ReadVariableOp: 
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_864301
input_input!
input_864266:áð
input_864268:	<ð
input_864270:	ð
layer1_864273:<<
layer1_864275:<
layer2_864278:<2
layer2_864280:2
layer3_864283:2(
layer3_864285:
(
layer3_864287:(
layer4_864290:

layer4_864292:
output_864295:
output_864297:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallý
input/StatefulPartitionedCallStatefulPartitionedCallinput_inputinput_864266input_864268input_864270*
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
A__inference_input_layer_call_and_return_conditional_losses_863458
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_864273layer1_864275*
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
B__inference_layer1_layer_call_and_return_conditional_losses_863497
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_864278layer2_864280*
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
B__inference_layer2_layer_call_and_return_conditional_losses_863534
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_864283layer3_864285layer3_864287*
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
B__inference_layer3_layer_call_and_return_conditional_losses_863682
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_864290layer4_864292*
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
B__inference_layer4_layer_call_and_return_conditional_losses_863701
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_864295output_864297*
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
B__inference_output_layer_call_and_return_conditional_losses_863718v
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
Î

'__inference_layer2_layer_call_fn_865811

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
B__inference_layer2_layer_call_and_return_conditional_losses_863534s
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
 
ù
B__inference_layer2_layer_call_and_return_conditional_losses_865842

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
 
ù
B__inference_layer2_layer_call_and_return_conditional_losses_863534

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
'__inference_layer3_layer_call_fn_865864
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
B__inference_layer3_layer_call_and_return_conditional_losses_863300o
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
inputs/0"ÛL
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
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÙÆ
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
ë
Biter

Cbeta_1

Dbeta_2
	Edecay
Flearning_ratemm!m"m2m3m:m;mGm Hm¡Im¢Jm£Km¤Lm¥v¦v§!v¨"v©2vª3v«:v¬;v­Gv®Hv¯Iv°Jv±Kv²Lv³"
	optimizer

G0
H1
I2
3
4
!5
"6
J7
K8
L9
210
311
:12
;13"
trackable_list_wrapper

G0
H1
I2
3
4
!5
"6
J7
K8
L9
210
311
:12
;13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
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
-__inference_sequential_2_layer_call_fn_863756
-__inference_sequential_2_layer_call_fn_864378
-__inference_sequential_2_layer_call_fn_864411
-__inference_sequential_2_layer_call_fn_864263À
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_864761
H__inference_sequential_2_layer_call_and_return_conditional_losses_865111
H__inference_sequential_2_layer_call_and_return_conditional_losses_864301
H__inference_sequential_2_layer_call_and_return_conditional_losses_864339À
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
!__inference__wrapped_model_862609input_input"
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
Rserving_default"
signature_map
ø
S
state_size

Gkernel
Hrecurrent_kernel
Ibias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X_random_generator
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
G0
H1
I2"
trackable_list_wrapper
5
G0
H1
I2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

[states
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
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
&__inference_input_layer_call_fn_865157
&__inference_input_layer_call_fn_865168
&__inference_input_layer_call_fn_865179
&__inference_input_layer_call_fn_865190Õ
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
A__inference_input_layer_call_and_return_conditional_losses_865333
A__inference_input_layer_call_and_return_conditional_losses_865476
A__inference_input_layer_call_and_return_conditional_losses_865619
A__inference_input_layer_call_and_return_conditional_losses_865762Õ
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
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer1_layer_call_fn_865771¢
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
B__inference_layer1_layer_call_and_return_conditional_losses_865802¢
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
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer2_layer_call_fn_865811¢
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
B__inference_layer2_layer_call_and_return_conditional_losses_865842¢
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
k
state_size

Jkernel
Krecurrent_kernel
Lbias
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p_random_generator
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
J0
K1
L2"
trackable_list_wrapper
5
J0
K1
L2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

sstates
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
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
'__inference_layer3_layer_call_fn_865853
'__inference_layer3_layer_call_fn_865864
'__inference_layer3_layer_call_fn_865875
'__inference_layer3_layer_call_fn_865886Õ
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
B__inference_layer3_layer_call_and_return_conditional_losses_866029
B__inference_layer3_layer_call_and_return_conditional_losses_866172
B__inference_layer3_layer_call_and_return_conditional_losses_866315
B__inference_layer3_layer_call_and_return_conditional_losses_866458Õ
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
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer4_layer_call_fn_866467¢
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
B__inference_layer4_layer_call_and_return_conditional_losses_866478¢
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
°
~non_trainable_variables

layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_output_layer_call_fn_866487¢
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
B__inference_output_layer_call_and_return_conditional_losses_866498¢
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+áð2input/lstm_cell_4/kernel
5:3	<ð2"input/lstm_cell_4/recurrent_kernel
%:#ð2input/lstm_cell_4/bias
+:)2(2layer3/lstm_cell_5/kernel
5:3
(2#layer3/lstm_cell_5/recurrent_kernel
%:#(2layer3/lstm_cell_5/bias
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
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÏBÌ
$__inference_signature_wrapper_865146input_input"
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
G0
H1
I2"
trackable_list_wrapper
5
G0
H1
I2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 2
,__inference_lstm_cell_4_layer_call_fn_866515
,__inference_lstm_cell_4_layer_call_fn_866532¾
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
Ö2Ó
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_866564
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_866596¾
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
J0
K1
L2"
trackable_list_wrapper
5
J0
K1
L2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
l	variables
mtrainable_variables
nregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 2
,__inference_lstm_cell_5_layer_call_fn_866613
,__inference_lstm_cell_5_layer_call_fn_866630¾
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
Ö2Ó
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_866662
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_866694¾
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

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
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
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
$:"<<2Adam/layer1/kernel/m
:<2Adam/layer1/bias/m
$:"<22Adam/layer2/kernel/m
:22Adam/layer2/bias/m
$:"
2Adam/layer4/kernel/m
:2Adam/layer4/bias/m
$:"2Adam/output/kernel/m
:2Adam/output/bias/m
2:0áð2Adam/input/lstm_cell_4/kernel/m
::8	<ð2)Adam/input/lstm_cell_4/recurrent_kernel/m
*:(ð2Adam/input/lstm_cell_4/bias/m
0:.2(2 Adam/layer3/lstm_cell_5/kernel/m
::8
(2*Adam/layer3/lstm_cell_5/recurrent_kernel/m
*:((2Adam/layer3/lstm_cell_5/bias/m
$:"<<2Adam/layer1/kernel/v
:<2Adam/layer1/bias/v
$:"<22Adam/layer2/kernel/v
:22Adam/layer2/bias/v
$:"
2Adam/layer4/kernel/v
:2Adam/layer4/bias/v
$:"2Adam/output/kernel/v
:2Adam/output/bias/v
2:0áð2Adam/input/lstm_cell_4/kernel/v
::8	<ð2)Adam/input/lstm_cell_4/recurrent_kernel/v
*:(ð2Adam/input/lstm_cell_4/bias/v
0:.2(2 Adam/layer3/lstm_cell_5/kernel/v
::8
(2*Adam/layer3/lstm_cell_5/recurrent_kernel/v
*:((2Adam/layer3/lstm_cell_5/bias/v¢
!__inference__wrapped_model_862609}GHI!"JKL23:;:¢7
0¢-
+(
input_inputÿÿÿÿÿÿÿÿÿá
ª "/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿÒ
A__inference_input_layer_call_and_return_conditional_losses_865333GHIQ¢N
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
A__inference_input_layer_call_and_return_conditional_losses_865476GHIQ¢N
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
A__inference_input_layer_call_and_return_conditional_losses_865619sGHIA¢>
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
A__inference_input_layer_call_and_return_conditional_losses_865762sGHIA¢>
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
&__inference_input_layer_call_fn_865157GHIQ¢N
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
&__inference_input_layer_call_fn_865168GHIQ¢N
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
&__inference_input_layer_call_fn_865179fGHIA¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿá

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ<
&__inference_input_layer_call_fn_865190fGHIA¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿá

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ<ª
B__inference_layer1_layer_call_and_return_conditional_losses_865802d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ<
 
'__inference_layer1_layer_call_fn_865771W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ<ª
B__inference_layer2_layer_call_and_return_conditional_losses_865842d!"3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 
'__inference_layer2_layer_call_fn_865811W!"3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ2Ã
B__inference_layer3_layer_call_and_return_conditional_losses_866029}JKLO¢L
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
B__inference_layer3_layer_call_and_return_conditional_losses_866172}JKLO¢L
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
B__inference_layer3_layer_call_and_return_conditional_losses_866315mJKL?¢<
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
B__inference_layer3_layer_call_and_return_conditional_losses_866458mJKL?¢<
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
'__inference_layer3_layer_call_fn_865853pJKLO¢L
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
'__inference_layer3_layer_call_fn_865864pJKLO¢L
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
'__inference_layer3_layer_call_fn_865875`JKL?¢<
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
'__inference_layer3_layer_call_fn_865886`JKL?¢<
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
B__inference_layer4_layer_call_and_return_conditional_losses_866478\23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_layer4_layer_call_fn_866467O23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿË
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_866564ÿGHI¢
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
 Ë
G__inference_lstm_cell_4_layer_call_and_return_conditional_losses_866596ÿGHI¢
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
  
,__inference_lstm_cell_4_layer_call_fn_866515ïGHI¢
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
1/1ÿÿÿÿÿÿÿÿÿ< 
,__inference_lstm_cell_4_layer_call_fn_866532ïGHI¢
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
1/1ÿÿÿÿÿÿÿÿÿ<É
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_866662ýJKL¢}
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
 É
G__inference_lstm_cell_5_layer_call_and_return_conditional_losses_866694ýJKL¢}
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
 
,__inference_lstm_cell_5_layer_call_fn_866613íJKL¢}
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

,__inference_lstm_cell_5_layer_call_fn_866630íJKL¢}
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
B__inference_output_layer_call_and_return_conditional_losses_866498\:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_output_layer_call_fn_866487O:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÇ
H__inference_sequential_2_layer_call_and_return_conditional_losses_864301{GHI!"JKL23:;B¢?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_864339{GHI!"JKL23:;B¢?
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_864761vGHI!"JKL23:;=¢:
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
H__inference_sequential_2_layer_call_and_return_conditional_losses_865111vGHI!"JKL23:;=¢:
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
-__inference_sequential_2_layer_call_fn_863756nGHI!"JKL23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_2_layer_call_fn_864263nGHI!"JKL23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_2_layer_call_fn_864378iGHI!"JKL23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_2_layer_call_fn_864411iGHI!"JKL23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
$__inference_signature_wrapper_865146GHI!"JKL23:;I¢F
¢ 
?ª<
:
input_input+(
input_inputÿÿÿÿÿÿÿÿÿá"/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ