       ЃK"	  Ђ^жAbrain.Event:2hEЦYGд     7ШТЅ	іћЈЂ^жA"КЈ
|
Input/PlaceholderPlaceholder*+
_output_shapes
:џџџџџџџџџ * 
shape:џџџџџџџџџ *
dtype0
u
Target/PlaceholderPlaceholder*'
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0
g
"controll_normalization/PlaceholderPlaceholder*
shape:*
dtype0
*
_output_shapes
:
^
Flatten/ShapeShapeInput/Placeholder*
out_type0*
_output_shapes
:*
T0
]
Flatten/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
\
Flatten/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0

Flatten/SliceSliceFlatten/ShapeFlatten/Slice/beginFlatten/Slice/size*
_output_shapes
:*
T0*
Index0
_
Flatten/Slice_1/beginConst*
valueB:*
dtype0*
_output_shapes
:
^
Flatten/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Flatten/Slice_1SliceFlatten/ShapeFlatten/Slice_1/beginFlatten/Slice_1/size*
_output_shapes
:*
T0*
Index0
W
Flatten/ConstConst*
valueB: *
_output_shapes
:*
dtype0
r
Flatten/ProdProdFlatten/Slice_1Flatten/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
X
Flatten/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
w
Flatten/ExpandDims
ExpandDimsFlatten/ProdFlatten/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
U
Flatten/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0

Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
~
Flatten/ReshapeReshapeInput/PlaceholderFlatten/concat*
Tshape0*(
_output_shapes
:џџџџџџџџџ*
T0
f
!classification_layers/PlaceholderPlaceholder*
shape:*
dtype0*
_output_shapes
:
л
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB"   d   *
dtype0*
_output_shapes
:
Ю
Kclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/meanConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
а
Mclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddevConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Х
Vclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shape*
T0*
_output_shapes
:	d*

seed *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
seed2 
р
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	d*
T0
Ю
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	d
н
)classification_layers/dense0/dense/kernel
VariableV2*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	d*
shape:	d*
dtype0*
shared_name *
	container 
О
0classification_layers/dense0/dense/kernel/AssignAssign)classification_layers/dense0/dense/kernelFclassification_layers/dense0/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
:	d
Э
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	d*
T0
Т
9classification_layers/dense0/dense/bias/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
Я
'classification_layers/dense0/dense/bias
VariableV2*
shape:d*
_output_shapes
:d*
shared_name *:
_class0
.,loc:@classification_layers/dense0/dense/bias*
dtype0*
	container 
