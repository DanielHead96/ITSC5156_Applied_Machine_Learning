ßº%
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
"serve*2.8.22v2.8.2-0-g2ea19cbb5758íÒ#
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
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_1
g
!Adamax/beta_1/Read/ReadVariableOpReadVariableOpAdamax/beta_1*
_output_shapes
: *
dtype0
n
Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_2
g
!Adamax/beta_2/Read/ReadVariableOpReadVariableOpAdamax/beta_2*
_output_shapes
: *
dtype0
l
Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/decay
e
 Adamax/decay/Read/ReadVariableOpReadVariableOpAdamax/decay*
_output_shapes
: *
dtype0
|
Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdamax/learning_rate
u
(Adamax/learning_rate/Read/ReadVariableOpReadVariableOpAdamax/learning_rate*
_output_shapes
: *
dtype0

input/lstm_cell_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:áð**
shared_nameinput/lstm_cell_44/kernel

-input/lstm_cell_44/kernel/Read/ReadVariableOpReadVariableOpinput/lstm_cell_44/kernel*!
_output_shapes
:áð*
dtype0
£
#input/lstm_cell_44/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<ð*4
shared_name%#input/lstm_cell_44/recurrent_kernel

7input/lstm_cell_44/recurrent_kernel/Read/ReadVariableOpReadVariableOp#input/lstm_cell_44/recurrent_kernel*
_output_shapes
:	<ð*
dtype0

input/lstm_cell_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*(
shared_nameinput/lstm_cell_44/bias

+input/lstm_cell_44/bias/Read/ReadVariableOpReadVariableOpinput/lstm_cell_44/bias*
_output_shapes	
:ð*
dtype0

layer3/lstm_cell_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*+
shared_namelayer3/lstm_cell_45/kernel

.layer3/lstm_cell_45/kernel/Read/ReadVariableOpReadVariableOplayer3/lstm_cell_45/kernel*
_output_shapes

:2(*
dtype0
¤
$layer3/lstm_cell_45/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*5
shared_name&$layer3/lstm_cell_45/recurrent_kernel

8layer3/lstm_cell_45/recurrent_kernel/Read/ReadVariableOpReadVariableOp$layer3/lstm_cell_45/recurrent_kernel*
_output_shapes

:
(*
dtype0

layer3/lstm_cell_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*)
shared_namelayer3/lstm_cell_45/bias

,layer3/lstm_cell_45/bias/Read/ReadVariableOpReadVariableOplayer3/lstm_cell_45/bias*
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

Adamax/layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*'
shared_nameAdamax/layer1/kernel/m

*Adamax/layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/layer1/kernel/m*
_output_shapes

:<<*
dtype0

Adamax/layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*%
shared_nameAdamax/layer1/bias/m
y
(Adamax/layer1/bias/m/Read/ReadVariableOpReadVariableOpAdamax/layer1/bias/m*
_output_shapes
:<*
dtype0

Adamax/layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<2*'
shared_nameAdamax/layer2/kernel/m

*Adamax/layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/layer2/kernel/m*
_output_shapes

:<2*
dtype0

Adamax/layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdamax/layer2/bias/m
y
(Adamax/layer2/bias/m/Read/ReadVariableOpReadVariableOpAdamax/layer2/bias/m*
_output_shapes
:2*
dtype0

Adamax/layer4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdamax/layer4/kernel/m

*Adamax/layer4/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/layer4/kernel/m*
_output_shapes

:
*
dtype0

Adamax/layer4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdamax/layer4/bias/m
y
(Adamax/layer4/bias/m/Read/ReadVariableOpReadVariableOpAdamax/layer4/bias/m*
_output_shapes
:*
dtype0

Adamax/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamax/output/kernel/m

*Adamax/output/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/output/kernel/m*
_output_shapes

:*
dtype0

Adamax/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdamax/output/bias/m
y
(Adamax/output/bias/m/Read/ReadVariableOpReadVariableOpAdamax/output/bias/m*
_output_shapes
:*
dtype0
£
"Adamax/input/lstm_cell_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:áð*3
shared_name$"Adamax/input/lstm_cell_44/kernel/m

6Adamax/input/lstm_cell_44/kernel/m/Read/ReadVariableOpReadVariableOp"Adamax/input/lstm_cell_44/kernel/m*!
_output_shapes
:áð*
dtype0
µ
,Adamax/input/lstm_cell_44/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<ð*=
shared_name.,Adamax/input/lstm_cell_44/recurrent_kernel/m
®
@Adamax/input/lstm_cell_44/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adamax/input/lstm_cell_44/recurrent_kernel/m*
_output_shapes
:	<ð*
dtype0

 Adamax/input/lstm_cell_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*1
shared_name" Adamax/input/lstm_cell_44/bias/m

4Adamax/input/lstm_cell_44/bias/m/Read/ReadVariableOpReadVariableOp Adamax/input/lstm_cell_44/bias/m*
_output_shapes	
:ð*
dtype0
¢
#Adamax/layer3/lstm_cell_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*4
shared_name%#Adamax/layer3/lstm_cell_45/kernel/m

7Adamax/layer3/lstm_cell_45/kernel/m/Read/ReadVariableOpReadVariableOp#Adamax/layer3/lstm_cell_45/kernel/m*
_output_shapes

:2(*
dtype0
¶
-Adamax/layer3/lstm_cell_45/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*>
shared_name/-Adamax/layer3/lstm_cell_45/recurrent_kernel/m
¯
AAdamax/layer3/lstm_cell_45/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp-Adamax/layer3/lstm_cell_45/recurrent_kernel/m*
_output_shapes

:
(*
dtype0

!Adamax/layer3/lstm_cell_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!Adamax/layer3/lstm_cell_45/bias/m

5Adamax/layer3/lstm_cell_45/bias/m/Read/ReadVariableOpReadVariableOp!Adamax/layer3/lstm_cell_45/bias/m*
_output_shapes
:(*
dtype0

Adamax/layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<<*'
shared_nameAdamax/layer1/kernel/v

*Adamax/layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/layer1/kernel/v*
_output_shapes

:<<*
dtype0

Adamax/layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*%
shared_nameAdamax/layer1/bias/v
y
(Adamax/layer1/bias/v/Read/ReadVariableOpReadVariableOpAdamax/layer1/bias/v*
_output_shapes
:<*
dtype0

Adamax/layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<2*'
shared_nameAdamax/layer2/kernel/v

*Adamax/layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/layer2/kernel/v*
_output_shapes

:<2*
dtype0

Adamax/layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdamax/layer2/bias/v
y
(Adamax/layer2/bias/v/Read/ReadVariableOpReadVariableOpAdamax/layer2/bias/v*
_output_shapes
:2*
dtype0

Adamax/layer4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdamax/layer4/kernel/v

*Adamax/layer4/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/layer4/kernel/v*
_output_shapes

:
*
dtype0

Adamax/layer4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdamax/layer4/bias/v
y
(Adamax/layer4/bias/v/Read/ReadVariableOpReadVariableOpAdamax/layer4/bias/v*
_output_shapes
:*
dtype0

Adamax/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdamax/output/kernel/v

*Adamax/output/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/output/kernel/v*
_output_shapes

:*
dtype0

Adamax/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdamax/output/bias/v
y
(Adamax/output/bias/v/Read/ReadVariableOpReadVariableOpAdamax/output/bias/v*
_output_shapes
:*
dtype0
£
"Adamax/input/lstm_cell_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:áð*3
shared_name$"Adamax/input/lstm_cell_44/kernel/v

6Adamax/input/lstm_cell_44/kernel/v/Read/ReadVariableOpReadVariableOp"Adamax/input/lstm_cell_44/kernel/v*!
_output_shapes
:áð*
dtype0
µ
,Adamax/input/lstm_cell_44/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<ð*=
shared_name.,Adamax/input/lstm_cell_44/recurrent_kernel/v
®
@Adamax/input/lstm_cell_44/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adamax/input/lstm_cell_44/recurrent_kernel/v*
_output_shapes
:	<ð*
dtype0

 Adamax/input/lstm_cell_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ð*1
shared_name" Adamax/input/lstm_cell_44/bias/v

4Adamax/input/lstm_cell_44/bias/v/Read/ReadVariableOpReadVariableOp Adamax/input/lstm_cell_44/bias/v*
_output_shapes	
:ð*
dtype0
¢
#Adamax/layer3/lstm_cell_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*4
shared_name%#Adamax/layer3/lstm_cell_45/kernel/v

7Adamax/layer3/lstm_cell_45/kernel/v/Read/ReadVariableOpReadVariableOp#Adamax/layer3/lstm_cell_45/kernel/v*
_output_shapes

:2(*
dtype0
¶
-Adamax/layer3/lstm_cell_45/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*>
shared_name/-Adamax/layer3/lstm_cell_45/recurrent_kernel/v
¯
AAdamax/layer3/lstm_cell_45/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp-Adamax/layer3/lstm_cell_45/recurrent_kernel/v*
_output_shapes

:
(*
dtype0

!Adamax/layer3/lstm_cell_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!Adamax/layer3/lstm_cell_45/bias/v

5Adamax/layer3/lstm_cell_45/bias/v/Read/ReadVariableOpReadVariableOp!Adamax/layer3/lstm_cell_45/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
Ú]
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*]
value]B] B]
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
NH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEAdamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEAdamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEinput/lstm_cell_44/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#input/lstm_cell_44/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEinput/lstm_cell_44/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElayer3/lstm_cell_45/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$layer3/lstm_cell_45/recurrent_kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElayer3/lstm_cell_45/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
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
|
VARIABLE_VALUEAdamax/layer1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/layer1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdamax/layer2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/layer2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdamax/layer4/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/layer4/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdamax/output/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/output/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adamax/input/lstm_cell_44/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adamax/input/lstm_cell_44/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adamax/input/lstm_cell_44/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adamax/layer3/lstm_cell_45/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adamax/layer3/lstm_cell_45/recurrent_kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adamax/layer3/lstm_cell_45/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdamax/layer1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/layer1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdamax/layer2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/layer2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdamax/layer4/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/layer4/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdamax/output/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdamax/output/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adamax/input/lstm_cell_44/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adamax/input/lstm_cell_44/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adamax/input/lstm_cell_44/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adamax/layer3/lstm_cell_45/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adamax/layer3/lstm_cell_45/recurrent_kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adamax/layer3/lstm_cell_45/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_inputPlaceholder*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
dtype0*"
shape:ÿÿÿÿÿÿÿÿÿá
û
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_inputinput/lstm_cell_44/kernel#input/lstm_cell_44/recurrent_kernelinput/lstm_cell_44/biaslayer1/kernellayer1/biaslayer2/kernellayer2/biaslayer3/lstm_cell_45/kernel$layer3/lstm_cell_45/recurrent_kernellayer3/lstm_cell_45/biaslayer4/kernellayer4/biasoutput/kerneloutput/bias*
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
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1306509
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¨
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp!layer2/kernel/Read/ReadVariableOplayer2/bias/Read/ReadVariableOp!layer4/kernel/Read/ReadVariableOplayer4/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOp-input/lstm_cell_44/kernel/Read/ReadVariableOp7input/lstm_cell_44/recurrent_kernel/Read/ReadVariableOp+input/lstm_cell_44/bias/Read/ReadVariableOp.layer3/lstm_cell_45/kernel/Read/ReadVariableOp8layer3/lstm_cell_45/recurrent_kernel/Read/ReadVariableOp,layer3/lstm_cell_45/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adamax/layer1/kernel/m/Read/ReadVariableOp(Adamax/layer1/bias/m/Read/ReadVariableOp*Adamax/layer2/kernel/m/Read/ReadVariableOp(Adamax/layer2/bias/m/Read/ReadVariableOp*Adamax/layer4/kernel/m/Read/ReadVariableOp(Adamax/layer4/bias/m/Read/ReadVariableOp*Adamax/output/kernel/m/Read/ReadVariableOp(Adamax/output/bias/m/Read/ReadVariableOp6Adamax/input/lstm_cell_44/kernel/m/Read/ReadVariableOp@Adamax/input/lstm_cell_44/recurrent_kernel/m/Read/ReadVariableOp4Adamax/input/lstm_cell_44/bias/m/Read/ReadVariableOp7Adamax/layer3/lstm_cell_45/kernel/m/Read/ReadVariableOpAAdamax/layer3/lstm_cell_45/recurrent_kernel/m/Read/ReadVariableOp5Adamax/layer3/lstm_cell_45/bias/m/Read/ReadVariableOp*Adamax/layer1/kernel/v/Read/ReadVariableOp(Adamax/layer1/bias/v/Read/ReadVariableOp*Adamax/layer2/kernel/v/Read/ReadVariableOp(Adamax/layer2/bias/v/Read/ReadVariableOp*Adamax/layer4/kernel/v/Read/ReadVariableOp(Adamax/layer4/bias/v/Read/ReadVariableOp*Adamax/output/kernel/v/Read/ReadVariableOp(Adamax/output/bias/v/Read/ReadVariableOp6Adamax/input/lstm_cell_44/kernel/v/Read/ReadVariableOp@Adamax/input/lstm_cell_44/recurrent_kernel/v/Read/ReadVariableOp4Adamax/input/lstm_cell_44/bias/v/Read/ReadVariableOp7Adamax/layer3/lstm_cell_45/kernel/v/Read/ReadVariableOpAAdamax/layer3/lstm_cell_45/recurrent_kernel/v/Read/ReadVariableOp5Adamax/layer3/lstm_cell_45/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_1308233
§
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer1/kernellayer1/biaslayer2/kernellayer2/biaslayer4/kernellayer4/biasoutput/kerneloutput/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_rateinput/lstm_cell_44/kernel#input/lstm_cell_44/recurrent_kernelinput/lstm_cell_44/biaslayer3/lstm_cell_45/kernel$layer3/lstm_cell_45/recurrent_kernellayer3/lstm_cell_45/biastotalcounttotal_1count_1Adamax/layer1/kernel/mAdamax/layer1/bias/mAdamax/layer2/kernel/mAdamax/layer2/bias/mAdamax/layer4/kernel/mAdamax/layer4/bias/mAdamax/output/kernel/mAdamax/output/bias/m"Adamax/input/lstm_cell_44/kernel/m,Adamax/input/lstm_cell_44/recurrent_kernel/m Adamax/input/lstm_cell_44/bias/m#Adamax/layer3/lstm_cell_45/kernel/m-Adamax/layer3/lstm_cell_45/recurrent_kernel/m!Adamax/layer3/lstm_cell_45/bias/mAdamax/layer1/kernel/vAdamax/layer1/bias/vAdamax/layer2/kernel/vAdamax/layer2/bias/vAdamax/layer4/kernel/vAdamax/layer4/bias/vAdamax/output/kernel/vAdamax/output/bias/v"Adamax/input/lstm_cell_44/kernel/v,Adamax/input/lstm_cell_44/recurrent_kernel/v Adamax/input/lstm_cell_44/bias/v#Adamax/layer3/lstm_cell_45/kernel/v-Adamax/layer3/lstm_cell_45/recurrent_kernel/v!Adamax/layer3/lstm_cell_45/bias/v*?
Tin8
624*
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1308396­ã!

ì
'sequential_25_layer3_while_cond_1303873F
Bsequential_25_layer3_while_sequential_25_layer3_while_loop_counterL
Hsequential_25_layer3_while_sequential_25_layer3_while_maximum_iterations*
&sequential_25_layer3_while_placeholder,
(sequential_25_layer3_while_placeholder_1,
(sequential_25_layer3_while_placeholder_2,
(sequential_25_layer3_while_placeholder_3H
Dsequential_25_layer3_while_less_sequential_25_layer3_strided_slice_1_
[sequential_25_layer3_while_sequential_25_layer3_while_cond_1303873___redundant_placeholder0_
[sequential_25_layer3_while_sequential_25_layer3_while_cond_1303873___redundant_placeholder1_
[sequential_25_layer3_while_sequential_25_layer3_while_cond_1303873___redundant_placeholder2_
[sequential_25_layer3_while_sequential_25_layer3_while_cond_1303873___redundant_placeholder3'
#sequential_25_layer3_while_identity
¶
sequential_25/layer3/while/LessLess&sequential_25_layer3_while_placeholderDsequential_25_layer3_while_less_sequential_25_layer3_strided_slice_1*
T0*
_output_shapes
: u
#sequential_25/layer3/while/IdentityIdentity#sequential_25/layer3/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_25_layer3_while_identity,sequential_25/layer3/while/Identity:output:0*(
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
8
Ë
while_body_1307737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_45_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_45_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_45_matmul_readvariableop_resource:2(E
3while_lstm_cell_45_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_45_biasadd_readvariableop_resource:(¢)while/lstm_cell_45/BiasAdd/ReadVariableOp¢(while/lstm_cell_45/MatMul/ReadVariableOp¢*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0 while/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_3Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_45/Sigmoid_4Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_3:y:0 while/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 
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


ô
C__inference_output_layer_call_and_return_conditional_losses_1305081

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
ä
ì
/__inference_sequential_25_layer_call_fn_1305774

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
identity¢StatefulPartitionedCall
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
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305562o
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
¨8
Õ
while_body_1305396
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_44_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_44_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_44_matmul_readvariableop_resource:áðF
3while_lstm_cell_44_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_44_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_44/BiasAdd/ReadVariableOp¢(while/lstm_cell_44/MatMul/ReadVariableOp¢*while/lstm_cell_44/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 
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
º
È
while_cond_1307450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1307450___redundant_placeholder05
1while_while_cond_1307450___redundant_placeholder15
1while_while_cond_1307450___redundant_placeholder25
1while_while_cond_1307450___redundant_placeholder3
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
í
ô
.__inference_lstm_cell_45_layer_call_fn_1307993

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCall¬
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
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1304535o
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
8
Ë
while_body_1307594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_45_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_45_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_45_matmul_readvariableop_resource:2(E
3while_lstm_cell_45_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_45_biasadd_readvariableop_resource:(¢)while/lstm_cell_45/BiasAdd/ReadVariableOp¢(while/lstm_cell_45/MatMul/ReadVariableOp¢*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0 while/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_3Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_45/Sigmoid_4Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_3:y:0 while/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 
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
¨8
Õ
while_body_1306898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_44_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_44_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_44_matmul_readvariableop_resource:áðF
3while_lstm_cell_44_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_44_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_44/BiasAdd/ReadVariableOp¢(while/lstm_cell_44/MatMul/ReadVariableOp¢*while/lstm_cell_44/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 
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
º
È
while_cond_1307736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1307736___redundant_placeholder05
1while_while_cond_1307736___redundant_placeholder15
1while_while_cond_1307736___redundant_placeholder25
1while_while_cond_1307736___redundant_placeholder3
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
°J

B__inference_input_layer_call_and_return_conditional_losses_1305480

inputs@
+lstm_cell_44_matmul_readvariableop_resource:áð@
-lstm_cell_44_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_44_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_44/BiasAdd/ReadVariableOp¢"lstm_cell_44/MatMul/ReadVariableOp¢$lstm_cell_44/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_1305396*
condR
while_cond_1305395*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
¢J

C__inference_layer3_layer_call_and_return_conditional_losses_1305045

inputs=
+lstm_cell_45_matmul_readvariableop_resource:2(?
-lstm_cell_45_matmul_1_readvariableop_resource:
(:
,lstm_cell_45_biasadd_readvariableop_resource:(
identity¢#lstm_cell_45/BiasAdd/ReadVariableOp¢"lstm_cell_45/MatMul/ReadVariableOp¢$lstm_cell_45/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_3Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_45/Sigmoid_4Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_3:y:0lstm_cell_45/Sigmoid_4:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
bodyR
while_body_1304961*
condR
while_cond_1304960*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs


ô
C__inference_layer4_layer_call_and_return_conditional_losses_1307841

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
³?


input_while_body_1305833(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3'
#input_while_input_strided_slice_1_0c
_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0N
9input_while_lstm_cell_44_matmul_readvariableop_resource_0:áðN
;input_while_lstm_cell_44_matmul_1_readvariableop_resource_0:	<ðI
:input_while_lstm_cell_44_biasadd_readvariableop_resource_0:	ð
input_while_identity
input_while_identity_1
input_while_identity_2
input_while_identity_3
input_while_identity_4
input_while_identity_5%
!input_while_input_strided_slice_1a
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensorL
7input_while_lstm_cell_44_matmul_readvariableop_resource:áðL
9input_while_lstm_cell_44_matmul_1_readvariableop_resource:	<ðG
8input_while_lstm_cell_44_biasadd_readvariableop_resource:	ð¢/input/while/lstm_cell_44/BiasAdd/ReadVariableOp¢.input/while/lstm_cell_44/MatMul/ReadVariableOp¢0input/while/lstm_cell_44/MatMul_1/ReadVariableOp
=input/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá Æ
/input/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0input_while_placeholderFinput/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0«
.input/while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp9input_while_lstm_cell_44_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0Ì
input/while/lstm_cell_44/MatMulMatMul6input/while/TensorArrayV2Read/TensorListGetItem:item:06input/while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð­
0input/while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp;input_while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0³
!input/while/lstm_cell_44/MatMul_1MatMulinput_while_placeholder_28input/while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð°
input/while/lstm_cell_44/addAddV2)input/while/lstm_cell_44/MatMul:product:0+input/while/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð§
/input/while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp:input_while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¹
 input/while/lstm_cell_44/BiasAddBiasAdd input/while/lstm_cell_44/add:z:07input/while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðj
(input/while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
input/while/lstm_cell_44/splitSplit1input/while/lstm_cell_44/split/split_dim:output:0)input/while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
 input/while/lstm_cell_44/SigmoidSigmoid'input/while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"input/while/lstm_cell_44/Sigmoid_1Sigmoid'input/while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_44/mulMul&input/while/lstm_cell_44/Sigmoid_1:y:0input_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_44/ReluRelu'input/while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<ª
input/while/lstm_cell_44/mul_1Mul$input/while/lstm_cell_44/Sigmoid:y:0+input/while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_44/add_1AddV2 input/while/lstm_cell_44/mul:z:0"input/while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"input/while/lstm_cell_44/Sigmoid_2Sigmoid'input/while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<}
input/while/lstm_cell_44/Relu_1Relu"input/while/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<®
input/while/lstm_cell_44/mul_2Mul&input/while/lstm_cell_44/Sigmoid_2:y:0-input/while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ý
0input/while/TensorArrayV2Write/TensorListSetItemTensorListSetIteminput_while_placeholder_1input_while_placeholder"input/while/lstm_cell_44/mul_2:z:0*
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
input/while/Identity_4Identity"input/while/lstm_cell_44/mul_2:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/Identity_5Identity"input/while/lstm_cell_44/add_1:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<è
input/while/NoOpNoOp0^input/while/lstm_cell_44/BiasAdd/ReadVariableOp/^input/while/lstm_cell_44/MatMul/ReadVariableOp1^input/while/lstm_cell_44/MatMul_1/ReadVariableOp*"
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
8input_while_lstm_cell_44_biasadd_readvariableop_resource:input_while_lstm_cell_44_biasadd_readvariableop_resource_0"x
9input_while_lstm_cell_44_matmul_1_readvariableop_resource;input_while_lstm_cell_44_matmul_1_readvariableop_resource_0"t
7input_while_lstm_cell_44_matmul_readvariableop_resource9input_while_lstm_cell_44_matmul_readvariableop_resource_0"À
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2b
/input/while/lstm_cell_44/BiasAdd/ReadVariableOp/input/while/lstm_cell_44/BiasAdd/ReadVariableOp2`
.input/while/lstm_cell_44/MatMul/ReadVariableOp.input/while/lstm_cell_44/MatMul/ReadVariableOp2d
0input/while/lstm_cell_44/MatMul_1/ReadVariableOp0input/while/lstm_cell_44/MatMul_1/ReadVariableOp: 
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

¶
'__inference_input_layer_call_fn_1306553

inputs
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity¢StatefulPartitionedCallë
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
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_input_layer_call_and_return_conditional_losses_1305480s
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
#
ä
while_body_1304594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_45_1304618_0:2(.
while_lstm_cell_45_1304620_0:
(*
while_lstm_cell_45_1304622_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_45_1304618:2(,
while_lstm_cell_45_1304620:
((
while_lstm_cell_45_1304622:(¢*while/lstm_cell_45/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0º
*while/lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_45_1304618_0while_lstm_cell_45_1304620_0while_lstm_cell_45_1304622_0*
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
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1304535Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_45/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_45/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity3while/lstm_cell_45/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y

while/NoOpNoOp+^while/lstm_cell_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_45_1304618while_lstm_cell_45_1304618_0":
while_lstm_cell_45_1304620while_lstm_cell_45_1304620_0":
while_lstm_cell_45_1304622while_lstm_cell_45_1304622_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_45/StatefulPartitionedCall*while/lstm_cell_45/StatefulPartitionedCall: 
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
æ

I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1307959

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
Åg
ô
 __inference__traced_save_1308233
file_prefix,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop,
(savev2_layer2_kernel_read_readvariableop*
&savev2_layer2_bias_read_readvariableop,
(savev2_layer4_kernel_read_readvariableop*
&savev2_layer4_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop8
4savev2_input_lstm_cell_44_kernel_read_readvariableopB
>savev2_input_lstm_cell_44_recurrent_kernel_read_readvariableop6
2savev2_input_lstm_cell_44_bias_read_readvariableop9
5savev2_layer3_lstm_cell_45_kernel_read_readvariableopC
?savev2_layer3_lstm_cell_45_recurrent_kernel_read_readvariableop7
3savev2_layer3_lstm_cell_45_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adamax_layer1_kernel_m_read_readvariableop3
/savev2_adamax_layer1_bias_m_read_readvariableop5
1savev2_adamax_layer2_kernel_m_read_readvariableop3
/savev2_adamax_layer2_bias_m_read_readvariableop5
1savev2_adamax_layer4_kernel_m_read_readvariableop3
/savev2_adamax_layer4_bias_m_read_readvariableop5
1savev2_adamax_output_kernel_m_read_readvariableop3
/savev2_adamax_output_bias_m_read_readvariableopA
=savev2_adamax_input_lstm_cell_44_kernel_m_read_readvariableopK
Gsavev2_adamax_input_lstm_cell_44_recurrent_kernel_m_read_readvariableop?
;savev2_adamax_input_lstm_cell_44_bias_m_read_readvariableopB
>savev2_adamax_layer3_lstm_cell_45_kernel_m_read_readvariableopL
Hsavev2_adamax_layer3_lstm_cell_45_recurrent_kernel_m_read_readvariableop@
<savev2_adamax_layer3_lstm_cell_45_bias_m_read_readvariableop5
1savev2_adamax_layer1_kernel_v_read_readvariableop3
/savev2_adamax_layer1_bias_v_read_readvariableop5
1savev2_adamax_layer2_kernel_v_read_readvariableop3
/savev2_adamax_layer2_bias_v_read_readvariableop5
1savev2_adamax_layer4_kernel_v_read_readvariableop3
/savev2_adamax_layer4_bias_v_read_readvariableop5
1savev2_adamax_output_kernel_v_read_readvariableop3
/savev2_adamax_output_bias_v_read_readvariableopA
=savev2_adamax_input_lstm_cell_44_kernel_v_read_readvariableopK
Gsavev2_adamax_input_lstm_cell_44_recurrent_kernel_v_read_readvariableop?
;savev2_adamax_input_lstm_cell_44_bias_v_read_readvariableopB
>savev2_adamax_layer3_lstm_cell_45_kernel_v_read_readvariableopL
Hsavev2_adamax_layer3_lstm_cell_45_recurrent_kernel_v_read_readvariableop@
<savev2_adamax_layer3_lstm_cell_45_bias_v_read_readvariableop
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
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_layer2_kernel_read_readvariableop&savev2_layer2_bias_read_readvariableop(savev2_layer4_kernel_read_readvariableop&savev2_layer4_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop4savev2_input_lstm_cell_44_kernel_read_readvariableop>savev2_input_lstm_cell_44_recurrent_kernel_read_readvariableop2savev2_input_lstm_cell_44_bias_read_readvariableop5savev2_layer3_lstm_cell_45_kernel_read_readvariableop?savev2_layer3_lstm_cell_45_recurrent_kernel_read_readvariableop3savev2_layer3_lstm_cell_45_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adamax_layer1_kernel_m_read_readvariableop/savev2_adamax_layer1_bias_m_read_readvariableop1savev2_adamax_layer2_kernel_m_read_readvariableop/savev2_adamax_layer2_bias_m_read_readvariableop1savev2_adamax_layer4_kernel_m_read_readvariableop/savev2_adamax_layer4_bias_m_read_readvariableop1savev2_adamax_output_kernel_m_read_readvariableop/savev2_adamax_output_bias_m_read_readvariableop=savev2_adamax_input_lstm_cell_44_kernel_m_read_readvariableopGsavev2_adamax_input_lstm_cell_44_recurrent_kernel_m_read_readvariableop;savev2_adamax_input_lstm_cell_44_bias_m_read_readvariableop>savev2_adamax_layer3_lstm_cell_45_kernel_m_read_readvariableopHsavev2_adamax_layer3_lstm_cell_45_recurrent_kernel_m_read_readvariableop<savev2_adamax_layer3_lstm_cell_45_bias_m_read_readvariableop1savev2_adamax_layer1_kernel_v_read_readvariableop/savev2_adamax_layer1_bias_v_read_readvariableop1savev2_adamax_layer2_kernel_v_read_readvariableop/savev2_adamax_layer2_bias_v_read_readvariableop1savev2_adamax_layer4_kernel_v_read_readvariableop/savev2_adamax_layer4_bias_v_read_readvariableop1savev2_adamax_output_kernel_v_read_readvariableop/savev2_adamax_output_bias_v_read_readvariableop=savev2_adamax_input_lstm_cell_44_kernel_v_read_readvariableopGsavev2_adamax_input_lstm_cell_44_recurrent_kernel_v_read_readvariableop;savev2_adamax_input_lstm_cell_44_bias_v_read_readvariableop>savev2_adamax_layer3_lstm_cell_45_kernel_v_read_readvariableopHsavev2_adamax_layer3_lstm_cell_45_recurrent_kernel_v_read_readvariableop<savev2_adamax_layer3_lstm_cell_45_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
¢J

C__inference_layer3_layer_call_and_return_conditional_losses_1307821

inputs=
+lstm_cell_45_matmul_readvariableop_resource:2(?
-lstm_cell_45_matmul_1_readvariableop_resource:
(:
,lstm_cell_45_biasadd_readvariableop_resource:(
identity¢#lstm_cell_45/BiasAdd/ReadVariableOp¢"lstm_cell_45/MatMul/ReadVariableOp¢$lstm_cell_45/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_3Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_45/Sigmoid_4Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_3:y:0lstm_cell_45/Sigmoid_4:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
bodyR
while_body_1307737*
condR
while_cond_1307736*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
÷
²
(__inference_layer3_layer_call_fn_1307249

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallè
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer3_layer_call_and_return_conditional_losses_1305295o
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
í
ô
.__inference_lstm_cell_45_layer_call_fn_1307976

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2¢StatefulPartitionedCall¬
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
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1304389o
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
8

C__inference_layer3_layer_call_and_return_conditional_losses_1304663

inputs&
lstm_cell_45_1304581:2(&
lstm_cell_45_1304583:
("
lstm_cell_45_1304585:(
identity¢$lstm_cell_45/StatefulPartitionedCall¢while;
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
shrink_axis_maskü
$lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_45_1304581lstm_cell_45_1304583lstm_cell_45_1304585*
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
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1304535n
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
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_45_1304581lstm_cell_45_1304583lstm_cell_45_1304585*
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
bodyR
while_body_1304594*
condR
while_cond_1304593*K
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
NoOpNoOp%^lstm_cell_45/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_45/StatefulPartitionedCall$lstm_cell_45/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
îJ

B__inference_input_layer_call_and_return_conditional_losses_1306839
inputs_0@
+lstm_cell_44_matmul_readvariableop_resource:áð@
-lstm_cell_44_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_44_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_44/BiasAdd/ReadVariableOp¢"lstm_cell_44/MatMul/ReadVariableOp¢$lstm_cell_44/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_1306755*
condR
while_cond_1306754*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:` \
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
"
_user_specified_name
inputs/0
º
È
while_cond_1306754
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1306754___redundant_placeholder05
1while_while_cond_1306754___redundant_placeholder15
1while_while_cond_1306754___redundant_placeholder25
1while_while_cond_1306754___redundant_placeholder3
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


ô
C__inference_output_layer_call_and_return_conditional_losses_1307861

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
Øë
ù
J__inference_sequential_25_layer_call_and_return_conditional_losses_1306474

inputsF
1input_lstm_cell_44_matmul_readvariableop_resource:áðF
3input_lstm_cell_44_matmul_1_readvariableop_resource:	<ðA
2input_lstm_cell_44_biasadd_readvariableop_resource:	ð:
(layer1_tensordot_readvariableop_resource:<<4
&layer1_biasadd_readvariableop_resource:<:
(layer2_tensordot_readvariableop_resource:<24
&layer2_biasadd_readvariableop_resource:2D
2layer3_lstm_cell_45_matmul_readvariableop_resource:2(F
4layer3_lstm_cell_45_matmul_1_readvariableop_resource:
(A
3layer3_lstm_cell_45_biasadd_readvariableop_resource:(7
%layer4_matmul_readvariableop_resource:
4
&layer4_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢)input/lstm_cell_44/BiasAdd/ReadVariableOp¢(input/lstm_cell_44/MatMul/ReadVariableOp¢*input/lstm_cell_44/MatMul_1/ReadVariableOp¢input/while¢layer1/BiasAdd/ReadVariableOp¢layer1/Tensordot/ReadVariableOp¢layer2/BiasAdd/ReadVariableOp¢layer2/Tensordot/ReadVariableOp¢*layer3/lstm_cell_45/BiasAdd/ReadVariableOp¢)layer3/lstm_cell_45/MatMul/ReadVariableOp¢+layer3/lstm_cell_45/MatMul_1/ReadVariableOp¢layer3/while¢layer4/BiasAdd/ReadVariableOp¢layer4/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpA
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
(input/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp1input_lstm_cell_44_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0¨
input/lstm_cell_44/MatMulMatMulinput/strided_slice_2:output:00input/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
*input/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp3input_lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0¢
input/lstm_cell_44/MatMul_1MatMulinput/zeros:output:02input/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
input/lstm_cell_44/addAddV2#input/lstm_cell_44/MatMul:product:0%input/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)input/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp2input_lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0§
input/lstm_cell_44/BiasAddBiasAddinput/lstm_cell_44/add:z:01input/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"input/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
input/lstm_cell_44/splitSplit+input/lstm_cell_44/split/split_dim:output:0#input/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
input/lstm_cell_44/SigmoidSigmoid!input/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
input/lstm_cell_44/Sigmoid_1Sigmoid!input/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_44/mulMul input/lstm_cell_44/Sigmoid_1:y:0input/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
input/lstm_cell_44/ReluRelu!input/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_44/mul_1Mulinput/lstm_cell_44/Sigmoid:y:0%input/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_44/add_1AddV2input/lstm_cell_44/mul:z:0input/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
input/lstm_cell_44/Sigmoid_2Sigmoid!input/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
input/lstm_cell_44/Relu_1Reluinput/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_44/mul_2Mul input/lstm_cell_44/Sigmoid_2:y:0'input/lstm_cell_44/Relu_1:activations:0*
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
value	B : Ø
input/whileWhile!input/while/loop_counter:output:0'input/while/maximum_iterations:output:0input/time:output:0input/TensorArrayV2_1:handle:0input/zeros:output:0input/zeros_1:output:0input/strided_slice_1:output:0=input/TensorArrayUnstack/TensorListFromTensor:output_handle:01input_lstm_cell_44_matmul_readvariableop_resource3input_lstm_cell_44_matmul_1_readvariableop_resource2input_lstm_cell_44_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
input_while_body_1306183*$
condR
input_while_cond_1306182*K
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
)layer3/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp2layer3_lstm_cell_45_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0ª
layer3/lstm_cell_45/MatMulMatMullayer3/strided_slice_2:output:01layer3/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
+layer3/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp4layer3_lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0¤
layer3/lstm_cell_45/MatMul_1MatMullayer3/zeros:output:03layer3/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
layer3/lstm_cell_45/addAddV2$layer3/lstm_cell_45/MatMul:product:0&layer3/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*layer3/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp3layer3_lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0©
layer3/lstm_cell_45/BiasAddBiasAddlayer3/lstm_cell_45/add:z:02layer3/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#layer3/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
layer3/lstm_cell_45/splitSplit,layer3/lstm_cell_45/split/split_dim:output:0$layer3/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
layer3/lstm_cell_45/SigmoidSigmoid"layer3/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_45/Sigmoid_1Sigmoid"layer3/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_45/mulMul!layer3/lstm_cell_45/Sigmoid_1:y:0layer3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_45/Sigmoid_2Sigmoid"layer3/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_45/mul_1Mullayer3/lstm_cell_45/Sigmoid:y:0!layer3/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_45/add_1AddV2layer3/lstm_cell_45/mul:z:0layer3/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_45/Sigmoid_3Sigmoid"layer3/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
layer3/lstm_cell_45/Sigmoid_4Sigmoidlayer3/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_45/mul_2Mul!layer3/lstm_cell_45/Sigmoid_3:y:0!layer3/lstm_cell_45/Sigmoid_4:y:0*
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
value	B : æ
layer3/whileWhile"layer3/while/loop_counter:output:0(layer3/while/maximum_iterations:output:0layer3/time:output:0layer3/TensorArrayV2_1:handle:0layer3/zeros:output:0layer3/zeros_1:output:0layer3/strided_slice_1:output:0>layer3/TensorArrayUnstack/TensorListFromTensor:output_handle:02layer3_lstm_cell_45_matmul_readvariableop_resource4layer3_lstm_cell_45_matmul_1_readvariableop_resource3layer3_lstm_cell_45_biasadd_readvariableop_resource*
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
_stateful_parallelism( *%
bodyR
layer3_while_body_1306376*%
condR
layer3_while_cond_1306375*K
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
NoOpNoOp*^input/lstm_cell_44/BiasAdd/ReadVariableOp)^input/lstm_cell_44/MatMul/ReadVariableOp+^input/lstm_cell_44/MatMul_1/ReadVariableOp^input/while^layer1/BiasAdd/ReadVariableOp ^layer1/Tensordot/ReadVariableOp^layer2/BiasAdd/ReadVariableOp ^layer2/Tensordot/ReadVariableOp+^layer3/lstm_cell_45/BiasAdd/ReadVariableOp*^layer3/lstm_cell_45/MatMul/ReadVariableOp,^layer3/lstm_cell_45/MatMul_1/ReadVariableOp^layer3/while^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2V
)input/lstm_cell_44/BiasAdd/ReadVariableOp)input/lstm_cell_44/BiasAdd/ReadVariableOp2T
(input/lstm_cell_44/MatMul/ReadVariableOp(input/lstm_cell_44/MatMul/ReadVariableOp2X
*input/lstm_cell_44/MatMul_1/ReadVariableOp*input/lstm_cell_44/MatMul_1/ReadVariableOp2
input/whileinput/while2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2B
layer1/Tensordot/ReadVariableOplayer1/Tensordot/ReadVariableOp2>
layer2/BiasAdd/ReadVariableOplayer2/BiasAdd/ReadVariableOp2B
layer2/Tensordot/ReadVariableOplayer2/Tensordot/ReadVariableOp2X
*layer3/lstm_cell_45/BiasAdd/ReadVariableOp*layer3/lstm_cell_45/BiasAdd/ReadVariableOp2V
)layer3/lstm_cell_45/MatMul/ReadVariableOp)layer3/lstm_cell_45/MatMul/ReadVariableOp2Z
+layer3/lstm_cell_45/MatMul_1/ReadVariableOp+layer3/lstm_cell_45/MatMul_1/ReadVariableOp2
layer3/whilelayer3/while2>
layer4/BiasAdd/ReadVariableOplayer4/BiasAdd/ReadVariableOp2<
layer4/MatMul/ReadVariableOplayer4/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
¨8
Õ
while_body_1306612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_44_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_44_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_44_matmul_readvariableop_resource:áðF
3while_lstm_cell_44_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_44_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_44/BiasAdd/ReadVariableOp¢(while/lstm_cell_44/MatMul/ReadVariableOp¢*while/lstm_cell_44/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 
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
8

C__inference_layer3_layer_call_and_return_conditional_losses_1304472

inputs&
lstm_cell_45_1304390:2(&
lstm_cell_45_1304392:
("
lstm_cell_45_1304394:(
identity¢$lstm_cell_45/StatefulPartitionedCall¢while;
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
shrink_axis_maskü
$lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_45_1304390lstm_cell_45_1304392lstm_cell_45_1304394*
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
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1304389n
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
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_45_1304390lstm_cell_45_1304392lstm_cell_45_1304394*
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
bodyR
while_body_1304403*
condR
while_cond_1304402*K
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
NoOpNoOp%^lstm_cell_45/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2L
$lstm_cell_45/StatefulPartitionedCall$lstm_cell_45/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
º
È
while_cond_1307040
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1307040___redundant_placeholder05
1while_while_cond_1307040___redundant_placeholder15
1while_while_cond_1307040___redundant_placeholder25
1while_while_cond_1307040___redundant_placeholder3
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
õ 
ù
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305664
input_input"
input_1305629:áð 
input_1305631:	<ð
input_1305633:	ð 
layer1_1305636:<<
layer1_1305638:< 
layer2_1305641:<2
layer2_1305643:2 
layer3_1305646:2( 
layer3_1305648:
(
layer3_1305650:( 
layer4_1305653:

layer4_1305655: 
output_1305658:
output_1305660:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCall
input/StatefulPartitionedCallStatefulPartitionedCallinput_inputinput_1305629input_1305631input_1305633*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_input_layer_call_and_return_conditional_losses_1304821
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_1305636layer1_1305638*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer1_layer_call_and_return_conditional_losses_1304860
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_1305641layer2_1305643*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer2_layer_call_and_return_conditional_losses_1304897¡
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_1305646layer3_1305648layer3_1305650*
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer3_layer_call_and_return_conditional_losses_1305045
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_1305653layer4_1305655*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer4_layer_call_and_return_conditional_losses_1305064
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_1305658output_1305660*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_1305081v
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

´
(__inference_layer3_layer_call_fn_1307216
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallê
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer3_layer_call_and_return_conditional_losses_1304472o
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
°J

B__inference_input_layer_call_and_return_conditional_losses_1304821

inputs@
+lstm_cell_44_matmul_readvariableop_resource:áð@
-lstm_cell_44_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_44_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_44/BiasAdd/ReadVariableOp¢"lstm_cell_44/MatMul/ReadVariableOp¢$lstm_cell_44/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_1304737*
condR
while_cond_1304736*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
#
î
while_body_1304244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_lstm_cell_44_1304268_0:áð/
while_lstm_cell_44_1304270_0:	<ð+
while_lstm_cell_44_1304272_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_lstm_cell_44_1304268:áð-
while_lstm_cell_44_1304270:	<ð)
while_lstm_cell_44_1304272:	ð¢*while/lstm_cell_44/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0º
*while/lstm_cell_44/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_44_1304268_0while_lstm_cell_44_1304270_0while_lstm_cell_44_1304272_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1304185Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_44/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_44/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/Identity_5Identity3while/lstm_cell_44/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y

while/NoOpNoOp+^while/lstm_cell_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_44_1304268while_lstm_cell_44_1304268_0":
while_lstm_cell_44_1304270while_lstm_cell_44_1304270_0":
while_lstm_cell_44_1304272while_lstm_cell_44_1304272_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2X
*while/lstm_cell_44/StatefulPartitionedCall*while/lstm_cell_44/StatefulPartitionedCall: 
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
Ó

(__inference_layer2_layer_call_fn_1307174

inputs
unknown:<2
	unknown_0:2
identity¢StatefulPartitionedCallß
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer2_layer_call_and_return_conditional_losses_1304897s
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
Î

I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1304389

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
öP
ì
'sequential_25_layer3_while_body_1303874F
Bsequential_25_layer3_while_sequential_25_layer3_while_loop_counterL
Hsequential_25_layer3_while_sequential_25_layer3_while_maximum_iterations*
&sequential_25_layer3_while_placeholder,
(sequential_25_layer3_while_placeholder_1,
(sequential_25_layer3_while_placeholder_2,
(sequential_25_layer3_while_placeholder_3E
Asequential_25_layer3_while_sequential_25_layer3_strided_slice_1_0
}sequential_25_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_25_layer3_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_25_layer3_while_lstm_cell_45_matmul_readvariableop_resource_0:2(\
Jsequential_25_layer3_while_lstm_cell_45_matmul_1_readvariableop_resource_0:
(W
Isequential_25_layer3_while_lstm_cell_45_biasadd_readvariableop_resource_0:('
#sequential_25_layer3_while_identity)
%sequential_25_layer3_while_identity_1)
%sequential_25_layer3_while_identity_2)
%sequential_25_layer3_while_identity_3)
%sequential_25_layer3_while_identity_4)
%sequential_25_layer3_while_identity_5C
?sequential_25_layer3_while_sequential_25_layer3_strided_slice_1
{sequential_25_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_25_layer3_tensorarrayunstack_tensorlistfromtensorX
Fsequential_25_layer3_while_lstm_cell_45_matmul_readvariableop_resource:2(Z
Hsequential_25_layer3_while_lstm_cell_45_matmul_1_readvariableop_resource:
(U
Gsequential_25_layer3_while_lstm_cell_45_biasadd_readvariableop_resource:(¢>sequential_25/layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp¢=sequential_25/layer3/while/lstm_cell_45/MatMul/ReadVariableOp¢?sequential_25/layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp
Lsequential_25/layer3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
>sequential_25/layer3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_25_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_25_layer3_tensorarrayunstack_tensorlistfromtensor_0&sequential_25_layer3_while_placeholderUsequential_25/layer3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0Æ
=sequential_25/layer3/while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOpHsequential_25_layer3_while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ø
.sequential_25/layer3/while/lstm_cell_45/MatMulMatMulEsequential_25/layer3/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_25/layer3/while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ê
?sequential_25/layer3/while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOpJsequential_25_layer3_while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0ß
0sequential_25/layer3/while/lstm_cell_45/MatMul_1MatMul(sequential_25_layer3_while_placeholder_2Gsequential_25/layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ü
+sequential_25/layer3/while/lstm_cell_45/addAddV28sequential_25/layer3/while/lstm_cell_45/MatMul:product:0:sequential_25/layer3/while/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ä
>sequential_25/layer3/while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOpIsequential_25_layer3_while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0å
/sequential_25/layer3/while/lstm_cell_45/BiasAddBiasAdd/sequential_25/layer3/while/lstm_cell_45/add:z:0Fsequential_25/layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(y
7sequential_25/layer3/while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :®
-sequential_25/layer3/while/lstm_cell_45/splitSplit@sequential_25/layer3/while/lstm_cell_45/split/split_dim:output:08sequential_25/layer3/while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split¤
/sequential_25/layer3/while/lstm_cell_45/SigmoidSigmoid6sequential_25/layer3/while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
1sequential_25/layer3/while/lstm_cell_45/Sigmoid_1Sigmoid6sequential_25/layer3/while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
+sequential_25/layer3/while/lstm_cell_45/mulMul5sequential_25/layer3/while/lstm_cell_45/Sigmoid_1:y:0(sequential_25_layer3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
1sequential_25/layer3/while/lstm_cell_45/Sigmoid_2Sigmoid6sequential_25/layer3/while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ò
-sequential_25/layer3/while/lstm_cell_45/mul_1Mul3sequential_25/layer3/while/lstm_cell_45/Sigmoid:y:05sequential_25/layer3/while/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ì
-sequential_25/layer3/while/lstm_cell_45/add_1AddV2/sequential_25/layer3/while/lstm_cell_45/mul:z:01sequential_25/layer3/while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¦
1sequential_25/layer3/while/lstm_cell_45/Sigmoid_3Sigmoid6sequential_25/layer3/while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
1sequential_25/layer3/while/lstm_cell_45/Sigmoid_4Sigmoid1sequential_25/layer3/while/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ô
-sequential_25/layer3/while/lstm_cell_45/mul_2Mul5sequential_25/layer3/while/lstm_cell_45/Sigmoid_3:y:05sequential_25/layer3/while/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

?sequential_25/layer3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_25_layer3_while_placeholder_1&sequential_25_layer3_while_placeholder1sequential_25/layer3/while/lstm_cell_45/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒb
 sequential_25/layer3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_25/layer3/while/addAddV2&sequential_25_layer3_while_placeholder)sequential_25/layer3/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_25/layer3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
 sequential_25/layer3/while/add_1AddV2Bsequential_25_layer3_while_sequential_25_layer3_while_loop_counter+sequential_25/layer3/while/add_1/y:output:0*
T0*
_output_shapes
: 
#sequential_25/layer3/while/IdentityIdentity$sequential_25/layer3/while/add_1:z:0 ^sequential_25/layer3/while/NoOp*
T0*
_output_shapes
: ¾
%sequential_25/layer3/while/Identity_1IdentityHsequential_25_layer3_while_sequential_25_layer3_while_maximum_iterations ^sequential_25/layer3/while/NoOp*
T0*
_output_shapes
: 
%sequential_25/layer3/while/Identity_2Identity"sequential_25/layer3/while/add:z:0 ^sequential_25/layer3/while/NoOp*
T0*
_output_shapes
: Ø
%sequential_25/layer3/while/Identity_3IdentityOsequential_25/layer3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_25/layer3/while/NoOp*
T0*
_output_shapes
: :éèÒ¸
%sequential_25/layer3/while/Identity_4Identity1sequential_25/layer3/while/lstm_cell_45/mul_2:z:0 ^sequential_25/layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¸
%sequential_25/layer3/while/Identity_5Identity1sequential_25/layer3/while/lstm_cell_45/add_1:z:0 ^sequential_25/layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¤
sequential_25/layer3/while/NoOpNoOp?^sequential_25/layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp>^sequential_25/layer3/while/lstm_cell_45/MatMul/ReadVariableOp@^sequential_25/layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_25_layer3_while_identity,sequential_25/layer3/while/Identity:output:0"W
%sequential_25_layer3_while_identity_1.sequential_25/layer3/while/Identity_1:output:0"W
%sequential_25_layer3_while_identity_2.sequential_25/layer3/while/Identity_2:output:0"W
%sequential_25_layer3_while_identity_3.sequential_25/layer3/while/Identity_3:output:0"W
%sequential_25_layer3_while_identity_4.sequential_25/layer3/while/Identity_4:output:0"W
%sequential_25_layer3_while_identity_5.sequential_25/layer3/while/Identity_5:output:0"
Gsequential_25_layer3_while_lstm_cell_45_biasadd_readvariableop_resourceIsequential_25_layer3_while_lstm_cell_45_biasadd_readvariableop_resource_0"
Hsequential_25_layer3_while_lstm_cell_45_matmul_1_readvariableop_resourceJsequential_25_layer3_while_lstm_cell_45_matmul_1_readvariableop_resource_0"
Fsequential_25_layer3_while_lstm_cell_45_matmul_readvariableop_resourceHsequential_25_layer3_while_lstm_cell_45_matmul_readvariableop_resource_0"
?sequential_25_layer3_while_sequential_25_layer3_strided_slice_1Asequential_25_layer3_while_sequential_25_layer3_strided_slice_1_0"ü
{sequential_25_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_25_layer3_tensorarrayunstack_tensorlistfromtensor}sequential_25_layer3_while_tensorarrayv2read_tensorlistgetitem_sequential_25_layer3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2
>sequential_25/layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp>sequential_25/layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp2~
=sequential_25/layer3/while/lstm_cell_45/MatMul/ReadVariableOp=sequential_25/layer3/while/lstm_cell_45/MatMul/ReadVariableOp2
?sequential_25/layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp?sequential_25/layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp: 
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
æ 
ô
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305088

inputs"
input_1304822:áð 
input_1304824:	<ð
input_1304826:	ð 
layer1_1304861:<<
layer1_1304863:< 
layer2_1304898:<2
layer2_1304900:2 
layer3_1305046:2( 
layer3_1305048:
(
layer3_1305050:( 
layer4_1305065:

layer4_1305067: 
output_1305082:
output_1305084:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallÿ
input/StatefulPartitionedCallStatefulPartitionedCallinputsinput_1304822input_1304824input_1304826*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_input_layer_call_and_return_conditional_losses_1304821
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_1304861layer1_1304863*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer1_layer_call_and_return_conditional_losses_1304860
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_1304898layer2_1304900*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer2_layer_call_and_return_conditional_losses_1304897¡
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_1305046layer3_1305048layer3_1305050*
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer3_layer_call_and_return_conditional_losses_1305045
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_1305065layer4_1305067*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer4_layer_call_and_return_conditional_losses_1305064
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_1305082output_1305084*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_1305081v
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
¢
ú
C__inference_layer1_layer_call_and_return_conditional_losses_1304860

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
óÌ
ÿ 
#__inference__traced_restore_1308396
file_prefix0
assignvariableop_layer1_kernel:<<,
assignvariableop_1_layer1_bias:<2
 assignvariableop_2_layer2_kernel:<2,
assignvariableop_3_layer2_bias:22
 assignvariableop_4_layer4_kernel:
,
assignvariableop_5_layer4_bias:2
 assignvariableop_6_output_kernel:,
assignvariableop_7_output_bias:(
assignvariableop_8_adamax_iter:	 *
 assignvariableop_9_adamax_beta_1: +
!assignvariableop_10_adamax_beta_2: *
 assignvariableop_11_adamax_decay: 2
(assignvariableop_12_adamax_learning_rate: B
-assignvariableop_13_input_lstm_cell_44_kernel:áðJ
7assignvariableop_14_input_lstm_cell_44_recurrent_kernel:	<ð:
+assignvariableop_15_input_lstm_cell_44_bias:	ð@
.assignvariableop_16_layer3_lstm_cell_45_kernel:2(J
8assignvariableop_17_layer3_lstm_cell_45_recurrent_kernel:
(:
,assignvariableop_18_layer3_lstm_cell_45_bias:(#
assignvariableop_19_total: #
assignvariableop_20_count: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: <
*assignvariableop_23_adamax_layer1_kernel_m:<<6
(assignvariableop_24_adamax_layer1_bias_m:<<
*assignvariableop_25_adamax_layer2_kernel_m:<26
(assignvariableop_26_adamax_layer2_bias_m:2<
*assignvariableop_27_adamax_layer4_kernel_m:
6
(assignvariableop_28_adamax_layer4_bias_m:<
*assignvariableop_29_adamax_output_kernel_m:6
(assignvariableop_30_adamax_output_bias_m:K
6assignvariableop_31_adamax_input_lstm_cell_44_kernel_m:áðS
@assignvariableop_32_adamax_input_lstm_cell_44_recurrent_kernel_m:	<ðC
4assignvariableop_33_adamax_input_lstm_cell_44_bias_m:	ðI
7assignvariableop_34_adamax_layer3_lstm_cell_45_kernel_m:2(S
Aassignvariableop_35_adamax_layer3_lstm_cell_45_recurrent_kernel_m:
(C
5assignvariableop_36_adamax_layer3_lstm_cell_45_bias_m:(<
*assignvariableop_37_adamax_layer1_kernel_v:<<6
(assignvariableop_38_adamax_layer1_bias_v:<<
*assignvariableop_39_adamax_layer2_kernel_v:<26
(assignvariableop_40_adamax_layer2_bias_v:2<
*assignvariableop_41_adamax_layer4_kernel_v:
6
(assignvariableop_42_adamax_layer4_bias_v:<
*assignvariableop_43_adamax_output_kernel_v:6
(assignvariableop_44_adamax_output_bias_v:K
6assignvariableop_45_adamax_input_lstm_cell_44_kernel_v:áðS
@assignvariableop_46_adamax_input_lstm_cell_44_recurrent_kernel_v:	<ðC
4assignvariableop_47_adamax_input_lstm_cell_44_bias_v:	ðI
7assignvariableop_48_adamax_layer3_lstm_cell_45_kernel_v:2(S
Aassignvariableop_49_adamax_layer3_lstm_cell_45_recurrent_kernel_v:
(C
5assignvariableop_50_adamax_layer3_lstm_cell_45_bias_v:(
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
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adamax_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_adamax_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp!assignvariableop_10_adamax_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_adamax_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adamax_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp-assignvariableop_13_input_lstm_cell_44_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_14AssignVariableOp7assignvariableop_14_input_lstm_cell_44_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp+assignvariableop_15_input_lstm_cell_44_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp.assignvariableop_16_layer3_lstm_cell_45_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_17AssignVariableOp8assignvariableop_17_layer3_lstm_cell_45_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp,assignvariableop_18_layer3_lstm_cell_45_biasIdentity_18:output:0"/device:CPU:0*
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
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adamax_layer1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adamax_layer1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adamax_layer2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adamax_layer2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adamax_layer4_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adamax_layer4_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adamax_output_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adamax_output_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adamax_input_lstm_cell_44_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_32AssignVariableOp@assignvariableop_32_adamax_input_lstm_cell_44_recurrent_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adamax_input_lstm_cell_44_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_34AssignVariableOp7assignvariableop_34_adamax_layer3_lstm_cell_45_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_35AssignVariableOpAassignvariableop_35_adamax_layer3_lstm_cell_45_recurrent_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_36AssignVariableOp5assignvariableop_36_adamax_layer3_lstm_cell_45_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adamax_layer1_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adamax_layer1_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adamax_layer2_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adamax_layer2_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adamax_layer4_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adamax_layer4_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adamax_output_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adamax_output_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adamax_input_lstm_cell_44_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_46AssignVariableOp@assignvariableop_46_adamax_input_lstm_cell_44_recurrent_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adamax_input_lstm_cell_44_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_48AssignVariableOp7assignvariableop_48_adamax_layer3_lstm_cell_45_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_49AssignVariableOpAassignvariableop_49_adamax_layer3_lstm_cell_45_recurrent_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_50AssignVariableOp5assignvariableop_50_adamax_layer3_lstm_cell_45_bias_vIdentity_50:output:0"/device:CPU:0*
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
â	
À
input_while_cond_1306182(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3*
&input_while_less_input_strided_slice_1A
=input_while_input_while_cond_1306182___redundant_placeholder0A
=input_while_input_while_cond_1306182___redundant_placeholder1A
=input_while_input_while_cond_1306182___redundant_placeholder2A
=input_while_input_while_cond_1306182___redundant_placeholder3
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
Ö

I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1308025

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
îJ

B__inference_input_layer_call_and_return_conditional_losses_1306696
inputs_0@
+lstm_cell_44_matmul_readvariableop_resource:áð@
-lstm_cell_44_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_44_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_44/BiasAdd/ReadVariableOp¢"lstm_cell_44/MatMul/ReadVariableOp¢$lstm_cell_44/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_1306612*
condR
while_cond_1306611*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:` \
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
"
_user_specified_name
inputs/0

´
(__inference_layer3_layer_call_fn_1307227
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallê
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer3_layer_call_and_return_conditional_losses_1304663o
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
÷
²
(__inference_layer3_layer_call_fn_1307238

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identity¢StatefulPartitionedCallè
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer3_layer_call_and_return_conditional_losses_1305045o
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
ä
ì
/__inference_sequential_25_layer_call_fn_1305741

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
identity¢StatefulPartitionedCall
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
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305088o
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
°J

B__inference_input_layer_call_and_return_conditional_losses_1307125

inputs@
+lstm_cell_44_matmul_readvariableop_resource:áð@
-lstm_cell_44_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_44_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_44/BiasAdd/ReadVariableOp¢"lstm_cell_44/MatMul/ReadVariableOp¢$lstm_cell_44/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_1307041*
condR
while_cond_1307040*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
º
È
while_cond_1307307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1307307___redundant_placeholder05
1while_while_cond_1307307___redundant_placeholder15
1while_while_cond_1307307___redundant_placeholder25
1while_while_cond_1307307___redundant_placeholder3
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
×J

C__inference_layer3_layer_call_and_return_conditional_losses_1307535
inputs_0=
+lstm_cell_45_matmul_readvariableop_resource:2(?
-lstm_cell_45_matmul_1_readvariableop_resource:
(:
,lstm_cell_45_biasadd_readvariableop_resource:(
identity¢#lstm_cell_45/BiasAdd/ReadVariableOp¢"lstm_cell_45/MatMul/ReadVariableOp¢$lstm_cell_45/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_3Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_45/Sigmoid_4Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_3:y:0lstm_cell_45/Sigmoid_4:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
bodyR
while_body_1307451*
condR
while_cond_1307450*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
°J

B__inference_input_layer_call_and_return_conditional_losses_1306982

inputs@
+lstm_cell_44_matmul_readvariableop_resource:áð@
-lstm_cell_44_matmul_1_readvariableop_resource:	<ð;
,lstm_cell_44_biasadd_readvariableop_resource:	ð
identity¢#lstm_cell_44/BiasAdd/ReadVariableOp¢"lstm_cell_44/MatMul/ReadVariableOp¢$lstm_cell_44/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_44/MatMul/ReadVariableOpReadVariableOp+lstm_cell_44_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0
lstm_cell_44/MatMulMatMulstrided_slice_2:output:0*lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0
lstm_cell_44/MatMul_1MatMulzeros:output:0,lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
lstm_cell_44/addAddV2lstm_cell_44/MatMul:product:0lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
#lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0
lstm_cell_44/BiasAddBiasAddlstm_cell_44/add:z:0+lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð^
lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_44/splitSplit%lstm_cell_44/split/split_dim:output:0lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitn
lstm_cell_44/SigmoidSigmoidlstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_1Sigmoidlstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
lstm_cell_44/mulMullstm_cell_44/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<h
lstm_cell_44/ReluRelulstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_1Mullstm_cell_44/Sigmoid:y:0lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<{
lstm_cell_44/add_1AddV2lstm_cell_44/mul:z:0lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
lstm_cell_44/Sigmoid_2Sigmoidlstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<e
lstm_cell_44/Relu_1Relulstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
lstm_cell_44/mul_2Mullstm_cell_44/Sigmoid_2:y:0!lstm_cell_44/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_44_matmul_readvariableop_resource-lstm_cell_44_matmul_1_readvariableop_resource,lstm_cell_44_biasadd_readvariableop_resource*
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
bodyR
while_body_1306898*
condR
while_cond_1306897*K
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
NoOpNoOp$^lstm_cell_44/BiasAdd/ReadVariableOp#^lstm_cell_44/MatMul/ReadVariableOp%^lstm_cell_44/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿá: : : 2J
#lstm_cell_44/BiasAdd/ReadVariableOp#lstm_cell_44/BiasAdd/ReadVariableOp2H
"lstm_cell_44/MatMul/ReadVariableOp"lstm_cell_44/MatMul/ReadVariableOp2L
$lstm_cell_44/MatMul_1/ReadVariableOp$lstm_cell_44/MatMul_1/ReadVariableOp2
whilewhile:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
æ

I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1307927

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
ñO
Õ
&sequential_25_input_while_body_1303681D
@sequential_25_input_while_sequential_25_input_while_loop_counterJ
Fsequential_25_input_while_sequential_25_input_while_maximum_iterations)
%sequential_25_input_while_placeholder+
'sequential_25_input_while_placeholder_1+
'sequential_25_input_while_placeholder_2+
'sequential_25_input_while_placeholder_3C
?sequential_25_input_while_sequential_25_input_strided_slice_1_0
{sequential_25_input_while_tensorarrayv2read_tensorlistgetitem_sequential_25_input_tensorarrayunstack_tensorlistfromtensor_0\
Gsequential_25_input_while_lstm_cell_44_matmul_readvariableop_resource_0:áð\
Isequential_25_input_while_lstm_cell_44_matmul_1_readvariableop_resource_0:	<ðW
Hsequential_25_input_while_lstm_cell_44_biasadd_readvariableop_resource_0:	ð&
"sequential_25_input_while_identity(
$sequential_25_input_while_identity_1(
$sequential_25_input_while_identity_2(
$sequential_25_input_while_identity_3(
$sequential_25_input_while_identity_4(
$sequential_25_input_while_identity_5A
=sequential_25_input_while_sequential_25_input_strided_slice_1}
ysequential_25_input_while_tensorarrayv2read_tensorlistgetitem_sequential_25_input_tensorarrayunstack_tensorlistfromtensorZ
Esequential_25_input_while_lstm_cell_44_matmul_readvariableop_resource:áðZ
Gsequential_25_input_while_lstm_cell_44_matmul_1_readvariableop_resource:	<ðU
Fsequential_25_input_while_lstm_cell_44_biasadd_readvariableop_resource:	ð¢=sequential_25/input/while/lstm_cell_44/BiasAdd/ReadVariableOp¢<sequential_25/input/while/lstm_cell_44/MatMul/ReadVariableOp¢>sequential_25/input/while/lstm_cell_44/MatMul_1/ReadVariableOp
Ksequential_25/input/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá 
=sequential_25/input/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_25_input_while_tensorarrayv2read_tensorlistgetitem_sequential_25_input_tensorarrayunstack_tensorlistfromtensor_0%sequential_25_input_while_placeholderTsequential_25/input/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0Ç
<sequential_25/input/while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOpGsequential_25_input_while_lstm_cell_44_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0ö
-sequential_25/input/while/lstm_cell_44/MatMulMatMulDsequential_25/input/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_25/input/while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÉ
>sequential_25/input/while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOpIsequential_25_input_while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0Ý
/sequential_25/input/while/lstm_cell_44/MatMul_1MatMul'sequential_25_input_while_placeholder_2Fsequential_25/input/while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÚ
*sequential_25/input/while/lstm_cell_44/addAddV27sequential_25/input/while/lstm_cell_44/MatMul:product:09sequential_25/input/while/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÃ
=sequential_25/input/while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOpHsequential_25_input_while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0ã
.sequential_25/input/while/lstm_cell_44/BiasAddBiasAdd.sequential_25/input/while/lstm_cell_44/add:z:0Esequential_25/input/while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðx
6sequential_25/input/while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
,sequential_25/input/while/lstm_cell_44/splitSplit?sequential_25/input/while/lstm_cell_44/split/split_dim:output:07sequential_25/input/while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split¢
.sequential_25/input/while/lstm_cell_44/SigmoidSigmoid5sequential_25/input/while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¤
0sequential_25/input/while/lstm_cell_44/Sigmoid_1Sigmoid5sequential_25/input/while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Â
*sequential_25/input/while/lstm_cell_44/mulMul4sequential_25/input/while/lstm_cell_44/Sigmoid_1:y:0'sequential_25_input_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
+sequential_25/input/while/lstm_cell_44/ReluRelu5sequential_25/input/while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ô
,sequential_25/input/while/lstm_cell_44/mul_1Mul2sequential_25/input/while/lstm_cell_44/Sigmoid:y:09sequential_25/input/while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<É
,sequential_25/input/while/lstm_cell_44/add_1AddV2.sequential_25/input/while/lstm_cell_44/mul:z:00sequential_25/input/while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¤
0sequential_25/input/while/lstm_cell_44/Sigmoid_2Sigmoid5sequential_25/input/while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
-sequential_25/input/while/lstm_cell_44/Relu_1Relu0sequential_25/input/while/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ø
,sequential_25/input/while/lstm_cell_44/mul_2Mul4sequential_25/input/while/lstm_cell_44/Sigmoid_2:y:0;sequential_25/input/while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
>sequential_25/input/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_25_input_while_placeholder_1%sequential_25_input_while_placeholder0sequential_25/input/while/lstm_cell_44/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒa
sequential_25/input/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_25/input/while/addAddV2%sequential_25_input_while_placeholder(sequential_25/input/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_25/input/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :·
sequential_25/input/while/add_1AddV2@sequential_25_input_while_sequential_25_input_while_loop_counter*sequential_25/input/while/add_1/y:output:0*
T0*
_output_shapes
: 
"sequential_25/input/while/IdentityIdentity#sequential_25/input/while/add_1:z:0^sequential_25/input/while/NoOp*
T0*
_output_shapes
: º
$sequential_25/input/while/Identity_1IdentityFsequential_25_input_while_sequential_25_input_while_maximum_iterations^sequential_25/input/while/NoOp*
T0*
_output_shapes
: 
$sequential_25/input/while/Identity_2Identity!sequential_25/input/while/add:z:0^sequential_25/input/while/NoOp*
T0*
_output_shapes
: Õ
$sequential_25/input/while/Identity_3IdentityNsequential_25/input/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_25/input/while/NoOp*
T0*
_output_shapes
: :éèÒµ
$sequential_25/input/while/Identity_4Identity0sequential_25/input/while/lstm_cell_44/mul_2:z:0^sequential_25/input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<µ
$sequential_25/input/while/Identity_5Identity0sequential_25/input/while/lstm_cell_44/add_1:z:0^sequential_25/input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ< 
sequential_25/input/while/NoOpNoOp>^sequential_25/input/while/lstm_cell_44/BiasAdd/ReadVariableOp=^sequential_25/input/while/lstm_cell_44/MatMul/ReadVariableOp?^sequential_25/input/while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_25_input_while_identity+sequential_25/input/while/Identity:output:0"U
$sequential_25_input_while_identity_1-sequential_25/input/while/Identity_1:output:0"U
$sequential_25_input_while_identity_2-sequential_25/input/while/Identity_2:output:0"U
$sequential_25_input_while_identity_3-sequential_25/input/while/Identity_3:output:0"U
$sequential_25_input_while_identity_4-sequential_25/input/while/Identity_4:output:0"U
$sequential_25_input_while_identity_5-sequential_25/input/while/Identity_5:output:0"
Fsequential_25_input_while_lstm_cell_44_biasadd_readvariableop_resourceHsequential_25_input_while_lstm_cell_44_biasadd_readvariableop_resource_0"
Gsequential_25_input_while_lstm_cell_44_matmul_1_readvariableop_resourceIsequential_25_input_while_lstm_cell_44_matmul_1_readvariableop_resource_0"
Esequential_25_input_while_lstm_cell_44_matmul_readvariableop_resourceGsequential_25_input_while_lstm_cell_44_matmul_readvariableop_resource_0"
=sequential_25_input_while_sequential_25_input_strided_slice_1?sequential_25_input_while_sequential_25_input_strided_slice_1_0"ø
ysequential_25_input_while_tensorarrayv2read_tensorlistgetitem_sequential_25_input_tensorarrayunstack_tensorlistfromtensor{sequential_25_input_while_tensorarrayv2read_tensorlistgetitem_sequential_25_input_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2~
=sequential_25/input/while/lstm_cell_44/BiasAdd/ReadVariableOp=sequential_25/input/while/lstm_cell_44/BiasAdd/ReadVariableOp2|
<sequential_25/input/while/lstm_cell_44/MatMul/ReadVariableOp<sequential_25/input/while/lstm_cell_44/MatMul/ReadVariableOp2
>sequential_25/input/while/lstm_cell_44/MatMul_1/ReadVariableOp>sequential_25/input/while/lstm_cell_44/MatMul_1/ReadVariableOp: 
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
º
È
while_cond_1304052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304052___redundant_placeholder05
1while_while_cond_1304052___redundant_placeholder15
1while_while_cond_1304052___redundant_placeholder25
1while_while_cond_1304052___redundant_placeholder3
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
º
È
while_cond_1306897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1306897___redundant_placeholder05
1while_while_cond_1306897___redundant_placeholder15
1while_while_cond_1306897___redundant_placeholder25
1while_while_cond_1306897___redundant_placeholder3
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
¸@
«

layer3_while_body_1306026*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3)
%layer3_while_layer3_strided_slice_1_0e
alayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0L
:layer3_while_lstm_cell_45_matmul_readvariableop_resource_0:2(N
<layer3_while_lstm_cell_45_matmul_1_readvariableop_resource_0:
(I
;layer3_while_lstm_cell_45_biasadd_readvariableop_resource_0:(
layer3_while_identity
layer3_while_identity_1
layer3_while_identity_2
layer3_while_identity_3
layer3_while_identity_4
layer3_while_identity_5'
#layer3_while_layer3_strided_slice_1c
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensorJ
8layer3_while_lstm_cell_45_matmul_readvariableop_resource:2(L
:layer3_while_lstm_cell_45_matmul_1_readvariableop_resource:
(G
9layer3_while_lstm_cell_45_biasadd_readvariableop_resource:(¢0layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp¢/layer3/while/lstm_cell_45/MatMul/ReadVariableOp¢1layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp
>layer3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   É
0layer3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0layer3_while_placeholderGlayer3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0ª
/layer3/while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp:layer3_while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Î
 layer3/while/lstm_cell_45/MatMulMatMul7layer3/while/TensorArrayV2Read/TensorListGetItem:item:07layer3/while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(®
1layer3/while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp<layer3_while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0µ
"layer3/while/lstm_cell_45/MatMul_1MatMullayer3_while_placeholder_29layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
layer3/while/lstm_cell_45/addAddV2*layer3/while/lstm_cell_45/MatMul:product:0,layer3/while/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¨
0layer3/while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp;layer3_while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0»
!layer3/while/lstm_cell_45/BiasAddBiasAdd!layer3/while/lstm_cell_45/add:z:08layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(k
)layer3/while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
layer3/while/lstm_cell_45/splitSplit2layer3/while/lstm_cell_45/split/split_dim:output:0*layer3/while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
!layer3/while/lstm_cell_45/SigmoidSigmoid(layer3/while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_45/Sigmoid_1Sigmoid(layer3/while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/lstm_cell_45/mulMul'layer3/while/lstm_cell_45/Sigmoid_1:y:0layer3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_45/Sigmoid_2Sigmoid(layer3/while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
layer3/while/lstm_cell_45/mul_1Mul%layer3/while/lstm_cell_45/Sigmoid:y:0'layer3/while/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
layer3/while/lstm_cell_45/add_1AddV2!layer3/while/lstm_cell_45/mul:z:0#layer3/while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_45/Sigmoid_3Sigmoid(layer3/while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_45/Sigmoid_4Sigmoid#layer3/while/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
layer3/while/lstm_cell_45/mul_2Mul'layer3/while/lstm_cell_45/Sigmoid_3:y:0'layer3/while/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
1layer3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlayer3_while_placeholder_1layer3_while_placeholder#layer3/while/lstm_cell_45/mul_2:z:0*
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
layer3/while/Identity_4Identity#layer3/while/lstm_cell_45/mul_2:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/Identity_5Identity#layer3/while/lstm_cell_45/add_1:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ì
layer3/while/NoOpNoOp1^layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp0^layer3/while/lstm_cell_45/MatMul/ReadVariableOp2^layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp*"
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
9layer3_while_lstm_cell_45_biasadd_readvariableop_resource;layer3_while_lstm_cell_45_biasadd_readvariableop_resource_0"z
:layer3_while_lstm_cell_45_matmul_1_readvariableop_resource<layer3_while_lstm_cell_45_matmul_1_readvariableop_resource_0"v
8layer3_while_lstm_cell_45_matmul_readvariableop_resource:layer3_while_lstm_cell_45_matmul_readvariableop_resource_0"Ä
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensoralayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2d
0layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp0layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp2b
/layer3/while/lstm_cell_45/MatMul/ReadVariableOp/layer3/while/lstm_cell_45/MatMul/ReadVariableOp2f
1layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp1layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp: 
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
Ã

(__inference_output_layer_call_fn_1307850

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÛ
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_1305081o
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
ó
ñ
/__inference_sequential_25_layer_call_fn_1305119
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
identity¢StatefulPartitionedCall
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
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305088o
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
þ	
Ô
layer3_while_cond_1306025*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3,
(layer3_while_less_layer3_strided_slice_1C
?layer3_while_layer3_while_cond_1306025___redundant_placeholder0C
?layer3_while_layer3_while_cond_1306025___redundant_placeholder1C
?layer3_while_layer3_while_cond_1306025___redundant_placeholder2C
?layer3_while_layer3_while_cond_1306025___redundant_placeholder3
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
þ	
Ô
layer3_while_cond_1306375*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3,
(layer3_while_less_layer3_strided_slice_1C
?layer3_while_layer3_while_cond_1306375___redundant_placeholder0C
?layer3_while_layer3_while_cond_1306375___redundant_placeholder1C
?layer3_while_layer3_while_cond_1306375___redundant_placeholder2C
?layer3_while_layer3_while_cond_1306375___redundant_placeholder3
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
¨8
Õ
while_body_1306755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_44_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_44_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_44_matmul_readvariableop_resource:áðF
3while_lstm_cell_44_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_44_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_44/BiasAdd/ReadVariableOp¢(while/lstm_cell_44/MatMul/ReadVariableOp¢*while/lstm_cell_44/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 
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
¸@
«

layer3_while_body_1306376*
&layer3_while_layer3_while_loop_counter0
,layer3_while_layer3_while_maximum_iterations
layer3_while_placeholder
layer3_while_placeholder_1
layer3_while_placeholder_2
layer3_while_placeholder_3)
%layer3_while_layer3_strided_slice_1_0e
alayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0L
:layer3_while_lstm_cell_45_matmul_readvariableop_resource_0:2(N
<layer3_while_lstm_cell_45_matmul_1_readvariableop_resource_0:
(I
;layer3_while_lstm_cell_45_biasadd_readvariableop_resource_0:(
layer3_while_identity
layer3_while_identity_1
layer3_while_identity_2
layer3_while_identity_3
layer3_while_identity_4
layer3_while_identity_5'
#layer3_while_layer3_strided_slice_1c
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensorJ
8layer3_while_lstm_cell_45_matmul_readvariableop_resource:2(L
:layer3_while_lstm_cell_45_matmul_1_readvariableop_resource:
(G
9layer3_while_lstm_cell_45_biasadd_readvariableop_resource:(¢0layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp¢/layer3/while/lstm_cell_45/MatMul/ReadVariableOp¢1layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp
>layer3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   É
0layer3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0layer3_while_placeholderGlayer3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0ª
/layer3/while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp:layer3_while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Î
 layer3/while/lstm_cell_45/MatMulMatMul7layer3/while/TensorArrayV2Read/TensorListGetItem:item:07layer3/while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(®
1layer3/while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp<layer3_while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0µ
"layer3/while/lstm_cell_45/MatMul_1MatMullayer3_while_placeholder_29layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(²
layer3/while/lstm_cell_45/addAddV2*layer3/while/lstm_cell_45/MatMul:product:0,layer3/while/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¨
0layer3/while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp;layer3_while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0»
!layer3/while/lstm_cell_45/BiasAddBiasAdd!layer3/while/lstm_cell_45/add:z:08layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(k
)layer3/while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
layer3/while/lstm_cell_45/splitSplit2layer3/while/lstm_cell_45/split/split_dim:output:0*layer3/while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
!layer3/while/lstm_cell_45/SigmoidSigmoid(layer3/while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_45/Sigmoid_1Sigmoid(layer3/while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/lstm_cell_45/mulMul'layer3/while/lstm_cell_45/Sigmoid_1:y:0layer3_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_45/Sigmoid_2Sigmoid(layer3/while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¨
layer3/while/lstm_cell_45/mul_1Mul%layer3/while/lstm_cell_45/Sigmoid:y:0'layer3/while/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
layer3/while/lstm_cell_45/add_1AddV2!layer3/while/lstm_cell_45/mul:z:0#layer3/while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_45/Sigmoid_3Sigmoid(layer3/while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

#layer3/while/lstm_cell_45/Sigmoid_4Sigmoid#layer3/while/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
layer3/while/lstm_cell_45/mul_2Mul'layer3/while/lstm_cell_45/Sigmoid_3:y:0'layer3/while/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
á
1layer3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlayer3_while_placeholder_1layer3_while_placeholder#layer3/while/lstm_cell_45/mul_2:z:0*
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
layer3/while/Identity_4Identity#layer3/while/lstm_cell_45/mul_2:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/while/Identity_5Identity#layer3/while/lstm_cell_45/add_1:z:0^layer3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ì
layer3/while/NoOpNoOp1^layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp0^layer3/while/lstm_cell_45/MatMul/ReadVariableOp2^layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp*"
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
9layer3_while_lstm_cell_45_biasadd_readvariableop_resource;layer3_while_lstm_cell_45_biasadd_readvariableop_resource_0"z
:layer3_while_lstm_cell_45_matmul_1_readvariableop_resource<layer3_while_lstm_cell_45_matmul_1_readvariableop_resource_0"v
8layer3_while_lstm_cell_45_matmul_readvariableop_resource:layer3_while_lstm_cell_45_matmul_readvariableop_resource_0"Ä
_layer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensoralayer3_while_tensorarrayv2read_tensorlistgetitem_layer3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2d
0layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp0layer3/while/lstm_cell_45/BiasAdd/ReadVariableOp2b
/layer3/while/lstm_cell_45/MatMul/ReadVariableOp/layer3/while/lstm_cell_45/MatMul/ReadVariableOp2f
1layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp1layer3/while/lstm_cell_45/MatMul_1/ReadVariableOp: 
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
ó
ñ
/__inference_sequential_25_layer_call_fn_1305626
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
identity¢StatefulPartitionedCall
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
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305562o
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
8
Ë
while_body_1304961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_45_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_45_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_45_matmul_readvariableop_resource:2(E
3while_lstm_cell_45_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_45_biasadd_readvariableop_resource:(¢)while/lstm_cell_45/BiasAdd/ReadVariableOp¢(while/lstm_cell_45/MatMul/ReadVariableOp¢*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0 while/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_3Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_45/Sigmoid_4Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_3:y:0 while/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 
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
â	
À
input_while_cond_1305832(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3*
&input_while_less_input_strided_slice_1A
=input_while_input_while_cond_1305832___redundant_placeholder0A
=input_while_input_while_cond_1305832___redundant_placeholder1A
=input_while_input_while_cond_1305832___redundant_placeholder2A
=input_while_input_while_cond_1305832___redundant_placeholder3
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
Þ

I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1304185

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
8
Ë
while_body_1305211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_45_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_45_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_45_matmul_readvariableop_resource:2(E
3while_lstm_cell_45_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_45_biasadd_readvariableop_resource:(¢)while/lstm_cell_45/BiasAdd/ReadVariableOp¢(while/lstm_cell_45/MatMul/ReadVariableOp¢*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0 while/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_3Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_45/Sigmoid_4Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_3:y:0 while/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 
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
º
È
while_cond_1305210
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1305210___redundant_placeholder05
1while_while_cond_1305210___redundant_placeholder15
1while_while_cond_1305210___redundant_placeholder25
1while_while_cond_1305210___redundant_placeholder3
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
Á
ç
%__inference_signature_wrapper_1306509
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
identity¢StatefulPartitionedCallÞ
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
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1303972o
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
Øë
ù
J__inference_sequential_25_layer_call_and_return_conditional_losses_1306124

inputsF
1input_lstm_cell_44_matmul_readvariableop_resource:áðF
3input_lstm_cell_44_matmul_1_readvariableop_resource:	<ðA
2input_lstm_cell_44_biasadd_readvariableop_resource:	ð:
(layer1_tensordot_readvariableop_resource:<<4
&layer1_biasadd_readvariableop_resource:<:
(layer2_tensordot_readvariableop_resource:<24
&layer2_biasadd_readvariableop_resource:2D
2layer3_lstm_cell_45_matmul_readvariableop_resource:2(F
4layer3_lstm_cell_45_matmul_1_readvariableop_resource:
(A
3layer3_lstm_cell_45_biasadd_readvariableop_resource:(7
%layer4_matmul_readvariableop_resource:
4
&layer4_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:4
&output_biasadd_readvariableop_resource:
identity¢)input/lstm_cell_44/BiasAdd/ReadVariableOp¢(input/lstm_cell_44/MatMul/ReadVariableOp¢*input/lstm_cell_44/MatMul_1/ReadVariableOp¢input/while¢layer1/BiasAdd/ReadVariableOp¢layer1/Tensordot/ReadVariableOp¢layer2/BiasAdd/ReadVariableOp¢layer2/Tensordot/ReadVariableOp¢*layer3/lstm_cell_45/BiasAdd/ReadVariableOp¢)layer3/lstm_cell_45/MatMul/ReadVariableOp¢+layer3/lstm_cell_45/MatMul_1/ReadVariableOp¢layer3/while¢layer4/BiasAdd/ReadVariableOp¢layer4/MatMul/ReadVariableOp¢output/BiasAdd/ReadVariableOp¢output/MatMul/ReadVariableOpA
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
(input/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp1input_lstm_cell_44_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0¨
input/lstm_cell_44/MatMulMatMulinput/strided_slice_2:output:00input/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
*input/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp3input_lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0¢
input/lstm_cell_44/MatMul_1MatMulinput/zeros:output:02input/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
input/lstm_cell_44/addAddV2#input/lstm_cell_44/MatMul:product:0%input/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)input/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp2input_lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0§
input/lstm_cell_44/BiasAddBiasAddinput/lstm_cell_44/add:z:01input/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"input/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
input/lstm_cell_44/splitSplit+input/lstm_cell_44/split/split_dim:output:0#input/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
input/lstm_cell_44/SigmoidSigmoid!input/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
input/lstm_cell_44/Sigmoid_1Sigmoid!input/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_44/mulMul input/lstm_cell_44/Sigmoid_1:y:0input/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
input/lstm_cell_44/ReluRelu!input/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_44/mul_1Mulinput/lstm_cell_44/Sigmoid:y:0%input/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_44/add_1AddV2input/lstm_cell_44/mul:z:0input/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
input/lstm_cell_44/Sigmoid_2Sigmoid!input/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
input/lstm_cell_44/Relu_1Reluinput/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/lstm_cell_44/mul_2Mul input/lstm_cell_44/Sigmoid_2:y:0'input/lstm_cell_44/Relu_1:activations:0*
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
value	B : Ø
input/whileWhile!input/while/loop_counter:output:0'input/while/maximum_iterations:output:0input/time:output:0input/TensorArrayV2_1:handle:0input/zeros:output:0input/zeros_1:output:0input/strided_slice_1:output:0=input/TensorArrayUnstack/TensorListFromTensor:output_handle:01input_lstm_cell_44_matmul_readvariableop_resource3input_lstm_cell_44_matmul_1_readvariableop_resource2input_lstm_cell_44_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
input_while_body_1305833*$
condR
input_while_cond_1305832*K
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
)layer3/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp2layer3_lstm_cell_45_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0ª
layer3/lstm_cell_45/MatMulMatMullayer3/strided_slice_2:output:01layer3/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
+layer3/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp4layer3_lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0¤
layer3/lstm_cell_45/MatMul_1MatMullayer3/zeros:output:03layer3/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
layer3/lstm_cell_45/addAddV2$layer3/lstm_cell_45/MatMul:product:0&layer3/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
*layer3/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp3layer3_lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0©
layer3/lstm_cell_45/BiasAddBiasAddlayer3/lstm_cell_45/add:z:02layer3/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(e
#layer3/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ò
layer3/lstm_cell_45/splitSplit,layer3/lstm_cell_45/split/split_dim:output:0$layer3/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split|
layer3/lstm_cell_45/SigmoidSigmoid"layer3/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_45/Sigmoid_1Sigmoid"layer3/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_45/mulMul!layer3/lstm_cell_45/Sigmoid_1:y:0layer3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_45/Sigmoid_2Sigmoid"layer3/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_45/mul_1Mullayer3/lstm_cell_45/Sigmoid:y:0!layer3/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_45/add_1AddV2layer3/lstm_cell_45/mul:z:0layer3/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
layer3/lstm_cell_45/Sigmoid_3Sigmoid"layer3/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
layer3/lstm_cell_45/Sigmoid_4Sigmoidlayer3/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

layer3/lstm_cell_45/mul_2Mul!layer3/lstm_cell_45/Sigmoid_3:y:0!layer3/lstm_cell_45/Sigmoid_4:y:0*
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
value	B : æ
layer3/whileWhile"layer3/while/loop_counter:output:0(layer3/while/maximum_iterations:output:0layer3/time:output:0layer3/TensorArrayV2_1:handle:0layer3/zeros:output:0layer3/zeros_1:output:0layer3/strided_slice_1:output:0>layer3/TensorArrayUnstack/TensorListFromTensor:output_handle:02layer3_lstm_cell_45_matmul_readvariableop_resource4layer3_lstm_cell_45_matmul_1_readvariableop_resource3layer3_lstm_cell_45_biasadd_readvariableop_resource*
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
_stateful_parallelism( *%
bodyR
layer3_while_body_1306026*%
condR
layer3_while_cond_1306025*K
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
NoOpNoOp*^input/lstm_cell_44/BiasAdd/ReadVariableOp)^input/lstm_cell_44/MatMul/ReadVariableOp+^input/lstm_cell_44/MatMul_1/ReadVariableOp^input/while^layer1/BiasAdd/ReadVariableOp ^layer1/Tensordot/ReadVariableOp^layer2/BiasAdd/ReadVariableOp ^layer2/Tensordot/ReadVariableOp+^layer3/lstm_cell_45/BiasAdd/ReadVariableOp*^layer3/lstm_cell_45/MatMul/ReadVariableOp,^layer3/lstm_cell_45/MatMul_1/ReadVariableOp^layer3/while^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2V
)input/lstm_cell_44/BiasAdd/ReadVariableOp)input/lstm_cell_44/BiasAdd/ReadVariableOp2T
(input/lstm_cell_44/MatMul/ReadVariableOp(input/lstm_cell_44/MatMul/ReadVariableOp2X
*input/lstm_cell_44/MatMul_1/ReadVariableOp*input/lstm_cell_44/MatMul_1/ReadVariableOp2
input/whileinput/while2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2B
layer1/Tensordot/ReadVariableOplayer1/Tensordot/ReadVariableOp2>
layer2/BiasAdd/ReadVariableOplayer2/BiasAdd/ReadVariableOp2B
layer2/Tensordot/ReadVariableOplayer2/Tensordot/ReadVariableOp2X
*layer3/lstm_cell_45/BiasAdd/ReadVariableOp*layer3/lstm_cell_45/BiasAdd/ReadVariableOp2V
)layer3/lstm_cell_45/MatMul/ReadVariableOp)layer3/lstm_cell_45/MatMul/ReadVariableOp2Z
+layer3/lstm_cell_45/MatMul_1/ReadVariableOp+layer3/lstm_cell_45/MatMul_1/ReadVariableOp2
layer3/whilelayer3/while2>
layer4/BiasAdd/ReadVariableOplayer4/BiasAdd/ReadVariableOp2<
layer4/MatMul/ReadVariableOplayer4/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
º
È
while_cond_1304736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304736___redundant_placeholder05
1while_while_cond_1304736___redundant_placeholder15
1while_while_cond_1304736___redundant_placeholder25
1while_while_cond_1304736___redundant_placeholder3
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
¨8
Õ
while_body_1304737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_44_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_44_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_44_matmul_readvariableop_resource:áðF
3while_lstm_cell_44_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_44_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_44/BiasAdd/ReadVariableOp¢(while/lstm_cell_44/MatMul/ReadVariableOp¢*while/lstm_cell_44/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 
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
Î

I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1304535

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
¡
ú
C__inference_layer2_layer_call_and_return_conditional_losses_1307205

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
³?


input_while_body_1306183(
$input_while_input_while_loop_counter.
*input_while_input_while_maximum_iterations
input_while_placeholder
input_while_placeholder_1
input_while_placeholder_2
input_while_placeholder_3'
#input_while_input_strided_slice_1_0c
_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0N
9input_while_lstm_cell_44_matmul_readvariableop_resource_0:áðN
;input_while_lstm_cell_44_matmul_1_readvariableop_resource_0:	<ðI
:input_while_lstm_cell_44_biasadd_readvariableop_resource_0:	ð
input_while_identity
input_while_identity_1
input_while_identity_2
input_while_identity_3
input_while_identity_4
input_while_identity_5%
!input_while_input_strided_slice_1a
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensorL
7input_while_lstm_cell_44_matmul_readvariableop_resource:áðL
9input_while_lstm_cell_44_matmul_1_readvariableop_resource:	<ðG
8input_while_lstm_cell_44_biasadd_readvariableop_resource:	ð¢/input/while/lstm_cell_44/BiasAdd/ReadVariableOp¢.input/while/lstm_cell_44/MatMul/ReadVariableOp¢0input/while/lstm_cell_44/MatMul_1/ReadVariableOp
=input/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá Æ
/input/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0input_while_placeholderFinput/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0«
.input/while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp9input_while_lstm_cell_44_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0Ì
input/while/lstm_cell_44/MatMulMatMul6input/while/TensorArrayV2Read/TensorListGetItem:item:06input/while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð­
0input/while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp;input_while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0³
!input/while/lstm_cell_44/MatMul_1MatMulinput_while_placeholder_28input/while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð°
input/while/lstm_cell_44/addAddV2)input/while/lstm_cell_44/MatMul:product:0+input/while/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð§
/input/while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp:input_while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0¹
 input/while/lstm_cell_44/BiasAddBiasAdd input/while/lstm_cell_44/add:z:07input/while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðj
(input/while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
input/while/lstm_cell_44/splitSplit1input/while/lstm_cell_44/split/split_dim:output:0)input/while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
 input/while/lstm_cell_44/SigmoidSigmoid'input/while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"input/while/lstm_cell_44/Sigmoid_1Sigmoid'input/while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_44/mulMul&input/while/lstm_cell_44/Sigmoid_1:y:0input_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_44/ReluRelu'input/while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<ª
input/while/lstm_cell_44/mul_1Mul$input/while/lstm_cell_44/Sigmoid:y:0+input/while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/lstm_cell_44/add_1AddV2 input/while/lstm_cell_44/mul:z:0"input/while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
"input/while/lstm_cell_44/Sigmoid_2Sigmoid'input/while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<}
input/while/lstm_cell_44/Relu_1Relu"input/while/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<®
input/while/lstm_cell_44/mul_2Mul&input/while/lstm_cell_44/Sigmoid_2:y:0-input/while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ý
0input/while/TensorArrayV2Write/TensorListSetItemTensorListSetIteminput_while_placeholder_1input_while_placeholder"input/while/lstm_cell_44/mul_2:z:0*
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
input/while/Identity_4Identity"input/while/lstm_cell_44/mul_2:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
input/while/Identity_5Identity"input/while/lstm_cell_44/add_1:z:0^input/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<è
input/while/NoOpNoOp0^input/while/lstm_cell_44/BiasAdd/ReadVariableOp/^input/while/lstm_cell_44/MatMul/ReadVariableOp1^input/while/lstm_cell_44/MatMul_1/ReadVariableOp*"
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
8input_while_lstm_cell_44_biasadd_readvariableop_resource:input_while_lstm_cell_44_biasadd_readvariableop_resource_0"x
9input_while_lstm_cell_44_matmul_1_readvariableop_resource;input_while_lstm_cell_44_matmul_1_readvariableop_resource_0"t
7input_while_lstm_cell_44_matmul_readvariableop_resource9input_while_lstm_cell_44_matmul_readvariableop_resource_0"À
]input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_input_while_tensorarrayv2read_tensorlistgetitem_input_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2b
/input/while/lstm_cell_44/BiasAdd/ReadVariableOp/input/while/lstm_cell_44/BiasAdd/ReadVariableOp2`
.input/while/lstm_cell_44/MatMul/ReadVariableOp.input/while/lstm_cell_44/MatMul/ReadVariableOp2d
0input/while/lstm_cell_44/MatMul_1/ReadVariableOp0input/while/lstm_cell_44/MatMul_1/ReadVariableOp: 
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
ª8

B__inference_input_layer_call_and_return_conditional_losses_1304313

inputs)
lstm_cell_44_1304231:áð'
lstm_cell_44_1304233:	<ð#
lstm_cell_44_1304235:	ð
identity¢$lstm_cell_44/StatefulPartitionedCall¢while;
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
shrink_axis_maskü
$lstm_cell_44/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_44_1304231lstm_cell_44_1304233lstm_cell_44_1304235*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1304185n
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
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_44_1304231lstm_cell_44_1304233lstm_cell_44_1304235*
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
bodyR
while_body_1304244*
condR
while_cond_1304243*K
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
NoOpNoOp%^lstm_cell_44/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2L
$lstm_cell_44/StatefulPartitionedCall$lstm_cell_44/StatefulPartitionedCall2
whilewhile:^ Z
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
8
Ë
while_body_1307308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_45_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_45_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_45_matmul_readvariableop_resource:2(E
3while_lstm_cell_45_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_45_biasadd_readvariableop_resource:(¢)while/lstm_cell_45/BiasAdd/ReadVariableOp¢(while/lstm_cell_45/MatMul/ReadVariableOp¢*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0 while/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_3Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_45/Sigmoid_4Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_3:y:0 while/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 
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

¶
'__inference_input_layer_call_fn_1306542

inputs
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity¢StatefulPartitionedCallë
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
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_input_layer_call_and_return_conditional_losses_1304821s
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
°
¸
'__inference_input_layer_call_fn_1306520
inputs_0
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity¢StatefulPartitionedCallö
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
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_input_layer_call_and_return_conditional_losses_1304122|
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
¯¡
ú
"__inference__wrapped_model_1303972
input_inputT
?sequential_25_input_lstm_cell_44_matmul_readvariableop_resource:áðT
Asequential_25_input_lstm_cell_44_matmul_1_readvariableop_resource:	<ðO
@sequential_25_input_lstm_cell_44_biasadd_readvariableop_resource:	ðH
6sequential_25_layer1_tensordot_readvariableop_resource:<<B
4sequential_25_layer1_biasadd_readvariableop_resource:<H
6sequential_25_layer2_tensordot_readvariableop_resource:<2B
4sequential_25_layer2_biasadd_readvariableop_resource:2R
@sequential_25_layer3_lstm_cell_45_matmul_readvariableop_resource:2(T
Bsequential_25_layer3_lstm_cell_45_matmul_1_readvariableop_resource:
(O
Asequential_25_layer3_lstm_cell_45_biasadd_readvariableop_resource:(E
3sequential_25_layer4_matmul_readvariableop_resource:
B
4sequential_25_layer4_biasadd_readvariableop_resource:E
3sequential_25_output_matmul_readvariableop_resource:B
4sequential_25_output_biasadd_readvariableop_resource:
identity¢7sequential_25/input/lstm_cell_44/BiasAdd/ReadVariableOp¢6sequential_25/input/lstm_cell_44/MatMul/ReadVariableOp¢8sequential_25/input/lstm_cell_44/MatMul_1/ReadVariableOp¢sequential_25/input/while¢+sequential_25/layer1/BiasAdd/ReadVariableOp¢-sequential_25/layer1/Tensordot/ReadVariableOp¢+sequential_25/layer2/BiasAdd/ReadVariableOp¢-sequential_25/layer2/Tensordot/ReadVariableOp¢8sequential_25/layer3/lstm_cell_45/BiasAdd/ReadVariableOp¢7sequential_25/layer3/lstm_cell_45/MatMul/ReadVariableOp¢9sequential_25/layer3/lstm_cell_45/MatMul_1/ReadVariableOp¢sequential_25/layer3/while¢+sequential_25/layer4/BiasAdd/ReadVariableOp¢*sequential_25/layer4/MatMul/ReadVariableOp¢+sequential_25/output/BiasAdd/ReadVariableOp¢*sequential_25/output/MatMul/ReadVariableOpT
sequential_25/input/ShapeShapeinput_input*
T0*
_output_shapes
:q
'sequential_25/input/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_25/input/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_25/input/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_25/input/strided_sliceStridedSlice"sequential_25/input/Shape:output:00sequential_25/input/strided_slice/stack:output:02sequential_25/input/strided_slice/stack_1:output:02sequential_25/input/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_25/input/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<¯
 sequential_25/input/zeros/packedPack*sequential_25/input/strided_slice:output:0+sequential_25/input/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_25/input/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¨
sequential_25/input/zerosFill)sequential_25/input/zeros/packed:output:0(sequential_25/input/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<f
$sequential_25/input/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :<³
"sequential_25/input/zeros_1/packedPack*sequential_25/input/strided_slice:output:0-sequential_25/input/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_25/input/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_25/input/zeros_1Fill+sequential_25/input/zeros_1/packed:output:0*sequential_25/input/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
"sequential_25/input/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_25/input/transpose	Transposeinput_input+sequential_25/input/transpose/perm:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿál
sequential_25/input/Shape_1Shape!sequential_25/input/transpose:y:0*
T0*
_output_shapes
:s
)sequential_25/input/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_25/input/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_25/input/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_25/input/strided_slice_1StridedSlice$sequential_25/input/Shape_1:output:02sequential_25/input/strided_slice_1/stack:output:04sequential_25/input/strided_slice_1/stack_1:output:04sequential_25/input/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_25/input/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿð
!sequential_25/input/TensorArrayV2TensorListReserve8sequential_25/input/TensorArrayV2/element_shape:output:0,sequential_25/input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Isequential_25/input/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá 
;sequential_25/input/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_25/input/transpose:y:0Rsequential_25/input/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒs
)sequential_25/input/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_25/input/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_25/input/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ï
#sequential_25/input/strided_slice_2StridedSlice!sequential_25/input/transpose:y:02sequential_25/input/strided_slice_2/stack:output:04sequential_25/input/strided_slice_2/stack_1:output:04sequential_25/input/strided_slice_2/stack_2:output:0*
Index0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
shrink_axis_mask¹
6sequential_25/input/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp?sequential_25_input_lstm_cell_44_matmul_readvariableop_resource*!
_output_shapes
:áð*
dtype0Ò
'sequential_25/input/lstm_cell_44/MatMulMatMul,sequential_25/input/strided_slice_2:output:0>sequential_25/input/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð»
8sequential_25/input/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOpAsequential_25_input_lstm_cell_44_matmul_1_readvariableop_resource*
_output_shapes
:	<ð*
dtype0Ì
)sequential_25/input/lstm_cell_44/MatMul_1MatMul"sequential_25/input/zeros:output:0@sequential_25/input/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðÈ
$sequential_25/input/lstm_cell_44/addAddV21sequential_25/input/lstm_cell_44/MatMul:product:03sequential_25/input/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðµ
7sequential_25/input/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp@sequential_25_input_lstm_cell_44_biasadd_readvariableop_resource*
_output_shapes	
:ð*
dtype0Ñ
(sequential_25/input/lstm_cell_44/BiasAddBiasAdd(sequential_25/input/lstm_cell_44/add:z:0?sequential_25/input/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðr
0sequential_25/input/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&sequential_25/input/lstm_cell_44/splitSplit9sequential_25/input/lstm_cell_44/split/split_dim:output:01sequential_25/input/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_split
(sequential_25/input/lstm_cell_44/SigmoidSigmoid/sequential_25/input/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
*sequential_25/input/lstm_cell_44/Sigmoid_1Sigmoid/sequential_25/input/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<³
$sequential_25/input/lstm_cell_44/mulMul.sequential_25/input/lstm_cell_44/Sigmoid_1:y:0$sequential_25/input/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
%sequential_25/input/lstm_cell_44/ReluRelu/sequential_25/input/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Â
&sequential_25/input/lstm_cell_44/mul_1Mul,sequential_25/input/lstm_cell_44/Sigmoid:y:03sequential_25/input/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<·
&sequential_25/input/lstm_cell_44/add_1AddV2(sequential_25/input/lstm_cell_44/mul:z:0*sequential_25/input/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
*sequential_25/input/lstm_cell_44/Sigmoid_2Sigmoid/sequential_25/input/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
'sequential_25/input/lstm_cell_44/Relu_1Relu*sequential_25/input/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Æ
&sequential_25/input/lstm_cell_44/mul_2Mul.sequential_25/input/lstm_cell_44/Sigmoid_2:y:05sequential_25/input/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
1sequential_25/input/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   ô
#sequential_25/input/TensorArrayV2_1TensorListReserve:sequential_25/input/TensorArrayV2_1/element_shape:output:0,sequential_25/input/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒZ
sequential_25/input/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_25/input/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿh
&sequential_25/input/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_25/input/whileWhile/sequential_25/input/while/loop_counter:output:05sequential_25/input/while/maximum_iterations:output:0!sequential_25/input/time:output:0,sequential_25/input/TensorArrayV2_1:handle:0"sequential_25/input/zeros:output:0$sequential_25/input/zeros_1:output:0,sequential_25/input/strided_slice_1:output:0Ksequential_25/input/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_25_input_lstm_cell_44_matmul_readvariableop_resourceAsequential_25_input_lstm_cell_44_matmul_1_readvariableop_resource@sequential_25_input_lstm_cell_44_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_25_input_while_body_1303681*2
cond*R(
&sequential_25_input_while_cond_1303680*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : *
parallel_iterations 
Dsequential_25/input/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ<   þ
6sequential_25/input/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_25/input/while:output:3Msequential_25/input/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
element_dtype0|
)sequential_25/input/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿu
+sequential_25/input/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_25/input/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ë
#sequential_25/input/strided_slice_3StridedSlice?sequential_25/input/TensorArrayV2Stack/TensorListStack:tensor:02sequential_25/input/strided_slice_3/stack:output:04sequential_25/input/strided_slice_3/stack_1:output:04sequential_25/input/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
shrink_axis_masky
$sequential_25/input/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ò
sequential_25/input/transpose_1	Transpose?sequential_25/input/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_25/input/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<o
sequential_25/input/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¤
-sequential_25/layer1/Tensordot/ReadVariableOpReadVariableOp6sequential_25_layer1_tensordot_readvariableop_resource*
_output_shapes

:<<*
dtype0m
#sequential_25/layer1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_25/layer1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
$sequential_25/layer1/Tensordot/ShapeShape#sequential_25/input/transpose_1:y:0*
T0*
_output_shapes
:n
,sequential_25/layer1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_25/layer1/Tensordot/GatherV2GatherV2-sequential_25/layer1/Tensordot/Shape:output:0,sequential_25/layer1/Tensordot/free:output:05sequential_25/layer1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_25/layer1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_25/layer1/Tensordot/GatherV2_1GatherV2-sequential_25/layer1/Tensordot/Shape:output:0,sequential_25/layer1/Tensordot/axes:output:07sequential_25/layer1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_25/layer1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_25/layer1/Tensordot/ProdProd0sequential_25/layer1/Tensordot/GatherV2:output:0-sequential_25/layer1/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_25/layer1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_25/layer1/Tensordot/Prod_1Prod2sequential_25/layer1/Tensordot/GatherV2_1:output:0/sequential_25/layer1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_25/layer1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_25/layer1/Tensordot/concatConcatV2,sequential_25/layer1/Tensordot/free:output:0,sequential_25/layer1/Tensordot/axes:output:03sequential_25/layer1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_25/layer1/Tensordot/stackPack,sequential_25/layer1/Tensordot/Prod:output:0.sequential_25/layer1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:À
(sequential_25/layer1/Tensordot/transpose	Transpose#sequential_25/input/transpose_1:y:0.sequential_25/layer1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<É
&sequential_25/layer1/Tensordot/ReshapeReshape,sequential_25/layer1/Tensordot/transpose:y:0-sequential_25/layer1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_25/layer1/Tensordot/MatMulMatMul/sequential_25/layer1/Tensordot/Reshape:output:05sequential_25/layer1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<p
&sequential_25/layer1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:<n
,sequential_25/layer1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_25/layer1/Tensordot/concat_1ConcatV20sequential_25/layer1/Tensordot/GatherV2:output:0/sequential_25/layer1/Tensordot/Const_2:output:05sequential_25/layer1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_25/layer1/TensordotReshape/sequential_25/layer1/Tensordot/MatMul:product:00sequential_25/layer1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
+sequential_25/layer1/BiasAdd/ReadVariableOpReadVariableOp4sequential_25_layer1_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0»
sequential_25/layer1/BiasAddBiasAdd'sequential_25/layer1/Tensordot:output:03sequential_25/layer1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<~
sequential_25/layer1/ReluRelu%sequential_25/layer1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¤
-sequential_25/layer2/Tensordot/ReadVariableOpReadVariableOp6sequential_25_layer2_tensordot_readvariableop_resource*
_output_shapes

:<2*
dtype0m
#sequential_25/layer2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_25/layer2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       {
$sequential_25/layer2/Tensordot/ShapeShape'sequential_25/layer1/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_25/layer2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
'sequential_25/layer2/Tensordot/GatherV2GatherV2-sequential_25/layer2/Tensordot/Shape:output:0,sequential_25/layer2/Tensordot/free:output:05sequential_25/layer2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_25/layer2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)sequential_25/layer2/Tensordot/GatherV2_1GatherV2-sequential_25/layer2/Tensordot/Shape:output:0,sequential_25/layer2/Tensordot/axes:output:07sequential_25/layer2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_25/layer2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ­
#sequential_25/layer2/Tensordot/ProdProd0sequential_25/layer2/Tensordot/GatherV2:output:0-sequential_25/layer2/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_25/layer2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ³
%sequential_25/layer2/Tensordot/Prod_1Prod2sequential_25/layer2/Tensordot/GatherV2_1:output:0/sequential_25/layer2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_25/layer2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ð
%sequential_25/layer2/Tensordot/concatConcatV2,sequential_25/layer2/Tensordot/free:output:0,sequential_25/layer2/Tensordot/axes:output:03sequential_25/layer2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¸
$sequential_25/layer2/Tensordot/stackPack,sequential_25/layer2/Tensordot/Prod:output:0.sequential_25/layer2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ä
(sequential_25/layer2/Tensordot/transpose	Transpose'sequential_25/layer1/Relu:activations:0.sequential_25/layer2/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<É
&sequential_25/layer2/Tensordot/ReshapeReshape,sequential_25/layer2/Tensordot/transpose:y:0-sequential_25/layer2/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÉ
%sequential_25/layer2/Tensordot/MatMulMatMul/sequential_25/layer2/Tensordot/Reshape:output:05sequential_25/layer2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2p
&sequential_25/layer2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2n
,sequential_25/layer2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
'sequential_25/layer2/Tensordot/concat_1ConcatV20sequential_25/layer2/Tensordot/GatherV2:output:0/sequential_25/layer2/Tensordot/Const_2:output:05sequential_25/layer2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Â
sequential_25/layer2/TensordotReshape/sequential_25/layer2/Tensordot/MatMul:product:00sequential_25/layer2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
+sequential_25/layer2/BiasAdd/ReadVariableOpReadVariableOp4sequential_25_layer2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0»
sequential_25/layer2/BiasAddBiasAdd'sequential_25/layer2/Tensordot:output:03sequential_25/layer2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_25/layer2/SigmoidSigmoid%sequential_25/layer2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2j
sequential_25/layer3/ShapeShape sequential_25/layer2/Sigmoid:y:0*
T0*
_output_shapes
:r
(sequential_25/layer3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_25/layer3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_25/layer3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"sequential_25/layer3/strided_sliceStridedSlice#sequential_25/layer3/Shape:output:01sequential_25/layer3/strided_slice/stack:output:03sequential_25/layer3/strided_slice/stack_1:output:03sequential_25/layer3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_25/layer3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
²
!sequential_25/layer3/zeros/packedPack+sequential_25/layer3/strided_slice:output:0,sequential_25/layer3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_25/layer3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_25/layer3/zerosFill*sequential_25/layer3/zeros/packed:output:0)sequential_25/layer3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
g
%sequential_25/layer3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
¶
#sequential_25/layer3/zeros_1/packedPack+sequential_25/layer3/strided_slice:output:0.sequential_25/layer3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_25/layer3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
sequential_25/layer3/zeros_1Fill,sequential_25/layer3/zeros_1/packed:output:0+sequential_25/layer3/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
#sequential_25/layer3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ±
sequential_25/layer3/transpose	Transpose sequential_25/layer2/Sigmoid:y:0,sequential_25/layer3/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2n
sequential_25/layer3/Shape_1Shape"sequential_25/layer3/transpose:y:0*
T0*
_output_shapes
:t
*sequential_25/layer3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_25/layer3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_25/layer3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$sequential_25/layer3/strided_slice_1StridedSlice%sequential_25/layer3/Shape_1:output:03sequential_25/layer3/strided_slice_1/stack:output:05sequential_25/layer3/strided_slice_1/stack_1:output:05sequential_25/layer3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_25/layer3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿó
"sequential_25/layer3/TensorArrayV2TensorListReserve9sequential_25/layer3/TensorArrayV2/element_shape:output:0-sequential_25/layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Jsequential_25/layer3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   
<sequential_25/layer3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_25/layer3/transpose:y:0Ssequential_25/layer3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*sequential_25/layer3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_25/layer3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_25/layer3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ò
$sequential_25/layer3/strided_slice_2StridedSlice"sequential_25/layer3/transpose:y:03sequential_25/layer3/strided_slice_2/stack:output:05sequential_25/layer3/strided_slice_2/stack_1:output:05sequential_25/layer3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
shrink_axis_mask¸
7sequential_25/layer3/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp@sequential_25_layer3_lstm_cell_45_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ô
(sequential_25/layer3/lstm_cell_45/MatMulMatMul-sequential_25/layer3/strided_slice_2:output:0?sequential_25/layer3/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¼
9sequential_25/layer3/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOpBsequential_25_layer3_lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Î
*sequential_25/layer3/lstm_cell_45/MatMul_1MatMul#sequential_25/layer3/zeros:output:0Asequential_25/layer3/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Ê
%sequential_25/layer3/lstm_cell_45/addAddV22sequential_25/layer3/lstm_cell_45/MatMul:product:04sequential_25/layer3/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¶
8sequential_25/layer3/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOpAsequential_25_layer3_lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ó
)sequential_25/layer3/lstm_cell_45/BiasAddBiasAdd)sequential_25/layer3/lstm_cell_45/add:z:0@sequential_25/layer3/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(s
1sequential_25/layer3/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'sequential_25/layer3/lstm_cell_45/splitSplit:sequential_25/layer3/lstm_cell_45/split/split_dim:output:02sequential_25/layer3/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_split
)sequential_25/layer3/lstm_cell_45/SigmoidSigmoid0sequential_25/layer3/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

+sequential_25/layer3/lstm_cell_45/Sigmoid_1Sigmoid0sequential_25/layer3/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¶
%sequential_25/layer3/lstm_cell_45/mulMul/sequential_25/layer3/lstm_cell_45/Sigmoid_1:y:0%sequential_25/layer3/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

+sequential_25/layer3/lstm_cell_45/Sigmoid_2Sigmoid0sequential_25/layer3/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
À
'sequential_25/layer3/lstm_cell_45/mul_1Mul-sequential_25/layer3/lstm_cell_45/Sigmoid:y:0/sequential_25/layer3/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
º
'sequential_25/layer3/lstm_cell_45/add_1AddV2)sequential_25/layer3/lstm_cell_45/mul:z:0+sequential_25/layer3/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

+sequential_25/layer3/lstm_cell_45/Sigmoid_3Sigmoid0sequential_25/layer3/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

+sequential_25/layer3/lstm_cell_45/Sigmoid_4Sigmoid+sequential_25/layer3/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Â
'sequential_25/layer3/lstm_cell_45/mul_2Mul/sequential_25/layer3/lstm_cell_45/Sigmoid_3:y:0/sequential_25/layer3/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

2sequential_25/layer3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   ÷
$sequential_25/layer3/TensorArrayV2_1TensorListReserve;sequential_25/layer3/TensorArrayV2_1/element_shape:output:0-sequential_25/layer3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ[
sequential_25/layer3/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_25/layer3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿi
'sequential_25/layer3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ª
sequential_25/layer3/whileWhile0sequential_25/layer3/while/loop_counter:output:06sequential_25/layer3/while/maximum_iterations:output:0"sequential_25/layer3/time:output:0-sequential_25/layer3/TensorArrayV2_1:handle:0#sequential_25/layer3/zeros:output:0%sequential_25/layer3/zeros_1:output:0-sequential_25/layer3/strided_slice_1:output:0Lsequential_25/layer3/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_25_layer3_lstm_cell_45_matmul_readvariableop_resourceBsequential_25_layer3_lstm_cell_45_matmul_1_readvariableop_resourceAsequential_25_layer3_lstm_cell_45_biasadd_readvariableop_resource*
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
_stateful_parallelism( *3
body+R)
'sequential_25_layer3_while_body_1303874*3
cond+R)
'sequential_25_layer3_while_cond_1303873*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : *
parallel_iterations 
Esequential_25/layer3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
   
7sequential_25/layer3/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_25/layer3/while:output:3Nsequential_25/layer3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
element_dtype0}
*sequential_25/layer3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿv
,sequential_25/layer3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_25/layer3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
$sequential_25/layer3/strided_slice_3StridedSlice@sequential_25/layer3/TensorArrayV2Stack/TensorListStack:tensor:03sequential_25/layer3/strided_slice_3/stack:output:05sequential_25/layer3/strided_slice_3/stack_1:output:05sequential_25/layer3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
shrink_axis_maskz
%sequential_25/layer3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Õ
 sequential_25/layer3/transpose_1	Transpose@sequential_25/layer3/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_25/layer3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
sequential_25/layer3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
*sequential_25/layer4/MatMul/ReadVariableOpReadVariableOp3sequential_25_layer4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0º
sequential_25/layer4/MatMulMatMul-sequential_25/layer3/strided_slice_3:output:02sequential_25/layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_25/layer4/BiasAdd/ReadVariableOpReadVariableOp4sequential_25_layer4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_25/layer4/BiasAddBiasAdd%sequential_25/layer4/MatMul:product:03sequential_25/layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_25/layer4/SigmoidSigmoid%sequential_25/layer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_25/output/MatMul/ReadVariableOpReadVariableOp3sequential_25_output_matmul_readvariableop_resource*
_output_shapes

:*
dtype0­
sequential_25/output/MatMulMatMul sequential_25/layer4/Sigmoid:y:02sequential_25/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_25/output/BiasAdd/ReadVariableOpReadVariableOp4sequential_25_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_25/output/BiasAddBiasAdd%sequential_25/output/MatMul:product:03sequential_25/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_25/output/SigmoidSigmoid%sequential_25/output/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
IdentityIdentity sequential_25/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
NoOpNoOp8^sequential_25/input/lstm_cell_44/BiasAdd/ReadVariableOp7^sequential_25/input/lstm_cell_44/MatMul/ReadVariableOp9^sequential_25/input/lstm_cell_44/MatMul_1/ReadVariableOp^sequential_25/input/while,^sequential_25/layer1/BiasAdd/ReadVariableOp.^sequential_25/layer1/Tensordot/ReadVariableOp,^sequential_25/layer2/BiasAdd/ReadVariableOp.^sequential_25/layer2/Tensordot/ReadVariableOp9^sequential_25/layer3/lstm_cell_45/BiasAdd/ReadVariableOp8^sequential_25/layer3/lstm_cell_45/MatMul/ReadVariableOp:^sequential_25/layer3/lstm_cell_45/MatMul_1/ReadVariableOp^sequential_25/layer3/while,^sequential_25/layer4/BiasAdd/ReadVariableOp+^sequential_25/layer4/MatMul/ReadVariableOp,^sequential_25/output/BiasAdd/ReadVariableOp+^sequential_25/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:ÿÿÿÿÿÿÿÿÿá: : : : : : : : : : : : : : 2r
7sequential_25/input/lstm_cell_44/BiasAdd/ReadVariableOp7sequential_25/input/lstm_cell_44/BiasAdd/ReadVariableOp2p
6sequential_25/input/lstm_cell_44/MatMul/ReadVariableOp6sequential_25/input/lstm_cell_44/MatMul/ReadVariableOp2t
8sequential_25/input/lstm_cell_44/MatMul_1/ReadVariableOp8sequential_25/input/lstm_cell_44/MatMul_1/ReadVariableOp26
sequential_25/input/whilesequential_25/input/while2Z
+sequential_25/layer1/BiasAdd/ReadVariableOp+sequential_25/layer1/BiasAdd/ReadVariableOp2^
-sequential_25/layer1/Tensordot/ReadVariableOp-sequential_25/layer1/Tensordot/ReadVariableOp2Z
+sequential_25/layer2/BiasAdd/ReadVariableOp+sequential_25/layer2/BiasAdd/ReadVariableOp2^
-sequential_25/layer2/Tensordot/ReadVariableOp-sequential_25/layer2/Tensordot/ReadVariableOp2t
8sequential_25/layer3/lstm_cell_45/BiasAdd/ReadVariableOp8sequential_25/layer3/lstm_cell_45/BiasAdd/ReadVariableOp2r
7sequential_25/layer3/lstm_cell_45/MatMul/ReadVariableOp7sequential_25/layer3/lstm_cell_45/MatMul/ReadVariableOp2v
9sequential_25/layer3/lstm_cell_45/MatMul_1/ReadVariableOp9sequential_25/layer3/lstm_cell_45/MatMul_1/ReadVariableOp28
sequential_25/layer3/whilesequential_25/layer3/while2Z
+sequential_25/layer4/BiasAdd/ReadVariableOp+sequential_25/layer4/BiasAdd/ReadVariableOp2X
*sequential_25/layer4/MatMul/ReadVariableOp*sequential_25/layer4/MatMul/ReadVariableOp2Z
+sequential_25/output/BiasAdd/ReadVariableOp+sequential_25/output/BiasAdd/ReadVariableOp2X
*sequential_25/output/MatMul/ReadVariableOp*sequential_25/output/MatMul/ReadVariableOp:Z V
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
%
_user_specified_nameinput_input


ô
C__inference_layer4_layer_call_and_return_conditional_losses_1305064

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
°
¸
'__inference_input_layer_call_fn_1306531
inputs_0
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity¢StatefulPartitionedCallö
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
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_input_layer_call_and_return_conditional_losses_1304313|
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
¢J

C__inference_layer3_layer_call_and_return_conditional_losses_1305295

inputs=
+lstm_cell_45_matmul_readvariableop_resource:2(?
-lstm_cell_45_matmul_1_readvariableop_resource:
(:
,lstm_cell_45_biasadd_readvariableop_resource:(
identity¢#lstm_cell_45/BiasAdd/ReadVariableOp¢"lstm_cell_45/MatMul/ReadVariableOp¢$lstm_cell_45/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_3Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_45/Sigmoid_4Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_3:y:0lstm_cell_45/Sigmoid_4:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
bodyR
while_body_1305211*
condR
while_cond_1305210*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Ó

(__inference_layer1_layer_call_fn_1307134

inputs
unknown:<<
	unknown_0:<
identity¢StatefulPartitionedCallß
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer1_layer_call_and_return_conditional_losses_1304860s
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
Ö

I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1308057

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
×J

C__inference_layer3_layer_call_and_return_conditional_losses_1307392
inputs_0=
+lstm_cell_45_matmul_readvariableop_resource:2(?
-lstm_cell_45_matmul_1_readvariableop_resource:
(:
,lstm_cell_45_biasadd_readvariableop_resource:(
identity¢#lstm_cell_45/BiasAdd/ReadVariableOp¢"lstm_cell_45/MatMul/ReadVariableOp¢$lstm_cell_45/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_3Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_45/Sigmoid_4Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_3:y:0lstm_cell_45/Sigmoid_4:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
bodyR
while_body_1307308*
condR
while_cond_1307307*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
"
_user_specified_name
inputs/0
¢J

C__inference_layer3_layer_call_and_return_conditional_losses_1307678

inputs=
+lstm_cell_45_matmul_readvariableop_resource:2(?
-lstm_cell_45_matmul_1_readvariableop_resource:
(:
,lstm_cell_45_biasadd_readvariableop_resource:(
identity¢#lstm_cell_45/BiasAdd/ReadVariableOp¢"lstm_cell_45/MatMul/ReadVariableOp¢$lstm_cell_45/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_45/MatMul/ReadVariableOpReadVariableOp+lstm_cell_45_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0
lstm_cell_45/MatMulMatMulstrided_slice_2:output:0*lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
$lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_45_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0
lstm_cell_45/MatMul_1MatMulzeros:output:0,lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
lstm_cell_45/addAddV2lstm_cell_45/MatMul:product:0lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
#lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_45_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
lstm_cell_45/BiasAddBiasAddlstm_cell_45/add:z:0+lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(^
lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ý
lstm_cell_45/splitSplit%lstm_cell_45/split/split_dim:output:0lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitn
lstm_cell_45/SigmoidSigmoidlstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_1Sigmoidlstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
lstm_cell_45/mulMullstm_cell_45/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_2Sigmoidlstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_1Mullstm_cell_45/Sigmoid:y:0lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
lstm_cell_45/add_1AddV2lstm_cell_45/mul:z:0lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
p
lstm_cell_45/Sigmoid_3Sigmoidlstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
lstm_cell_45/Sigmoid_4Sigmoidlstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

lstm_cell_45/mul_2Mullstm_cell_45/Sigmoid_3:y:0lstm_cell_45/Sigmoid_4:y:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_45_matmul_readvariableop_resource-lstm_cell_45_matmul_1_readvariableop_resource,lstm_cell_45_biasadd_readvariableop_resource*
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
bodyR
while_body_1307594*
condR
while_cond_1307593*K
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
NoOpNoOp$^lstm_cell_45/BiasAdd/ReadVariableOp#^lstm_cell_45/MatMul/ReadVariableOp%^lstm_cell_45/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : : 2J
#lstm_cell_45/BiasAdd/ReadVariableOp#lstm_cell_45/BiasAdd/ReadVariableOp2H
"lstm_cell_45/MatMul/ReadVariableOp"lstm_cell_45/MatMul/ReadVariableOp2L
$lstm_cell_45/MatMul_1/ReadVariableOp$lstm_cell_45/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
ë
Ø
&sequential_25_input_while_cond_1303680D
@sequential_25_input_while_sequential_25_input_while_loop_counterJ
Fsequential_25_input_while_sequential_25_input_while_maximum_iterations)
%sequential_25_input_while_placeholder+
'sequential_25_input_while_placeholder_1+
'sequential_25_input_while_placeholder_2+
'sequential_25_input_while_placeholder_3F
Bsequential_25_input_while_less_sequential_25_input_strided_slice_1]
Ysequential_25_input_while_sequential_25_input_while_cond_1303680___redundant_placeholder0]
Ysequential_25_input_while_sequential_25_input_while_cond_1303680___redundant_placeholder1]
Ysequential_25_input_while_sequential_25_input_while_cond_1303680___redundant_placeholder2]
Ysequential_25_input_while_sequential_25_input_while_cond_1303680___redundant_placeholder3&
"sequential_25_input_while_identity
²
sequential_25/input/while/LessLess%sequential_25_input_while_placeholderBsequential_25_input_while_less_sequential_25_input_strided_slice_1*
T0*
_output_shapes
: s
"sequential_25/input/while/IdentityIdentity"sequential_25/input/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_25_input_while_identity+sequential_25/input/while/Identity:output:0*(
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
#
ä
while_body_1304403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_45_1304427_0:2(.
while_lstm_cell_45_1304429_0:
(*
while_lstm_cell_45_1304431_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_45_1304427:2(,
while_lstm_cell_45_1304429:
((
while_lstm_cell_45_1304431:(¢*while/lstm_cell_45/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0º
*while/lstm_cell_45/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_45_1304427_0while_lstm_cell_45_1304429_0while_lstm_cell_45_1304431_0*
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
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1304389Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_45/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_45/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/Identity_5Identity3while/lstm_cell_45/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y

while/NoOpNoOp+^while/lstm_cell_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_45_1304427while_lstm_cell_45_1304427_0":
while_lstm_cell_45_1304429while_lstm_cell_45_1304429_0":
while_lstm_cell_45_1304431while_lstm_cell_45_1304431_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2X
*while/lstm_cell_45/StatefulPartitionedCall*while/lstm_cell_45/StatefulPartitionedCall: 
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
ª8

B__inference_input_layer_call_and_return_conditional_losses_1304122

inputs)
lstm_cell_44_1304040:áð'
lstm_cell_44_1304042:	<ð#
lstm_cell_44_1304044:	ð
identity¢$lstm_cell_44/StatefulPartitionedCall¢while;
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
shrink_axis_maskü
$lstm_cell_44/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_44_1304040lstm_cell_44_1304042lstm_cell_44_1304044*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1304039n
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
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_44_1304040lstm_cell_44_1304042lstm_cell_44_1304044*
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
bodyR
while_body_1304053*
condR
while_cond_1304052*K
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
NoOpNoOp%^lstm_cell_44/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(: ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá: : : 2L
$lstm_cell_44/StatefulPartitionedCall$lstm_cell_44/StatefulPartitionedCall2
whilewhile:^ Z
6
_output_shapes$
": ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá
 
_user_specified_nameinputs
¨8
Õ
while_body_1307041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
3while_lstm_cell_44_matmul_readvariableop_resource_0:áðH
5while_lstm_cell_44_matmul_1_readvariableop_resource_0:	<ðC
4while_lstm_cell_44_biasadd_readvariableop_resource_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
1while_lstm_cell_44_matmul_readvariableop_resource:áðF
3while_lstm_cell_44_matmul_1_readvariableop_resource:	<ðA
2while_lstm_cell_44_biasadd_readvariableop_resource:	ð¢)while/lstm_cell_44/BiasAdd/ReadVariableOp¢(while/lstm_cell_44/MatMul/ReadVariableOp¢*while/lstm_cell_44/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0
(while/lstm_cell_44/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_44_matmul_readvariableop_resource_0*!
_output_shapes
:áð*
dtype0º
while/lstm_cell_44/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_44/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð¡
*while/lstm_cell_44/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_44_matmul_1_readvariableop_resource_0*
_output_shapes
:	<ð*
dtype0¡
while/lstm_cell_44/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_44/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
while/lstm_cell_44/addAddV2#while/lstm_cell_44/MatMul:product:0%while/lstm_cell_44/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
)while/lstm_cell_44/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_44_biasadd_readvariableop_resource_0*
_output_shapes	
:ð*
dtype0§
while/lstm_cell_44/BiasAddBiasAddwhile/lstm_cell_44/add:z:01while/lstm_cell_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿðd
"while/lstm_cell_44/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_44/splitSplit+while/lstm_cell_44/split/split_dim:output:0#while/lstm_cell_44/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*
	num_splitz
while/lstm_cell_44/SigmoidSigmoid!while/lstm_cell_44/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_1Sigmoid!while/lstm_cell_44/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mulMul while/lstm_cell_44/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<t
while/lstm_cell_44/ReluRelu!while/lstm_cell_44/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_1Mulwhile/lstm_cell_44/Sigmoid:y:0%while/lstm_cell_44/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/add_1AddV2while/lstm_cell_44/mul:z:0while/lstm_cell_44/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<|
while/lstm_cell_44/Sigmoid_2Sigmoid!while/lstm_cell_44/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<q
while/lstm_cell_44/Relu_1Reluwhile/lstm_cell_44/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/lstm_cell_44/mul_2Mul while/lstm_cell_44/Sigmoid_2:y:0'while/lstm_cell_44/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_44/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_44/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y
while/Identity_5Identitywhile/lstm_cell_44/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<Ð

while/NoOpNoOp*^while/lstm_cell_44/BiasAdd/ReadVariableOp)^while/lstm_cell_44/MatMul/ReadVariableOp+^while/lstm_cell_44/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_44_biasadd_readvariableop_resource4while_lstm_cell_44_biasadd_readvariableop_resource_0"l
3while_lstm_cell_44_matmul_1_readvariableop_resource5while_lstm_cell_44_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_44_matmul_readvariableop_resource3while_lstm_cell_44_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2V
)while/lstm_cell_44/BiasAdd/ReadVariableOp)while/lstm_cell_44/BiasAdd/ReadVariableOp2T
(while/lstm_cell_44/MatMul/ReadVariableOp(while/lstm_cell_44/MatMul/ReadVariableOp2X
*while/lstm_cell_44/MatMul_1/ReadVariableOp*while/lstm_cell_44/MatMul_1/ReadVariableOp: 
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
8
Ë
while_body_1307451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_45_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_45_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_45_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_45_matmul_readvariableop_resource:2(E
3while_lstm_cell_45_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_45_biasadd_readvariableop_resource:(¢)while/lstm_cell_45/BiasAdd/ReadVariableOp¢(while/lstm_cell_45/MatMul/ReadVariableOp¢*while/lstm_cell_45/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ2   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
element_dtype0
(while/lstm_cell_45/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_45_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0¹
while/lstm_cell_45/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
*while/lstm_cell_45/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_45_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0 
while/lstm_cell_45/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_45/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
while/lstm_cell_45/addAddV2#while/lstm_cell_45/MatMul:product:0%while/lstm_cell_45/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
)while/lstm_cell_45/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_45_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¦
while/lstm_cell_45/BiasAddBiasAddwhile/lstm_cell_45/add:z:01while/lstm_cell_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(d
"while/lstm_cell_45/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
while/lstm_cell_45/splitSplit+while/lstm_cell_45/split/split_dim:output:0#while/lstm_cell_45/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*
	num_splitz
while/lstm_cell_45/SigmoidSigmoid!while/lstm_cell_45/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_1Sigmoid!while/lstm_cell_45/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mulMul while/lstm_cell_45/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_2Sigmoid!while/lstm_cell_45/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_1Mulwhile/lstm_cell_45/Sigmoid:y:0 while/lstm_cell_45/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/add_1AddV2while/lstm_cell_45/mul:z:0while/lstm_cell_45/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
|
while/lstm_cell_45/Sigmoid_3Sigmoid!while/lstm_cell_45/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
w
while/lstm_cell_45/Sigmoid_4Sigmoidwhile/lstm_cell_45/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

while/lstm_cell_45/mul_2Mul while/lstm_cell_45/Sigmoid_3:y:0 while/lstm_cell_45/Sigmoid_4:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_45/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_45/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
while/Identity_5Identitywhile/lstm_cell_45/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ð

while/NoOpNoOp*^while/lstm_cell_45/BiasAdd/ReadVariableOp)^while/lstm_cell_45/MatMul/ReadVariableOp+^while/lstm_cell_45/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_45_biasadd_readvariableop_resource4while_lstm_cell_45_biasadd_readvariableop_resource_0"l
3while_lstm_cell_45_matmul_1_readvariableop_resource5while_lstm_cell_45_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_45_matmul_readvariableop_resource3while_lstm_cell_45_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
: : : : : 2V
)while/lstm_cell_45/BiasAdd/ReadVariableOp)while/lstm_cell_45/BiasAdd/ReadVariableOp2T
(while/lstm_cell_45/MatMul/ReadVariableOp(while/lstm_cell_45/MatMul/ReadVariableOp2X
*while/lstm_cell_45/MatMul_1/ReadVariableOp*while/lstm_cell_45/MatMul_1/ReadVariableOp: 
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
º
È
while_cond_1307593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1307593___redundant_placeholder05
1while_while_cond_1307593___redundant_placeholder15
1while_while_cond_1307593___redundant_placeholder25
1while_while_cond_1307593___redundant_placeholder3
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
#
î
while_body_1304053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_lstm_cell_44_1304077_0:áð/
while_lstm_cell_44_1304079_0:	<ð+
while_lstm_cell_44_1304081_0:	ð
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_lstm_cell_44_1304077:áð-
while_lstm_cell_44_1304079:	<ð)
while_lstm_cell_44_1304081:	ð¢*while/lstm_cell_44/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿá ¨
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿá*
element_dtype0º
*while/lstm_cell_44/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_44_1304077_0while_lstm_cell_44_1304079_0while_lstm_cell_44_1304081_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1304039Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_44/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_44/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
while/Identity_5Identity3while/lstm_cell_44/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<y

while/NoOpNoOp+^while/lstm_cell_44/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_44_1304077while_lstm_cell_44_1304077_0":
while_lstm_cell_44_1304079while_lstm_cell_44_1304079_0":
while_lstm_cell_44_1304081while_lstm_cell_44_1304081_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<: : : : : 2X
*while/lstm_cell_44/StatefulPartitionedCall*while/lstm_cell_44/StatefulPartitionedCall: 
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
º
È
while_cond_1304402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304402___redundant_placeholder05
1while_while_cond_1304402___redundant_placeholder15
1while_while_cond_1304402___redundant_placeholder25
1while_while_cond_1304402___redundant_placeholder3
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
Þ

I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1304039

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
º
È
while_cond_1304243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304243___redundant_placeholder05
1while_while_cond_1304243___redundant_placeholder15
1while_while_cond_1304243___redundant_placeholder25
1while_while_cond_1304243___redundant_placeholder3
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
º
È
while_cond_1306611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1306611___redundant_placeholder05
1while_while_cond_1306611___redundant_placeholder15
1while_while_cond_1306611___redundant_placeholder25
1while_while_cond_1306611___redundant_placeholder3
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
æ 
ô
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305562

inputs"
input_1305527:áð 
input_1305529:	<ð
input_1305531:	ð 
layer1_1305534:<<
layer1_1305536:< 
layer2_1305539:<2
layer2_1305541:2 
layer3_1305544:2( 
layer3_1305546:
(
layer3_1305548:( 
layer4_1305551:

layer4_1305553: 
output_1305556:
output_1305558:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCallÿ
input/StatefulPartitionedCallStatefulPartitionedCallinputsinput_1305527input_1305529input_1305531*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_input_layer_call_and_return_conditional_losses_1305480
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_1305534layer1_1305536*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer1_layer_call_and_return_conditional_losses_1304860
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_1305539layer2_1305541*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer2_layer_call_and_return_conditional_losses_1304897¡
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_1305544layer3_1305546layer3_1305548*
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer3_layer_call_and_return_conditional_losses_1305295
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_1305551layer4_1305553*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer4_layer_call_and_return_conditional_losses_1305064
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_1305556output_1305558*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_1305081v
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
º
È
while_cond_1304593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304593___redundant_placeholder05
1while_while_cond_1304593___redundant_placeholder15
1while_while_cond_1304593___redundant_placeholder25
1while_while_cond_1304593___redundant_placeholder3
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
ö
ù
.__inference_lstm_cell_44_layer_call_fn_1307878

inputs
states_0
states_1
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity

identity_1

identity_2¢StatefulPartitionedCall¬
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
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1304039o
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
º
È
while_cond_1304960
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1304960___redundant_placeholder05
1while_while_cond_1304960___redundant_placeholder15
1while_while_cond_1304960___redundant_placeholder25
1while_while_cond_1304960___redundant_placeholder3
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
õ 
ù
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305702
input_input"
input_1305667:áð 
input_1305669:	<ð
input_1305671:	ð 
layer1_1305674:<<
layer1_1305676:< 
layer2_1305679:<2
layer2_1305681:2 
layer3_1305684:2( 
layer3_1305686:
(
layer3_1305688:( 
layer4_1305691:

layer4_1305693: 
output_1305696:
output_1305698:
identity¢input/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer2/StatefulPartitionedCall¢layer3/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢output/StatefulPartitionedCall
input/StatefulPartitionedCallStatefulPartitionedCallinput_inputinput_1305667input_1305669input_1305671*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_input_layer_call_and_return_conditional_losses_1305480
layer1/StatefulPartitionedCallStatefulPartitionedCall&input/StatefulPartitionedCall:output:0layer1_1305674layer1_1305676*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer1_layer_call_and_return_conditional_losses_1304860
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_1305679layer2_1305681*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer2_layer_call_and_return_conditional_losses_1304897¡
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_1305684layer3_1305686layer3_1305688*
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer3_layer_call_and_return_conditional_losses_1305295
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_1305691layer4_1305693*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer4_layer_call_and_return_conditional_losses_1305064
output/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0output_1305696output_1305698*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_1305081v
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
Ã

(__inference_layer4_layer_call_fn_1307830

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCallÛ
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
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_layer4_layer_call_and_return_conditional_losses_1305064o
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
¡
ú
C__inference_layer2_layer_call_and_return_conditional_losses_1304897

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
ö
ù
.__inference_lstm_cell_44_layer_call_fn_1307895

inputs
states_0
states_1
unknown:áð
	unknown_0:	<ð
	unknown_1:	ð
identity

identity_1

identity_2¢StatefulPartitionedCall¬
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
*0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1304185o
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
º
È
while_cond_1305395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1305395___redundant_placeholder05
1while_while_cond_1305395___redundant_placeholder15
1while_while_cond_1305395___redundant_placeholder25
1while_while_cond_1305395___redundant_placeholder3
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
¢
ú
C__inference_layer1_layer_call_and_return_conditional_losses_1307165

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
 
_user_specified_nameinputs"ÛL
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
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¡È
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
2
/__inference_sequential_25_layer_call_fn_1305119
/__inference_sequential_25_layer_call_fn_1305741
/__inference_sequential_25_layer_call_fn_1305774
/__inference_sequential_25_layer_call_fn_1305626À
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
ö2ó
J__inference_sequential_25_layer_call_and_return_conditional_losses_1306124
J__inference_sequential_25_layer_call_and_return_conditional_losses_1306474
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305664
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305702À
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
ÑBÎ
"__inference__wrapped_model_1303972input_input"
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
ÿ2ü
'__inference_input_layer_call_fn_1306520
'__inference_input_layer_call_fn_1306531
'__inference_input_layer_call_fn_1306542
'__inference_input_layer_call_fn_1306553Õ
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
B__inference_input_layer_call_and_return_conditional_losses_1306696
B__inference_input_layer_call_and_return_conditional_losses_1306839
B__inference_input_layer_call_and_return_conditional_losses_1306982
B__inference_input_layer_call_and_return_conditional_losses_1307125Õ
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
Ò2Ï
(__inference_layer1_layer_call_fn_1307134¢
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
í2ê
C__inference_layer1_layer_call_and_return_conditional_losses_1307165¢
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
Ò2Ï
(__inference_layer2_layer_call_fn_1307174¢
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
í2ê
C__inference_layer2_layer_call_and_return_conditional_losses_1307205¢
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
2
(__inference_layer3_layer_call_fn_1307216
(__inference_layer3_layer_call_fn_1307227
(__inference_layer3_layer_call_fn_1307238
(__inference_layer3_layer_call_fn_1307249Õ
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
ï2ì
C__inference_layer3_layer_call_and_return_conditional_losses_1307392
C__inference_layer3_layer_call_and_return_conditional_losses_1307535
C__inference_layer3_layer_call_and_return_conditional_losses_1307678
C__inference_layer3_layer_call_and_return_conditional_losses_1307821Õ
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
Ò2Ï
(__inference_layer4_layer_call_fn_1307830¢
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
í2ê
C__inference_layer4_layer_call_and_return_conditional_losses_1307841¢
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
Ò2Ï
(__inference_output_layer_call_fn_1307850¢
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
í2ê
C__inference_output_layer_call_and_return_conditional_losses_1307861¢
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
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
.:,áð2input/lstm_cell_44/kernel
6:4	<ð2#input/lstm_cell_44/recurrent_kernel
&:$ð2input/lstm_cell_44/bias
,:*2(2layer3/lstm_cell_45/kernel
6:4
(2$layer3/lstm_cell_45/recurrent_kernel
&:$(2layer3/lstm_cell_45/bias
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
ÐBÍ
%__inference_signature_wrapper_1306509input_input"
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
¤2¡
.__inference_lstm_cell_44_layer_call_fn_1307878
.__inference_lstm_cell_44_layer_call_fn_1307895¾
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
Ú2×
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1307927
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1307959¾
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
¤2¡
.__inference_lstm_cell_45_layer_call_fn_1307976
.__inference_lstm_cell_45_layer_call_fn_1307993¾
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
Ú2×
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1308025
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1308057¾
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
&:$<<2Adamax/layer1/kernel/m
 :<2Adamax/layer1/bias/m
&:$<22Adamax/layer2/kernel/m
 :22Adamax/layer2/bias/m
&:$
2Adamax/layer4/kernel/m
 :2Adamax/layer4/bias/m
&:$2Adamax/output/kernel/m
 :2Adamax/output/bias/m
5:3áð2"Adamax/input/lstm_cell_44/kernel/m
=:;	<ð2,Adamax/input/lstm_cell_44/recurrent_kernel/m
-:+ð2 Adamax/input/lstm_cell_44/bias/m
3:12(2#Adamax/layer3/lstm_cell_45/kernel/m
=:;
(2-Adamax/layer3/lstm_cell_45/recurrent_kernel/m
-:+(2!Adamax/layer3/lstm_cell_45/bias/m
&:$<<2Adamax/layer1/kernel/v
 :<2Adamax/layer1/bias/v
&:$<22Adamax/layer2/kernel/v
 :22Adamax/layer2/bias/v
&:$
2Adamax/layer4/kernel/v
 :2Adamax/layer4/bias/v
&:$2Adamax/output/kernel/v
 :2Adamax/output/bias/v
5:3áð2"Adamax/input/lstm_cell_44/kernel/v
=:;	<ð2,Adamax/input/lstm_cell_44/recurrent_kernel/v
-:+ð2 Adamax/input/lstm_cell_44/bias/v
3:12(2#Adamax/layer3/lstm_cell_45/kernel/v
=:;
(2-Adamax/layer3/lstm_cell_45/recurrent_kernel/v
-:+(2!Adamax/layer3/lstm_cell_45/bias/v£
"__inference__wrapped_model_1303972}GHI!"JKL23:;:¢7
0¢-
+(
input_inputÿÿÿÿÿÿÿÿÿá
ª "/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿÓ
B__inference_input_layer_call_and_return_conditional_losses_1306696GHIQ¢N
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
 Ó
B__inference_input_layer_call_and_return_conditional_losses_1306839GHIQ¢N
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
 ¹
B__inference_input_layer_call_and_return_conditional_losses_1306982sGHIA¢>
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
 ¹
B__inference_input_layer_call_and_return_conditional_losses_1307125sGHIA¢>
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
 ª
'__inference_input_layer_call_fn_1306520GHIQ¢N
G¢D
63
1.
inputs/0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<ª
'__inference_input_layer_call_fn_1306531GHIQ¢N
G¢D
63
1.
inputs/0 ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿá

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<
'__inference_input_layer_call_fn_1306542fGHIA¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿá

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ<
'__inference_input_layer_call_fn_1306553fGHIA¢>
7¢4
&#
inputsÿÿÿÿÿÿÿÿÿá

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ<«
C__inference_layer1_layer_call_and_return_conditional_losses_1307165d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ<
 
(__inference_layer1_layer_call_fn_1307134W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ<«
C__inference_layer2_layer_call_and_return_conditional_losses_1307205d!"3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ2
 
(__inference_layer2_layer_call_fn_1307174W!"3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ2Ä
C__inference_layer3_layer_call_and_return_conditional_losses_1307392}JKLO¢L
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
 Ä
C__inference_layer3_layer_call_and_return_conditional_losses_1307535}JKLO¢L
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
 ´
C__inference_layer3_layer_call_and_return_conditional_losses_1307678mJKL?¢<
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
 ´
C__inference_layer3_layer_call_and_return_conditional_losses_1307821mJKL?¢<
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
 
(__inference_layer3_layer_call_fn_1307216pJKLO¢L
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

(__inference_layer3_layer_call_fn_1307227pJKLO¢L
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

(__inference_layer3_layer_call_fn_1307238`JKL?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

(__inference_layer3_layer_call_fn_1307249`JKL?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ2

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
£
C__inference_layer4_layer_call_and_return_conditional_losses_1307841\23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_layer4_layer_call_fn_1307830O23/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿÍ
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1307927ÿGHI¢
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
 Í
I__inference_lstm_cell_44_layer_call_and_return_conditional_losses_1307959ÿGHI¢
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
 ¢
.__inference_lstm_cell_44_layer_call_fn_1307878ïGHI¢
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
1/1ÿÿÿÿÿÿÿÿÿ<¢
.__inference_lstm_cell_44_layer_call_fn_1307895ïGHI¢
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
1/1ÿÿÿÿÿÿÿÿÿ<Ë
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1308025ýJKL¢}
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
 Ë
I__inference_lstm_cell_45_layer_call_and_return_conditional_losses_1308057ýJKL¢}
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
  
.__inference_lstm_cell_45_layer_call_fn_1307976íJKL¢}
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
 
.__inference_lstm_cell_45_layer_call_fn_1307993íJKL¢}
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
£
C__inference_output_layer_call_and_return_conditional_losses_1307861\:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_output_layer_call_fn_1307850O:;/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÉ
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305664{GHI!"JKL23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 É
J__inference_sequential_25_layer_call_and_return_conditional_losses_1305702{GHI!"JKL23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
J__inference_sequential_25_layer_call_and_return_conditional_losses_1306124vGHI!"JKL23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
J__inference_sequential_25_layer_call_and_return_conditional_losses_1306474vGHI!"JKL23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¡
/__inference_sequential_25_layer_call_fn_1305119nGHI!"JKL23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¡
/__inference_sequential_25_layer_call_fn_1305626nGHI!"JKL23:;B¢?
8¢5
+(
input_inputÿÿÿÿÿÿÿÿÿá
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_1305741iGHI!"JKL23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_25_layer_call_fn_1305774iGHI!"JKL23:;=¢:
3¢0
&#
inputsÿÿÿÿÿÿÿÿÿá
p

 
ª "ÿÿÿÿÿÿÿÿÿ¶
%__inference_signature_wrapper_1306509GHI!"JKL23:;I¢F
¢ 
?ª<
:
input_input+(
input_inputÿÿÿÿÿÿÿÿÿá"/ª,
*
output 
outputÿÿÿÿÿÿÿÿÿ