І
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
validate_shape(*
_output_shapes
:d
Т
,classification_layers/dense0/dense/bias/readIdentity'classification_layers/dense0/dense/bias*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d*
T0
Ь
)classification_layers/dense0/dense/MatMulMatMulFlatten/Reshape.classification_layers/dense0/dense/kernel/read*
transpose_b( *'
_output_shapes
:џџџџџџџџџd*
transpose_a( *
T0
з
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџd
о
Gclassification_layers/dense0/batch_normalization/beta/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    *
_output_shapes
:d*
dtype0
ы
5classification_layers/dense0/batch_normalization/beta
VariableV2*
shared_name *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
	container *
shape:d*
dtype0*
_output_shapes
:d
о
<classification_layers/dense0/batch_normalization/beta/AssignAssign5classification_layers/dense0/batch_normalization/betaGclassification_layers/dense0/batch_normalization/beta/Initializer/zeros*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
ь
:classification_layers/dense0/batch_normalization/beta/readIdentity5classification_layers/dense0/batch_normalization/beta*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d*
T0
п
Gclassification_layers/dense0/batch_normalization/gamma/Initializer/onesConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*  ?*
dtype0*
_output_shapes
:d
э
6classification_layers/dense0/batch_normalization/gamma
VariableV2*
	container *
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
shape:d*
shared_name 
с
=classification_layers/dense0/batch_normalization/gamma/AssignAssign6classification_layers/dense0/batch_normalization/gammaGclassification_layers/dense0/batch_normalization/gamma/Initializer/ones*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
я
;classification_layers/dense0/batch_normalization/gamma/readIdentity6classification_layers/dense0/batch_normalization/gamma*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d
ь
Nclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zerosConst*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
valueBd*    *
_output_shapes
:d*
dtype0
љ
<classification_layers/dense0/batch_normalization/moving_mean
VariableV2*
shared_name *O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
	container *
shape:d*
dtype0*
_output_shapes
:d
њ
Cclassification_layers/dense0/batch_normalization/moving_mean/AssignAssign<classification_layers/dense0/batch_normalization/moving_meanNclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:d

Aclassification_layers/dense0/batch_normalization/moving_mean/readIdentity<classification_layers/dense0/batch_normalization/moving_mean*
T0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:d
ѓ
Qclassification_layers/dense0/batch_normalization/moving_variance/Initializer/onesConst*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
valueBd*  ?*
dtype0*
_output_shapes
:d

@classification_layers/dense0/batch_normalization/moving_variance
VariableV2*
	container *
dtype0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d*
shape:d*
shared_name 

Gclassification_layers/dense0/batch_normalization/moving_variance/AssignAssign@classification_layers/dense0/batch_normalization/moving_varianceQclassification_layers/dense0/batch_normalization/moving_variance/Initializer/ones*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(

Eclassification_layers/dense0/batch_normalization/moving_variance/readIdentity@classification_layers/dense0/batch_normalization/moving_variance*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d

Oclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0

=classification_layers/dense0/batch_normalization/moments/MeanMean*classification_layers/dense0/dense/BiasAddOclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indices*
_output_shapes

:d*
T0*
	keep_dims(*

Tidx0
Н
Eclassification_layers/dense0/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense0/batch_normalization/moments/Mean*
_output_shapes

:d*
T0
ш
<classification_layers/dense0/batch_normalization/moments/SubSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџd
Ё
Wclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
Њ
Eclassification_layers/dense0/batch_normalization/moments/shifted_meanMean<classification_layers/dense0/batch_normalization/moments/SubWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:d

Jclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџd

Qclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
Ќ
?classification_layers/dense0/batch_normalization/moments/Mean_1MeanJclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:d
Й
?classification_layers/dense0/batch_normalization/moments/SquareSquareEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
_output_shapes

:d*
T0
ѓ
Aclassification_layers/dense0/batch_normalization/moments/varianceSub?classification_layers/dense0/batch_normalization/moments/Mean_1?classification_layers/dense0/batch_normalization/moments/Square*
_output_shapes

:d*
T0
ћ
=classification_layers/dense0/batch_normalization/moments/meanAddEclassification_layers/dense0/batch_normalization/moments/shifted_meanEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*
_output_shapes

:d
Ц
@classification_layers/dense0/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense0/batch_normalization/moments/mean*
squeeze_dims
 *
_output_shapes
:d*
T0
Ь
Bclassification_layers/dense0/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense0/batch_normalization/moments/variance*
squeeze_dims
 *
_output_shapes
:d*
T0

?classification_layers/dense0/batch_normalization/ExpandDims/dimConst*
value	B : *
_output_shapes
: *
dtype0

;classification_layers/dense0/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense0/batch_normalization/moments/Squeeze?classification_layers/dense0/batch_normalization/ExpandDims/dim*

Tdim0*
_output_shapes

:d*
T0

Aclassification_layers/dense0/batch_normalization/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

=classification_layers/dense0/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense0/batch_normalization/moving_mean/readAclassification_layers/dense0/batch_normalization/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:d

>classification_layers/dense0/batch_normalization/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
к
8classification_layers/dense0/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense0/batch_normalization/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
 
7classification_layers/dense0/batch_normalization/SelectSelect8classification_layers/dense0/batch_normalization/Reshape;classification_layers/dense0/batch_normalization/ExpandDims=classification_layers/dense0/batch_normalization/ExpandDims_1*
_output_shapes

:d*
T0
И
8classification_layers/dense0/batch_normalization/SqueezeSqueeze7classification_layers/dense0/batch_normalization/Select*
squeeze_dims
 *
T0*
_output_shapes
:d

Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 

=classification_layers/dense0/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense0/batch_normalization/moments/Squeeze_1Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dim*

Tdim0*
_output_shapes

:d*
T0

Aclassification_layers/dense0/batch_normalization/ExpandDims_3/dimConst*
value	B : *
_output_shapes
: *
dtype0

=classification_layers/dense0/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense0/batch_normalization/moving_variance/readAclassification_layers/dense0/batch_normalization/ExpandDims_3/dim*

Tdim0*
_output_shapes

:d*
T0

@classification_layers/dense0/batch_normalization/Reshape_1/shapeConst*
valueB:*
dtype0*
_output_shapes
:
о
:classification_layers/dense0/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_1/shape*
Tshape0*
_output_shapes
:*
T0

І
9classification_layers/dense0/batch_normalization/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1=classification_layers/dense0/batch_normalization/ExpandDims_2=classification_layers/dense0/batch_normalization/ExpandDims_3*
_output_shapes

:d*
T0
М
:classification_layers/dense0/batch_normalization/Squeeze_1Squeeze9classification_layers/dense0/batch_normalization/Select_1*
squeeze_dims
 *
_output_shapes
:d*
T0

Cclassification_layers/dense0/batch_normalization/ExpandDims_4/inputConst*
valueB
 *Єp}?*
_output_shapes
: *
dtype0

Aclassification_layers/dense0/batch_normalization/ExpandDims_4/dimConst*
value	B : *
dtype0*
_output_shapes
: 

=classification_layers/dense0/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*

Tdim0*
_output_shapes
:*
T0

Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Aclassification_layers/dense0/batch_normalization/ExpandDims_5/dimConst*
value	B : *
_output_shapes
: *
dtype0

=classification_layers/dense0/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_5/inputAclassification_layers/dense0/batch_normalization/ExpandDims_5/dim*

Tdim0*
T0*
_output_shapes
:

@classification_layers/dense0/batch_normalization/Reshape_2/shapeConst*
valueB:*
dtype0*
_output_shapes
:
о
:classification_layers/dense0/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_2/shape*
T0
*
Tshape0*
_output_shapes
:
Ђ
9classification_layers/dense0/batch_normalization/Select_2Select:classification_layers/dense0/batch_normalization/Reshape_2=classification_layers/dense0/batch_normalization/ExpandDims_4=classification_layers/dense0/batch_normalization/ExpandDims_5*
_output_shapes
:*
T0
И
:classification_layers/dense0/batch_normalization/Squeeze_2Squeeze9classification_layers/dense0/batch_normalization/Select_2*
squeeze_dims
 *
_output_shapes
: *
T0
м
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/xConst*
valueB
 *  ?*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
: *
dtype0
С
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
: *
T0
Р
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense0/batch_normalization/moving_mean/read8classification_layers/dense0/batch_normalization/Squeeze*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:d*
T0
Я
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:d*
T0
к
@classification_layers/dense0/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense0/batch_normalization/moving_meanDclassification_layers/dense0/batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:d
т
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/xConst*
valueB
 *  ?*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
Щ
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
: 
Ь
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense0/batch_normalization/moving_variance/read:classification_layers/dense0/batch_normalization/Squeeze_1*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d*
T0
й
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d*
T0
ц
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense0/batch_normalization/moving_varianceFclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mul*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d*
T0*
use_locking( 

@classification_layers/dense0/batch_normalization/batchnorm/add/yConst*
valueB
 *o:*
_output_shapes
: *
dtype0
ш
>classification_layers/dense0/batch_normalization/batchnorm/addAdd:classification_layers/dense0/batch_normalization/Squeeze_1@classification_layers/dense0/batch_normalization/batchnorm/add/y*
_output_shapes
:d*
T0
Ў
@classification_layers/dense0/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense0/batch_normalization/batchnorm/add*
T0*
_output_shapes
:d
щ
>classification_layers/dense0/batch_normalization/batchnorm/mulMul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrt;classification_layers/dense0/batch_normalization/gamma/read*
_output_shapes
:d*
T0
х
@classification_layers/dense0/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense0/dense/BiasAdd>classification_layers/dense0/batch_normalization/batchnorm/mul*'
_output_shapes
:џџџџџџџџџd*
T0
ц
@classification_layers/dense0/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense0/batch_normalization/Squeeze>classification_layers/dense0/batch_normalization/batchnorm/mul*
_output_shapes
:d*
T0
ш
>classification_layers/dense0/batch_normalization/batchnorm/subSub:classification_layers/dense0/batch_normalization/beta/read@classification_layers/dense0/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:d
ћ
@classification_layers/dense0/batch_normalization/batchnorm/add_1Add@classification_layers/dense0/batch_normalization/batchnorm/mul_1>classification_layers/dense0/batch_normalization/batchnorm/sub*'
_output_shapes
:џџџџџџџџџd*
T0
Ѓ
$classification_layers/dense0/SigmoidSigmoid@classification_layers/dense0/batch_normalization/batchnorm/add_1*
T0*'
_output_shapes
:џџџџџџџџџd

*classification_layers/dense0/dropout/ShapeShape$classification_layers/dense0/Sigmoid*
out_type0*
_output_shapes
:*
T0
|
7classification_layers/dense0/dropout/random_uniform/minConst*
valueB
 *    *
_output_shapes
: *
dtype0
|
7classification_layers/dense0/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ж
Aclassification_layers/dense0/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense0/dropout/Shape*

seed *
T0*
dtype0*'
_output_shapes
:џџџџџџџџџd*
seed2 
б
7classification_layers/dense0/dropout/random_uniform/subSub7classification_layers/dense0/dropout/random_uniform/max7classification_layers/dense0/dropout/random_uniform/min*
_output_shapes
: *
T0
ь
7classification_layers/dense0/dropout/random_uniform/mulMulAclassification_layers/dense0/dropout/random_uniform/RandomUniform7classification_layers/dense0/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџd
о
3classification_layers/dense0/dropout/random_uniformAdd7classification_layers/dense0/dropout/random_uniform/mul7classification_layers/dense0/dropout/random_uniform/min*'
_output_shapes
:џџџџџџџџџd*
T0
Њ
(classification_layers/dense0/dropout/addAdd!classification_layers/Placeholder3classification_layers/dense0/dropout/random_uniform*
_output_shapes
:*
T0

*classification_layers/dense0/dropout/FloorFloor(classification_layers/dense0/dropout/add*
_output_shapes
:*
T0

(classification_layers/dense0/dropout/divRealDiv$classification_layers/dense0/Sigmoid!classification_layers/Placeholder*
_output_shapes
:*
T0
З
(classification_layers/dense0/dropout/mulMul(classification_layers/dense0/dropout/div*classification_layers/dense0/dropout/Floor*'
_output_shapes
:џџџџџџџџџd*
T0
л
Lclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/shapeConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB"d   2   *
_output_shapes
:*
dtype0
Ю
Kclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/meanConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB
 *    *
_output_shapes
: *
dtype0
а
Mclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/stddevConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ф
Vclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/shape*
seed2 *
T0*

seed *
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2
п
Jclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/stddev*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
T0
Э
Fclassification_layers/dense1/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mean*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
T0
л
)classification_layers/dense1/dense/kernel
VariableV2*
	container *
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
shape
:d2*
shared_name 
Н
0classification_layers/dense1/dense/kernel/AssignAssign)classification_layers/dense1/dense/kernelFclassification_layers/dense1/dense/kernel/Initializer/truncated_normal*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
T0*
validate_shape(*
use_locking(
Ь
.classification_layers/dense1/dense/kernel/readIdentity)classification_layers/dense1/dense/kernel*
T0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2
Т
9classification_layers/dense1/dense/bias/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    *
dtype0*
_output_shapes
:2
Я
'classification_layers/dense1/dense/bias
VariableV2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
shape:2*
dtype0*
shared_name *
	container 
І
.classification_layers/dense1/dense/bias/AssignAssign'classification_layers/dense1/dense/bias9classification_layers/dense1/dense/bias/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
validate_shape(*
_output_shapes
:2
Т
,classification_layers/dense1/dense/bias/readIdentity'classification_layers/dense1/dense/bias*
T0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2
х
)classification_layers/dense1/dense/MatMulMatMul(classification_layers/dense0/dropout/mul.classification_layers/dense1/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ2*
transpose_a( 
з
*classification_layers/dense1/dense/BiasAddBiasAdd)classification_layers/dense1/dense/MatMul,classification_layers/dense1/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:џџџџџџџџџ2
о
Gclassification_layers/dense1/batch_normalization/beta/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    *
dtype0*
_output_shapes
:2
ы
5classification_layers/dense1/batch_normalization/beta
VariableV2*
shared_name *H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
	container *
shape:2*
dtype0*
_output_shapes
:2
о
<classification_layers/dense1/batch_normalization/beta/AssignAssign5classification_layers/dense1/batch_normalization/betaGclassification_layers/dense1/batch_normalization/beta/Initializer/zeros*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
ь
:classification_layers/dense1/batch_normalization/beta/readIdentity5classification_layers/dense1/batch_normalization/beta*
T0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2
п
Gclassification_layers/dense1/batch_normalization/gamma/Initializer/onesConst*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*  ?*
_output_shapes
:2*
dtype0
э
6classification_layers/dense1/batch_normalization/gamma
VariableV2*
shape:2*
_output_shapes
:2*
shared_name *I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
dtype0*
	container 
с
=classification_layers/dense1/batch_normalization/gamma/AssignAssign6classification_layers/dense1/batch_normalization/gammaGclassification_layers/dense1/batch_normalization/gamma/Initializer/ones*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
я
;classification_layers/dense1/batch_normalization/gamma/readIdentity6classification_layers/dense1/batch_normalization/gamma*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0
ь
Nclassification_layers/dense1/batch_normalization/moving_mean/Initializer/zerosConst*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
valueB2*    *
_output_shapes
:2*
dtype0
љ
<classification_layers/dense1/batch_normalization/moving_mean
VariableV2*
shared_name *O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
	container *
shape:2*
dtype0*
_output_shapes
:2
њ
Cclassification_layers/dense1/batch_normalization/moving_mean/AssignAssign<classification_layers/dense1/batch_normalization/moving_meanNclassification_layers/dense1/batch_normalization/moving_mean/Initializer/zeros*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(

Aclassification_layers/dense1/batch_normalization/moving_mean/readIdentity<classification_layers/dense1/batch_normalization/moving_mean*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2*
T0
ѓ
Qclassification_layers/dense1/batch_normalization/moving_variance/Initializer/onesConst*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
valueB2*  ?*
_output_shapes
:2*
dtype0

@classification_layers/dense1/batch_normalization/moving_variance
VariableV2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2*
shape:2*
dtype0*
shared_name *
	container 

Gclassification_layers/dense1/batch_normalization/moving_variance/AssignAssign@classification_layers/dense1/batch_normalization/moving_varianceQclassification_layers/dense1/batch_normalization/moving_variance/Initializer/ones*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(

Eclassification_layers/dense1/batch_normalization/moving_variance/readIdentity@classification_layers/dense1/batch_normalization/moving_variance*
T0*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2

Oclassification_layers/dense1/batch_normalization/moments/Mean/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0

=classification_layers/dense1/batch_normalization/moments/MeanMean*classification_layers/dense1/dense/BiasAddOclassification_layers/dense1/batch_normalization/moments/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:2
Н
Eclassification_layers/dense1/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense1/batch_normalization/moments/Mean*
_output_shapes

:2*
T0
ш
<classification_layers/dense1/batch_normalization/moments/SubSub*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ2
Ё
Wclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
Њ
Eclassification_layers/dense1/batch_normalization/moments/shifted_meanMean<classification_layers/dense1/batch_normalization/moments/SubWclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:2

Jclassification_layers/dense1/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџ2

Qclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
Ќ
?classification_layers/dense1/batch_normalization/moments/Mean_1MeanJclassification_layers/dense1/batch_normalization/moments/SquaredDifferenceQclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indices*
_output_shapes

:2*
T0*
	keep_dims(*

Tidx0
Й
?classification_layers/dense1/batch_normalization/moments/SquareSquareEclassification_layers/dense1/batch_normalization/moments/shifted_mean*
T0*
_output_shapes

:2
ѓ
Aclassification_layers/dense1/batch_normalization/moments/varianceSub?classification_layers/dense1/batch_normalization/moments/Mean_1?classification_layers/dense1/batch_normalization/moments/Square*
_output_shapes

:2*
T0
ћ
=classification_layers/dense1/batch_normalization/moments/meanAddEclassification_layers/dense1/batch_normalization/moments/shifted_meanEclassification_layers/dense1/batch_normalization/moments/StopGradient*
_output_shapes

:2*
T0
Ц
@classification_layers/dense1/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense1/batch_normalization/moments/mean*
squeeze_dims
 *
_output_shapes
:2*
T0
Ь
Bclassification_layers/dense1/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense1/batch_normalization/moments/variance*
squeeze_dims
 *
_output_shapes
:2*
T0

?classification_layers/dense1/batch_normalization/ExpandDims/dimConst*
value	B : *
_output_shapes
: *
dtype0

;classification_layers/dense1/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense1/batch_normalization/moments/Squeeze?classification_layers/dense1/batch_normalization/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:2

Aclassification_layers/dense1/batch_normalization/ExpandDims_1/dimConst*
value	B : *
_output_shapes
: *
dtype0

=classification_layers/dense1/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense1/batch_normalization/moving_mean/readAclassification_layers/dense1/batch_normalization/ExpandDims_1/dim*

Tdim0*
_output_shapes

:2*
T0

>classification_layers/dense1/batch_normalization/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
к
8classification_layers/dense1/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense1/batch_normalization/Reshape/shape*
Tshape0*
_output_shapes
:*
T0

 
7classification_layers/dense1/batch_normalization/SelectSelect8classification_layers/dense1/batch_normalization/Reshape;classification_layers/dense1/batch_normalization/ExpandDims=classification_layers/dense1/batch_normalization/ExpandDims_1*
_output_shapes

:2*
T0
И
8classification_layers/dense1/batch_normalization/SqueezeSqueeze7classification_layers/dense1/batch_normalization/Select*
squeeze_dims
 *
T0*
_output_shapes
:2

Aclassification_layers/dense1/batch_normalization/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 

=classification_layers/dense1/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense1/batch_normalization/moments/Squeeze_1Aclassification_layers/dense1/batch_normalization/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes

:2

Aclassification_layers/dense1/batch_normalization/ExpandDims_3/dimConst*
value	B : *
_output_shapes
: *
dtype0

=classification_layers/dense1/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense1/batch_normalization/moving_variance/readAclassification_layers/dense1/batch_normalization/ExpandDims_3/dim*

Tdim0*
T0*
_output_shapes

:2

@classification_layers/dense1/batch_normalization/Reshape_1/shapeConst*
valueB:*
_output_shapes
:*
dtype0
о
:classification_layers/dense1/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense1/batch_normalization/Reshape_1/shape*
Tshape0*
_output_shapes
:*
T0

І
9classification_layers/dense1/batch_normalization/Select_1Select:classification_layers/dense1/batch_normalization/Reshape_1=classification_layers/dense1/batch_normalization/ExpandDims_2=classification_layers/dense1/batch_normalization/ExpandDims_3*
T0*
_output_shapes

:2
М
:classification_layers/dense1/batch_normalization/Squeeze_1Squeeze9classification_layers/dense1/batch_normalization/Select_1*
squeeze_dims
 *
_output_shapes
:2*
T0

Cclassification_layers/dense1/batch_normalization/ExpandDims_4/inputConst*
valueB
 *Єp}?*
dtype0*
_output_shapes
: 

Aclassification_layers/dense1/batch_normalization/ExpandDims_4/dimConst*
value	B : *
dtype0*
_output_shapes
: 

=classification_layers/dense1/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense1/batch_normalization/ExpandDims_4/inputAclassification_layers/dense1/batch_normalization/ExpandDims_4/dim*

Tdim0*
T0*
_output_shapes
:

Cclassification_layers/dense1/batch_normalization/ExpandDims_5/inputConst*
valueB
 *  ?*
_output_shapes
: *
dtype0

Aclassification_layers/dense1/batch_normalization/ExpandDims_5/dimConst*
value	B : *
dtype0*
_output_shapes
: 

=classification_layers/dense1/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense1/batch_normalization/ExpandDims_5/inputAclassification_layers/dense1/batch_normalization/ExpandDims_5/dim*

Tdim0*
T0*
_output_shapes
:

@classification_layers/dense1/batch_normalization/Reshape_2/shapeConst*
valueB:*
_output_shapes
:*
dtype0
о
:classification_layers/dense1/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense1/batch_normalization/Reshape_2/shape*
T0
*
Tshape0*
_output_shapes
:
Ђ
9classification_layers/dense1/batch_normalization/Select_2Select:classification_layers/dense1/batch_normalization/Reshape_2=classification_layers/dense1/batch_normalization/ExpandDims_4=classification_layers/dense1/batch_normalization/ExpandDims_5*
_output_shapes
:*
T0
И
:classification_layers/dense1/batch_normalization/Squeeze_2Squeeze9classification_layers/dense1/batch_normalization/Select_2*
squeeze_dims
 *
_output_shapes
: *
T0
м
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub/xConst*
valueB
 *  ?*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
: *
dtype0
С
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense1/batch_normalization/Squeeze_2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
: *
T0
Р
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense1/batch_normalization/moving_mean/read8classification_layers/dense1/batch_normalization/Squeeze*
T0*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2
Я
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2*
T0
к
@classification_layers/dense1/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense1/batch_normalization/moving_meanDclassification_layers/dense1/batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2
т
Hclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub/xConst*
valueB
 *  ?*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
: *
dtype0
Щ
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense1/batch_normalization/Squeeze_2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
: *
T0
Ь
Hclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense1/batch_normalization/moving_variance/read:classification_layers/dense1/batch_normalization/Squeeze_1*
T0*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2
й
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub*
T0*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2
ц
Bclassification_layers/dense1/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense1/batch_normalization/moving_varianceFclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/mul*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2*
T0*
use_locking( 

@classification_layers/dense1/batch_normalization/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
ш
>classification_layers/dense1/batch_normalization/batchnorm/addAdd:classification_layers/dense1/batch_normalization/Squeeze_1@classification_layers/dense1/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:2
Ў
@classification_layers/dense1/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense1/batch_normalization/batchnorm/add*
T0*
_output_shapes
:2
щ
>classification_layers/dense1/batch_normalization/batchnorm/mulMul@classification_layers/dense1/batch_normalization/batchnorm/Rsqrt;classification_layers/dense1/batch_normalization/gamma/read*
_output_shapes
:2*
T0
х
@classification_layers/dense1/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense1/dense/BiasAdd>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ2
ц
@classification_layers/dense1/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense1/batch_normalization/Squeeze>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:2
ш
>classification_layers/dense1/batch_normalization/batchnorm/subSub:classification_layers/dense1/batch_normalization/beta/read@classification_layers/dense1/batch_normalization/batchnorm/mul_2*
_output_shapes
:2*
T0
ћ
@classification_layers/dense1/batch_normalization/batchnorm/add_1Add@classification_layers/dense1/batch_normalization/batchnorm/mul_1>classification_layers/dense1/batch_normalization/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџ2
Ѓ
$classification_layers/dense1/SigmoidSigmoid@classification_layers/dense1/batch_normalization/batchnorm/add_1*'
_output_shapes
:џџџџџџџџџ2*
T0

*classification_layers/dense1/dropout/ShapeShape$classification_layers/dense1/Sigmoid*
T0*
out_type0*
_output_shapes
:
|
7classification_layers/dense1/dropout/random_uniform/minConst*
valueB
 *    *
_output_shapes
: *
dtype0
|
7classification_layers/dense1/dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ж
Aclassification_layers/dense1/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense1/dropout/Shape*

seed *
T0*
dtype0*'
_output_shapes
:џџџџџџџџџ2*
seed2 
б
7classification_layers/dense1/dropout/random_uniform/subSub7classification_layers/dense1/dropout/random_uniform/max7classification_layers/dense1/dropout/random_uniform/min*
T0*
_output_shapes
: 
ь
7classification_layers/dense1/dropout/random_uniform/mulMulAclassification_layers/dense1/dropout/random_uniform/RandomUniform7classification_layers/dense1/dropout/random_uniform/sub*
T0*'
_output_shapes
:џџџџџџџџџ2
о
3classification_layers/dense1/dropout/random_uniformAdd7classification_layers/dense1/dropout/random_uniform/mul7classification_layers/dense1/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџ2
Њ
(classification_layers/dense1/dropout/addAdd!classification_layers/Placeholder3classification_layers/dense1/dropout/random_uniform*
_output_shapes
:*
T0

*classification_layers/dense1/dropout/FloorFloor(classification_layers/dense1/dropout/add*
_output_shapes
:*
T0

(classification_layers/dense1/dropout/divRealDiv$classification_layers/dense1/Sigmoid!classification_layers/Placeholder*
_output_shapes
:*
T0
З
(classification_layers/dense1/dropout/mulMul(classification_layers/dense1/dropout/div*classification_layers/dense1/dropout/Floor*'
_output_shapes
:џџџџџџџџџ2*
T0
у
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"2      *
dtype0*
_output_shapes
:
ж
Oclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/meanConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *    *
_output_shapes
: *
dtype0
и
Qclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddevConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
а
Zclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shape*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0*
dtype0*
seed2 *

seed 
я
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0
н
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2
у
-classification_layers/dense_last/dense/kernel
VariableV2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
shape
:2*
dtype0*
shared_name *
	container 
Э
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes

:2
и
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0
Ъ
=classification_layers/dense_last/dense/bias/Initializer/zerosConst*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    *
_output_shapes
:*
dtype0
з
+classification_layers/dense_last/dense/bias
VariableV2*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
shape:*
dtype0*
shared_name *
	container 
Ж
2classification_layers/dense_last/dense/bias/AssignAssign+classification_layers/dense_last/dense/bias=classification_layers/dense_last/dense/bias/Initializer/zeros*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
Ю
0classification_layers/dense_last/dense/bias/readIdentity+classification_layers/dense_last/dense/bias*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0
э
-classification_layers/dense_last/dense/MatMulMatMul(classification_layers/dense1/dropout/mul2classification_layers/dense_last/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:џџџџџџџџџ*
transpose_a( 
у
.classification_layers/dense_last/dense/BiasAddBiasAdd-classification_layers/dense_last/dense/MatMul0classification_layers/dense_last/dense/bias/read*'
_output_shapes
:џџџџџџџџџ*
T0*
data_formatNHWC

classification_layers/SoftmaxSoftmax.classification_layers/dense_last/dense/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
n
)Evaluation_layers/clip_by_value/Minimum/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ў
'Evaluation_layers/clip_by_value/MinimumMinimumclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ
f
!Evaluation_layers/clip_by_value/yConst*
valueB
 *џцл.*
_output_shapes
: *
dtype0
Ј
Evaluation_layers/clip_by_valueMaximum'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ
o
Evaluation_layers/LogLogEvaluation_layers/clip_by_value*'
_output_shapes
:џџџџџџџџџ*
T0
y
Evaluation_layers/mulMulTarget/PlaceholderEvaluation_layers/Log*
T0*'
_output_shapes
:џџџџџџџџџ
q
'Evaluation_layers/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ї
Evaluation_layers/SumSumEvaluation_layers/mul'Evaluation_layers/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
a
Evaluation_layers/NegNegEvaluation_layers/Sum*#
_output_shapes
:џџџџџџџџџ*
T0
a
Evaluation_layers/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Evaluation_layers/MeanMeanEvaluation_layers/NegEvaluation_layers/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
d
"Evaluation_layers/ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0

Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
f
$Evaluation_layers/ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0

Evaluation_layers/ArgMax_1ArgMaxTarget/Placeholder$Evaluation_layers/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ

Evaluation_layers/EqualEqualEvaluation_layers/ArgMaxEvaluation_layers/ArgMax_1*
T0	*#
_output_shapes
:џџџџџџџџџ
|
Evaluation_layers/accracy/CastCastEvaluation_layers/Equal*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

i
Evaluation_layers/accracy/ConstConst*
valueB: *
_output_shapes
:*
dtype0
Ѕ
Evaluation_layers/accracy/MeanMeanEvaluation_layers/accracy/CastEvaluation_layers/accracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
z
Evaluation_layers/accuracy/tagsConst*+
value"B  BEvaluation_layers/accuracy*
_output_shapes
: *
dtype0

Evaluation_layers/accuracyScalarSummaryEvaluation_layers/accuracy/tagsEvaluation_layers/accracy/Mean*
T0*
_output_shapes
: 
r
Evaluation_layers/loss/tagsConst*'
valueB BEvaluation_layers/loss*
dtype0*
_output_shapes
: 
}
Evaluation_layers/lossScalarSummaryEvaluation_layers/loss/tagsEvaluation_layers/Mean*
_output_shapes
: *
T0
~
!Evaluation_layers/accuracy_1/tagsConst*-
value$B" BEvaluation_layers/accuracy_1*
dtype0*
_output_shapes
: 

Evaluation_layers/accuracy_1ScalarSummary!Evaluation_layers/accuracy_1/tagsEvaluation_layers/accracy/Mean*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
T
gradients/ConstConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
Y
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
}
3gradients/Evaluation_layers/Mean_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
А
-gradients/Evaluation_layers/Mean_grad/ReshapeReshapegradients/Fill3gradients/Evaluation_layers/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

+gradients/Evaluation_layers/Mean_grad/ShapeShapeEvaluation_layers/Neg*
T0*
out_type0*
_output_shapes
:
Ю
*gradients/Evaluation_layers/Mean_grad/TileTile-gradients/Evaluation_layers/Mean_grad/Reshape+gradients/Evaluation_layers/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ

-gradients/Evaluation_layers/Mean_grad/Shape_1ShapeEvaluation_layers/Neg*
T0*
out_type0*
_output_shapes
:
p
-gradients/Evaluation_layers/Mean_grad/Shape_2Const*
valueB *
_output_shapes
: *
dtype0
u
+gradients/Evaluation_layers/Mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
Ь
*gradients/Evaluation_layers/Mean_grad/ProdProd-gradients/Evaluation_layers/Mean_grad/Shape_1+gradients/Evaluation_layers/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
w
-gradients/Evaluation_layers/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
а
,gradients/Evaluation_layers/Mean_grad/Prod_1Prod-gradients/Evaluation_layers/Mean_grad/Shape_2-gradients/Evaluation_layers/Mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
q
/gradients/Evaluation_layers/Mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
И
-gradients/Evaluation_layers/Mean_grad/MaximumMaximum,gradients/Evaluation_layers/Mean_grad/Prod_1/gradients/Evaluation_layers/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
Ж
.gradients/Evaluation_layers/Mean_grad/floordivFloorDiv*gradients/Evaluation_layers/Mean_grad/Prod-gradients/Evaluation_layers/Mean_grad/Maximum*
_output_shapes
: *
T0

*gradients/Evaluation_layers/Mean_grad/CastCast.gradients/Evaluation_layers/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
О
-gradients/Evaluation_layers/Mean_grad/truedivRealDiv*gradients/Evaluation_layers/Mean_grad/Tile*gradients/Evaluation_layers/Mean_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0

(gradients/Evaluation_layers/Neg_grad/NegNeg-gradients/Evaluation_layers/Mean_grad/truediv*
T0*#
_output_shapes
:џџџџџџџџџ

*gradients/Evaluation_layers/Sum_grad/ShapeShapeEvaluation_layers/mul*
T0*
out_type0*
_output_shapes
:
k
)gradients/Evaluation_layers/Sum_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
Ј
(gradients/Evaluation_layers/Sum_grad/addAdd'Evaluation_layers/Sum/reduction_indices)gradients/Evaluation_layers/Sum_grad/Size*
_output_shapes
:*
T0
Ў
(gradients/Evaluation_layers/Sum_grad/modFloorMod(gradients/Evaluation_layers/Sum_grad/add)gradients/Evaluation_layers/Sum_grad/Size*
T0*
_output_shapes
:
v
,gradients/Evaluation_layers/Sum_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
r
0gradients/Evaluation_layers/Sum_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
r
0gradients/Evaluation_layers/Sum_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ъ
*gradients/Evaluation_layers/Sum_grad/rangeRange0gradients/Evaluation_layers/Sum_grad/range/start)gradients/Evaluation_layers/Sum_grad/Size0gradients/Evaluation_layers/Sum_grad/range/delta*
_output_shapes
:*

Tidx0
q
/gradients/Evaluation_layers/Sum_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
Е
)gradients/Evaluation_layers/Sum_grad/FillFill,gradients/Evaluation_layers/Sum_grad/Shape_1/gradients/Evaluation_layers/Sum_grad/Fill/value*
T0*
_output_shapes
:
Ї
2gradients/Evaluation_layers/Sum_grad/DynamicStitchDynamicStitch*gradients/Evaluation_layers/Sum_grad/range(gradients/Evaluation_layers/Sum_grad/mod*gradients/Evaluation_layers/Sum_grad/Shape)gradients/Evaluation_layers/Sum_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
T0*
N
p
.gradients/Evaluation_layers/Sum_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
,gradients/Evaluation_layers/Sum_grad/MaximumMaximum2gradients/Evaluation_layers/Sum_grad/DynamicStitch.gradients/Evaluation_layers/Sum_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
T0
И
-gradients/Evaluation_layers/Sum_grad/floordivFloorDiv*gradients/Evaluation_layers/Sum_grad/Shape,gradients/Evaluation_layers/Sum_grad/Maximum*
_output_shapes
:*
T0
Ц
,gradients/Evaluation_layers/Sum_grad/ReshapeReshape(gradients/Evaluation_layers/Neg_grad/Neg2gradients/Evaluation_layers/Sum_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
в
)gradients/Evaluation_layers/Sum_grad/TileTile,gradients/Evaluation_layers/Sum_grad/Reshape-gradients/Evaluation_layers/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:џџџџџџџџџ
|
*gradients/Evaluation_layers/mul_grad/ShapeShapeTarget/Placeholder*
T0*
out_type0*
_output_shapes
:

,gradients/Evaluation_layers/mul_grad/Shape_1ShapeEvaluation_layers/Log*
out_type0*
_output_shapes
:*
T0
ъ
:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/Evaluation_layers/mul_grad/Shape,gradients/Evaluation_layers/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
(gradients/Evaluation_layers/mul_grad/mulMul)gradients/Evaluation_layers/Sum_grad/TileEvaluation_layers/Log*'
_output_shapes
:џџџџџџџџџ*
T0
е
(gradients/Evaluation_layers/mul_grad/SumSum(gradients/Evaluation_layers/mul_grad/mul:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Э
,gradients/Evaluation_layers/mul_grad/ReshapeReshape(gradients/Evaluation_layers/mul_grad/Sum*gradients/Evaluation_layers/mul_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
Ђ
*gradients/Evaluation_layers/mul_grad/mul_1MulTarget/Placeholder)gradients/Evaluation_layers/Sum_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ
л
*gradients/Evaluation_layers/mul_grad/Sum_1Sum*gradients/Evaluation_layers/mul_grad/mul_1<gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
г
.gradients/Evaluation_layers/mul_grad/Reshape_1Reshape*gradients/Evaluation_layers/mul_grad/Sum_1,gradients/Evaluation_layers/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0

5gradients/Evaluation_layers/mul_grad/tuple/group_depsNoOp-^gradients/Evaluation_layers/mul_grad/Reshape/^gradients/Evaluation_layers/mul_grad/Reshape_1
Ђ
=gradients/Evaluation_layers/mul_grad/tuple/control_dependencyIdentity,gradients/Evaluation_layers/mul_grad/Reshape6^gradients/Evaluation_layers/mul_grad/tuple/group_deps*?
_class5
31loc:@gradients/Evaluation_layers/mul_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0
Ј
?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1Identity.gradients/Evaluation_layers/mul_grad/Reshape_16^gradients/Evaluation_layers/mul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/Evaluation_layers/mul_grad/Reshape_1*'
_output_shapes
:џџџџџџџџџ
в
/gradients/Evaluation_layers/Log_grad/Reciprocal
ReciprocalEvaluation_layers/clip_by_value@^gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1*'
_output_shapes
:џџџџџџџџџ*
T0
г
(gradients/Evaluation_layers/Log_grad/mulMul?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1/gradients/Evaluation_layers/Log_grad/Reciprocal*'
_output_shapes
:џџџџџџџџџ*
T0

4gradients/Evaluation_layers/clip_by_value_grad/ShapeShape'Evaluation_layers/clip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:
y
6gradients/Evaluation_layers/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 

6gradients/Evaluation_layers/clip_by_value_grad/Shape_2Shape(gradients/Evaluation_layers/Log_grad/mul*
out_type0*
_output_shapes
:*
T0

:gradients/Evaluation_layers/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
т
4gradients/Evaluation_layers/clip_by_value_grad/zerosFill6gradients/Evaluation_layers/clip_by_value_grad/Shape_2:gradients/Evaluation_layers/clip_by_value_grad/zeros/Const*'
_output_shapes
:џџџџџџџџџ*
T0
Щ
;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqualGreaterEqual'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*'
_output_shapes
:џџџџџџџџџ*
T0

Dgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/Evaluation_layers/clip_by_value_grad/Shape6gradients/Evaluation_layers/clip_by_value_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

5gradients/Evaluation_layers/clip_by_value_grad/SelectSelect;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqual(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*'
_output_shapes
:џџџџџџџџџ*
T0
­
9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot
LogicalNot;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

7gradients/Evaluation_layers/clip_by_value_grad/Select_1Select9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
і
2gradients/Evaluation_layers/clip_by_value_grad/SumSum5gradients/Evaluation_layers/clip_by_value_grad/SelectDgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ы
6gradients/Evaluation_layers/clip_by_value_grad/ReshapeReshape2gradients/Evaluation_layers/clip_by_value_grad/Sum4gradients/Evaluation_layers/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
ќ
4gradients/Evaluation_layers/clip_by_value_grad/Sum_1Sum7gradients/Evaluation_layers/clip_by_value_grad/Select_1Fgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
р
8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1Reshape4gradients/Evaluation_layers/clip_by_value_grad/Sum_16gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
Л
?gradients/Evaluation_layers/clip_by_value_grad/tuple/group_depsNoOp7^gradients/Evaluation_layers/clip_by_value_grad/Reshape9^gradients/Evaluation_layers/clip_by_value_grad/Reshape_1
Ъ
Ggradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependencyIdentity6gradients/Evaluation_layers/clip_by_value_grad/Reshape@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*I
_class?
=;loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0
П
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1*
_output_shapes
: *
T0

<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
T0*
out_type0*
_output_shapes
:

>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Х
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2ShapeGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency*
out_type0*
_output_shapes
:*
T0

Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
њ
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zerosFill>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Щ
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqual	LessEqualclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*
T0*'
_output_shapes
:џџџџџџџџџ
 
Lgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Т
=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectSelect@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqualGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
К
Agradients/Evaluation_layers/clip_by_value/Minimum_grad/LogicalNot
LogicalNot@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqual*'
_output_shapes
:џџџџџџџџџ
Х
?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1SelectAgradients/Evaluation_layers/clip_by_value/Minimum_grad/LogicalNotGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ

:gradients/Evaluation_layers/clip_by_value/Minimum_grad/SumSum=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectLgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeReshape:gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0

<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1Sum?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1Ngradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ј
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1Reshape<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
г
Ggradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_depsNoOp?^gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeA^gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1
ъ
Ogradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeH^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:џџџџџџџџџ
п
Qgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1H^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*S
_classI
GEloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: *
T0
й
0gradients/classification_layers/Softmax_grad/mulMulOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyclassification_layers/Softmax*'
_output_shapes
:џџџџџџџџџ*
T0

Bgradients/classification_layers/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
ј
0gradients/classification_layers/Softmax_grad/SumSum0gradients/classification_layers/Softmax_grad/mulBgradients/classification_layers/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ

:gradients/classification_layers/Softmax_grad/Reshape/shapeConst*
valueB"џџџџ   *
dtype0*
_output_shapes
:
э
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ
№
0gradients/classification_layers/Softmax_grad/subSubOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency4gradients/classification_layers/Softmax_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0
М
2gradients/classification_layers/Softmax_grad/mul_1Mul0gradients/classification_layers/Softmax_grad/subclassification_layers/Softmax*'
_output_shapes
:џџџџџџџџџ*
T0
Ш
Igradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/classification_layers/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:
з
Ngradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/classification_layers/Softmax_grad/mul_1J^gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
р
Vgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/classification_layers/Softmax_grad/mul_1O^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/classification_layers/Softmax_grad/mul_1*'
_output_shapes
:џџџџџџџџџ

Xgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradO^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*\
_classR
PNloc:@gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
Б
Cgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulMatMulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency2classification_layers/dense_last/dense/kernel/read*
transpose_b(*'
_output_shapes
:џџџџџџџџџ2*
transpose_a( *
T0
 
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense1/dropout/mulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:2*
transpose_a(
у
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1

Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџ2*
T0
§
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1*
_output_shapes

:2*
T0
Ў
=gradients/classification_layers/dense1/dropout/mul_grad/ShapeShape(classification_layers/dense1/dropout/div*
out_type0*#
_output_shapes
:џџџџџџџџџ*
T0
В
?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1Shape*classification_layers/dense1/dropout/Floor*
out_type0*#
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
Mgradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense1/dropout/mul_grad/Shape?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ш
;gradients/classification_layers/dense1/dropout/mul_grad/mulMulUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense1/dropout/Floor*
_output_shapes
:*
T0

;gradients/classification_layers/dense1/dropout/mul_grad/SumSum;gradients/classification_layers/dense1/dropout/mul_grad/mulMgradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ї
?gradients/classification_layers/dense1/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense1/dropout/mul_grad/Sum=gradients/classification_layers/dense1/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ш
=gradients/classification_layers/dense1/dropout/mul_grad/mul_1Mul(classification_layers/dense1/dropout/divUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*
_output_shapes
:*
T0

=gradients/classification_layers/dense1/dropout/mul_grad/Sum_1Sum=gradients/classification_layers/dense1/dropout/mul_grad/mul_1Ogradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
§
Agradients/classification_layers/dense1/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense1/dropout/mul_grad/Sum_1?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
ж
Hgradients/classification_layers/dense1/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense1/dropout/mul_grad/Reshape_1
п
Pgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense1/dropout/mul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/classification_layers/dense1/dropout/mul_grad/Reshape*
_output_shapes
:
х
Rgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense1/dropout/mul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/classification_layers/dense1/dropout/mul_grad/Reshape_1*
_output_shapes
:
Ё
=gradients/classification_layers/dense1/dropout/div_grad/ShapeShape$classification_layers/dense1/Sigmoid*
T0*
out_type0*
_output_shapes
:
Љ
?gradients/classification_layers/dense1/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*
out_type0*#
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
Mgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense1/dropout/div_grad/Shape?gradients/classification_layers/dense1/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
т
?gradients/classification_layers/dense1/dropout/div_grad/RealDivRealDivPgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependency!classification_layers/Placeholder*
_output_shapes
:*
T0

;gradients/classification_layers/dense1/dropout/div_grad/SumSum?gradients/classification_layers/dense1/dropout/div_grad/RealDivMgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

?gradients/classification_layers/dense1/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense1/dropout/div_grad/Sum=gradients/classification_layers/dense1/dropout/div_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ2

;gradients/classification_layers/dense1/dropout/div_grad/NegNeg$classification_layers/dense1/Sigmoid*
T0*'
_output_shapes
:џџџџџџџџџ2
Я
Agradients/classification_layers/dense1/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense1/dropout/div_grad/Neg!classification_layers/Placeholder*
_output_shapes
:*
T0
е
Agradients/classification_layers/dense1/dropout/div_grad/RealDiv_2RealDivAgradients/classification_layers/dense1/dropout/div_grad/RealDiv_1!classification_layers/Placeholder*
T0*
_output_shapes
:
њ
;gradients/classification_layers/dense1/dropout/div_grad/mulMulPgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependencyAgradients/classification_layers/dense1/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:

=gradients/classification_layers/dense1/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense1/dropout/div_grad/mulOgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
§
Agradients/classification_layers/dense1/dropout/div_grad/Reshape_1Reshape=gradients/classification_layers/dense1/dropout/div_grad/Sum_1?gradients/classification_layers/dense1/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
ж
Hgradients/classification_layers/dense1/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dropout/div_grad/ReshapeB^gradients/classification_layers/dense1/dropout/div_grad/Reshape_1
ю
Pgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dropout/div_grad/ReshapeI^gradients/classification_layers/dense1/dropout/div_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense1/dropout/div_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2*
T0
х
Rgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense1/dropout/div_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/classification_layers/dense1/dropout/div_grad/Reshape_1*
_output_shapes
:
ј
?gradients/classification_layers/dense1/Sigmoid_grad/SigmoidGradSigmoidGrad$classification_layers/dense1/SigmoidPgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ2*
T0
е
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense1/batch_normalization/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
Ё
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:2*
_output_shapes
:*
dtype0
ы
egradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Т
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/SumSum?gradients/classification_layers/dense1/Sigmoid_grad/SigmoidGradegradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ю
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ2
Ц
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Sum_1Sum?gradients/classification_layers/dense1/Sigmoid_grad/SigmoidGradggradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1*
Tshape0*
_output_shapes
:2*
T0

`gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1
Ю
hgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2
Ч
jgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes
:2*
T0
П
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
Ё
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:2*
dtype0*
_output_shapes
:
ы
egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ж
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџ2
ж
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ю
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ2
Є
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense1/dense/BiasAddhgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ2
м
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:2

`gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1
Ю
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2*
T0
Ч
jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
_output_shapes
:2*
T0

Sgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0

Ugradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1Const*
valueB:2*
_output_shapes
:*
dtype0
х
cgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
щ
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Л
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape*
Tshape0*
_output_shapes
:2*
T0
э
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
а
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Sum_1*
T0*
_output_shapes
:
П
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:2

^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1
Й
fgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape*
_output_shapes
:2
П
hgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1*
_output_shapes
:2

Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
valueB:2*
dtype0*
_output_shapes
:
Ё
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
valueB:2*
_output_shapes
:*
dtype0
ы
egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Љ
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:2
ж
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
С
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:2
Ѕ
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense1/batch_normalization/Squeezehgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
T0*
_output_shapes
:2
м
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1*
Tshape0*
_output_shapes
:2*
T0

`gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1
С
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape*
_output_shapes
:2
Ч
jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1*
_output_shapes
:2*
T0

Mgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ShapeConst*
valueB"   2   *
_output_shapes
:*
dtype0
Ъ
Ogradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:2

gradients/AddNAddNjgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes
:2

Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0

Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1Const*
valueB:2*
_output_shapes
:*
dtype0
х
cgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ъ
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN;classification_layers/dense1/batch_normalization/gamma/read*
_output_shapes
:2*
T0
а
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Л
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:2
б
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense1/batch_normalization/batchnorm/Rsqrtgradients/AddN*
_output_shapes
:2*
T0
ж
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
С
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:2

^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1
Й
fgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape*
_output_shapes
:2
П
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1*
_output_shapes
:2
І
Qgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_likeConst*
valueB2*    *
_output_shapes

:2*
dtype0
о
Mgradients/classification_layers/dense1/batch_normalization/Select_grad/SelectSelect8classification_layers/dense1/batch_normalization/ReshapeOgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_like*
T0*
_output_shapes

:2
р
Ogradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1Select8classification_layers/dense1/batch_normalization/ReshapeQgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/Reshape*
_output_shapes

:2*
T0

Wgradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense1/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1

_gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense1/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_deps*`
_classV
TRloc:@gradients/classification_layers/dense1/batch_normalization/Select_grad/Select*
_output_shapes

:2*
T0
Ѕ
agradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1*
_output_shapes

:2
Е
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense1/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
_output_shapes
:2*
T0

Pgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0
У
Rgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/Shape*
T0*
Tshape0*
_output_shapes
:2

Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0

Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
х
cgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
и
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Л
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape*
Tshape0*
_output_shapes
:2*
T0
м
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Н
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0

^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1
Й
fgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape*
_output_shapes
:2*
T0
Л
hgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1*
_output_shapes
: *
T0
І
Ugradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/ShapeConst*
valueB"   2   *
_output_shapes
:*
dtype0
Ф
Wgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:2
 
Ogradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ShapeConst*
valueB"   2   *
dtype0*
_output_shapes
:
Ь
Qgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/Shape*
Tshape0*
_output_shapes

:2*
T0
Ѓ
Rgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ShapeConst*
valueB"   2   *
_output_shapes
:*
dtype0
Ѕ
Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1Const*
valueB"   2   *
dtype0*
_output_shapes
:
т
bgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
д
Pgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/SumSumWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Reshapebgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
М
Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape*
Tshape0*
_output_shapes

:2*
T0
и
Rgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Sum_1SumWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Reshapedgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Т
Vgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1*
Tshape0*
_output_shapes

:2*
T0

]gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1
Й
egradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:2
П
ggradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*i
_class_
][loc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1*
_output_shapes

:2
Ј
Sgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_likeConst*
valueB2*    *
dtype0*
_output_shapes

:2
ц
Ogradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense1/batch_normalization/Reshape_1Qgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_like*
_output_shapes

:2*
T0
ш
Qgradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense1/batch_normalization/Reshape_1Sgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/Reshape*
_output_shapes

:2*
T0

Ygradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1
Ї
agradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select*
_output_shapes

:2
­
cgradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1*
_output_shapes

:2

Rgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0
Щ
Tgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:2
Ј
Wgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
valueB"   2   *
dtype0*
_output_shapes
:
Ъ
Ygradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Shape*
Tshape0*
_output_shapes

:2*
T0
Ї
Vgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ShapeConst*
valueB"   2   *
dtype0*
_output_shapes
:
Љ
Xgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1Const*
valueB"   2   *
_output_shapes
:*
dtype0
ю
fgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
о
Tgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/SumSumYgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Reshapefgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ш
Xgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ReshapeReshapeTgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/SumVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape*
Tshape0*
_output_shapes

:2*
T0
т
Vgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Sum_1SumYgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Reshapehgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ж
Tgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/NegNegVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Sum_1*
_output_shapes
:*
T0
Ь
Zgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1ReshapeTgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/NegXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1*
Tshape0*
_output_shapes

:2*
T0
Ё
agradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1
Щ
igradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*k
_classa
_]loc:@gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape*
_output_shapes

:2
Я
kgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_deps*m
_classc
a_loc:@gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1*
_output_shapes

:2*
T0
о
Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense1/batch_normalization/moments/SquaredDifference*
out_type0*
_output_shapes
:*
T0

Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
І
Rgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/addAddQclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indicesSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Size*
_output_shapes
:*
T0
Ќ
Rgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/modFloorModRgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/addSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
 
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0

Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0

Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/delta*

Tidx0*
_output_shapes
:

Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
Г
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/FillFillVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_1Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill/value*
_output_shapes
:*
T0
љ
\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitchDynamicStitchTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/rangeRgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/modTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill*
T0*
N*#
_output_shapes
:џџџџџџџџџ

Xgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
Ч
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
T0
Ж
Wgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum*
_output_shapes
:*
T0
л
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
й
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*

Tmultiples0
р
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense1/batch_normalization/moments/SquaredDifference*
T0*
out_type0*
_output_shapes
:
Ї
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_3Const*
valueB"   2   *
_output_shapes
:*
dtype0

Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ч
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
 
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
Ы
Ugradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
З
Xgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1MaximumUgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Prod_1Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1/y*
_output_shapes
: *
T0
Е
Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv_1FloorDivSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ProdXgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1*
T0*
_output_shapes
: 
ц
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
Н
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Cast*
T0*'
_output_shapes
:џџџџџџџџџ2

Tgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul/xConstl^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0*
_output_shapes
: 

Rgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mulMulTgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul/xEclassification_layers/dense1/batch_normalization/moments/shifted_mean*
_output_shapes

:2*
T0
Х
Tgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul*
T0*
_output_shapes

:2
Щ
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
В
agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
valueB"   2   *
dtype0*
_output_shapes
:

ogradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ў
`gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
а
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*'
_output_shapes
:џџџџџџџџџ2*
T0
т
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:џџџџџџџџџ2
ж
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/sub*
T0*'
_output_shapes
:џџџџџџџџџ2
і
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ь
agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџ2*
T0
њ
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
щ
cgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1*
Tshape0*
_output_shapes

:2*
T0
ђ
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
_output_shapes

:2*
T0
Ж
jgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Neg
і
rgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*t
_classj
hfloc:@gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2*
T0
ч
tgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*p
_classf
dbloc:@gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Neg*
_output_shapes

:2
№
gradients/AddN_1AddNegradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul_1*g
_class]
[Yloc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:2*
T0*
N
ж
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense1/batch_normalization/moments/Sub*
out_type0*
_output_shapes
:*
T0

Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
И
Xgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/addAddWclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indicesYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size*
_output_shapes
:*
T0
О
Xgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/modFloorModXgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/addYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size*
T0*
_output_shapes
:
І
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Ђ
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
Њ
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/delta*
_output_shapes
:*

Tidx0
Ё
_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
Х
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill/value*
_output_shapes
:*
T0

bgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
T0*
N
 
^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
й
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/MaximumMaximumbgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitch^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
T0
Ш
]gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordivFloorDivZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum*
_output_shapes
:*
T0

\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_1bgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
ы
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
и
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense1/batch_normalization/moments/Sub*
T0*
out_type0*
_output_shapes
:
­
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
valueB"   2   *
_output_shapes
:*
dtype0
Є
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
й
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
І
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
н
[gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Ђ
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Щ
^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1Maximum[gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod_1`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
Ч
_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv_1FloorDivYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1*
_output_shapes
: *
T0
ђ
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/CastCast_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
Я
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivRealDivYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/TileYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Cast*
T0*'
_output_shapes
:џџџџџџџџџ2
Л
Qgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
Є
Sgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1Const*
valueB"   2   *
_output_shapes
:*
dtype0
п
agradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
з
Ogradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Т
Sgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџ2
л
Qgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Sum_1Sum\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivcgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ь
Ogradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/NegNegQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Sum_1*
_output_shapes
:*
T0
Н
Ugradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1ReshapeOgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/NegSgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:2

\gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1
О
dgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2
Л
fgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1*
_output_shapes

:2*
T0
ќ
gradients/AddN_2AddNggradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*i
_class_
][loc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1*
_output_shapes

:2*
T0*
N

gradients/AddN_3AddNhgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2*
T0*
N
Ђ
Egradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
T0*
data_formatNHWC*
_output_shapes
:2
­
Jgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3F^gradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGrad
л
Rgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_3K^gradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџ2
ѓ
Tgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_deps*X
_classN
LJloc:@gradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:2*
T0
Ѕ
?gradients/classification_layers/dense1/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense1/dense/kernel/read*
transpose_b(*'
_output_shapes
:џџџџџџџџџd*
transpose_a( *
T0

Agradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense0/dropout/mulRgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:d2*
transpose_a(
з
Igradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1
№
Qgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense1/dense/MatMul_grad/MatMul*'
_output_shapes
:џџџџџџџџџd*
T0
э
Sgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1*
_output_shapes

:d2
Ў
=gradients/classification_layers/dense0/dropout/mul_grad/ShapeShape(classification_layers/dense0/dropout/div*
out_type0*#
_output_shapes
:џџџџџџџџџ*
T0
В
?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1Shape*classification_layers/dense0/dropout/Floor*
T0*
out_type0*#
_output_shapes
:џџџџџџџџџ
Ѓ
Mgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/mul_grad/Shape?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ф
;gradients/classification_layers/dense0/dropout/mul_grad/mulMulQgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense0/dropout/Floor*
T0*
_output_shapes
:

;gradients/classification_layers/dense0/dropout/mul_grad/SumSum;gradients/classification_layers/dense0/dropout/mul_grad/mulMgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ї
?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/mul_grad/Sum=gradients/classification_layers/dense0/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ф
=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Mul(classification_layers/dense0/dropout/divQgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency*
_output_shapes
:*
T0

=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1Sum=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Ogradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
§
Agradients/classification_layers/dense0/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
ж
Hgradients/classification_layers/dense0/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1
п
Pgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape*
_output_shapes
:*
T0
х
Rgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1*
_output_shapes
:
Ё
=gradients/classification_layers/dense0/dropout/div_grad/ShapeShape$classification_layers/dense0/Sigmoid*
T0*
out_type0*
_output_shapes
:
Љ
?gradients/classification_layers/dense0/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*
out_type0*#
_output_shapes
:џџџџџџџџџ*
T0
Ѓ
Mgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/div_grad/Shape?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
т
?gradients/classification_layers/dense0/dropout/div_grad/RealDivRealDivPgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency!classification_layers/Placeholder*
_output_shapes
:*
T0

;gradients/classification_layers/dense0/dropout/div_grad/SumSum?gradients/classification_layers/dense0/dropout/div_grad/RealDivMgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

?gradients/classification_layers/dense0/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/div_grad/Sum=gradients/classification_layers/dense0/dropout/div_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџd*
T0

;gradients/classification_layers/dense0/dropout/div_grad/NegNeg$classification_layers/dense0/Sigmoid*
T0*'
_output_shapes
:џџџџџџџџџd
Я
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense0/dropout/div_grad/Neg!classification_layers/Placeholder*
T0*
_output_shapes
:
е
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_2RealDivAgradients/classification_layers/dense0/dropout/div_grad/RealDiv_1!classification_layers/Placeholder*
_output_shapes
:*
T0
њ
;gradients/classification_layers/dense0/dropout/div_grad/mulMulPgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyAgradients/classification_layers/dense0/dropout/div_grad/RealDiv_2*
_output_shapes
:*
T0

=gradients/classification_layers/dense0/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense0/dropout/div_grad/mulOgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
§
Agradients/classification_layers/dense0/dropout/div_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/div_grad/Sum_1?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
ж
Hgradients/classification_layers/dense0/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/div_grad/ReshapeB^gradients/classification_layers/dense0/dropout/div_grad/Reshape_1
ю
Pgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/div_grad/ReshapeI^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape*'
_output_shapes
:џџџџџџџџџd
х
Rgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape_1*
_output_shapes
:*
T0
ј
?gradients/classification_layers/dense0/Sigmoid_grad/SigmoidGradSigmoidGrad$classification_layers/dense0/SigmoidPgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџd
е
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense0/batch_normalization/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
Ё
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0
ы
egradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Т
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumSum?gradients/classification_layers/dense0/Sigmoid_grad/SigmoidGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ю
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџd*
T0
Ц
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Sum?gradients/classification_layers/dense0/Sigmoid_grad/SigmoidGradggradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d

`gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1
Ю
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџd*
T0
Ч
jgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes
:d*
T0
П
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
Ё
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0
ы
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ж
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџd
ж
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ю
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџd*
T0
Є
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense0/dense/BiasAddhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџd*
T0
м
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ч
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d

`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
Ю
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџd
Ч
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
_output_shapes
:d

Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeConst*
valueB:d*
dtype0*
_output_shapes
:

Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0
х
cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
щ
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Л
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape*
Tshape0*
_output_shapes
:d*
T0
э
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
а
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1*
_output_shapes
:*
T0
П
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d

^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1
Й
fgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape*
_output_shapes
:d*
T0
П
hgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1*
_output_shapes
:d

Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
valueB:d*
_output_shapes
:*
dtype0
Ё
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0
ы
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Љ
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense0/batch_normalization/batchnorm/mul*
_output_shapes
:d*
T0
ж
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
С
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
Ѕ
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense0/batch_normalization/Squeezehgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
_output_shapes
:d*
T0
м
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ч
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d

`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1
С
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape*
_output_shapes
:d*
T0
Ч
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1*
_output_shapes
:d

Mgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ShapeConst*
valueB"   d   *
dtype0*
_output_shapes
:
Ъ
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Shape*
Tshape0*
_output_shapes

:d*
T0

gradients/AddN_4AddNjgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
_output_shapes
:d*
T0*
N

Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
valueB:d*
_output_shapes
:*
dtype0

Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1Const*
valueB:d*
dtype0*
_output_shapes
:
х
cgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ь
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN_4;classification_layers/dense0/batch_normalization/gamma/read*
T0*
_output_shapes
:d
а
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Л
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
г
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtgradients/AddN_4*
T0*
_output_shapes
:d
ж
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
С
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d

^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1
Й
fgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape*
_output_shapes
:d*
T0
П
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1*
_output_shapes
:d*
T0
І
Qgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeConst*
valueBd*    *
dtype0*
_output_shapes

:d
о
Mgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectSelect8classification_layers/dense0/batch_normalization/ReshapeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_like*
_output_shapes

:d*
T0
р
Ogradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1Select8classification_layers/dense0/batch_normalization/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Reshape*
T0*
_output_shapes

:d

Wgradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense0/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1

_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select*
_output_shapes

:d
Ѕ
agradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1*
_output_shapes

:d*
T0
Е
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:d

Pgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ShapeConst*
valueB:d*
dtype0*
_output_shapes
:
У
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/Shape*
T0*
Tshape0*
_output_shapes
:d

Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeConst*
valueB:d*
_output_shapes
:*
dtype0

Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
х
cgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
и
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Л
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape*
Tshape0*
_output_shapes
:d*
T0
м
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Н
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1
Й
fgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape*
_output_shapes
:d
Л
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1*
_output_shapes
: 
І
Ugradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ShapeConst*
valueB"   d   *
dtype0*
_output_shapes
:
Ф
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Shape*
Tshape0*
_output_shapes

:d*
T0
 
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0
Ь
Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
Ѓ
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0
Ѕ
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
valueB"   d   *
_output_shapes
:*
dtype0
т
bgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
д
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumSumWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Reshapebgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
М
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
и
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1SumWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Reshapedgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Т
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*
Tshape0*
_output_shapes

:d*
T0

]gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1
Й
egradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:d
П
ggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1*
_output_shapes

:d*
T0
Ј
Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeConst*
valueBd*    *
dtype0*
_output_shapes

:d
ц
Ogradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense0/batch_normalization/Reshape_1Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_like*
T0*
_output_shapes

:d
ш
Qgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Reshape*
T0*
_output_shapes

:d

Ygradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1
Ї
agradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select*
_output_shapes

:d
­
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1*
_output_shapes

:d

Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
valueB:d*
dtype0*
_output_shapes
:
Щ
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
Tshape0*
_output_shapes
:d*
T0
Ј
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0
Ъ
Ygradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
Ї
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0
Љ
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
valueB"   d   *
dtype0*
_output_shapes
:
ю
fgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
о
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshapefgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ш
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SumVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
т
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshapehgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ж
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/NegNegVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Sum_1*
_output_shapes
:*
T0
Ь
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1ReshapeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/NegXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:d
Ё
agradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1
Щ
igradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*k
_classa
_]loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape*
_output_shapes

:d*
T0
Я
kgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*m
_classc
a_loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1*
_output_shapes

:d*
T0
о
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
out_type0*
_output_shapes
:*
T0

Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
І
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addAddQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
Ќ
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modFloorModRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
 
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0

Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0

Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0

Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0

Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
Г
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/FillFillVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/value*
_output_shapes
:*
T0
љ
\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchDynamicStitchTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill*
T0*
N*#
_output_shapes
:џџџџџџџџџ

Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
Ч
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/y*
T0*#
_output_shapes
:џџџџџџџџџ
Ж
Wgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum*
_output_shapes
:*
T0
л
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
й
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
р
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
out_type0*
_output_shapes
:
Ї
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Const*
valueB"   d   *
_output_shapes
:*
dtype0

Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
Ч
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
 
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
Ы
Ugradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0
З
Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1MaximumUgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/y*
T0*
_output_shapes
: 
Е
Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1FloorDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1*
_output_shapes
: *
T0
ц
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
Н
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Cast*
T0*'
_output_shapes
:џџџџџџџџџd

Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xConstl^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0*
_output_shapes
: 

Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mulMulTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
T0*
_output_shapes

:d
Х
Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul*
T0*
_output_shapes

:d
Щ
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
В
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
valueB"   d   *
dtype0*
_output_shapes
:

ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ў
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
а
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:џџџџџџџџџd
т
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:џџџџџџџџџd
ж
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/sub*'
_output_shapes
:џџџџџџџџџd*
T0
і
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ь
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:џџџџџџџџџd
њ
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
щ
cgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:d
ђ
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes

:d
Ж
jgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg
і
rgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*t
_classj
hfloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape*'
_output_shapes
:џџџџџџџџџd
ч
tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*p
_classf
dbloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg*
_output_shapes

:d*
T0
№
gradients/AddN_5AddNegradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:d*
T0*
N
ж
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense0/batch_normalization/moments/Sub*
T0*
out_type0*
_output_shapes
:

Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
И
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addAddWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
T0*
_output_shapes
:
О
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modFloorModXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
T0*
_output_shapes
:
І
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Ђ
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Ђ
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Њ
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/delta*
_output_shapes
:*

Tidx0
Ё
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
Х
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/value*
T0*
_output_shapes
:

bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
T0*
N
 
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
й
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/MaximumMaximumbgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
T0
Ш
]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordivFloorDivZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum*
T0*
_output_shapes
:

\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_5bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
ы
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*

Tmultiples0
и
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense0/batch_normalization/moments/Sub*
out_type0*
_output_shapes
:*
T0
­
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
valueB"   d   *
_output_shapes
:*
dtype0
Є
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
й
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
І
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
н
[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Ђ
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0
Щ
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1Maximum[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/y*
_output_shapes
: *
T0
Ч
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv_1FloorDivYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1*
_output_shapes
: *
T0
ђ
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/CastCast_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
Я
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivRealDivYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Cast*
T0*'
_output_shapes
:џџџџџџџџџd
Л
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
Є
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1Const*
valueB"   d   *
dtype0*
_output_shapes
:
п
agradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
з
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Т
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape*
Tshape0*'
_output_shapes
:џџџџџџџџџd*
T0
л
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Sum_1Sum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivcgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ь
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/NegNegQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Sum_1*
_output_shapes
:*
T0
Н
Ugradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1ReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/NegSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*
Tshape0*
_output_shapes

:d*
T0

\gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1
О
dgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*
T0*f
_class\
ZXloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape*'
_output_shapes
:џџџџџџџџџd
Л
fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1*
_output_shapes

:d
ќ
gradients/AddN_6AddNggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1*
N*
_output_shapes

:d

gradients/AddN_7AddNhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџd*
T0*
N
Ђ
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_7*
_output_shapes
:d*
T0*
data_formatNHWC
­
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_7F^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
л
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_7K^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:џџџџџџџџџd*
T0
ѓ
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
І
?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense0/dense/kernel/read*
transpose_b(*
T0*(
_output_shapes
:џџџџџџџџџ*
transpose_a( 

Agradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1MatMulFlatten/ReshapeRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	d*
transpose_a(*
T0
з
Igradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
ё
Qgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul*(
_output_shapes
:џџџџџџџџџ*
T0
ю
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1*
_output_shapes
:	d

beta1_power/initial_valueConst*
valueB
 *fff?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
_output_shapes
: 
­
beta1_power
VariableV2*
shape: *
_output_shapes
: *
shared_name *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
	container 
Ь
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
: 

beta1_power/readIdentitybeta1_power*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0

beta2_power/initial_valueConst*
valueB
 *wО?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
dtype0
­
beta2_power
VariableV2*
shape: *
_output_shapes
: *
shared_name *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
	container 
Ь
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
: 

beta2_power/readIdentitybeta2_power*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0
е
@classification_layers/dense0/dense/kernel/Adam/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	d*    *
_output_shapes
:	d*
dtype0
т
.classification_layers/dense0/dense/kernel/Adam
VariableV2*
shared_name *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
	container *
shape:	d*
dtype0*
_output_shapes
:	d
Т
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
:	d
з
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	d*
T0
з
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	d*    *
dtype0*
_output_shapes
:	d
ф
0classification_layers/dense0/dense/kernel/Adam_1
VariableV2*
shape:	d*
_output_shapes
:	d*
shared_name *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
	container 
Ш
7classification_layers/dense0/dense/kernel/Adam_1/AssignAssign0classification_layers/dense0/dense/kernel/Adam_1Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zeros*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	d*
T0*
validate_shape(*
use_locking(
л
5classification_layers/dense0/dense/kernel/Adam_1/readIdentity0classification_layers/dense0/dense/kernel/Adam_1*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	d*
T0
Ч
>classification_layers/dense0/dense/bias/Adam/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    *
_output_shapes
:d*
dtype0
д
,classification_layers/dense0/dense/bias/Adam
VariableV2*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d*
shape:d*
dtype0*
shared_name *
	container 
Е
3classification_layers/dense0/dense/bias/Adam/AssignAssign,classification_layers/dense0/dense/bias/Adam>classification_layers/dense0/dense/bias/Adam/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
Ь
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d*
T0
Щ
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    *
_output_shapes
:d*
dtype0
ж
.classification_layers/dense0/dense/bias/Adam_1
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d*
shape:d*
shared_name 
Л
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
а
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d
у
Lclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    *
dtype0*
_output_shapes
:d
№
:classification_layers/dense0/batch_normalization/beta/Adam
VariableV2*
shape:d*
_output_shapes
:d*
shared_name *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
dtype0*
	container 
э
Aclassification_layers/dense0/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense0/batch_normalization/beta/AdamLclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zeros*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
і
?classification_layers/dense0/batch_normalization/beta/Adam/readIdentity:classification_layers/dense0/batch_normalization/beta/Adam*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d
х
Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    *
_output_shapes
:d*
dtype0
ђ
<classification_layers/dense0/batch_normalization/beta/Adam_1
VariableV2*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d*
shape:d*
dtype0*
shared_name *
	container 
ѓ
Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense0/batch_normalization/beta/Adam_1Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
validate_shape(*
_output_shapes
:d
њ
Aclassification_layers/dense0/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense0/batch_normalization/beta/Adam_1*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d
х
Mclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*    *
_output_shapes
:d*
dtype0
ђ
;classification_layers/dense0/batch_normalization/gamma/Adam
VariableV2*
shape:d*
_output_shapes
:d*
shared_name *I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
dtype0*
	container 
ё
Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense0/batch_normalization/gamma/AdamMclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zeros*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
љ
@classification_layers/dense0/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense0/batch_normalization/gamma/Adam*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d
ч
Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*    *
_output_shapes
:d*
dtype0
є
=classification_layers/dense0/batch_normalization/gamma/Adam_1
VariableV2*
	container *
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
shape:d*
shared_name 
ї
Dclassification_layers/dense0/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense0/batch_normalization/gamma/Adam_1Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zeros*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
§
Bclassification_layers/dense0/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense0/batch_normalization/gamma/Adam_1*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d
г
@classification_layers/dense1/dense/kernel/Adam/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueBd2*    *
_output_shapes

:d2*
dtype0
р
.classification_layers/dense1/dense/kernel/Adam
VariableV2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
shape
:d2*
dtype0*
shared_name *
	container 
С
5classification_layers/dense1/dense/kernel/Adam/AssignAssign.classification_layers/dense1/dense/kernel/Adam@classification_layers/dense1/dense/kernel/Adam/Initializer/zeros*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
T0*
validate_shape(*
use_locking(
ж
3classification_layers/dense1/dense/kernel/Adam/readIdentity.classification_layers/dense1/dense/kernel/Adam*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
T0
е
Bclassification_layers/dense1/dense/kernel/Adam_1/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueBd2*    *
_output_shapes

:d2*
dtype0
т
0classification_layers/dense1/dense/kernel/Adam_1
VariableV2*
shape
:d2*
_output_shapes

:d2*
shared_name *<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
dtype0*
	container 
Ч
7classification_layers/dense1/dense/kernel/Adam_1/AssignAssign0classification_layers/dense1/dense/kernel/Adam_1Bclassification_layers/dense1/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
validate_shape(*
_output_shapes

:d2
к
5classification_layers/dense1/dense/kernel/Adam_1/readIdentity0classification_layers/dense1/dense/kernel/Adam_1*
T0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2
Ч
>classification_layers/dense1/dense/bias/Adam/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    *
dtype0*
_output_shapes
:2
д
,classification_layers/dense1/dense/bias/Adam
VariableV2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
shape:2*
dtype0*
shared_name *
	container 
Е
3classification_layers/dense1/dense/bias/Adam/AssignAssign,classification_layers/dense1/dense/bias/Adam>classification_layers/dense1/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
validate_shape(*
_output_shapes
:2
Ь
1classification_layers/dense1/dense/bias/Adam/readIdentity,classification_layers/dense1/dense/bias/Adam*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
T0
Щ
@classification_layers/dense1/dense/bias/Adam_1/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    *
_output_shapes
:2*
dtype0
ж
.classification_layers/dense1/dense/bias/Adam_1
VariableV2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
shape:2*
dtype0*
shared_name *
	container 
Л
5classification_layers/dense1/dense/bias/Adam_1/AssignAssign.classification_layers/dense1/dense/bias/Adam_1@classification_layers/dense1/dense/bias/Adam_1/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
а
3classification_layers/dense1/dense/bias/Adam_1/readIdentity.classification_layers/dense1/dense/bias/Adam_1*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
T0
у
Lclassification_layers/dense1/batch_normalization/beta/Adam/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    *
dtype0*
_output_shapes
:2
№
:classification_layers/dense1/batch_normalization/beta/Adam
VariableV2*
shared_name *H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
	container *
shape:2*
dtype0*
_output_shapes
:2
э
Aclassification_layers/dense1/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense1/batch_normalization/beta/AdamLclassification_layers/dense1/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
T0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
validate_shape(*
_output_shapes
:2
і
?classification_layers/dense1/batch_normalization/beta/Adam/readIdentity:classification_layers/dense1/batch_normalization/beta/Adam*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
T0
х
Nclassification_layers/dense1/batch_normalization/beta/Adam_1/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    *
dtype0*
_output_shapes
:2
ђ
<classification_layers/dense1/batch_normalization/beta/Adam_1
VariableV2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
shape:2*
dtype0*
shared_name *
	container 
ѓ
Cclassification_layers/dense1/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense1/batch_normalization/beta/Adam_1Nclassification_layers/dense1/batch_normalization/beta/Adam_1/Initializer/zeros*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
њ
Aclassification_layers/dense1/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense1/batch_normalization/beta/Adam_1*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
T0
х
Mclassification_layers/dense1/batch_normalization/gamma/Adam/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*    *
_output_shapes
:2*
dtype0
ђ
;classification_layers/dense1/batch_normalization/gamma/Adam
VariableV2*
	container *
dtype0*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
shape:2*
shared_name 
ё
Bclassification_layers/dense1/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense1/batch_normalization/gamma/AdamMclassification_layers/dense1/batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
validate_shape(*
_output_shapes
:2
љ
@classification_layers/dense1/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense1/batch_normalization/gamma/Adam*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0
ч
Oclassification_layers/dense1/batch_normalization/gamma/Adam_1/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*    *
dtype0*
_output_shapes
:2
є
=classification_layers/dense1/batch_normalization/gamma/Adam_1
VariableV2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
shape:2*
dtype0*
shared_name *
	container 
ї
Dclassification_layers/dense1/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense1/batch_normalization/gamma/Adam_1Oclassification_layers/dense1/batch_normalization/gamma/Adam_1/Initializer/zeros*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
§
Bclassification_layers/dense1/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense1/batch_normalization/gamma/Adam_1*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0
л
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB2*    *
dtype0*
_output_shapes

:2
ш
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*
shared_name *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
	container *
shape
:2*
dtype0*
_output_shapes

:2
б
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes

:2
т
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2
н
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB2*    *
dtype0*
_output_shapes

:2
ъ
4classification_layers/dense_last/dense/kernel/Adam_1
VariableV2*
shared_name *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
	container *
shape
:2*
dtype0*
_output_shapes

:2
з
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0*
validate_shape(*
use_locking(
ц
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0
Я
Bclassification_layers/dense_last/dense/bias/Adam/Initializer/zerosConst*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    *
_output_shapes
:*
dtype0
м
0classification_layers/dense_last/dense/bias/Adam
VariableV2*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
shape:*
dtype0*
shared_name *
	container 
Х
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
и
5classification_layers/dense_last/dense/bias/Adam/readIdentity0classification_layers/dense_last/dense/bias/Adam*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:
б
Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zerosConst*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    *
_output_shapes
:*
dtype0
о
2classification_layers/dense_last/dense/bias/Adam_1
VariableV2*
shared_name *>
_class4
20loc:@classification_layers/dense_last/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ы
9classification_layers/dense_last/dense/bias/Adam_1/AssignAssign2classification_layers/dense_last/dense/bias/Adam_1Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zeros*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
м
7classification_layers/dense_last/dense/bias/Adam_1/readIdentity2classification_layers/dense_last/dense/bias/Adam_1*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *o:*
_output_shapes
: *
dtype0
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
 *wО?*
_output_shapes
: *
dtype0
Q
Adam/epsilonConst*
valueB
 *wЬ+2*
_output_shapes
: *
dtype0

?Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense0/dense/kernel.classification_layers/dense0/dense/kernel/Adam0classification_layers/dense0/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	d*
T0*
use_nesterov( *
use_locking( 

=Adam/update_classification_layers/dense0/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense0/dense/bias,classification_layers/dense0/dense/bias/Adam.classification_layers/dense0/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
use_nesterov( *
_output_shapes
:d
х
KAdam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense0/batch_normalization/beta:classification_layers/dense0/batch_normalization/beta/Adam<classification_layers/dense0/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d*
T0*
use_nesterov( *
use_locking( 
ь
LAdam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense0/batch_normalization/gamma;classification_layers/dense0/batch_normalization/gamma/Adam=classification_layers/dense0/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
T0*
use_nesterov( *
use_locking( 

?Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense1/dense/kernel.classification_layers/dense1/dense/kernel/Adam0classification_layers/dense1/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
use_nesterov( *
_output_shapes

:d2

=Adam/update_classification_layers/dense1/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense1/dense/bias,classification_layers/dense1/dense/bias/Adam.classification_layers/dense1/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency_1*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
T0*
use_nesterov( *
use_locking( 
х
KAdam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense1/batch_normalization/beta:classification_layers/dense1/batch_normalization/beta/Adam<classification_layers/dense1/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
T0*
use_nesterov( *
use_locking( 
ь
LAdam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense1/batch_normalization/gamma;classification_layers/dense1/batch_normalization/gamma/Adam=classification_layers/dense1/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0*
use_nesterov( *
use_locking( 
В
CAdam/update_classification_layers/dense_last/dense/kernel/ApplyAdam	ApplyAdam-classification_layers/dense_last/dense/kernel2classification_layers/dense_last/dense/kernel/Adam4classification_layers/dense_last/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
use_nesterov( *
_output_shapes

:2
Ѕ
AAdam/update_classification_layers/dense_last/dense/bias/ApplyAdam	ApplyAdam+classification_layers/dense_last/dense/bias0classification_layers/dense_last/dense/bias/Adam2classification_layers/dense_last/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonXgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
use_nesterov( *
_output_shapes
:
д
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: 
Д
Adam/AssignAssignbeta1_powerAdam/mul*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking( 
ж

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0
И
Adam/Assign_1Assignbeta2_power
Adam/mul_1*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking( 
ђ
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
ф
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign=^classification_layers/dense0/batch_normalization/beta/Assign>^classification_layers/dense0/batch_normalization/gamma/AssignD^classification_layers/dense0/batch_normalization/moving_mean/AssignH^classification_layers/dense0/batch_normalization/moving_variance/Assign1^classification_layers/dense1/dense/kernel/Assign/^classification_layers/dense1/dense/bias/Assign=^classification_layers/dense1/batch_normalization/beta/Assign>^classification_layers/dense1/batch_normalization/gamma/AssignD^classification_layers/dense1/batch_normalization/moving_mean/AssignH^classification_layers/dense1/batch_normalization/moving_variance/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/AssignB^classification_layers/dense0/batch_normalization/beta/Adam/AssignD^classification_layers/dense0/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense0/batch_normalization/gamma/Adam/AssignE^classification_layers/dense0/batch_normalization/gamma/Adam_1/Assign6^classification_layers/dense1/dense/kernel/Adam/Assign8^classification_layers/dense1/dense/kernel/Adam_1/Assign4^classification_layers/dense1/dense/bias/Adam/Assign6^classification_layers/dense1/dense/bias/Adam_1/AssignB^classification_layers/dense1/batch_normalization/beta/Adam/AssignD^classification_layers/dense1/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense1/batch_normalization/gamma/Adam/AssignE^classification_layers/dense1/batch_normalization/gamma/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign"$їyЇ     ћ	е­Ђ^жAJ
Щ#Ќ#
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	
ы
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T"
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
p
	AssignSub
ref"T

value"T

output_ref"T"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
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
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		
+
Log
x"T
y"T"
Ttype:	
2


LogicalNot
x

y

o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
-
Rsqrt
x"T
y"T"
Ttype:	
2
9
	RsqrtGrad
x"T
y"T
z"T"
Ttype:	
2
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
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
/
Sigmoid
x"T
y"T"
Ttype:	
2
;
SigmoidGrad
x"T
y"T
z"T"
Ttype:	
2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
0
Square
x"T
y"T"
Ttype:
	2	
F
SquaredDifference
x"T
y"T
z"T"
Ttype:
	2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
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

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring *1.2.12v1.2.0-5-g435cdfcКЈ
|
Input/PlaceholderPlaceholder*+
_output_shapes
:џџџџџџџџџ * 
shape:џџџџџџџџџ *
dtype0
u
Target/PlaceholderPlaceholder*
shape:џџџџџџџџџ*
dtype0*'
_output_shapes
:џџџџџџџџџ
g
"controll_normalization/PlaceholderPlaceholder*
shape:*
dtype0
*
_output_shapes
:
^
Flatten/ShapeShapeInput/Placeholder*
T0*
out_type0*
_output_shapes
:
]
Flatten/Slice/beginConst*
valueB: *
_output_shapes
:*
dtype0
\
Flatten/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Flatten/SliceSliceFlatten/ShapeFlatten/Slice/beginFlatten/Slice/size*
_output_shapes
:*
T0*
Index0
_
Flatten/Slice_1/beginConst*
valueB:*
_output_shapes
:*
dtype0
^
Flatten/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Flatten/Slice_1SliceFlatten/ShapeFlatten/Slice_1/beginFlatten/Slice_1/size*
_output_shapes
:*
T0*
Index0
W
Flatten/ConstConst*
valueB: *
_output_shapes
:*
dtype0
r
Flatten/ProdProdFlatten/Slice_1Flatten/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
X
Flatten/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
w
Flatten/ExpandDims
ExpandDimsFlatten/ProdFlatten/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
U
Flatten/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 

Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
~
Flatten/ReshapeReshapeInput/PlaceholderFlatten/concat*(
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
f
!classification_layers/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:
л
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB"   d   
Ю
Kclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *    
а
Mclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *  ?
Х
Vclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shape*
_output_shapes
:	d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*

seed *
T0*
seed2 
р
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes
:	d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
Ю
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes
:	d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
н
)classification_layers/dense0/dense/kernel
VariableV2*
	container *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
shared_name *
_output_shapes
:	d*
shape:	d
О
0classification_layers/dense0/dense/kernel/AssignAssign)classification_layers/dense0/dense/kernelFclassification_layers/dense0/dense/kernel/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
Э
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*
T0*
_output_shapes
:	d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
Т
9classification_layers/dense0/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    
Я
'classification_layers/dense0/dense/bias
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
shared_name *
_output_shapes
:d*
shape:d
І
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
Т
,classification_layers/dense0/dense/bias/readIdentity'classification_layers/dense0/dense/bias*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
Ь
)classification_layers/dense0/dense/MatMulMatMulFlatten/Reshape.classification_layers/dense0/dense/kernel/read*
transpose_b( *'
_output_shapes
:џџџџџџџџџd*
transpose_a( *
T0
з
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:џџџџџџџџџd
о
Gclassification_layers/dense0/batch_normalization/beta/Initializer/zerosConst*
_output_shapes
:d*
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    
ы
5classification_layers/dense0/batch_normalization/beta
VariableV2*
	container *
shared_name *
dtype0*
shape:d*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
о
<classification_layers/dense0/batch_normalization/beta/AssignAssign5classification_layers/dense0/batch_normalization/betaGclassification_layers/dense0/batch_normalization/beta/Initializer/zeros*
_output_shapes
:d*
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking(
ь
:classification_layers/dense0/batch_normalization/beta/readIdentity5classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
п
Gclassification_layers/dense0/batch_normalization/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*  ?
э
6classification_layers/dense0/batch_normalization/gamma
VariableV2*
_output_shapes
:d*
dtype0*
shape:d*
	container *I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
shared_name 
с
=classification_layers/dense0/batch_normalization/gamma/AssignAssign6classification_layers/dense0/batch_normalization/gammaGclassification_layers/dense0/batch_normalization/gamma/Initializer/ones*
_output_shapes
:d*
validate_shape(*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0*
use_locking(
я
;classification_layers/dense0/batch_normalization/gamma/readIdentity6classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0
ь
Nclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zerosConst*
_output_shapes
:d*
dtype0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
valueBd*    
љ
<classification_layers/dense0/batch_normalization/moving_mean
VariableV2*
	container *
dtype0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
shared_name *
_output_shapes
:d*
shape:d
њ
Cclassification_layers/dense0/batch_normalization/moving_mean/AssignAssign<classification_layers/dense0/batch_normalization/moving_meanNclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean

Aclassification_layers/dense0/batch_normalization/moving_mean/readIdentity<classification_layers/dense0/batch_normalization/moving_mean*
T0*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
ѓ
Qclassification_layers/dense0/batch_normalization/moving_variance/Initializer/onesConst*
_output_shapes
:d*
dtype0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
valueBd*  ?

@classification_layers/dense0/batch_normalization/moving_variance
VariableV2*
	container *
shared_name *
dtype0*
shape:d*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance

Gclassification_layers/dense0/batch_normalization/moving_variance/AssignAssign@classification_layers/dense0/batch_normalization/moving_varianceQclassification_layers/dense0/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance

Eclassification_layers/dense0/batch_normalization/moving_variance/readIdentity@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0

Oclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 

=classification_layers/dense0/batch_normalization/moments/MeanMean*classification_layers/dense0/dense/BiasAddOclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indices*
_output_shapes

:d*
T0*
	keep_dims(*

Tidx0
Н
Eclassification_layers/dense0/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense0/batch_normalization/moments/Mean*
_output_shapes

:d*
T0
ш
<classification_layers/dense0/batch_normalization/moments/SubSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџd
Ё
Wclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
Њ
Eclassification_layers/dense0/batch_normalization/moments/shifted_meanMean<classification_layers/dense0/batch_normalization/moments/SubWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indices*
_output_shapes

:d*
T0*
	keep_dims(*

Tidx0

Jclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:џџџџџџџџџd

Qclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
Ќ
?classification_layers/dense0/batch_normalization/moments/Mean_1MeanJclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indices*
_output_shapes

:d*
T0*
	keep_dims(*

Tidx0
Й
?classification_layers/dense0/batch_normalization/moments/SquareSquareEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
_output_shapes

:d*
T0
ѓ
Aclassification_layers/dense0/batch_normalization/moments/varianceSub?classification_layers/dense0/batch_normalization/moments/Mean_1?classification_layers/dense0/batch_normalization/moments/Square*
T0*
_output_shapes

:d
ћ
=classification_layers/dense0/batch_normalization/moments/meanAddEclassification_layers/dense0/batch_normalization/moments/shifted_meanEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*
_output_shapes

:d
Ц
@classification_layers/dense0/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense0/batch_normalization/moments/mean*
_output_shapes
:d*
T0*
squeeze_dims
 
Ь
Bclassification_layers/dense0/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense0/batch_normalization/moments/variance*
_output_shapes
:d*
T0*
squeeze_dims
 

?classification_layers/dense0/batch_normalization/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 

;classification_layers/dense0/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense0/batch_normalization/moments/Squeeze?classification_layers/dense0/batch_normalization/ExpandDims/dim*
_output_shapes

:d*
T0*

Tdim0

Aclassification_layers/dense0/batch_normalization/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 

=classification_layers/dense0/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense0/batch_normalization/moving_mean/readAclassification_layers/dense0/batch_normalization/ExpandDims_1/dim*
_output_shapes

:d*
T0*

Tdim0

>classification_layers/dense0/batch_normalization/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
к
8classification_layers/dense0/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense0/batch_normalization/Reshape/shape*
_output_shapes
:*
Tshape0*
T0

 
7classification_layers/dense0/batch_normalization/SelectSelect8classification_layers/dense0/batch_normalization/Reshape;classification_layers/dense0/batch_normalization/ExpandDims=classification_layers/dense0/batch_normalization/ExpandDims_1*
T0*
_output_shapes

:d
И
8classification_layers/dense0/batch_normalization/SqueezeSqueeze7classification_layers/dense0/batch_normalization/Select*
T0*
_output_shapes
:d*
squeeze_dims
 

Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
value	B : 

=classification_layers/dense0/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense0/batch_normalization/moments/Squeeze_1Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dim*
T0*
_output_shapes

:d*

Tdim0

Aclassification_layers/dense0/batch_normalization/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
value	B : 

=classification_layers/dense0/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense0/batch_normalization/moving_variance/readAclassification_layers/dense0/batch_normalization/ExpandDims_3/dim*
T0*
_output_shapes

:d*

Tdim0

@classification_layers/dense0/batch_normalization/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
о
:classification_layers/dense0/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_1/shape*
T0
*
_output_shapes
:*
Tshape0
І
9classification_layers/dense0/batch_normalization/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1=classification_layers/dense0/batch_normalization/ExpandDims_2=classification_layers/dense0/batch_normalization/ExpandDims_3*
T0*
_output_shapes

:d
М
:classification_layers/dense0/batch_normalization/Squeeze_1Squeeze9classification_layers/dense0/batch_normalization/Select_1*
T0*
_output_shapes
:d*
squeeze_dims
 

Cclassification_layers/dense0/batch_normalization/ExpandDims_4/inputConst*
dtype0*
_output_shapes
: *
valueB
 *Єp}?

Aclassification_layers/dense0/batch_normalization/ExpandDims_4/dimConst*
dtype0*
_output_shapes
: *
value	B : 

=classification_layers/dense0/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*
T0*
_output_shapes
:*

Tdim0

Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Aclassification_layers/dense0/batch_normalization/ExpandDims_5/dimConst*
dtype0*
_output_shapes
: *
value	B : 

=classification_layers/dense0/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_5/inputAclassification_layers/dense0/batch_normalization/ExpandDims_5/dim*
_output_shapes
:*
T0*

Tdim0

@classification_layers/dense0/batch_normalization/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
о
:classification_layers/dense0/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_2/shape*
T0
*
_output_shapes
:*
Tshape0
Ђ
9classification_layers/dense0/batch_normalization/Select_2Select:classification_layers/dense0/batch_normalization/Reshape_2=classification_layers/dense0/batch_normalization/ExpandDims_4=classification_layers/dense0/batch_normalization/ExpandDims_5*
T0*
_output_shapes
:
И
:classification_layers/dense0/batch_normalization/Squeeze_2Squeeze9classification_layers/dense0/batch_normalization/Select_2*
_output_shapes
: *
T0*
squeeze_dims
 
м
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
С
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*
T0*
_output_shapes
: *O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
Р
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense0/batch_normalization/moving_mean/read8classification_layers/dense0/batch_normalization/Squeeze*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0
Я
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub*
T0*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
к
@classification_layers/dense0/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense0/batch_normalization/moving_meanDclassification_layers/dense0/batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
т
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
Щ
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*
_output_shapes
: *S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0
Ь
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense0/batch_normalization/moving_variance/read:classification_layers/dense0/batch_normalization/Squeeze_1*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0
й
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0
ц
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense0/batch_normalization/moving_varianceFclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mul*
use_locking( *
T0*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance

@classification_layers/dense0/batch_normalization/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:
ш
>classification_layers/dense0/batch_normalization/batchnorm/addAdd:classification_layers/dense0/batch_normalization/Squeeze_1@classification_layers/dense0/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:d
Ў
@classification_layers/dense0/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense0/batch_normalization/batchnorm/add*
T0*
_output_shapes
:d
щ
>classification_layers/dense0/batch_normalization/batchnorm/mulMul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrt;classification_layers/dense0/batch_normalization/gamma/read*
_output_shapes
:d*
T0
х
@classification_layers/dense0/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense0/dense/BiasAdd>classification_layers/dense0/batch_normalization/batchnorm/mul*'
_output_shapes
:џџџџџџџџџd*
T0
ц
@classification_layers/dense0/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense0/batch_normalization/Squeeze>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:d
ш
>classification_layers/dense0/batch_normalization/batchnorm/subSub:classification_layers/dense0/batch_normalization/beta/read@classification_layers/dense0/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:d
ћ
@classification_layers/dense0/batch_normalization/batchnorm/add_1Add@classification_layers/dense0/batch_normalization/batchnorm/mul_1>classification_layers/dense0/batch_normalization/batchnorm/sub*
T0*'
_output_shapes
:џџџџџџџџџd
Ѓ
$classification_layers/dense0/SigmoidSigmoid@classification_layers/dense0/batch_normalization/batchnorm/add_1*
T0*'
_output_shapes
:џџџџџџџџџd

*classification_layers/dense0/dropout/ShapeShape$classification_layers/dense0/Sigmoid*
_output_shapes
:*
out_type0*
T0
|
7classification_layers/dense0/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
|
7classification_layers/dense0/dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
ж
Aclassification_layers/dense0/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense0/dropout/Shape*
dtype0*

seed *
T0*'
_output_shapes
:џџџџџџџџџd*
seed2 
б
7classification_layers/dense0/dropout/random_uniform/subSub7classification_layers/dense0/dropout/random_uniform/max7classification_layers/dense0/dropout/random_uniform/min*
T0*
_output_shapes
: 
ь
7classification_layers/dense0/dropout/random_uniform/mulMulAclassification_layers/dense0/dropout/random_uniform/RandomUniform7classification_layers/dense0/dropout/random_uniform/sub*'
_output_shapes
:џџџџџџџџџd*
T0
о
3classification_layers/dense0/dropout/random_uniformAdd7classification_layers/dense0/dropout/random_uniform/mul7classification_layers/dense0/dropout/random_uniform/min*
T0*'
_output_shapes
:џџџџџџџџџd
Њ
(classification_layers/dense0/dropout/addAdd!classification_layers/Placeholder3classification_layers/dense0/dropout/random_uniform*
T0*
_output_shapes
:

*classification_layers/dense0/dropout/FloorFloor(classification_layers/dense0/dropout/add*
_output_shapes
:*
T0

(classification_layers/dense0/dropout/divRealDiv$classification_layers/dense0/Sigmoid!classification_layers/Placeholder*
_output_shapes
:*
T0
З
(classification_layers/dense0/dropout/mulMul(classification_layers/dense0/dropout/div*classification_layers/dense0/dropout/Floor*'
_output_shapes
:џџџџџџџџџd*
T0
л
Lclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB"d   2   
Ю
Kclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB
 *    
а
Mclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB
 *  ?
Ф
Vclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/shape*
_output_shapes

:d2*
dtype0*
seed2 *<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0*

seed 
п
Jclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/stddev*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
Э
Fclassification_layers/dense1/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0
л
)classification_layers/dense1/dense/kernel
VariableV2*
	container *
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
shared_name *
_output_shapes

:d2*
shape
:d2
Н
0classification_layers/dense1/dense/kernel/AssignAssign)classification_layers/dense1/dense/kernelFclassification_layers/dense1/dense/kernel/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
Ь
.classification_layers/dense1/dense/kernel/readIdentity)classification_layers/dense1/dense/kernel*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0
Т
9classification_layers/dense1/dense/bias/Initializer/zerosConst*
_output_shapes
:2*
dtype0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    
Я
'classification_layers/dense1/dense/bias
VariableV2*
shared_name *
shape:2*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
dtype0*
	container 
І
.classification_layers/dense1/dense/bias/AssignAssign'classification_layers/dense1/dense/bias9classification_layers/dense1/dense/bias/Initializer/zeros*
_output_shapes
:2*
validate_shape(*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
T0*
use_locking(
Т
,classification_layers/dense1/dense/bias/readIdentity'classification_layers/dense1/dense/bias*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
T0
х
)classification_layers/dense1/dense/MatMulMatMul(classification_layers/dense0/dropout/mul.classification_layers/dense1/dense/kernel/read*
transpose_b( *'
_output_shapes
:џџџџџџџџџ2*
transpose_a( *
T0
з
*classification_layers/dense1/dense/BiasAddBiasAdd)classification_layers/dense1/dense/MatMul,classification_layers/dense1/dense/bias/read*'
_output_shapes
:џџџџџџџџџ2*
data_formatNHWC*
T0
о
Gclassification_layers/dense1/batch_normalization/beta/Initializer/zerosConst*
_output_shapes
:2*
dtype0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    
ы
5classification_layers/dense1/batch_normalization/beta
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
shared_name *
_output_shapes
:2*
shape:2
о
<classification_layers/dense1/batch_normalization/beta/AssignAssign5classification_layers/dense1/batch_normalization/betaGclassification_layers/dense1/batch_normalization/beta/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
ь
:classification_layers/dense1/batch_normalization/beta/readIdentity5classification_layers/dense1/batch_normalization/beta*
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
п
Gclassification_layers/dense1/batch_normalization/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*  ?
э
6classification_layers/dense1/batch_normalization/gamma
VariableV2*
_output_shapes
:2*
dtype0*
shape:2*
	container *I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
shared_name 
с
=classification_layers/dense1/batch_normalization/gamma/AssignAssign6classification_layers/dense1/batch_normalization/gammaGclassification_layers/dense1/batch_normalization/gamma/Initializer/ones*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
я
;classification_layers/dense1/batch_normalization/gamma/readIdentity6classification_layers/dense1/batch_normalization/gamma*
T0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
ь
Nclassification_layers/dense1/batch_normalization/moving_mean/Initializer/zerosConst*
_output_shapes
:2*
dtype0*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
valueB2*    
љ
<classification_layers/dense1/batch_normalization/moving_mean
VariableV2*
	container *
shared_name *
dtype0*
shape:2*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean
њ
Cclassification_layers/dense1/batch_normalization/moving_mean/AssignAssign<classification_layers/dense1/batch_normalization/moving_meanNclassification_layers/dense1/batch_normalization/moving_mean/Initializer/zeros*
_output_shapes
:2*
validate_shape(*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
T0*
use_locking(

Aclassification_layers/dense1/batch_normalization/moving_mean/readIdentity<classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
T0
ѓ
Qclassification_layers/dense1/batch_normalization/moving_variance/Initializer/onesConst*
_output_shapes
:2*
dtype0*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
valueB2*  ?

@classification_layers/dense1/batch_normalization/moving_variance
VariableV2*
shared_name *
shape:2*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
dtype0*
	container 

Gclassification_layers/dense1/batch_normalization/moving_variance/AssignAssign@classification_layers/dense1/batch_normalization/moving_varianceQclassification_layers/dense1/batch_normalization/moving_variance/Initializer/ones*
_output_shapes
:2*
validate_shape(*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
T0*
use_locking(

Eclassification_layers/dense1/batch_normalization/moving_variance/readIdentity@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
T0

Oclassification_layers/dense1/batch_normalization/moments/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 

=classification_layers/dense1/batch_normalization/moments/MeanMean*classification_layers/dense1/dense/BiasAddOclassification_layers/dense1/batch_normalization/moments/Mean/reduction_indices*
_output_shapes

:2*
T0*
	keep_dims(*

Tidx0
Н
Eclassification_layers/dense1/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense1/batch_normalization/moments/Mean*
T0*
_output_shapes

:2
ш
<classification_layers/dense1/batch_normalization/moments/SubSub*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradient*'
_output_shapes
:џџџџџџџџџ2*
T0
Ё
Wclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
Њ
Eclassification_layers/dense1/batch_normalization/moments/shifted_meanMean<classification_layers/dense1/batch_normalization/moments/SubWclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indices*
_output_shapes

:2*
T0*
	keep_dims(*

Tidx0

Jclassification_layers/dense1/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradient*'
_output_shapes
:џџџџџџџџџ2*
T0

Qclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
Ќ
?classification_layers/dense1/batch_normalization/moments/Mean_1MeanJclassification_layers/dense1/batch_normalization/moments/SquaredDifferenceQclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indices*
_output_shapes

:2*
T0*
	keep_dims(*

Tidx0
Й
?classification_layers/dense1/batch_normalization/moments/SquareSquareEclassification_layers/dense1/batch_normalization/moments/shifted_mean*
_output_shapes

:2*
T0
ѓ
Aclassification_layers/dense1/batch_normalization/moments/varianceSub?classification_layers/dense1/batch_normalization/moments/Mean_1?classification_layers/dense1/batch_normalization/moments/Square*
T0*
_output_shapes

:2
ћ
=classification_layers/dense1/batch_normalization/moments/meanAddEclassification_layers/dense1/batch_normalization/moments/shifted_meanEclassification_layers/dense1/batch_normalization/moments/StopGradient*
_output_shapes

:2*
T0
Ц
@classification_layers/dense1/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense1/batch_normalization/moments/mean*
T0*
_output_shapes
:2*
squeeze_dims
 
Ь
Bclassification_layers/dense1/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense1/batch_normalization/moments/variance*
_output_shapes
:2*
T0*
squeeze_dims
 

?classification_layers/dense1/batch_normalization/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 

;classification_layers/dense1/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense1/batch_normalization/moments/Squeeze?classification_layers/dense1/batch_normalization/ExpandDims/dim*
_output_shapes

:2*
T0*

Tdim0

Aclassification_layers/dense1/batch_normalization/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 

=classification_layers/dense1/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense1/batch_normalization/moving_mean/readAclassification_layers/dense1/batch_normalization/ExpandDims_1/dim*
_output_shapes

:2*
T0*

Tdim0

>classification_layers/dense1/batch_normalization/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
к
8classification_layers/dense1/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense1/batch_normalization/Reshape/shape*
T0
*
_output_shapes
:*
Tshape0
 
7classification_layers/dense1/batch_normalization/SelectSelect8classification_layers/dense1/batch_normalization/Reshape;classification_layers/dense1/batch_normalization/ExpandDims=classification_layers/dense1/batch_normalization/ExpandDims_1*
T0*
_output_shapes

:2
И
8classification_layers/dense1/batch_normalization/SqueezeSqueeze7classification_layers/dense1/batch_normalization/Select*
_output_shapes
:2*
T0*
squeeze_dims
 

Aclassification_layers/dense1/batch_normalization/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
value	B : 

=classification_layers/dense1/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense1/batch_normalization/moments/Squeeze_1Aclassification_layers/dense1/batch_normalization/ExpandDims_2/dim*
_output_shapes

:2*
T0*

Tdim0

Aclassification_layers/dense1/batch_normalization/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
value	B : 

=classification_layers/dense1/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense1/batch_normalization/moving_variance/readAclassification_layers/dense1/batch_normalization/ExpandDims_3/dim*
_output_shapes

:2*
T0*

Tdim0

@classification_layers/dense1/batch_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
о
:classification_layers/dense1/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense1/batch_normalization/Reshape_1/shape*
_output_shapes
:*
Tshape0*
T0

І
9classification_layers/dense1/batch_normalization/Select_1Select:classification_layers/dense1/batch_normalization/Reshape_1=classification_layers/dense1/batch_normalization/ExpandDims_2=classification_layers/dense1/batch_normalization/ExpandDims_3*
_output_shapes

:2*
T0
М
:classification_layers/dense1/batch_normalization/Squeeze_1Squeeze9classification_layers/dense1/batch_normalization/Select_1*
T0*
_output_shapes
:2*
squeeze_dims
 

Cclassification_layers/dense1/batch_normalization/ExpandDims_4/inputConst*
dtype0*
_output_shapes
: *
valueB
 *Єp}?

Aclassification_layers/dense1/batch_normalization/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
value	B : 

=classification_layers/dense1/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense1/batch_normalization/ExpandDims_4/inputAclassification_layers/dense1/batch_normalization/ExpandDims_4/dim*
_output_shapes
:*
T0*

Tdim0

Cclassification_layers/dense1/batch_normalization/ExpandDims_5/inputConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

Aclassification_layers/dense1/batch_normalization/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
value	B : 

=classification_layers/dense1/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense1/batch_normalization/ExpandDims_5/inputAclassification_layers/dense1/batch_normalization/ExpandDims_5/dim*
_output_shapes
:*
T0*

Tdim0

@classification_layers/dense1/batch_normalization/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
о
:classification_layers/dense1/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense1/batch_normalization/Reshape_2/shape*
T0
*
_output_shapes
:*
Tshape0
Ђ
9classification_layers/dense1/batch_normalization/Select_2Select:classification_layers/dense1/batch_normalization/Reshape_2=classification_layers/dense1/batch_normalization/ExpandDims_4=classification_layers/dense1/batch_normalization/ExpandDims_5*
T0*
_output_shapes
:
И
:classification_layers/dense1/batch_normalization/Squeeze_2Squeeze9classification_layers/dense1/batch_normalization/Select_2*
_output_shapes
: *
T0*
squeeze_dims
 
м
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean
С
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense1/batch_normalization/Squeeze_2*
_output_shapes
: *O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
T0
Р
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense1/batch_normalization/moving_mean/read8classification_layers/dense1/batch_normalization/Squeeze*
T0*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean
Я
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub*
T0*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean
к
@classification_layers/dense1/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense1/batch_normalization/moving_meanDclassification_layers/dense1/batch_normalization/AssignMovingAvg/mul*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
T0*
use_locking( 
т
Hclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance
Щ
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense1/batch_normalization/Squeeze_2*
T0*
_output_shapes
: *S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance
Ь
Hclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense1/batch_normalization/moving_variance/read:classification_layers/dense1/batch_normalization/Squeeze_1*
T0*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance
й
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub*
T0*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance
ц
Bclassification_layers/dense1/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense1/batch_normalization/moving_varianceFclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/mul*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
T0*
use_locking( 

@classification_layers/dense1/batch_normalization/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:
ш
>classification_layers/dense1/batch_normalization/batchnorm/addAdd:classification_layers/dense1/batch_normalization/Squeeze_1@classification_layers/dense1/batch_normalization/batchnorm/add/y*
_output_shapes
:2*
T0
Ў
@classification_layers/dense1/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense1/batch_normalization/batchnorm/add*
_output_shapes
:2*
T0
щ
>classification_layers/dense1/batch_normalization/batchnorm/mulMul@classification_layers/dense1/batch_normalization/batchnorm/Rsqrt;classification_layers/dense1/batch_normalization/gamma/read*
_output_shapes
:2*
T0
х
@classification_layers/dense1/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense1/dense/BiasAdd>classification_layers/dense1/batch_normalization/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ2*
T0
ц
@classification_layers/dense1/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense1/batch_normalization/Squeeze>classification_layers/dense1/batch_normalization/batchnorm/mul*
_output_shapes
:2*
T0
ш
>classification_layers/dense1/batch_normalization/batchnorm/subSub:classification_layers/dense1/batch_normalization/beta/read@classification_layers/dense1/batch_normalization/batchnorm/mul_2*
_output_shapes
:2*
T0
ћ
@classification_layers/dense1/batch_normalization/batchnorm/add_1Add@classification_layers/dense1/batch_normalization/batchnorm/mul_1>classification_layers/dense1/batch_normalization/batchnorm/sub*'
_output_shapes
:џџџџџџџџџ2*
T0
Ѓ
$classification_layers/dense1/SigmoidSigmoid@classification_layers/dense1/batch_normalization/batchnorm/add_1*'
_output_shapes
:џџџџџџџџџ2*
T0

*classification_layers/dense1/dropout/ShapeShape$classification_layers/dense1/Sigmoid*
_output_shapes
:*
out_type0*
T0
|
7classification_layers/dense1/dropout/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
|
7classification_layers/dense1/dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
ж
Aclassification_layers/dense1/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense1/dropout/Shape*'
_output_shapes
:џџџџџџџџџ2*
seed2 *
dtype0*
T0*

seed 
б
7classification_layers/dense1/dropout/random_uniform/subSub7classification_layers/dense1/dropout/random_uniform/max7classification_layers/dense1/dropout/random_uniform/min*
_output_shapes
: *
T0
ь
7classification_layers/dense1/dropout/random_uniform/mulMulAclassification_layers/dense1/dropout/random_uniform/RandomUniform7classification_layers/dense1/dropout/random_uniform/sub*'
_output_shapes
:џџџџџџџџџ2*
T0
о
3classification_layers/dense1/dropout/random_uniformAdd7classification_layers/dense1/dropout/random_uniform/mul7classification_layers/dense1/dropout/random_uniform/min*'
_output_shapes
:џџџџџџџџџ2*
T0
Њ
(classification_layers/dense1/dropout/addAdd!classification_layers/Placeholder3classification_layers/dense1/dropout/random_uniform*
_output_shapes
:*
T0

*classification_layers/dense1/dropout/FloorFloor(classification_layers/dense1/dropout/add*
T0*
_output_shapes
:

(classification_layers/dense1/dropout/divRealDiv$classification_layers/dense1/Sigmoid!classification_layers/Placeholder*
T0*
_output_shapes
:
З
(classification_layers/dense1/dropout/mulMul(classification_layers/dense1/dropout/div*classification_layers/dense1/dropout/Floor*'
_output_shapes
:џџџџџџџџџ2*
T0
у
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"2      
ж
Oclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *    
и
Qclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *  ?
а
Zclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
я
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
н
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
у
-classification_layers/dense_last/dense/kernel
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
shared_name *
_output_shapes

:2*
shape
:2
Э
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*
_output_shapes

:2*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
и
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
Ъ
=classification_layers/dense_last/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    
з
+classification_layers/dense_last/dense/bias
VariableV2*
_output_shapes
:*
dtype0*
shape:*
	container *>
_class4
20loc:@classification_layers/dense_last/dense/bias*
shared_name 
Ж
2classification_layers/dense_last/dense/bias/AssignAssign+classification_layers/dense_last/dense/bias=classification_layers/dense_last/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
Ю
0classification_layers/dense_last/dense/bias/readIdentity+classification_layers/dense_last/dense/bias*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0
э
-classification_layers/dense_last/dense/MatMulMatMul(classification_layers/dense1/dropout/mul2classification_layers/dense_last/dense/kernel/read*
transpose_b( *'
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0
у
.classification_layers/dense_last/dense/BiasAddBiasAdd-classification_layers/dense_last/dense/MatMul0classification_layers/dense_last/dense/bias/read*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0

classification_layers/SoftmaxSoftmax.classification_layers/dense_last/dense/BiasAdd*'
_output_shapes
:џџџџџџџџџ*
T0
n
)Evaluation_layers/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ў
'Evaluation_layers/clip_by_value/MinimumMinimumclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*'
_output_shapes
:џџџџџџџџџ*
T0
f
!Evaluation_layers/clip_by_value/yConst*
dtype0*
_output_shapes
: *
valueB
 *џцл.
Ј
Evaluation_layers/clip_by_valueMaximum'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*'
_output_shapes
:џџџџџџџџџ*
T0
o
Evaluation_layers/LogLogEvaluation_layers/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџ
y
Evaluation_layers/mulMulTarget/PlaceholderEvaluation_layers/Log*
T0*'
_output_shapes
:џџџџџџџџџ
q
'Evaluation_layers/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Ї
Evaluation_layers/SumSumEvaluation_layers/mul'Evaluation_layers/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
a
Evaluation_layers/NegNegEvaluation_layers/Sum*#
_output_shapes
:џџџџџџџџџ*
T0
a
Evaluation_layers/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

Evaluation_layers/MeanMeanEvaluation_layers/NegEvaluation_layers/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
d
"Evaluation_layers/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :

Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ
f
$Evaluation_layers/ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
value	B :

Evaluation_layers/ArgMax_1ArgMaxTarget/Placeholder$Evaluation_layers/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ

Evaluation_layers/EqualEqualEvaluation_layers/ArgMaxEvaluation_layers/ArgMax_1*
T0	*#
_output_shapes
:џџџџџџџџџ
|
Evaluation_layers/accracy/CastCastEvaluation_layers/Equal*#
_output_shapes
:џџџџџџџџџ*

DstT0*

SrcT0

i
Evaluation_layers/accracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ѕ
Evaluation_layers/accracy/MeanMeanEvaluation_layers/accracy/CastEvaluation_layers/accracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
z
Evaluation_layers/accuracy/tagsConst*
_output_shapes
: *
dtype0*+
value"B  BEvaluation_layers/accuracy

Evaluation_layers/accuracyScalarSummaryEvaluation_layers/accuracy/tagsEvaluation_layers/accracy/Mean*
_output_shapes
: *
T0
r
Evaluation_layers/loss/tagsConst*
_output_shapes
: *
dtype0*'
valueB BEvaluation_layers/loss
}
Evaluation_layers/lossScalarSummaryEvaluation_layers/loss/tagsEvaluation_layers/Mean*
T0*
_output_shapes
: 
~
!Evaluation_layers/accuracy_1/tagsConst*
_output_shapes
: *
dtype0*-
value$B" BEvaluation_layers/accuracy_1

Evaluation_layers/accuracy_1ScalarSummary!Evaluation_layers/accuracy_1/tagsEvaluation_layers/accracy/Mean*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
T
gradients/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Y
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
}
3gradients/Evaluation_layers/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
А
-gradients/Evaluation_layers/Mean_grad/ReshapeReshapegradients/Fill3gradients/Evaluation_layers/Mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0

+gradients/Evaluation_layers/Mean_grad/ShapeShapeEvaluation_layers/Neg*
T0*
_output_shapes
:*
out_type0
Ю
*gradients/Evaluation_layers/Mean_grad/TileTile-gradients/Evaluation_layers/Mean_grad/Reshape+gradients/Evaluation_layers/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ

-gradients/Evaluation_layers/Mean_grad/Shape_1ShapeEvaluation_layers/Neg*
T0*
_output_shapes
:*
out_type0
p
-gradients/Evaluation_layers/Mean_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
u
+gradients/Evaluation_layers/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ь
*gradients/Evaluation_layers/Mean_grad/ProdProd-gradients/Evaluation_layers/Mean_grad/Shape_1+gradients/Evaluation_layers/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
w
-gradients/Evaluation_layers/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
а
,gradients/Evaluation_layers/Mean_grad/Prod_1Prod-gradients/Evaluation_layers/Mean_grad/Shape_2-gradients/Evaluation_layers/Mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
q
/gradients/Evaluation_layers/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
И
-gradients/Evaluation_layers/Mean_grad/MaximumMaximum,gradients/Evaluation_layers/Mean_grad/Prod_1/gradients/Evaluation_layers/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
Ж
.gradients/Evaluation_layers/Mean_grad/floordivFloorDiv*gradients/Evaluation_layers/Mean_grad/Prod-gradients/Evaluation_layers/Mean_grad/Maximum*
_output_shapes
: *
T0

*gradients/Evaluation_layers/Mean_grad/CastCast.gradients/Evaluation_layers/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
О
-gradients/Evaluation_layers/Mean_grad/truedivRealDiv*gradients/Evaluation_layers/Mean_grad/Tile*gradients/Evaluation_layers/Mean_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ

(gradients/Evaluation_layers/Neg_grad/NegNeg-gradients/Evaluation_layers/Mean_grad/truediv*#
_output_shapes
:џџџџџџџџџ*
T0

*gradients/Evaluation_layers/Sum_grad/ShapeShapeEvaluation_layers/mul*
T0*
_output_shapes
:*
out_type0
k
)gradients/Evaluation_layers/Sum_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
Ј
(gradients/Evaluation_layers/Sum_grad/addAdd'Evaluation_layers/Sum/reduction_indices)gradients/Evaluation_layers/Sum_grad/Size*
_output_shapes
:*
T0
Ў
(gradients/Evaluation_layers/Sum_grad/modFloorMod(gradients/Evaluation_layers/Sum_grad/add)gradients/Evaluation_layers/Sum_grad/Size*
_output_shapes
:*
T0
v
,gradients/Evaluation_layers/Sum_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
r
0gradients/Evaluation_layers/Sum_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
r
0gradients/Evaluation_layers/Sum_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
ъ
*gradients/Evaluation_layers/Sum_grad/rangeRange0gradients/Evaluation_layers/Sum_grad/range/start)gradients/Evaluation_layers/Sum_grad/Size0gradients/Evaluation_layers/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
q
/gradients/Evaluation_layers/Sum_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
Е
)gradients/Evaluation_layers/Sum_grad/FillFill,gradients/Evaluation_layers/Sum_grad/Shape_1/gradients/Evaluation_layers/Sum_grad/Fill/value*
_output_shapes
:*
T0
Ї
2gradients/Evaluation_layers/Sum_grad/DynamicStitchDynamicStitch*gradients/Evaluation_layers/Sum_grad/range(gradients/Evaluation_layers/Sum_grad/mod*gradients/Evaluation_layers/Sum_grad/Shape)gradients/Evaluation_layers/Sum_grad/Fill*
N*
T0*#
_output_shapes
:џџџџџџџџџ
p
.gradients/Evaluation_layers/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
Щ
,gradients/Evaluation_layers/Sum_grad/MaximumMaximum2gradients/Evaluation_layers/Sum_grad/DynamicStitch.gradients/Evaluation_layers/Sum_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
T0
И
-gradients/Evaluation_layers/Sum_grad/floordivFloorDiv*gradients/Evaluation_layers/Sum_grad/Shape,gradients/Evaluation_layers/Sum_grad/Maximum*
_output_shapes
:*
T0
Ц
,gradients/Evaluation_layers/Sum_grad/ReshapeReshape(gradients/Evaluation_layers/Neg_grad/Neg2gradients/Evaluation_layers/Sum_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
в
)gradients/Evaluation_layers/Sum_grad/TileTile,gradients/Evaluation_layers/Sum_grad/Reshape-gradients/Evaluation_layers/Sum_grad/floordiv*'
_output_shapes
:џџџџџџџџџ*
T0*

Tmultiples0
|
*gradients/Evaluation_layers/mul_grad/ShapeShapeTarget/Placeholder*
T0*
_output_shapes
:*
out_type0

,gradients/Evaluation_layers/mul_grad/Shape_1ShapeEvaluation_layers/Log*
T0*
_output_shapes
:*
out_type0
ъ
:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/Evaluation_layers/mul_grad/Shape,gradients/Evaluation_layers/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ѓ
(gradients/Evaluation_layers/mul_grad/mulMul)gradients/Evaluation_layers/Sum_grad/TileEvaluation_layers/Log*
T0*'
_output_shapes
:џџџџџџџџџ
е
(gradients/Evaluation_layers/mul_grad/SumSum(gradients/Evaluation_layers/mul_grad/mul:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Э
,gradients/Evaluation_layers/mul_grad/ReshapeReshape(gradients/Evaluation_layers/mul_grad/Sum*gradients/Evaluation_layers/mul_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0
Ђ
*gradients/Evaluation_layers/mul_grad/mul_1MulTarget/Placeholder)gradients/Evaluation_layers/Sum_grad/Tile*
T0*'
_output_shapes
:џџџџџџџџџ
л
*gradients/Evaluation_layers/mul_grad/Sum_1Sum*gradients/Evaluation_layers/mul_grad/mul_1<gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
г
.gradients/Evaluation_layers/mul_grad/Reshape_1Reshape*gradients/Evaluation_layers/mul_grad/Sum_1,gradients/Evaluation_layers/mul_grad/Shape_1*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0

5gradients/Evaluation_layers/mul_grad/tuple/group_depsNoOp-^gradients/Evaluation_layers/mul_grad/Reshape/^gradients/Evaluation_layers/mul_grad/Reshape_1
Ђ
=gradients/Evaluation_layers/mul_grad/tuple/control_dependencyIdentity,gradients/Evaluation_layers/mul_grad/Reshape6^gradients/Evaluation_layers/mul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*?
_class5
31loc:@gradients/Evaluation_layers/mul_grad/Reshape*
T0
Ј
?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1Identity.gradients/Evaluation_layers/mul_grad/Reshape_16^gradients/Evaluation_layers/mul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*A
_class7
53loc:@gradients/Evaluation_layers/mul_grad/Reshape_1*
T0
в
/gradients/Evaluation_layers/Log_grad/Reciprocal
ReciprocalEvaluation_layers/clip_by_value@^gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:џџџџџџџџџ
г
(gradients/Evaluation_layers/Log_grad/mulMul?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1/gradients/Evaluation_layers/Log_grad/Reciprocal*'
_output_shapes
:џџџџџџџџџ*
T0

4gradients/Evaluation_layers/clip_by_value_grad/ShapeShape'Evaluation_layers/clip_by_value/Minimum*
_output_shapes
:*
out_type0*
T0
y
6gradients/Evaluation_layers/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 

6gradients/Evaluation_layers/clip_by_value_grad/Shape_2Shape(gradients/Evaluation_layers/Log_grad/mul*
_output_shapes
:*
out_type0*
T0

:gradients/Evaluation_layers/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
т
4gradients/Evaluation_layers/clip_by_value_grad/zerosFill6gradients/Evaluation_layers/clip_by_value_grad/Shape_2:gradients/Evaluation_layers/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Щ
;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqualGreaterEqual'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*
T0*'
_output_shapes
:џџџџџџџџџ

Dgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/Evaluation_layers/clip_by_value_grad/Shape6gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

5gradients/Evaluation_layers/clip_by_value_grad/SelectSelect;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqual(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
­
9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot
LogicalNot;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

7gradients/Evaluation_layers/clip_by_value_grad/Select_1Select9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
і
2gradients/Evaluation_layers/clip_by_value_grad/SumSum5gradients/Evaluation_layers/clip_by_value_grad/SelectDgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ы
6gradients/Evaluation_layers/clip_by_value_grad/ReshapeReshape2gradients/Evaluation_layers/clip_by_value_grad/Sum4gradients/Evaluation_layers/clip_by_value_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0
ќ
4gradients/Evaluation_layers/clip_by_value_grad/Sum_1Sum7gradients/Evaluation_layers/clip_by_value_grad/Select_1Fgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
р
8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1Reshape4gradients/Evaluation_layers/clip_by_value_grad/Sum_16gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
Л
?gradients/Evaluation_layers/clip_by_value_grad/tuple/group_depsNoOp7^gradients/Evaluation_layers/clip_by_value_grad/Reshape9^gradients/Evaluation_layers/clip_by_value_grad/Reshape_1
Ъ
Ggradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependencyIdentity6gradients/Evaluation_layers/clip_by_value_grad/Reshape@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*I
_class?
=;loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape*
T0
П
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*
T0*
_output_shapes
: *K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1

<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
_output_shapes
:*
out_type0*
T0

>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
Х
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2ShapeGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency*
_output_shapes
:*
out_type0*
T0

Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
њ
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zerosFill>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:џџџџџџџџџ*
T0
Щ
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqual	LessEqualclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*'
_output_shapes
:џџџџџџџџџ*
T0
 
Lgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Т
=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectSelect@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqualGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:џџџџџџџџџ*
T0
К
Agradients/Evaluation_layers/clip_by_value/Minimum_grad/LogicalNot
LogicalNot@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqual*'
_output_shapes
:џџџџџџџџџ
Х
?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1SelectAgradients/Evaluation_layers/clip_by_value/Minimum_grad/LogicalNotGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:џџџџџџџџџ

:gradients/Evaluation_layers/clip_by_value/Minimum_grad/SumSum=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectLgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0

>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeReshape:gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ*
Tshape0

<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1Sum?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1Ngradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ј
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1Reshape<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
г
Ggradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_depsNoOp?^gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeA^gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1
ъ
Ogradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeH^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ*Q
_classG
ECloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape*
T0
п
Qgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1H^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*
T0*
_output_shapes
: *S
_classI
GEloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1
й
0gradients/classification_layers/Softmax_grad/mulMulOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyclassification_layers/Softmax*
T0*'
_output_shapes
:џџџџџџџџџ

Bgradients/classification_layers/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
ј
0gradients/classification_layers/Softmax_grad/SumSum0gradients/classification_layers/Softmax_grad/mulBgradients/classification_layers/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:џџџџџџџџџ

:gradients/classification_layers/Softmax_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
э
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
№
0gradients/classification_layers/Softmax_grad/subSubOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency4gradients/classification_layers/Softmax_grad/Reshape*'
_output_shapes
:џџџџџџџџџ*
T0
М
2gradients/classification_layers/Softmax_grad/mul_1Mul0gradients/classification_layers/Softmax_grad/subclassification_layers/Softmax*
T0*'
_output_shapes
:џџџџџџџџџ
Ш
Igradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/classification_layers/Softmax_grad/mul_1*
data_formatNHWC*
T0*
_output_shapes
:
з
Ngradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/classification_layers/Softmax_grad/mul_1J^gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
р
Vgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/classification_layers/Softmax_grad/mul_1O^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ*E
_class;
97loc:@gradients/classification_layers/Softmax_grad/mul_1

Xgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradO^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
Б
Cgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulMatMulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency2classification_layers/dense_last/dense/kernel/read*
transpose_b(*'
_output_shapes
:џџџџџџџџџ2*
transpose_a( *
T0
 
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense1/dropout/mulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:2*
transpose_a(*
T0
у
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1

Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџ2*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul*
T0
§
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:2*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
Ў
=gradients/classification_layers/dense1/dropout/mul_grad/ShapeShape(classification_layers/dense1/dropout/div*#
_output_shapes
:џџџџџџџџџ*
out_type0*
T0
В
?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1Shape*classification_layers/dense1/dropout/Floor*
T0*#
_output_shapes
:џџџџџџџџџ*
out_type0
Ѓ
Mgradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense1/dropout/mul_grad/Shape?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
ш
;gradients/classification_layers/dense1/dropout/mul_grad/mulMulUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense1/dropout/Floor*
T0*
_output_shapes
:

;gradients/classification_layers/dense1/dropout/mul_grad/SumSum;gradients/classification_layers/dense1/dropout/mul_grad/mulMgradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ї
?gradients/classification_layers/dense1/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense1/dropout/mul_grad/Sum=gradients/classification_layers/dense1/dropout/mul_grad/Shape*
T0*
_output_shapes
:*
Tshape0
ш
=gradients/classification_layers/dense1/dropout/mul_grad/mul_1Mul(classification_layers/dense1/dropout/divUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:

=gradients/classification_layers/dense1/dropout/mul_grad/Sum_1Sum=gradients/classification_layers/dense1/dropout/mul_grad/mul_1Ogradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
§
Agradients/classification_layers/dense1/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense1/dropout/mul_grad/Sum_1?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
ж
Hgradients/classification_layers/dense1/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense1/dropout/mul_grad/Reshape_1
п
Pgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense1/dropout/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*R
_classH
FDloc:@gradients/classification_layers/dense1/dropout/mul_grad/Reshape
х
Rgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense1/dropout/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense1/dropout/mul_grad/Reshape_1
Ё
=gradients/classification_layers/dense1/dropout/div_grad/ShapeShape$classification_layers/dense1/Sigmoid*
T0*
_output_shapes
:*
out_type0
Љ
?gradients/classification_layers/dense1/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*
T0*#
_output_shapes
:џџџџџџџџџ*
out_type0
Ѓ
Mgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense1/dropout/div_grad/Shape?gradients/classification_layers/dense1/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
т
?gradients/classification_layers/dense1/dropout/div_grad/RealDivRealDivPgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependency!classification_layers/Placeholder*
_output_shapes
:*
T0

;gradients/classification_layers/dense1/dropout/div_grad/SumSum?gradients/classification_layers/dense1/dropout/div_grad/RealDivMgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

?gradients/classification_layers/dense1/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense1/dropout/div_grad/Sum=gradients/classification_layers/dense1/dropout/div_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ2*
Tshape0

;gradients/classification_layers/dense1/dropout/div_grad/NegNeg$classification_layers/dense1/Sigmoid*
T0*'
_output_shapes
:џџџџџџџџџ2
Я
Agradients/classification_layers/dense1/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense1/dropout/div_grad/Neg!classification_layers/Placeholder*
_output_shapes
:*
T0
е
Agradients/classification_layers/dense1/dropout/div_grad/RealDiv_2RealDivAgradients/classification_layers/dense1/dropout/div_grad/RealDiv_1!classification_layers/Placeholder*
T0*
_output_shapes
:
њ
;gradients/classification_layers/dense1/dropout/div_grad/mulMulPgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependencyAgradients/classification_layers/dense1/dropout/div_grad/RealDiv_2*
_output_shapes
:*
T0

=gradients/classification_layers/dense1/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense1/dropout/div_grad/mulOgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
§
Agradients/classification_layers/dense1/dropout/div_grad/Reshape_1Reshape=gradients/classification_layers/dense1/dropout/div_grad/Sum_1?gradients/classification_layers/dense1/dropout/div_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
ж
Hgradients/classification_layers/dense1/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dropout/div_grad/ReshapeB^gradients/classification_layers/dense1/dropout/div_grad/Reshape_1
ю
Pgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dropout/div_grad/ReshapeI^gradients/classification_layers/dense1/dropout/div_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ2*R
_classH
FDloc:@gradients/classification_layers/dense1/dropout/div_grad/Reshape
х
Rgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense1/dropout/div_grad/tuple/group_deps*
T0*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense1/dropout/div_grad/Reshape_1
ј
?gradients/classification_layers/dense1/Sigmoid_grad/SigmoidGradSigmoidGrad$classification_layers/dense1/SigmoidPgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџ2*
T0
е
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense1/batch_normalization/batchnorm/mul_1*
T0*
_output_shapes
:*
out_type0
Ё
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
ы
egradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Т
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/SumSum?gradients/classification_layers/dense1/Sigmoid_grad/SigmoidGradegradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ю
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape*'
_output_shapes
:џџџџџџџџџ2*
Tshape0*
T0
Ц
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Sum_1Sum?gradients/classification_layers/dense1/Sigmoid_grad/SigmoidGradggradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
_output_shapes
:2*
Tshape0

`gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1
Ю
hgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape
Ч
jgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*
_output_shapes
:2*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1
П
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
T0*
_output_shapes
:*
out_type0
Ё
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
ы
egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ж
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense1/batch_normalization/batchnorm/mul*'
_output_shapes
:џџџџџџџџџ2*
T0
ж
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ю
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ2*
Tshape0
Є
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense1/dense/BiasAddhgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:џџџџџџџџџ2
м
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
_output_shapes
:2*
Tshape0

`gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1
Ю
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape
Ч
jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
_output_shapes
:2*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
T0

Sgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2

Ugradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:2
х
cgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
щ
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Л
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape*
T0*
_output_shapes
:2*
Tshape0
э
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
а
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Sum_1*
T0*
_output_shapes
:
П
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*
_output_shapes
:2*
Tshape0

^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1
Й
fgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*
_output_shapes
:2*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape
П
hgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes
:2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1*
T0

Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
Ё
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
ы
egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Љ
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:2
ж
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
С
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape*
T0*
_output_shapes
:2*
Tshape0
Ѕ
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense1/batch_normalization/Squeezehgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
_output_shapes
:2*
T0
м
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ч
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*
_output_shapes
:2*
Tshape0

`gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1
С
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes
:2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape*
T0
Ч
jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*
_output_shapes
:2*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1

Mgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   2   
Ъ
Ogradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/Shape*
_output_shapes

:2*
Tshape0*
T0

gradients/AddNAddNjgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
_output_shapes
:2*
N*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
T0

Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2

Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
х
cgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ъ
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN;classification_layers/dense1/batch_normalization/gamma/read*
T0*
_output_shapes
:2
а
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Л
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape*
T0*
_output_shapes
:2*
Tshape0
б
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense1/batch_normalization/batchnorm/Rsqrtgradients/AddN*
T0*
_output_shapes
:2
ж
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
С
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1*
_output_shapes
:2*
Tshape0*
T0

^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1
Й
fgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*
_output_shapes
:2*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape
П
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*
_output_shapes
:2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1
І
Qgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_likeConst*
_output_shapes

:2*
dtype0*
valueB2*    
о
Mgradients/classification_layers/dense1/batch_normalization/Select_grad/SelectSelect8classification_layers/dense1/batch_normalization/ReshapeOgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_like*
_output_shapes

:2*
T0
р
Ogradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1Select8classification_layers/dense1/batch_normalization/ReshapeQgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/Reshape*
T0*
_output_shapes

:2

Wgradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense1/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1

_gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense1/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_deps*
_output_shapes

:2*`
_classV
TRloc:@gradients/classification_layers/dense1/batch_normalization/Select_grad/Select*
T0
Ѕ
agradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_deps*
T0*
_output_shapes

:2*b
_classX
VTloc:@gradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1
Е
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense1/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:2

Pgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:2
У
Rgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/Shape*
_output_shapes
:2*
Tshape0*
T0

Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:2

Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
х
cgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
и
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Л
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape*
T0*
_output_shapes
:2*
Tshape0
м
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Н
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0

^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1
Й
fgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
:2*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape*
T0
Л
hgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_deps*
T0*
_output_shapes
: *j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1
І
Ugradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   2   
Ф
Wgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Shape*
_output_shapes

:2*
Tshape0*
T0
 
Ogradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   2   
Ь
Qgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/Shape*
T0*
_output_shapes

:2*
Tshape0
Ѓ
Rgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   2   
Ѕ
Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   2   
т
bgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
д
Pgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/SumSumWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Reshapebgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
М
Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape*
T0*
_output_shapes

:2*
Tshape0
и
Rgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Sum_1SumWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Reshapedgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Т
Vgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1*
_output_shapes

:2*
Tshape0*
T0

]gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1
Й
egradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*
_output_shapes

:2*g
_class]
[Yloc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape
П
ggradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*
_output_shapes

:2*i
_class_
][loc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1
Ј
Sgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_likeConst*
_output_shapes

:2*
dtype0*
valueB2*    
ц
Ogradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense1/batch_normalization/Reshape_1Qgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_like*
_output_shapes

:2*
T0
ш
Qgradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense1/batch_normalization/Reshape_1Sgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/Reshape*
T0*
_output_shapes

:2

Ygradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1
Ї
agradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_deps*
T0*
_output_shapes

:2*b
_classX
VTloc:@gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select
­
cgradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_deps*
_output_shapes

:2*d
_classZ
XVloc:@gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1*
T0

Rgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:2
Щ
Tgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/Shape*
T0*
_output_shapes
:2*
Tshape0
Ј
Wgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   2   
Ъ
Ygradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Shape*
T0*
_output_shapes

:2*
Tshape0
Ї
Vgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   2   
Љ
Xgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   2   
ю
fgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
о
Tgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/SumSumYgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Reshapefgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ш
Xgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ReshapeReshapeTgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/SumVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape*
_output_shapes

:2*
Tshape0*
T0
т
Vgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Sum_1SumYgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Reshapehgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ж
Tgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/NegNegVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Sum_1*
_output_shapes
:*
T0
Ь
Zgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1ReshapeTgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/NegXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1*
_output_shapes

:2*
Tshape0*
T0
Ё
agradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1
Щ
igradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_deps*
_output_shapes

:2*k
_classa
_]loc:@gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape*
T0
Я
kgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_deps*
_output_shapes

:2*m
_classc
a_loc:@gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1*
T0
о
Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense1/batch_normalization/moments/SquaredDifference*
_output_shapes
:*
out_type0*
T0

Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :
І
Rgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/addAddQclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indicesSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
Ќ
Rgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/modFloorModRgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/addSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
 
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 

Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/delta*

Tidx0*
_output_shapes
:

Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
Г
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/FillFillVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_1Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill/value*
_output_shapes
:*
T0
љ
\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitchDynamicStitchTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/rangeRgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/modTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
N*
T0

Xgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
Ч
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum/y*
T0*#
_output_shapes
:џџџџџџџџџ
Ж
Wgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum*
_output_shapes
:*
T0
л
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
й
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
р
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense1/batch_normalization/moments/SquaredDifference*
_output_shapes
:*
out_type0*
T0
Ї
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_3Const*
dtype0*
_output_shapes
:*
valueB"   2   

Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ч
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
 
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ы
Ugradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :
З
Xgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1MaximumUgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Prod_1Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1/y*
T0*
_output_shapes
: 
Е
Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv_1FloorDivSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ProdXgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1*
T0*
_output_shapes
: 
ц
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
Н
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Cast*'
_output_shapes
:џџџџџџџџџ2*
T0

Tgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul/xConstl^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1*
dtype0*
_output_shapes
: *
valueB
 *   @

Rgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mulMulTgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul/xEclassification_layers/dense1/batch_normalization/moments/shifted_mean*
T0*
_output_shapes

:2
Х
Tgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul*
T0*
_output_shapes

:2
Щ
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
В
agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   2   

ogradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ў
`gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
а
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:џџџџџџџџџ2
т
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:џџџџџџџџџ2
ж
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/sub*
T0*'
_output_shapes
:џџџџџџџџџ2
і
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ь
agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape*'
_output_shapes
:џџџџџџџџџ2*
Tshape0*
T0
њ
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
щ
cgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*
_output_shapes

:2*
Tshape0
ђ
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
_output_shapes

:2*
T0
Ж
jgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Neg
і
rgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ2*t
_classj
hfloc:@gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape
ч
tgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*
_output_shapes

:2*p
_classf
dbloc:@gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Neg
№
gradients/AddN_1AddNegradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul_1*
_output_shapes

:2*
N*g
_class]
[Yloc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape*
T0
ж
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense1/batch_normalization/moments/Sub*
_output_shapes
:*
out_type0*
T0

Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
И
Xgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/addAddWclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indicesYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size*
_output_shapes
:*
T0
О
Xgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/modFloorModXgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/addYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size*
T0*
_output_shapes
:
І
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
Ђ
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Ђ
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Њ
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/delta*
_output_shapes
:*

Tidx0
Ё
_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
Х
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill/value*
T0*
_output_shapes
:

bgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
N*
T0
 
^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
й
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/MaximumMaximumbgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitch^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum/y*#
_output_shapes
:џџџџџџџџџ*
T0
Ш
]gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordivFloorDivZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum*
T0*
_output_shapes
:

\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_1bgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
ы
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
T0*

Tmultiples0
и
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense1/batch_normalization/moments/Sub*
_output_shapes
:*
out_type0*
T0
­
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   2   
Є
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
й
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
І
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
н
[gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Ђ
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Щ
^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1Maximum[gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod_1`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
Ч
_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv_1FloorDivYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1*
_output_shapes
: *
T0
ђ
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/CastCast_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
Я
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivRealDivYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/TileYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Cast*
T0*'
_output_shapes
:џџџџџџџџџ2
Л
Qgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
Є
Sgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   2   
п
agradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
з
Ogradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Т
Sgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџ2*
Tshape0
л
Qgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Sum_1Sum\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivcgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ь
Ogradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/NegNegQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Sum_1*
_output_shapes
:*
T0
Н
Ugradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1ReshapeOgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/NegSgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1*
T0*
_output_shapes

:2*
Tshape0

\gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1
О
dgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ2*f
_class\
ZXloc:@gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape
Л
fgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_deps*
_output_shapes

:2*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1*
T0
ќ
gradients/AddN_2AddNggradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*
N*
T0*
_output_shapes

:2*i
_class_
][loc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1

gradients/AddN_3AddNhgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency*
N*
T0*'
_output_shapes
:џџџџџџџџџ2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape
Ђ
Egradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
_output_shapes
:2*
data_formatNHWC*
T0
­
Jgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3F^gradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGrad
л
Rgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_3K^gradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџ2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape
ѓ
Tgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:2*X
_classN
LJloc:@gradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGrad
Ѕ
?gradients/classification_layers/dense1/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense1/dense/kernel/read*
transpose_b(*
T0*'
_output_shapes
:џџџџџџџџџd*
transpose_a( 

Agradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense0/dropout/mulRgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:d2*
transpose_a(*
T0
з
Igradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1
№
Qgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџd*R
_classH
FDloc:@gradients/classification_layers/dense1/dense/MatMul_grad/MatMul
э
Sgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:d2*T
_classJ
HFloc:@gradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1*
T0
Ў
=gradients/classification_layers/dense0/dropout/mul_grad/ShapeShape(classification_layers/dense0/dropout/div*#
_output_shapes
:џџџџџџџџџ*
out_type0*
T0
В
?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1Shape*classification_layers/dense0/dropout/Floor*
T0*#
_output_shapes
:џџџџџџџџџ*
out_type0
Ѓ
Mgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/mul_grad/Shape?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ф
;gradients/classification_layers/dense0/dropout/mul_grad/mulMulQgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense0/dropout/Floor*
_output_shapes
:*
T0

;gradients/classification_layers/dense0/dropout/mul_grad/SumSum;gradients/classification_layers/dense0/dropout/mul_grad/mulMgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ї
?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/mul_grad/Sum=gradients/classification_layers/dense0/dropout/mul_grad/Shape*
_output_shapes
:*
Tshape0*
T0
ф
=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Mul(classification_layers/dense0/dropout/divQgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency*
_output_shapes
:*
T0

=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1Sum=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Ogradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
§
Agradients/classification_layers/dense0/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
ж
Hgradients/classification_layers/dense0/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1
п
Pgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
_output_shapes
:*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape*
T0
х
Rgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1
Ё
=gradients/classification_layers/dense0/dropout/div_grad/ShapeShape$classification_layers/dense0/Sigmoid*
_output_shapes
:*
out_type0*
T0
Љ
?gradients/classification_layers/dense0/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*#
_output_shapes
:џџџџџџџџџ*
out_type0*
T0
Ѓ
Mgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/div_grad/Shape?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
т
?gradients/classification_layers/dense0/dropout/div_grad/RealDivRealDivPgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency!classification_layers/Placeholder*
_output_shapes
:*
T0

;gradients/classification_layers/dense0/dropout/div_grad/SumSum?gradients/classification_layers/dense0/dropout/div_grad/RealDivMgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

?gradients/classification_layers/dense0/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/div_grad/Sum=gradients/classification_layers/dense0/dropout/div_grad/Shape*'
_output_shapes
:џџџџџџџџџd*
Tshape0*
T0

;gradients/classification_layers/dense0/dropout/div_grad/NegNeg$classification_layers/dense0/Sigmoid*'
_output_shapes
:џџџџџџџџџd*
T0
Я
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense0/dropout/div_grad/Neg!classification_layers/Placeholder*
_output_shapes
:*
T0
е
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_2RealDivAgradients/classification_layers/dense0/dropout/div_grad/RealDiv_1!classification_layers/Placeholder*
T0*
_output_shapes
:
њ
;gradients/classification_layers/dense0/dropout/div_grad/mulMulPgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyAgradients/classification_layers/dense0/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:

=gradients/classification_layers/dense0/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense0/dropout/div_grad/mulOgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
§
Agradients/classification_layers/dense0/dropout/div_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/div_grad/Sum_1?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
ж
Hgradients/classification_layers/dense0/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/div_grad/ReshapeB^gradients/classification_layers/dense0/dropout/div_grad/Reshape_1
ю
Pgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/div_grad/ReshapeI^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџd*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape*
T0
х
Rgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*
T0*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape_1
ј
?gradients/classification_layers/dense0/Sigmoid_grad/SigmoidGradSigmoidGrad$classification_layers/dense0/SigmoidPgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџd*
T0
е
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense0/batch_normalization/batchnorm/mul_1*
T0*
_output_shapes
:*
out_type0
Ё
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:d
ы
egradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Т
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumSum?gradients/classification_layers/dense0/Sigmoid_grad/SigmoidGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ю
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape*'
_output_shapes
:џџџџџџџџџd*
Tshape0*
T0
Ц
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Sum?gradients/classification_layers/dense0/Sigmoid_grad/SigmoidGradggradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*
_output_shapes
:d*
Tshape0*
T0

`gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1
Ю
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџd*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape*
T0
Ч
jgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
_output_shapes
:d*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1*
T0
П
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
Ё
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:d
ы
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ж
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:џџџџџџџџџd
ж
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ю
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџd*
Tshape0
Є
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense0/dense/BiasAddhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџd*
T0
м
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
_output_shapes
:d*
Tshape0*
T0

`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
Ю
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџd*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
Ч
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
_output_shapes
:d*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
T0

Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:d

Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:d
х
cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
щ
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Л
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape*
_output_shapes
:d*
Tshape0*
T0
э
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
а
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1*
_output_shapes
:*
T0
П
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*
_output_shapes
:d*
Tshape0

^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1
Й
fgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes
:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape*
T0
П
hgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes
:d*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1*
T0

Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:d
Ё
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:d
ы
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Љ
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:d
ж
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
С
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape*
_output_shapes
:d*
Tshape0*
T0
Ѕ
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense0/batch_normalization/Squeezehgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
_output_shapes
:d*
T0
м
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ч
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
_output_shapes
:d*
Tshape0*
T0

`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1
С
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes
:d*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape*
T0
Ч
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*
_output_shapes
:d*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1

Mgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   d   
Ъ
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Shape*
T0*
_output_shapes

:d*
Tshape0

gradients/AddN_4AddNjgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
N*
T0*
_output_shapes
:d*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1

Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:d

Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:d
х
cgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ь
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN_4;classification_layers/dense0/batch_normalization/gamma/read*
T0*
_output_shapes
:d
а
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Л
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape*
_output_shapes
:d*
Tshape0*
T0
г
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtgradients/AddN_4*
_output_shapes
:d*
T0
ж
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
С
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*
T0*
_output_shapes
:d*
Tshape0

^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1
Й
fgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape*
T0
П
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:d*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1*
T0
І
Qgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeConst*
_output_shapes

:d*
dtype0*
valueBd*    
о
Mgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectSelect8classification_layers/dense0/batch_normalization/ReshapeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_like*
T0*
_output_shapes

:d
р
Ogradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1Select8classification_layers/dense0/batch_normalization/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Reshape*
T0*
_output_shapes

:d

Wgradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense0/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1

_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
T0*
_output_shapes

:d*`
_classV
TRloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select
Ѕ
agradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
_output_shapes

:d*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1*
T0
Е
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:d

Pgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d
У
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/Shape*
_output_shapes
:d*
Tshape0*
T0

Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:d

Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
х
cgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
и
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Л
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape*
T0*
_output_shapes
:d*
Tshape0
м
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Н
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0

^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1
Й
fgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape*
T0
Л
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
: *j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1*
T0
І
Ugradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
Ф
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Shape*
_output_shapes

:d*
Tshape0*
T0
 
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
Ь
Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Shape*
T0*
_output_shapes

:d*
Tshape0
Ѓ
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
Ѕ
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"   d   
т
bgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
д
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumSumWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Reshapebgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
М
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape*
_output_shapes

:d*
Tshape0*
T0
и
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1SumWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Reshapedgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Т
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*
T0*
_output_shapes

:d*
Tshape0

]gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1
Й
egradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*
_output_shapes

:d*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape
П
ggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*
_output_shapes

:d*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1
Ј
Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeConst*
dtype0*
_output_shapes

:d*
valueBd*    
ц
Ogradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense0/batch_normalization/Reshape_1Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_like*
_output_shapes

:d*
T0
ш
Qgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Reshape*
_output_shapes

:d*
T0

Ygradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1
Ї
agradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
T0*
_output_shapes

:d*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select
­
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
_output_shapes

:d*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1*
T0

Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:d
Щ
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
T0*
_output_shapes
:d*
Tshape0
Ј
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
Ъ
Ygradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Shape*
_output_shapes

:d*
Tshape0*
T0
Ї
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
Љ
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"   d   
ю
fgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
о
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshapefgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ш
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SumVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape*
T0*
_output_shapes

:d*
Tshape0
т
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshapehgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ж
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/NegNegVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Sum_1*
_output_shapes
:*
T0
Ь
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1ReshapeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/NegXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*
_output_shapes

:d*
Tshape0*
T0
Ё
agradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1
Щ
igradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*
_output_shapes

:d*k
_classa
_]loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape
Я
kgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*
_output_shapes

:d*m
_classc
a_loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1
о
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
_output_shapes
:*
out_type0

Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
І
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addAddQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
Ќ
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modFloorModRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
_output_shapes
:*
T0
 
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 

Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0

Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
Г
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/FillFillVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/value*
T0*
_output_shapes
:
љ
\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchDynamicStitchTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill*
N*
T0*#
_output_shapes
:џџџџџџџџџ

Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
Ч
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/y*
T0*#
_output_shapes
:џџџџџџџџџ
Ж
Wgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum*
T0*
_output_shapes
:
л
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
й
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
р
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
_output_shapes
:*
out_type0*
T0
Ї
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   d   

Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ч
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
 
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Ы
Ugradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0

Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :
З
Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1MaximumUgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/y*
T0*
_output_shapes
: 
Е
Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1FloorDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1*
T0*
_output_shapes
: 
ц
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
Н
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Cast*
T0*'
_output_shapes
:џџџџџџџџџd

Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xConstl^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1*
dtype0*
_output_shapes
: *
valueB
 *   @

Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mulMulTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
_output_shapes

:d*
T0
Х
Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul*
_output_shapes

:d*
T0
Щ
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
В
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   d   

ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ў
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
dtype0*
_output_shapes
: *
valueB
 *   @
а
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:џџџџџџџџџd
т
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:џџџџџџџџџd
ж
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/sub*
T0*'
_output_shapes
:џџџџџџџџџd
і
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
ь
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape*'
_output_shapes
:џџџџџџџџџd*
Tshape0*
T0
њ
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
щ
cgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
_output_shapes

:d*
Tshape0*
T0
ђ
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
_output_shapes

:d*
T0
Ж
jgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg
і
rgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџd*t
_classj
hfloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape
ч
tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
_output_shapes

:d*p
_classf
dbloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg*
T0
№
gradients/AddN_5AddNegradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1*
N*
T0*
_output_shapes

:d*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape
ж
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense0/batch_normalization/moments/Sub*
T0*
_output_shapes
:*
out_type0

Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :
И
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addAddWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
_output_shapes
:*
T0
О
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modFloorModXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
_output_shapes
:*
T0
І
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
Ђ
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
Ђ
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Њ
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/delta*

Tidx0*
_output_shapes
:
Ё
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :
Х
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/value*
_output_shapes
:*
T0

bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill*#
_output_shapes
:џџџџџџџџџ*
N*
T0
 
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
й
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/MaximumMaximumbgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum/y*
T0*#
_output_shapes
:џџџџџџџџџ
Ш
]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordivFloorDivZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum*
_output_shapes
:*
T0

\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_5bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
ы
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
и
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense0/batch_normalization/moments/Sub*
_output_shapes
:*
out_type0*
T0
­
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
dtype0*
_output_shapes
:*
valueB"   d   
Є
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
й
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
І
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
н
[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
Ђ
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
Щ
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1Maximum[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/y*
_output_shapes
: *
T0
Ч
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv_1FloorDivYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1*
T0*
_output_shapes
: 
ђ
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/CastCast_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
Я
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivRealDivYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Cast*'
_output_shapes
:џџџџџџџџџd*
T0
Л
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
Є
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   d   
п
agradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
з
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Т
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape*
T0*'
_output_shapes
:џџџџџџџџџd*
Tshape0
л
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Sum_1Sum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivcgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
Ь
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/NegNegQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Sum_1*
T0*
_output_shapes
:
Н
Ugradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1ReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/NegSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*
_output_shapes

:d*
Tshape0*
T0

\gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1
О
dgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*'
_output_shapes
:џџџџџџџџџd*f
_class\
ZXloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape*
T0
Л
fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*
_output_shapes

:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1*
T0
ќ
gradients/AddN_6AddNggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*
N*
T0*
_output_shapes

:d*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1

gradients/AddN_7AddNhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency*'
_output_shapes
:џџџџџџџџџd*
N*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*
T0
Ђ
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_7*
_output_shapes
:d*
data_formatNHWC*
T0
­
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_7F^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
л
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_7K^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:џџџџџџџџџd*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
ѓ
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:d*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad*
T0
І
?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense0/dense/kernel/read*
transpose_b(*(
_output_shapes
:џџџџџџџџџ*
transpose_a( *
T0

Agradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1MatMulFlatten/ReshapeRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	d*
transpose_a(*
T0
з
Igradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
ё
Qgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:џџџџџџџџџ*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul*
T0
ю
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	d*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1

beta1_power/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *fff?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
­
beta1_power
VariableV2*
	container *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
shared_name *
_output_shapes
: *
shape: 
Ь
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel

beta1_power/readIdentitybeta1_power*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0

beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *wО?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
­
beta2_power
VariableV2*
	container *
shared_name *
dtype0*
shape: *
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
Ь
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel

beta2_power/readIdentitybeta2_power*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
е
@classification_layers/dense0/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	d*
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	d*    
т
.classification_layers/dense0/dense/kernel/Adam
VariableV2*
	container *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
shared_name *
_output_shapes
:	d*
shape:	d
Т
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*
_output_shapes
:	d*
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking(
з
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*
_output_shapes
:	d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
з
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*
_output_shapes
:	d*
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	d*    
ф
0classification_layers/dense0/dense/kernel/Adam_1
VariableV2*
_output_shapes
:	d*
dtype0*
shape:	d*
	container *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
shared_name 
Ш
7classification_layers/dense0/dense/kernel/Adam_1/AssignAssign0classification_layers/dense0/dense/kernel/Adam_1Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
л
5classification_layers/dense0/dense/kernel/Adam_1/readIdentity0classification_layers/dense0/dense/kernel/Adam_1*
T0*
_output_shapes
:	d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
Ч
>classification_layers/dense0/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    
д
,classification_layers/dense0/dense/bias/Adam
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
shared_name *
_output_shapes
:d*
shape:d
Е
3classification_layers/dense0/dense/bias/Adam/AssignAssign,classification_layers/dense0/dense/bias/Adam>classification_layers/dense0/dense/bias/Adam/Initializer/zeros*
_output_shapes
:d*
validate_shape(*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking(
Ь
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
Щ
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:d*
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    
ж
.classification_layers/dense0/dense/bias/Adam_1
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
shared_name *
_output_shapes
:d*
shape:d
Л
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
а
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
у
Lclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zerosConst*
_output_shapes
:d*
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    
№
:classification_layers/dense0/batch_normalization/beta/Adam
VariableV2*
_output_shapes
:d*
dtype0*
shape:d*
	container *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
shared_name 
э
Aclassification_layers/dense0/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense0/batch_normalization/beta/AdamLclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zeros*
_output_shapes
:d*
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking(
і
?classification_layers/dense0/batch_normalization/beta/Adam/readIdentity:classification_layers/dense0/batch_normalization/beta/Adam*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
х
Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    
ђ
<classification_layers/dense0/batch_normalization/beta/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape:d*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
ѓ
Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense0/batch_normalization/beta/Adam_1Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zeros*
_output_shapes
:d*
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking(
њ
Aclassification_layers/dense0/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense0/batch_normalization/beta/Adam_1*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
х
Mclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*    
ђ
;classification_layers/dense0/batch_normalization/gamma/Adam
VariableV2*
_output_shapes
:d*
dtype0*
shape:d*
	container *I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
shared_name 
ё
Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense0/batch_normalization/gamma/AdamMclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
љ
@classification_layers/dense0/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense0/batch_normalization/gamma/Adam*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0
ч
Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zerosConst*
_output_shapes
:d*
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*    
є
=classification_layers/dense0/batch_normalization/gamma/Adam_1
VariableV2*
	container *
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
shared_name *
_output_shapes
:d*
shape:d
ї
Dclassification_layers/dense0/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense0/batch_normalization/gamma/Adam_1Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zeros*
_output_shapes
:d*
validate_shape(*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0*
use_locking(
§
Bclassification_layers/dense0/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense0/batch_normalization/gamma/Adam_1*
T0*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
г
@classification_layers/dense1/dense/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueBd2*    
р
.classification_layers/dense1/dense/kernel/Adam
VariableV2*
	container *
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
shared_name *
_output_shapes

:d2*
shape
:d2
С
5classification_layers/dense1/dense/kernel/Adam/AssignAssign.classification_layers/dense1/dense/kernel/Adam@classification_layers/dense1/dense/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
ж
3classification_layers/dense1/dense/kernel/Adam/readIdentity.classification_layers/dense1/dense/kernel/Adam*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0
е
Bclassification_layers/dense1/dense/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueBd2*    
т
0classification_layers/dense1/dense/kernel/Adam_1
VariableV2*
_output_shapes

:d2*
dtype0*
shape
:d2*
	container *<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
shared_name 
Ч
7classification_layers/dense1/dense/kernel/Adam_1/AssignAssign0classification_layers/dense1/dense/kernel/Adam_1Bclassification_layers/dense1/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
к
5classification_layers/dense1/dense/kernel/Adam_1/readIdentity0classification_layers/dense1/dense/kernel/Adam_1*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
Ч
>classification_layers/dense1/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    
д
,classification_layers/dense1/dense/bias/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:2*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias
Е
3classification_layers/dense1/dense/bias/Adam/AssignAssign,classification_layers/dense1/dense/bias/Adam>classification_layers/dense1/dense/bias/Adam/Initializer/zeros*
_output_shapes
:2*
validate_shape(*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
T0*
use_locking(
Ь
1classification_layers/dense1/dense/bias/Adam/readIdentity,classification_layers/dense1/dense/bias/Adam*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
T0
Щ
@classification_layers/dense1/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    
ж
.classification_layers/dense1/dense/bias/Adam_1
VariableV2*
shared_name *
shape:2*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
dtype0*
	container 
Л
5classification_layers/dense1/dense/bias/Adam_1/AssignAssign.classification_layers/dense1/dense/bias/Adam_1@classification_layers/dense1/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias
а
3classification_layers/dense1/dense/bias/Adam_1/readIdentity.classification_layers/dense1/dense/bias/Adam_1*
T0*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias
у
Lclassification_layers/dense1/batch_normalization/beta/Adam/Initializer/zerosConst*
_output_shapes
:2*
dtype0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    
№
:classification_layers/dense1/batch_normalization/beta/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:2*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
э
Aclassification_layers/dense1/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense1/batch_normalization/beta/AdamLclassification_layers/dense1/batch_normalization/beta/Adam/Initializer/zeros*
_output_shapes
:2*
validate_shape(*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
T0*
use_locking(
і
?classification_layers/dense1/batch_normalization/beta/Adam/readIdentity:classification_layers/dense1/batch_normalization/beta/Adam*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
T0
х
Nclassification_layers/dense1/batch_normalization/beta/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    
ђ
<classification_layers/dense1/batch_normalization/beta/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape:2*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
ѓ
Cclassification_layers/dense1/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense1/batch_normalization/beta/Adam_1Nclassification_layers/dense1/batch_normalization/beta/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
њ
Aclassification_layers/dense1/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense1/batch_normalization/beta/Adam_1*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
T0
х
Mclassification_layers/dense1/batch_normalization/gamma/Adam/Initializer/zerosConst*
_output_shapes
:2*
dtype0*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*    
ђ
;classification_layers/dense1/batch_normalization/gamma/Adam
VariableV2*
	container *
dtype0*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
shared_name *
_output_shapes
:2*
shape:2
ё
Bclassification_layers/dense1/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense1/batch_normalization/gamma/AdamMclassification_layers/dense1/batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
љ
@classification_layers/dense1/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense1/batch_normalization/gamma/Adam*
T0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
ч
Oclassification_layers/dense1/batch_normalization/gamma/Adam_1/Initializer/zerosConst*
_output_shapes
:2*
dtype0*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*    
є
=classification_layers/dense1/batch_normalization/gamma/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape:2*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
ї
Dclassification_layers/dense1/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense1/batch_normalization/gamma/Adam_1Oclassification_layers/dense1/batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
§
Bclassification_layers/dense1/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense1/batch_normalization/gamma/Adam_1*
T0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
л
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB2*    
ш
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*
shared_name *
shape
:2*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
dtype0*
	container 
б
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*
_output_shapes

:2*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
т
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
н
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB2*    
ъ
4classification_layers/dense_last/dense/kernel/Adam_1
VariableV2*
shared_name *
shape
:2*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
dtype0*
	container 
з
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
ц
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
Я
Bclassification_layers/dense_last/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    
м
0classification_layers/dense_last/dense/bias/Adam
VariableV2*
	container *
dtype0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
shared_name *
_output_shapes
:*
shape:
Х
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
и
5classification_layers/dense_last/dense/bias/Adam/readIdentity0classification_layers/dense_last/dense/bias/Adam*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
б
Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    
о
2classification_layers/dense_last/dense/bias/Adam_1
VariableV2*
_output_shapes
:*
dtype0*
shape:*
	container *>
_class4
20loc:@classification_layers/dense_last/dense/bias*
shared_name 
Ы
9classification_layers/dense_last/dense/bias/Adam_1/AssignAssign2classification_layers/dense_last/dense/bias/Adam_1Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
м
7classification_layers/dense_last/dense/bias/Adam_1/readIdentity2classification_layers/dense_last/dense/bias/Adam_1*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0
W
Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o:
O

Adam/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
O

Adam/beta2Const*
_output_shapes
: *
dtype0*
valueB
 *wО?
Q
Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *wЬ+2

?Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense0/dense/kernel.classification_layers/dense0/dense/kernel/Adam0classification_layers/dense0/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:	d*
use_nesterov( *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking( 

=Adam/update_classification_layers/dense0/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense0/dense/bias,classification_layers/dense0/dense/bias/Adam.classification_layers/dense0/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
:d*
use_nesterov( *:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking( 
х
KAdam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense0/batch_normalization/beta:classification_layers/dense0/batch_normalization/beta/Adam<classification_layers/dense0/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
ь
LAdam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense0/batch_normalization/gamma;classification_layers/dense0/batch_normalization/gamma/Adam=classification_layers/dense0/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma

?Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense1/dense/kernel.classification_layers/dense1/dense/kernel/Adam0classification_layers/dense1/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:d2*
use_nesterov( *<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0*
use_locking( 

=Adam/update_classification_layers/dense1/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense1/dense/bias,classification_layers/dense1/dense/bias/Adam.classification_layers/dense1/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
:2*
use_nesterov( *:
_class0
.,loc:@classification_layers/dense1/dense/bias*
T0*
use_locking( 
х
KAdam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense1/batch_normalization/beta:classification_layers/dense1/batch_normalization/beta/Adam<classification_layers/dense1/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
_output_shapes
:2*
use_nesterov( *H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
T0*
use_locking( 
ь
LAdam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense1/batch_normalization/gamma;classification_layers/dense1/batch_normalization/gamma/Adam=classification_layers/dense1/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
_output_shapes
:2*
use_nesterov( *I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
T0*
use_locking( 
В
CAdam/update_classification_layers/dense_last/dense/kernel/ApplyAdam	ApplyAdam-classification_layers/dense_last/dense/kernel2classification_layers/dense_last/dense/kernel/Adam4classification_layers/dense_last/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
use_nesterov( *
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
Ѕ
AAdam/update_classification_layers/dense_last/dense/bias/ApplyAdam	ApplyAdam+classification_layers/dense_last/dense/bias0classification_layers/dense_last/dense/bias/Adam2classification_layers/dense_last/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonXgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
д
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
Д
Adam/AssignAssignbeta1_powerAdam/mul*
_output_shapes
: *
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking( 
ж

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
И
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
validate_shape(*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
ђ
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
ф
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign=^classification_layers/dense0/batch_normalization/beta/Assign>^classification_layers/dense0/batch_normalization/gamma/AssignD^classification_layers/dense0/batch_normalization/moving_mean/AssignH^classification_layers/dense0/batch_normalization/moving_variance/Assign1^classification_layers/dense1/dense/kernel/Assign/^classification_layers/dense1/dense/bias/Assign=^classification_layers/dense1/batch_normalization/beta/Assign>^classification_layers/dense1/batch_normalization/gamma/AssignD^classification_layers/dense1/batch_normalization/moving_mean/AssignH^classification_layers/dense1/batch_normalization/moving_variance/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/AssignB^classification_layers/dense0/batch_normalization/beta/Adam/AssignD^classification_layers/dense0/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense0/batch_normalization/gamma/Adam/AssignE^classification_layers/dense0/batch_normalization/gamma/Adam_1/Assign6^classification_layers/dense1/dense/kernel/Adam/Assign8^classification_layers/dense1/dense/kernel/Adam_1/Assign4^classification_layers/dense1/dense/bias/Adam/Assign6^classification_layers/dense1/dense/bias/Adam_1/AssignB^classification_layers/dense1/batch_normalization/beta/Adam/AssignD^classification_layers/dense1/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense1/batch_normalization/gamma/Adam/AssignE^classification_layers/dense1/batch_normalization/gamma/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign""у0
	variablesе0в0

+classification_layers/dense0/dense/kernel:00classification_layers/dense0/dense/kernel/Assign0classification_layers/dense0/dense/kernel/read:0

)classification_layers/dense0/dense/bias:0.classification_layers/dense0/dense/bias/Assign.classification_layers/dense0/dense/bias/read:0
Е
7classification_layers/dense0/batch_normalization/beta:0<classification_layers/dense0/batch_normalization/beta/Assign<classification_layers/dense0/batch_normalization/beta/read:0
И
8classification_layers/dense0/batch_normalization/gamma:0=classification_layers/dense0/batch_normalization/gamma/Assign=classification_layers/dense0/batch_normalization/gamma/read:0
Ъ
>classification_layers/dense0/batch_normalization/moving_mean:0Cclassification_layers/dense0/batch_normalization/moving_mean/AssignCclassification_layers/dense0/batch_normalization/moving_mean/read:0
ж
Bclassification_layers/dense0/batch_normalization/moving_variance:0Gclassification_layers/dense0/batch_normalization/moving_variance/AssignGclassification_layers/dense0/batch_normalization/moving_variance/read:0

+classification_layers/dense1/dense/kernel:00classification_layers/dense1/dense/kernel/Assign0classification_layers/dense1/dense/kernel/read:0

)classification_layers/dense1/dense/bias:0.classification_layers/dense1/dense/bias/Assign.classification_layers/dense1/dense/bias/read:0
Е
7classification_layers/dense1/batch_normalization/beta:0<classification_layers/dense1/batch_normalization/beta/Assign<classification_layers/dense1/batch_normalization/beta/read:0
И
8classification_layers/dense1/batch_normalization/gamma:0=classification_layers/dense1/batch_normalization/gamma/Assign=classification_layers/dense1/batch_normalization/gamma/read:0
Ъ
>classification_layers/dense1/batch_normalization/moving_mean:0Cclassification_layers/dense1/batch_normalization/moving_mean/AssignCclassification_layers/dense1/batch_normalization/moving_mean/read:0
ж
Bclassification_layers/dense1/batch_normalization/moving_variance:0Gclassification_layers/dense1/batch_normalization/moving_variance/AssignGclassification_layers/dense1/batch_normalization/moving_variance/read:0

/classification_layers/dense_last/dense/kernel:04classification_layers/dense_last/dense/kernel/Assign4classification_layers/dense_last/dense/kernel/read:0

-classification_layers/dense_last/dense/bias:02classification_layers/dense_last/dense/bias/Assign2classification_layers/dense_last/dense/bias/read:0
7
beta1_power:0beta1_power/Assignbeta1_power/read:0
7
beta2_power:0beta2_power/Assignbeta2_power/read:0
 
0classification_layers/dense0/dense/kernel/Adam:05classification_layers/dense0/dense/kernel/Adam/Assign5classification_layers/dense0/dense/kernel/Adam/read:0
І
2classification_layers/dense0/dense/kernel/Adam_1:07classification_layers/dense0/dense/kernel/Adam_1/Assign7classification_layers/dense0/dense/kernel/Adam_1/read:0

.classification_layers/dense0/dense/bias/Adam:03classification_layers/dense0/dense/bias/Adam/Assign3classification_layers/dense0/dense/bias/Adam/read:0
 
0classification_layers/dense0/dense/bias/Adam_1:05classification_layers/dense0/dense/bias/Adam_1/Assign5classification_layers/dense0/dense/bias/Adam_1/read:0
Ф
<classification_layers/dense0/batch_normalization/beta/Adam:0Aclassification_layers/dense0/batch_normalization/beta/Adam/AssignAclassification_layers/dense0/batch_normalization/beta/Adam/read:0
Ъ
>classification_layers/dense0/batch_normalization/beta/Adam_1:0Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignCclassification_layers/dense0/batch_normalization/beta/Adam_1/read:0
Ч
=classification_layers/dense0/batch_normalization/gamma/Adam:0Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignBclassification_layers/dense0/batch_normalization/gamma/Adam/read:0
Э
?classification_layers/dense0/batch_normalization/gamma/Adam_1:0Dclassification_layers/dense0/batch_normalization/gamma/Adam_1/AssignDclassification_layers/dense0/batch_normalization/gamma/Adam_1/read:0
 
0classification_layers/dense1/dense/kernel/Adam:05classification_layers/dense1/dense/kernel/Adam/Assign5classification_layers/dense1/dense/kernel/Adam/read:0
І
2classification_layers/dense1/dense/kernel/Adam_1:07classification_layers/dense1/dense/kernel/Adam_1/Assign7classification_layers/dense1/dense/kernel/Adam_1/read:0

.classification_layers/dense1/dense/bias/Adam:03classification_layers/dense1/dense/bias/Adam/Assign3classification_layers/dense1/dense/bias/Adam/read:0
 
0classification_layers/dense1/dense/bias/Adam_1:05classification_layers/dense1/dense/bias/Adam_1/Assign5classification_layers/dense1/dense/bias/Adam_1/read:0
Ф
<classification_layers/dense1/batch_normalization/beta/Adam:0Aclassification_layers/dense1/batch_normalization/beta/Adam/AssignAclassification_layers/dense1/batch_normalization/beta/Adam/read:0
Ъ
>classification_layers/dense1/batch_normalization/beta/Adam_1:0Cclassification_layers/dense1/batch_normalization/beta/Adam_1/AssignCclassification_layers/dense1/batch_normalization/beta/Adam_1/read:0
Ч
=classification_layers/dense1/batch_normalization/gamma/Adam:0Bclassification_layers/dense1/batch_normalization/gamma/Adam/AssignBclassification_layers/dense1/batch_normalization/gamma/Adam/read:0
Э
?classification_layers/dense1/batch_normalization/gamma/Adam_1:0Dclassification_layers/dense1/batch_normalization/gamma/Adam_1/AssignDclassification_layers/dense1/batch_normalization/gamma/Adam_1/read:0
Ќ
4classification_layers/dense_last/dense/kernel/Adam:09classification_layers/dense_last/dense/kernel/Adam/Assign9classification_layers/dense_last/dense/kernel/Adam/read:0
В
6classification_layers/dense_last/dense/kernel/Adam_1:0;classification_layers/dense_last/dense/kernel/Adam_1/Assign;classification_layers/dense_last/dense/kernel/Adam_1/read:0
І
2classification_layers/dense_last/dense/bias/Adam:07classification_layers/dense_last/dense/bias/Adam/Assign7classification_layers/dense_last/dense/bias/Adam/read:0
Ќ
4classification_layers/dense_last/dense/bias/Adam_1:09classification_layers/dense_last/dense/bias/Adam_1/Assign9classification_layers/dense_last/dense/bias/Adam_1/read:0"
train_op

Adam"І

update_ops

Bclassification_layers/dense0/batch_normalization/AssignMovingAvg:0
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg_1:0
Bclassification_layers/dense1/batch_normalization/AssignMovingAvg:0
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg_1:0"g
	summariesZ
X
Evaluation_layers/accuracy:0
Evaluation_layers/loss:0
Evaluation_layers/accuracy_1:0"џ
trainable_variablesчф

+classification_layers/dense0/dense/kernel:00classification_layers/dense0/dense/kernel/Assign0classification_layers/dense0/dense/kernel/read:0

)classification_layers/dense0/dense/bias:0.classification_layers/dense0/dense/bias/Assign.classification_layers/dense0/dense/bias/read:0
Е
7classification_layers/dense0/batch_normalization/beta:0<classification_layers/dense0/batch_normalization/beta/Assign<classification_layers/dense0/batch_normalization/beta/read:0
И
8classification_layers/dense0/batch_normalization/gamma:0=classification_layers/dense0/batch_normalization/gamma/Assign=classification_layers/dense0/batch_normalization/gamma/read:0

+classification_layers/dense1/dense/kernel:00classification_layers/dense1/dense/kernel/Assign0classification_layers/dense1/dense/kernel/read:0

)classification_layers/dense1/dense/bias:0.classification_layers/dense1/dense/bias/Assign.classification_layers/dense1/dense/bias/read:0
Е
7classification_layers/dense1/batch_normalization/beta:0<classification_layers/dense1/batch_normalization/beta/Assign<classification_layers/dense1/batch_normalization/beta/read:0
И
8classification_layers/dense1/batch_normalization/gamma:0=classification_layers/dense1/batch_normalization/gamma/Assign=classification_layers/dense1/batch_normalization/gamma/read:0

/classification_layers/dense_last/dense/kernel:04classification_layers/dense_last/dense/kernel/Assign4classification_layers/dense_last/dense/kernel/read:0

-classification_layers/dense_last/dense/bias:02classification_layers/dense_last/dense/bias/Assign2classification_layers/dense_last/dense/bias/read:0Ўckr       %:	ѓёЂ^жA*g
!
Evaluation_layers/accuracyю7?

Evaluation_layers/lossQќp?
#
Evaluation_layers/accuracy_1ю7?ЯЅt       _gsв	ЙЂ^жA*g
!
Evaluation_layers/accuracyбm9?

Evaluation_layers/lossёR?
#
Evaluation_layers/accuracy_1бm9?Кё@t       _gsв	9Ђ^жA*g
!
Evaluation_layers/accuracyіЙ9?

Evaluation_layers/loss2LH?
#
Evaluation_layers/accuracy_1іЙ9?Zt       _gsв	{И\Ђ^жA*g
!
Evaluation_layers/accuracyё8?

Evaluation_layers/lossQ??
#
Evaluation_layers/accuracy_1ё8?ћы{§t       _gsв	?Ђ^жA*g
!
Evaluation_layers/accuracy§7?

Evaluation_layers/lossSЛC?
#
Evaluation_layers/accuracy_1§7?ЮЉЄt       _gsв	AбЇЂ^жA*g
!
Evaluation_layers/accuracyбK5?

Evaluation_layers/lossesM?
#
Evaluation_layers/accuracy_1бK5?.wяt       _gsв	МЯЂ^жA*g
!
Evaluation_layers/accuracy,6?

Evaluation_layers/lossфh@?
#
Evaluation_layers/accuracy_1,6?ПYыt       _gsв	щ8јЂ^жA*g
!
Evaluation_layers/accuracyцw5?

Evaluation_layers/lossєЬB?
#
Evaluation_layers/accuracy_1цw5?ђЪuдt       _gsв	ШлЂ^жA*g
!
Evaluation_layers/accuracyш5?

Evaluation_layers/loss 9?
#
Evaluation_layers/accuracy_1ш5?}ot       _gsв	јGЂ^жA	*g
!
Evaluation_layers/accuracyД6?

Evaluation_layers/lossT:?
#
Evaluation_layers/accuracy_1Д6?УХt       _gsв	яOЂ^жA
*g
!
Evaluation_layers/accuracyД5?

Evaluation_layers/lossЦ6A?
#
Evaluation_layers/accuracy_1Д5?Iѓt       _gsв	ЭsПЂ^жA*g
!
Evaluation_layers/accuracyЈ7?

Evaluation_layers/lossT49?
#
Evaluation_layers/accuracy_1Ј7?,Ь:гt       _gsв	NKљЂ^жA*g
!
Evaluation_layers/accuracyа6?

Evaluation_layers/loss 4?
#
Evaluation_layers/accuracy_1а6?­Vt       _gsв	Гќ3Ђ^жA*g
!
Evaluation_layers/accuracyО47?

Evaluation_layers/lossџR7?
#
Evaluation_layers/accuracy_1О47?њT%ўt       _gsв	TmЂ^жA*g
!
Evaluation_layers/accuracyь6?

Evaluation_layers/losss7@?
#
Evaluation_layers/accuracy_1ь6?Јx\Љt       _gsв	ЫЂЂ^жA*g
!
Evaluation_layers/accuracyИ6?

Evaluation_layers/lossЏzC?
#
Evaluation_layers/accuracy_1И6?5рIt       _gsв	SядЂ^жA*g
!
Evaluation_layers/accuracyд5?

Evaluation_layers/lossь\9?
#
Evaluation_layers/accuracy_1д5?|Щt       _gsв	RѓЂ^жA*g
!
Evaluation_layers/accuracyML6?

Evaluation_layers/lossЛх@?
#
Evaluation_layers/accuracy_1ML6?шГ~t       _gsв	в*9Ђ^жA*g
!
Evaluation_layers/accuracy66?

Evaluation_layers/loss#ІK?
#
Evaluation_layers/accuracy_166?zt       _gsв	Ђ	kЂ^жA*g
!
Evaluation_layers/accuracyА5?

Evaluation_layers/lossХ7?
#
Evaluation_layers/accuracy_1А5?Lф	Зt       _gsв	х­ЋЂ^жA*g
!
Evaluation_layers/accuracySX6?

Evaluation_layers/lossшЪ=?
#
Evaluation_layers/accuracy_1SX6?sя9t       _gsв	єгЂ^жA*g
!
Evaluation_layers/accuracyQT6?

Evaluation_layers/loss>wC?
#
Evaluation_layers/accuracy_1QT6?п*Кt       _gsв	#ћЂ^жA*g
!
Evaluation_layers/accuracyЈї4?

Evaluation_layers/loss~VI?
#
Evaluation_layers/accuracy_1Јї4?рЧъкt       _gsв	ЖГ"Ђ^жA*g
!
Evaluation_layers/accuracyџЋ5?

Evaluation_layers/lossоЬK?
#
Evaluation_layers/accuracy_1џЋ5?*[ot       _gsв	zїJЂ^жA*g
!
Evaluation_layers/accuracyъn3?

Evaluation_layers/loss;-D?
#
Evaluation_layers/accuracy_1ъn3?yaVЬt       _gsв	wtЂ^жA*g
!
Evaluation_layers/accuracyюv3?

Evaluation_layers/loss7N?
#
Evaluation_layers/accuracy_1юv3?\tэt       _gsв	ЌЅЂ^жA*g
!
Evaluation_layers/accuracyqv2?

Evaluation_layers/loss|F?
#
Evaluation_layers/accuracy_1qv2?ЭGВt       _gsв	3иЂ^жA*g
!
Evaluation_layers/accuracyъn3?

Evaluation_layers/lossћR?
#
Evaluation_layers/accuracy_1ъn3? рЂt       _gsв	
Ђ^жA*g
!
Evaluation_layers/accuracyЕ3?

Evaluation_layers/lossЧQ?
#
Evaluation_layers/accuracy_1Е3?+Q\t       _gsв	F>Ђ^жA*g
!
Evaluation_layers/accuracyЮ2?

Evaluation_layers/lossяU?
#
Evaluation_layers/accuracy_1Ю2?ЮУt       _gsв	ћЂ^жA*g
!
Evaluation_layers/accuracyѕu1?

Evaluation_layers/lossЯW?
#
Evaluation_layers/accuracy_1ѕu1?{`t       _gsв	PАЂ^жA*g
!
Evaluation_layers/accuracyЎ1?

Evaluation_layers/lossЖB^?
#
Evaluation_layers/accuracy_1Ў1? DСct       _gsв	цWиЂ^жA *g
!
Evaluation_layers/accuracymL.?

Evaluation_layers/lossu^?
#
Evaluation_layers/accuracy_1mL.?tчhЖt       _gsв	$ЕџЂ^жA!*g
!
Evaluation_layers/accuracyэe1?

Evaluation_layers/loss0Z?
#
Evaluation_layers/accuracy_1эe1?J\Тt       _gsв	k(Ђ^жA"*g
!
Evaluation_layers/accuracyH .?

Evaluation_layers/lossВWh?
#
Evaluation_layers/accuracy_1H .?pTt       _gsв	џ§OЂ^жA#*g
!
Evaluation_layers/accuracyuK,?

Evaluation_layers/lossBf?
#
Evaluation_layers/accuracy_1uK,?Г;t       _gsв	QwЂ^жA$*g
!
Evaluation_layers/accuracyx-?

Evaluation_layers/lossiДf?
#
Evaluation_layers/accuracy_1x-?ЧШаt       _gsв	СtЉЂ^жA%*g
!
Evaluation_layers/accuracyИЕ(?

Evaluation_layers/lossв|l?
#
Evaluation_layers/accuracy_1ИЕ(?t       _gsв	ЋслЂ^жA&*g
!
Evaluation_layers/accuracysG,?

Evaluation_layers/loss5kq?
#
Evaluation_layers/accuracy_1sG,?тt       _gsв	ЄЂ^жA'*g
!
Evaluation_layers/accuracyЈ-?

Evaluation_layers/lossC?f?
#
Evaluation_layers/accuracy_1Ј-?BSt       _gsв	ZcЂ^жA(*g
!
Evaluation_layers/accuracyШї,?

Evaluation_layers/loss4mb?
#
Evaluation_layers/accuracy_1Шї,?)SlМt       _gsв	вЂ^жA)*g
!
Evaluation_layers/accuracy
-?

Evaluation_layers/loss{h?
#
Evaluation_layers/accuracy_1
-?eДvTt       _gsв	ЈКЛЂ^жA**g
!
Evaluation_layers/accuracy)Џ+?

Evaluation_layers/lossјІg?
#
Evaluation_layers/accuracy_1)Џ+?<zCt       _gsв	oНуЂ^жA+*g
!
Evaluation_layers/accuracy-?

Evaluation_layers/losso?
#
Evaluation_layers/accuracy_1-?uпЈxt       _gsв	п Ђ^жA,*g
!
Evaluation_layers/accuracyKе'?

Evaluation_layers/lossЂMf?
#
Evaluation_layers/accuracy_1Kе'?0*+ђt       _gsв	у.3Ђ^жA-*g
!
Evaluation_layers/accuracyDј-?

Evaluation_layers/lossЄ"g?
#
Evaluation_layers/accuracy_1Dј-?]]Yt       _gsв	G[ZЂ^жA.*g
!
Evaluation_layers/accuracy~*?

Evaluation_layers/loss№e?
#
Evaluation_layers/accuracy_1~*?ё­t       _gsв	";Ђ^жA/*g
!
Evaluation_layers/accuracyP%?

Evaluation_layers/lossщяf?
#
Evaluation_layers/accuracy_1P%??E§pt       _gsв	- ЖЂ^жA0*g
!
Evaluation_layers/accuracyЋЊ*?

Evaluation_layers/lossиej?
#
Evaluation_layers/accuracy_1ЋЊ*?тйвt       _gsв	БъшЂ^жA1*g
!
Evaluation_layers/accuracyv)?

Evaluation_layers/loss$|h?
#
Evaluation_layers/accuracy_1v)?Ў
t       _gsв	УD4Ђ^жA2*g
!
Evaluation_layers/accuracyДО*?

Evaluation_layers/lossa$]?
#
Evaluation_layers/accuracy_1ДО*?~љ&t       _gsв	dfЂ^жA3*g
!
Evaluation_layers/accuracy(?

Evaluation_layers/lossџa?
#
Evaluation_layers/accuracy_1(?Чџst       _gsв	}gЂ^жA4*g
!
Evaluation_layers/accuracyй-?

Evaluation_layers/lossЧ`?
#
Evaluation_layers/accuracy_1й-?tв(-t       _gsв	ФММЂ^жA5*g
!
Evaluation_layers/accuracyы.+?

Evaluation_layers/loss,Б\?
#
Evaluation_layers/accuracy_1ы.+?Jt       _gsв	R,фЂ^жA6*g
!
Evaluation_layers/accuracyUщ'?

Evaluation_layers/lossБf?
#
Evaluation_layers/accuracy_1Uщ'?$3:Ћt       _gsв	GЂ^жA7*g
!
Evaluation_layers/accuracyQ'?

Evaluation_layers/lossќ[?
#
Evaluation_layers/accuracy_1Q'?УюK№t       _gsв	ОК2Ђ^жA8*g
!
Evaluation_layers/accuracyj)?

Evaluation_layers/losse?
#
Evaluation_layers/accuracy_1j)?ДХ1Уt       _gsв	')ZЂ^жA9*g
!
Evaluation_layers/accuracyT&?

Evaluation_layers/lossЈЂa?
#
Evaluation_layers/accuracy_1T&?ЪХt       _gsв	ИЦЂ^жA:*g
!
Evaluation_layers/accuracyr%(?

Evaluation_layers/lossІЃf?
#
Evaluation_layers/accuracy_1r%(?9§M't       _gsв	юЕЂ^жA;*g
!
Evaluation_layers/accuracy,?

Evaluation_layers/lossЂЄ`?
#
Evaluation_layers/accuracy_1,?тЦBзt       _gsв	wђЂ^жA<*g
!
Evaluation_layers/accuracyгэ(?

Evaluation_layers/lossшY?
#
Evaluation_layers/accuracy_1гэ(?ЎнWXt       _gsв	њЊ7Ђ^жA=*g
!
Evaluation_layers/accuracy/Л+?

Evaluation_layers/loss/е`?
#
Evaluation_layers/accuracy_1/Л+?Х(рt       _gsв	ќCjЂ^жA>*g
!
Evaluation_layers/accuracyb*?

Evaluation_layers/loss^?
#
Evaluation_layers/accuracy_1b*?рLt       _gsв	SЂ^жA?*g
!
Evaluation_layers/accuracy.?

Evaluation_layers/lossЃV?
#
Evaluation_layers/accuracy_1.?LqбЪt       _gsв	6DРЂ^жA@*g
!
Evaluation_layers/accuracy[,?

Evaluation_layers/lossЭUT?
#
Evaluation_layers/accuracy_1[,?Т
^t       _gsв	QvшЂ^жAA*g
!
Evaluation_layers/accuracy0Ў)?

Evaluation_layers/lossT?
#
Evaluation_layers/accuracy_10Ў)?дo t       _gsв	ЅъЂ^жAB*g
!
Evaluation_layers/accuracyл-?

Evaluation_layers/lossѕК>?
#
Evaluation_layers/accuracy_1л-?Еdєit       _gsв	RД7Ђ^жAC*g
!
Evaluation_layers/accuracyqe0?

Evaluation_layers/lossёДI?
#
Evaluation_layers/accuracy_1qe0?Э{Z^t       _gsв	 _Ђ^жAD*g
!
Evaluation_layers/accuracyыP/?

Evaluation_layers/lossЮO?
#
Evaluation_layers/accuracy_1ыP/?t       _gsв	r­Ђ^жAE*g
!
Evaluation_layers/accuracyx.?

Evaluation_layers/lossъG?
#
Evaluation_layers/accuracy_1x.?ъ;ЙHt       _gsв	№љвЂ^жAF*g
!
Evaluation_layers/accuracy0?

Evaluation_layers/loss~A?
#
Evaluation_layers/accuracy_10?ЂSЦt       _gsв	щцЂ^жAG*g
!
Evaluation_layers/accuracyH .?

Evaluation_layers/lossЈ:S?
#
Evaluation_layers/accuracy_1H .?iy1t       _gsв	L9Ђ^жAH*g
!
Evaluation_layers/accuracyЙ/?

Evaluation_layers/lossНЦS?
#
Evaluation_layers/accuracy_1Й/?O(uVt       _gsв	_lЂ^жAI*g
!
Evaluation_layers/accuracyЬџ,?

Evaluation_layers/lossQW?
#
Evaluation_layers/accuracy_1Ьџ,?ћР=зt       _gsв	vЂ^жAJ*g
!
Evaluation_layers/accuracy+Ф-?

Evaluation_layers/loss)W?
#
Evaluation_layers/accuracy_1+Ф-?r-іt       _gsв	Х:СЂ^жAK*g
!
Evaluation_layers/accuracyщ]1?

Evaluation_layers/loss&CJ?
#
Evaluation_layers/accuracy_1щ]1?є4Qut       _gsв	ношЂ^жAL*g
!
Evaluation_layers/accuracyБ/?

Evaluation_layers/losspзQ?
#
Evaluation_layers/accuracy_1Б/?ЈКtыt       _gsв	&Ђ^жAM*g
!
Evaluation_layers/accuracyyu0?

Evaluation_layers/lossM?
#
Evaluation_layers/accuracy_1yu0?1§Pt       _gsв	­9Ђ^жAN*g
!
Evaluation_layers/accuracyљl/?

Evaluation_layers/lossЬtP?
#
Evaluation_layers/accuracy_1љl/?ЩeVt       _gsв	д fЂ^жAO*g
!
Evaluation_layers/accuracyL0?

Evaluation_layers/lossqM?
#
Evaluation_layers/accuracy_1L0?ЮЩt       _gsв	-­Ђ^жAP*g
!
Evaluation_layers/accuracyЪ1?

Evaluation_layers/loss§чH?
#
Evaluation_layers/accuracy_1Ъ1?vэИёt       _gsв	nрЂ^жAQ*g
!
Evaluation_layers/accuracyёm1?

Evaluation_layers/lossAИI?
#
Evaluation_layers/accuracy_1ёm1?Іъ"t       _gsв	!]Ђ^жAR*g
!
Evaluation_layers/accuracyцU1?

Evaluation_layers/loss#~Q?
#
Evaluation_layers/accuracy_1цU1?Ф/t       _gsв	AщEЂ^жAS*g
!
Evaluation_layers/accuracy^_4?

Evaluation_layers/lossЙB?
#
Evaluation_layers/accuracy_1^_4?vGt       _gsв	ЎExЂ^жAT*g
!
Evaluation_layers/accuracyъn3?

Evaluation_layers/losspG?
#
Evaluation_layers/accuracy_1ъn3?аЗЧt       _gsв	гєЄЂ^жAU*g
!
Evaluation_layers/accuracyЄя4?

Evaluation_layers/loss#F?
#
Evaluation_layers/accuracy_1Єя4?№й