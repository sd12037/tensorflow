       �K"	   ��^�Abrain.Event:2��tu��     ��4	����^�A"�
|
Input/PlaceholderPlaceholder*
dtype0* 
shape:���������  *+
_output_shapes
:���������  
u
Target/PlaceholderPlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
g
"controll_normalization/PlaceholderPlaceholder*
dtype0
*
shape:*
_output_shapes
:
^
Flatten/ShapeShapeInput/Placeholder*
_output_shapes
:*
out_type0*
T0
]
Flatten/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
\
Flatten/Slice/sizeConst*
valueB:*
_output_shapes
:*
dtype0
�
Flatten/SliceSliceFlatten/ShapeFlatten/Slice/beginFlatten/Slice/size*
T0*
Index0*
_output_shapes
:
_
Flatten/Slice_1/beginConst*
valueB:*
dtype0*
_output_shapes
:
^
Flatten/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
�
Flatten/Slice_1SliceFlatten/ShapeFlatten/Slice_1/beginFlatten/Slice_1/size*
T0*
Index0*
_output_shapes
:
W
Flatten/ConstConst*
valueB: *
_output_shapes
:*
dtype0
r
Flatten/ProdProdFlatten/Slice_1Flatten/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
X
Flatten/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
w
Flatten/ExpandDims
ExpandDimsFlatten/ProdFlatten/ExpandDims/dim*

Tdim0*
_output_shapes
:*
T0
U
Flatten/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
~
Flatten/ReshapeReshapeInput/PlaceholderFlatten/concat*
Tshape0*(
_output_shapes
:����������*
T0
f
!classification_layers/PlaceholderPlaceholder*
_output_shapes
:*
dtype0*
shape:
�
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB"   d   
�
Kclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/meanConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Mclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddevConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
Vclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shape*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d*
T0*
dtype0*
seed2 *

seed 
�
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes
:	�d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*
T0*
_output_shapes
:	�d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
)classification_layers/dense0/dense/kernel
VariableV2*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d*
shape:	�d*
dtype0*
shared_name *
	container 
�
0classification_layers/dense0/dense/kernel/AssignAssign)classification_layers/dense0/dense/kernelFclassification_layers/dense0/dense/kernel/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*
T0*
_output_shapes
:	�d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
9classification_layers/dense0/dense/bias/Initializer/zerosConst*
_output_shapes
:d*
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    
�
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
�
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
,classification_layers/dense0/dense/bias/readIdentity'classification_layers/dense0/dense/bias*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
)classification_layers/dense0/dense/MatMulMatMulFlatten/Reshape.classification_layers/dense0/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������d*
transpose_a( 
�
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*'
_output_shapes
:���������d*
T0*
data_formatNHWC
�
Gclassification_layers/dense0/batch_normalization/beta/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    *
_output_shapes
:d*
dtype0
�
5classification_layers/dense0/batch_normalization/beta
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d*
shape:d*
shared_name 
�
<classification_layers/dense0/batch_normalization/beta/AssignAssign5classification_layers/dense0/batch_normalization/betaGclassification_layers/dense0/batch_normalization/beta/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
:classification_layers/dense0/batch_normalization/beta/readIdentity5classification_layers/dense0/batch_normalization/beta*
T0*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
Gclassification_layers/dense0/batch_normalization/gamma/Initializer/onesConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*  �?*
dtype0*
_output_shapes
:d
�
6classification_layers/dense0/batch_normalization/gamma
VariableV2*
	container *
shared_name *
dtype0*
shape:d*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
=classification_layers/dense0/batch_normalization/gamma/AssignAssign6classification_layers/dense0/batch_normalization/gammaGclassification_layers/dense0/batch_normalization/gamma/Initializer/ones*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
�
;classification_layers/dense0/batch_normalization/gamma/readIdentity6classification_layers/dense0/batch_normalization/gamma*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d
�
Nclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
valueBd*    
�
<classification_layers/dense0/batch_normalization/moving_mean
VariableV2*
shared_name *
shape:d*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
dtype0*
	container 
�
Cclassification_layers/dense0/batch_normalization/moving_mean/AssignAssign<classification_layers/dense0/batch_normalization/moving_meanNclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zeros*
_output_shapes
:d*
validate_shape(*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0*
use_locking(
�
Aclassification_layers/dense0/batch_normalization/moving_mean/readIdentity<classification_layers/dense0/batch_normalization/moving_mean*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:d*
T0
�
Qclassification_layers/dense0/batch_normalization/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
valueBd*  �?
�
@classification_layers/dense0/batch_normalization/moving_variance
VariableV2*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d*
shape:d*
dtype0*
shared_name *
	container 
�
Gclassification_layers/dense0/batch_normalization/moving_variance/AssignAssign@classification_layers/dense0/batch_normalization/moving_varianceQclassification_layers/dense0/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:d
�
Eclassification_layers/dense0/batch_normalization/moving_variance/readIdentity@classification_layers/dense0/batch_normalization/moving_variance*
T0*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Oclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
�
=classification_layers/dense0/batch_normalization/moments/MeanMean*classification_layers/dense0/dense/BiasAddOclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indices*
_output_shapes

:d*
T0*
	keep_dims(*

Tidx0
�
Eclassification_layers/dense0/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense0/batch_normalization/moments/Mean*
_output_shapes

:d*
T0
�
<classification_layers/dense0/batch_normalization/moments/SubSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*'
_output_shapes
:���������d*
T0
�
Wclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
�
Eclassification_layers/dense0/batch_normalization/moments/shifted_meanMean<classification_layers/dense0/batch_normalization/moments/SubWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indices*
_output_shapes

:d*
T0*
	keep_dims(*

Tidx0
�
Jclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:���������d
�
Qclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
�
?classification_layers/dense0/batch_normalization/moments/Mean_1MeanJclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:d
�
?classification_layers/dense0/batch_normalization/moments/SquareSquareEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
_output_shapes

:d*
T0
�
Aclassification_layers/dense0/batch_normalization/moments/varianceSub?classification_layers/dense0/batch_normalization/moments/Mean_1?classification_layers/dense0/batch_normalization/moments/Square*
T0*
_output_shapes

:d
�
=classification_layers/dense0/batch_normalization/moments/meanAddEclassification_layers/dense0/batch_normalization/moments/shifted_meanEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*
_output_shapes

:d
�
@classification_layers/dense0/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense0/batch_normalization/moments/mean*
squeeze_dims
 *
T0*
_output_shapes
:d
�
Bclassification_layers/dense0/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense0/batch_normalization/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:d
�
?classification_layers/dense0/batch_normalization/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
;classification_layers/dense0/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense0/batch_normalization/moments/Squeeze?classification_layers/dense0/batch_normalization/ExpandDims/dim*

Tdim0*
_output_shapes

:d*
T0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_1/dimConst*
value	B : *
_output_shapes
: *
dtype0
�
=classification_layers/dense0/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense0/batch_normalization/moving_mean/readAclassification_layers/dense0/batch_normalization/ExpandDims_1/dim*
_output_shapes

:d*
T0*

Tdim0
�
>classification_layers/dense0/batch_normalization/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
�
8classification_layers/dense0/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense0/batch_normalization/Reshape/shape*
Tshape0*
_output_shapes
:*
T0

�
7classification_layers/dense0/batch_normalization/SelectSelect8classification_layers/dense0/batch_normalization/Reshape;classification_layers/dense0/batch_normalization/ExpandDims=classification_layers/dense0/batch_normalization/ExpandDims_1*
T0*
_output_shapes

:d
�
8classification_layers/dense0/batch_normalization/SqueezeSqueeze7classification_layers/dense0/batch_normalization/Select*
squeeze_dims
 *
T0*
_output_shapes
:d
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dimConst*
value	B : *
_output_shapes
: *
dtype0
�
=classification_layers/dense0/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense0/batch_normalization/moments/Squeeze_1Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes

:d
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense0/batch_normalization/moving_variance/readAclassification_layers/dense0/batch_normalization/ExpandDims_3/dim*
_output_shapes

:d*
T0*

Tdim0
�
@classification_layers/dense0/batch_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
:classification_layers/dense0/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_1/shape*
Tshape0*
_output_shapes
:*
T0

�
9classification_layers/dense0/batch_normalization/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1=classification_layers/dense0/batch_normalization/ExpandDims_2=classification_layers/dense0/batch_normalization/ExpandDims_3*
T0*
_output_shapes

:d
�
:classification_layers/dense0/batch_normalization/Squeeze_1Squeeze9classification_layers/dense0/batch_normalization/Select_1*
squeeze_dims
 *
_output_shapes
:d*
T0
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_4/inputConst*
valueB
 *�p}?*
_output_shapes
: *
dtype0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_4/dimConst*
value	B : *
_output_shapes
: *
dtype0
�
=classification_layers/dense0/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*

Tdim0*
_output_shapes
:*
T0
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_5/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_5/inputAclassification_layers/dense0/batch_normalization/ExpandDims_5/dim*
T0*
_output_shapes
:*

Tdim0
�
@classification_layers/dense0/batch_normalization/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
�
:classification_layers/dense0/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_2/shape*
Tshape0*
_output_shapes
:*
T0

�
9classification_layers/dense0/batch_normalization/Select_2Select:classification_layers/dense0/batch_normalization/Reshape_2=classification_layers/dense0/batch_normalization/ExpandDims_4=classification_layers/dense0/batch_normalization/ExpandDims_5*
_output_shapes
:*
T0
�
:classification_layers/dense0/batch_normalization/Squeeze_2Squeeze9classification_layers/dense0/batch_normalization/Select_2*
T0*
_output_shapes
: *
squeeze_dims
 
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/xConst*
valueB
 *  �?*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
dtype0*
_output_shapes
: 
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*
_output_shapes
: *O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense0/batch_normalization/moving_mean/read8classification_layers/dense0/batch_normalization/Squeeze*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:d*
T0
�
@classification_layers/dense0/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense0/batch_normalization/moving_meanDclassification_layers/dense0/batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:d
�
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/xConst*
valueB
 *  �?*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
: *
dtype0
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*
_output_shapes
: *S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0
�
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense0/batch_normalization/moving_variance/read:classification_layers/dense0/batch_normalization/Squeeze_1*
T0*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d
�
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense0/batch_normalization/moving_varianceFclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mul*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d*
T0*
use_locking( 
�
@classification_layers/dense0/batch_normalization/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
>classification_layers/dense0/batch_normalization/batchnorm/addAdd:classification_layers/dense0/batch_normalization/Squeeze_1@classification_layers/dense0/batch_normalization/batchnorm/add/y*
_output_shapes
:d*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense0/batch_normalization/batchnorm/add*
T0*
_output_shapes
:d
�
>classification_layers/dense0/batch_normalization/batchnorm/mulMul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrt;classification_layers/dense0/batch_normalization/gamma/read*
_output_shapes
:d*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense0/dense/BiasAdd>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:���������d
�
@classification_layers/dense0/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense0/batch_normalization/Squeeze>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:d
�
>classification_layers/dense0/batch_normalization/batchnorm/subSub:classification_layers/dense0/batch_normalization/beta/read@classification_layers/dense0/batch_normalization/batchnorm/mul_2*
_output_shapes
:d*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/add_1Add@classification_layers/dense0/batch_normalization/batchnorm/mul_1>classification_layers/dense0/batch_normalization/batchnorm/sub*
T0*'
_output_shapes
:���������d
�
!classification_layers/dense0/ReluRelu@classification_layers/dense0/batch_normalization/batchnorm/add_1*
T0*'
_output_shapes
:���������d
�
*classification_layers/dense0/dropout/ShapeShape!classification_layers/dense0/Relu*
T0*
out_type0*
_output_shapes
:
|
7classification_layers/dense0/dropout/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
|
7classification_layers/dense0/dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
Aclassification_layers/dense0/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense0/dropout/Shape*

seed *
T0*
dtype0*'
_output_shapes
:���������d*
seed2 
�
7classification_layers/dense0/dropout/random_uniform/subSub7classification_layers/dense0/dropout/random_uniform/max7classification_layers/dense0/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
7classification_layers/dense0/dropout/random_uniform/mulMulAclassification_layers/dense0/dropout/random_uniform/RandomUniform7classification_layers/dense0/dropout/random_uniform/sub*'
_output_shapes
:���������d*
T0
�
3classification_layers/dense0/dropout/random_uniformAdd7classification_layers/dense0/dropout/random_uniform/mul7classification_layers/dense0/dropout/random_uniform/min*'
_output_shapes
:���������d*
T0
�
(classification_layers/dense0/dropout/addAdd!classification_layers/Placeholder3classification_layers/dense0/dropout/random_uniform*
T0*
_output_shapes
:
�
*classification_layers/dense0/dropout/FloorFloor(classification_layers/dense0/dropout/add*
_output_shapes
:*
T0
�
(classification_layers/dense0/dropout/divRealDiv!classification_layers/dense0/Relu!classification_layers/Placeholder*
T0*
_output_shapes
:
�
(classification_layers/dense0/dropout/mulMul(classification_layers/dense0/dropout/div*classification_layers/dense0/dropout/Floor*
T0*'
_output_shapes
:���������d
�
Lclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB"d   2   
�
Kclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB
 *    
�
Mclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/stddevConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Vclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/shape*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
dtype0*

seed *
T0*
seed2 
�
Jclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0
�
Fclassification_layers/dense1/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0
�
)classification_layers/dense1/dense/kernel
VariableV2*
shared_name *
shape
:d2*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
dtype0*
	container 
�
0classification_layers/dense1/dense/kernel/AssignAssign)classification_layers/dense1/dense/kernelFclassification_layers/dense1/dense/kernel/Initializer/truncated_normal*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
T0*
validate_shape(*
use_locking(
�
.classification_layers/dense1/dense/kernel/readIdentity)classification_layers/dense1/dense/kernel*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
�
9classification_layers/dense1/dense/bias/Initializer/zerosConst*
_output_shapes
:2*
dtype0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    
�
'classification_layers/dense1/dense/bias
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
shared_name *
_output_shapes
:2*
shape:2
�
.classification_layers/dense1/dense/bias/AssignAssign'classification_layers/dense1/dense/bias9classification_layers/dense1/dense/bias/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
�
,classification_layers/dense1/dense/bias/readIdentity'classification_layers/dense1/dense/bias*
T0*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias
�
)classification_layers/dense1/dense/MatMulMatMul(classification_layers/dense0/dropout/mul.classification_layers/dense1/dense/kernel/read*
transpose_b( *'
_output_shapes
:���������2*
transpose_a( *
T0
�
*classification_layers/dense1/dense/BiasAddBiasAdd)classification_layers/dense1/dense/MatMul,classification_layers/dense1/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������2
�
Gclassification_layers/dense1/batch_normalization/beta/Initializer/zerosConst*
_output_shapes
:2*
dtype0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    
�
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
�
<classification_layers/dense1/batch_normalization/beta/AssignAssign5classification_layers/dense1/batch_normalization/betaGclassification_layers/dense1/batch_normalization/beta/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
�
:classification_layers/dense1/batch_normalization/beta/readIdentity5classification_layers/dense1/batch_normalization/beta*
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
�
Gclassification_layers/dense1/batch_normalization/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*  �?
�
6classification_layers/dense1/batch_normalization/gamma
VariableV2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
shape:2*
dtype0*
shared_name *
	container 
�
=classification_layers/dense1/batch_normalization/gamma/AssignAssign6classification_layers/dense1/batch_normalization/gammaGclassification_layers/dense1/batch_normalization/gamma/Initializer/ones*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
�
;classification_layers/dense1/batch_normalization/gamma/readIdentity6classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
T0
�
Nclassification_layers/dense1/batch_normalization/moving_mean/Initializer/zerosConst*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
valueB2*    *
dtype0*
_output_shapes
:2
�
<classification_layers/dense1/batch_normalization/moving_mean
VariableV2*
shared_name *
shape:2*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
dtype0*
	container 
�
Cclassification_layers/dense1/batch_normalization/moving_mean/AssignAssign<classification_layers/dense1/batch_normalization/moving_meanNclassification_layers/dense1/batch_normalization/moving_mean/Initializer/zeros*
_output_shapes
:2*
validate_shape(*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
T0*
use_locking(
�
Aclassification_layers/dense1/batch_normalization/moving_mean/readIdentity<classification_layers/dense1/batch_normalization/moving_mean*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2*
T0
�
Qclassification_layers/dense1/batch_normalization/moving_variance/Initializer/onesConst*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
valueB2*  �?*
dtype0*
_output_shapes
:2
�
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
�
Gclassification_layers/dense1/batch_normalization/moving_variance/AssignAssign@classification_layers/dense1/batch_normalization/moving_varianceQclassification_layers/dense1/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance
�
Eclassification_layers/dense1/batch_normalization/moving_variance/readIdentity@classification_layers/dense1/batch_normalization/moving_variance*
T0*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance
�
Oclassification_layers/dense1/batch_normalization/moments/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
=classification_layers/dense1/batch_normalization/moments/MeanMean*classification_layers/dense1/dense/BiasAddOclassification_layers/dense1/batch_normalization/moments/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:2
�
Eclassification_layers/dense1/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense1/batch_normalization/moments/Mean*
T0*
_output_shapes

:2
�
<classification_layers/dense1/batch_normalization/moments/SubSub*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:���������2
�
Wclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
�
Eclassification_layers/dense1/batch_normalization/moments/shifted_meanMean<classification_layers/dense1/batch_normalization/moments/SubWclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indices*
_output_shapes

:2*
T0*
	keep_dims(*

Tidx0
�
Jclassification_layers/dense1/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:���������2
�
Qclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
�
?classification_layers/dense1/batch_normalization/moments/Mean_1MeanJclassification_layers/dense1/batch_normalization/moments/SquaredDifferenceQclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indices*
_output_shapes

:2*
T0*
	keep_dims(*

Tidx0
�
?classification_layers/dense1/batch_normalization/moments/SquareSquareEclassification_layers/dense1/batch_normalization/moments/shifted_mean*
T0*
_output_shapes

:2
�
Aclassification_layers/dense1/batch_normalization/moments/varianceSub?classification_layers/dense1/batch_normalization/moments/Mean_1?classification_layers/dense1/batch_normalization/moments/Square*
_output_shapes

:2*
T0
�
=classification_layers/dense1/batch_normalization/moments/meanAddEclassification_layers/dense1/batch_normalization/moments/shifted_meanEclassification_layers/dense1/batch_normalization/moments/StopGradient*
T0*
_output_shapes

:2
�
@classification_layers/dense1/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense1/batch_normalization/moments/mean*
T0*
_output_shapes
:2*
squeeze_dims
 
�
Bclassification_layers/dense1/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense1/batch_normalization/moments/variance*
squeeze_dims
 *
_output_shapes
:2*
T0
�
?classification_layers/dense1/batch_normalization/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
;classification_layers/dense1/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense1/batch_normalization/moments/Squeeze?classification_layers/dense1/batch_normalization/ExpandDims/dim*
_output_shapes

:2*
T0*

Tdim0
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense1/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense1/batch_normalization/moving_mean/readAclassification_layers/dense1/batch_normalization/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:2
�
>classification_layers/dense1/batch_normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
8classification_layers/dense1/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense1/batch_normalization/Reshape/shape*
T0
*
_output_shapes
:*
Tshape0
�
7classification_layers/dense1/batch_normalization/SelectSelect8classification_layers/dense1/batch_normalization/Reshape;classification_layers/dense1/batch_normalization/ExpandDims=classification_layers/dense1/batch_normalization/ExpandDims_1*
T0*
_output_shapes

:2
�
8classification_layers/dense1/batch_normalization/SqueezeSqueeze7classification_layers/dense1/batch_normalization/Select*
T0*
_output_shapes
:2*
squeeze_dims
 
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense1/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense1/batch_normalization/moments/Squeeze_1Aclassification_layers/dense1/batch_normalization/ExpandDims_2/dim*
T0*
_output_shapes

:2*

Tdim0
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense1/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense1/batch_normalization/moving_variance/readAclassification_layers/dense1/batch_normalization/ExpandDims_3/dim*

Tdim0*
_output_shapes

:2*
T0
�
@classification_layers/dense1/batch_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
:classification_layers/dense1/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense1/batch_normalization/Reshape_1/shape*
Tshape0*
_output_shapes
:*
T0

�
9classification_layers/dense1/batch_normalization/Select_1Select:classification_layers/dense1/batch_normalization/Reshape_1=classification_layers/dense1/batch_normalization/ExpandDims_2=classification_layers/dense1/batch_normalization/ExpandDims_3*
_output_shapes

:2*
T0
�
:classification_layers/dense1/batch_normalization/Squeeze_1Squeeze9classification_layers/dense1/batch_normalization/Select_1*
_output_shapes
:2*
T0*
squeeze_dims
 
�
Cclassification_layers/dense1/batch_normalization/ExpandDims_4/inputConst*
_output_shapes
: *
dtype0*
valueB
 *�p}?
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_4/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense1/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense1/batch_normalization/ExpandDims_4/inputAclassification_layers/dense1/batch_normalization/ExpandDims_4/dim*

Tdim0*
T0*
_output_shapes
:
�
Cclassification_layers/dense1/batch_normalization/ExpandDims_5/inputConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_5/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense1/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense1/batch_normalization/ExpandDims_5/inputAclassification_layers/dense1/batch_normalization/ExpandDims_5/dim*

Tdim0*
T0*
_output_shapes
:
�
@classification_layers/dense1/batch_normalization/Reshape_2/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
:classification_layers/dense1/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense1/batch_normalization/Reshape_2/shape*
_output_shapes
:*
Tshape0*
T0

�
9classification_layers/dense1/batch_normalization/Select_2Select:classification_layers/dense1/batch_normalization/Reshape_2=classification_layers/dense1/batch_normalization/ExpandDims_4=classification_layers/dense1/batch_normalization/ExpandDims_5*
_output_shapes
:*
T0
�
:classification_layers/dense1/batch_normalization/Squeeze_2Squeeze9classification_layers/dense1/batch_normalization/Select_2*
_output_shapes
: *
T0*
squeeze_dims
 
�
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean
�
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense1/batch_normalization/Squeeze_2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
: *
T0
�
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense1/batch_normalization/moving_mean/read8classification_layers/dense1/batch_normalization/Squeeze*
T0*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean
�
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
T0
�
@classification_layers/dense1/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense1/batch_normalization/moving_meanDclassification_layers/dense1/batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2
�
Hclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub/xConst*
valueB
 *  �?*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
: *
dtype0
�
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense1/batch_normalization/Squeeze_2*
T0*
_output_shapes
: *S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance
�
Hclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense1/batch_normalization/moving_variance/read:classification_layers/dense1/batch_normalization/Squeeze_1*
T0*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2
�
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
T0
�
Bclassification_layers/dense1/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense1/batch_normalization/moving_varianceFclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/mul*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2*
T0*
use_locking( 
�
@classification_layers/dense1/batch_normalization/batchnorm/add/yConst*
valueB
 *o�:*
_output_shapes
: *
dtype0
�
>classification_layers/dense1/batch_normalization/batchnorm/addAdd:classification_layers/dense1/batch_normalization/Squeeze_1@classification_layers/dense1/batch_normalization/batchnorm/add/y*
_output_shapes
:2*
T0
�
@classification_layers/dense1/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense1/batch_normalization/batchnorm/add*
T0*
_output_shapes
:2
�
>classification_layers/dense1/batch_normalization/batchnorm/mulMul@classification_layers/dense1/batch_normalization/batchnorm/Rsqrt;classification_layers/dense1/batch_normalization/gamma/read*
T0*
_output_shapes
:2
�
@classification_layers/dense1/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense1/dense/BiasAdd>classification_layers/dense1/batch_normalization/batchnorm/mul*'
_output_shapes
:���������2*
T0
�
@classification_layers/dense1/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense1/batch_normalization/Squeeze>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:2
�
>classification_layers/dense1/batch_normalization/batchnorm/subSub:classification_layers/dense1/batch_normalization/beta/read@classification_layers/dense1/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:2
�
@classification_layers/dense1/batch_normalization/batchnorm/add_1Add@classification_layers/dense1/batch_normalization/batchnorm/mul_1>classification_layers/dense1/batch_normalization/batchnorm/sub*
T0*'
_output_shapes
:���������2
�
!classification_layers/dense1/ReluRelu@classification_layers/dense1/batch_normalization/batchnorm/add_1*'
_output_shapes
:���������2*
T0
�
*classification_layers/dense1/dropout/ShapeShape!classification_layers/dense1/Relu*
T0*
out_type0*
_output_shapes
:
|
7classification_layers/dense1/dropout/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
|
7classification_layers/dense1/dropout/random_uniform/maxConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
Aclassification_layers/dense1/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense1/dropout/Shape*'
_output_shapes
:���������2*
seed2 *
dtype0*
T0*

seed 
�
7classification_layers/dense1/dropout/random_uniform/subSub7classification_layers/dense1/dropout/random_uniform/max7classification_layers/dense1/dropout/random_uniform/min*
_output_shapes
: *
T0
�
7classification_layers/dense1/dropout/random_uniform/mulMulAclassification_layers/dense1/dropout/random_uniform/RandomUniform7classification_layers/dense1/dropout/random_uniform/sub*
T0*'
_output_shapes
:���������2
�
3classification_layers/dense1/dropout/random_uniformAdd7classification_layers/dense1/dropout/random_uniform/mul7classification_layers/dense1/dropout/random_uniform/min*'
_output_shapes
:���������2*
T0
�
(classification_layers/dense1/dropout/addAdd!classification_layers/Placeholder3classification_layers/dense1/dropout/random_uniform*
_output_shapes
:*
T0
�
*classification_layers/dense1/dropout/FloorFloor(classification_layers/dense1/dropout/add*
_output_shapes
:*
T0
�
(classification_layers/dense1/dropout/divRealDiv!classification_layers/dense1/Relu!classification_layers/Placeholder*
_output_shapes
:*
T0
�
(classification_layers/dense1/dropout/mulMul(classification_layers/dense1/dropout/div*classification_layers/dense1/dropout/Floor*'
_output_shapes
:���������2*
T0
�
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"2      
�
Oclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/meanConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *    *
_output_shapes
: *
dtype0
�
Qclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *  �?
�
Zclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shape*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0*
dtype0*
seed2 *

seed 
�
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2
�
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
�
-classification_layers/dense_last/dense/kernel
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
shape
:2*
shared_name 
�
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0*
validate_shape(*
use_locking(
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2
�
=classification_layers/dense_last/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    
�
+classification_layers/dense_last/dense/bias
VariableV2*
	container *
dtype0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
shape:*
shared_name 
�
2classification_layers/dense_last/dense/bias/AssignAssign+classification_layers/dense_last/dense/bias=classification_layers/dense_last/dense/bias/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
validate_shape(*
_output_shapes
:
�
0classification_layers/dense_last/dense/bias/readIdentity+classification_layers/dense_last/dense/bias*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0
�
-classification_layers/dense_last/dense/MatMulMatMul(classification_layers/dense1/dropout/mul2classification_layers/dense_last/dense/kernel/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
.classification_layers/dense_last/dense/BiasAddBiasAdd-classification_layers/dense_last/dense/MatMul0classification_layers/dense_last/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
classification_layers/SoftmaxSoftmax.classification_layers/dense_last/dense/BiasAdd*
T0*'
_output_shapes
:���������
n
)Evaluation_layers/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
'Evaluation_layers/clip_by_value/MinimumMinimumclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*
T0*'
_output_shapes
:���������
f
!Evaluation_layers/clip_by_value/yConst*
dtype0*
_output_shapes
: *
valueB
 *���.
�
Evaluation_layers/clip_by_valueMaximum'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*
T0*'
_output_shapes
:���������
o
Evaluation_layers/LogLogEvaluation_layers/clip_by_value*'
_output_shapes
:���������*
T0
y
Evaluation_layers/mulMulTarget/PlaceholderEvaluation_layers/Log*'
_output_shapes
:���������*
T0
q
'Evaluation_layers/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
�
Evaluation_layers/SumSumEvaluation_layers/mul'Evaluation_layers/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
a
Evaluation_layers/NegNegEvaluation_layers/Sum*#
_output_shapes
:���������*
T0
a
Evaluation_layers/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
Evaluation_layers/MeanMeanEvaluation_layers/NegEvaluation_layers/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
d
"Evaluation_layers/ArgMax/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
�
Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*#
_output_shapes
:���������*
T0*

Tidx0
f
$Evaluation_layers/ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
�
Evaluation_layers/ArgMax_1ArgMaxTarget/Placeholder$Evaluation_layers/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:���������
�
Evaluation_layers/EqualEqualEvaluation_layers/ArgMaxEvaluation_layers/ArgMax_1*
T0	*#
_output_shapes
:���������
|
Evaluation_layers/accracy/CastCastEvaluation_layers/Equal*#
_output_shapes
:���������*

DstT0*

SrcT0

i
Evaluation_layers/accracy/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
Evaluation_layers/accracy/MeanMeanEvaluation_layers/accracy/CastEvaluation_layers/accracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
z
Evaluation_layers/accuracy/tagsConst*
dtype0*
_output_shapes
: *+
value"B  BEvaluation_layers/accuracy
�
Evaluation_layers/accuracyScalarSummaryEvaluation_layers/accuracy/tagsEvaluation_layers/accracy/Mean*
T0*
_output_shapes
: 
r
Evaluation_layers/loss/tagsConst*'
valueB BEvaluation_layers/loss*
_output_shapes
: *
dtype0
}
Evaluation_layers/lossScalarSummaryEvaluation_layers/loss/tagsEvaluation_layers/Mean*
T0*
_output_shapes
: 
~
!Evaluation_layers/accuracy_1/tagsConst*
dtype0*
_output_shapes
: *-
value$B" BEvaluation_layers/accuracy_1
�
Evaluation_layers/accuracy_1ScalarSummary!Evaluation_layers/accuracy_1/tagsEvaluation_layers/accracy/Mean*
_output_shapes
: *
T0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
T
gradients/ConstConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
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
�
-gradients/Evaluation_layers/Mean_grad/ReshapeReshapegradients/Fill3gradients/Evaluation_layers/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
�
+gradients/Evaluation_layers/Mean_grad/ShapeShapeEvaluation_layers/Neg*
out_type0*
_output_shapes
:*
T0
�
*gradients/Evaluation_layers/Mean_grad/TileTile-gradients/Evaluation_layers/Mean_grad/Reshape+gradients/Evaluation_layers/Mean_grad/Shape*#
_output_shapes
:���������*
T0*

Tmultiples0
�
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
+gradients/Evaluation_layers/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
*gradients/Evaluation_layers/Mean_grad/ProdProd-gradients/Evaluation_layers/Mean_grad/Shape_1+gradients/Evaluation_layers/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
w
-gradients/Evaluation_layers/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
,gradients/Evaluation_layers/Mean_grad/Prod_1Prod-gradients/Evaluation_layers/Mean_grad/Shape_2-gradients/Evaluation_layers/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
q
/gradients/Evaluation_layers/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
-gradients/Evaluation_layers/Mean_grad/MaximumMaximum,gradients/Evaluation_layers/Mean_grad/Prod_1/gradients/Evaluation_layers/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
.gradients/Evaluation_layers/Mean_grad/floordivFloorDiv*gradients/Evaluation_layers/Mean_grad/Prod-gradients/Evaluation_layers/Mean_grad/Maximum*
_output_shapes
: *
T0
�
*gradients/Evaluation_layers/Mean_grad/CastCast.gradients/Evaluation_layers/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
-gradients/Evaluation_layers/Mean_grad/truedivRealDiv*gradients/Evaluation_layers/Mean_grad/Tile*gradients/Evaluation_layers/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
(gradients/Evaluation_layers/Neg_grad/NegNeg-gradients/Evaluation_layers/Mean_grad/truediv*
T0*#
_output_shapes
:���������

*gradients/Evaluation_layers/Sum_grad/ShapeShapeEvaluation_layers/mul*
T0*
out_type0*
_output_shapes
:
k
)gradients/Evaluation_layers/Sum_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/Evaluation_layers/Sum_grad/addAdd'Evaluation_layers/Sum/reduction_indices)gradients/Evaluation_layers/Sum_grad/Size*
_output_shapes
:*
T0
�
(gradients/Evaluation_layers/Sum_grad/modFloorMod(gradients/Evaluation_layers/Sum_grad/add)gradients/Evaluation_layers/Sum_grad/Size*
T0*
_output_shapes
:
v
,gradients/Evaluation_layers/Sum_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
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
�
*gradients/Evaluation_layers/Sum_grad/rangeRange0gradients/Evaluation_layers/Sum_grad/range/start)gradients/Evaluation_layers/Sum_grad/Size0gradients/Evaluation_layers/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
q
/gradients/Evaluation_layers/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
)gradients/Evaluation_layers/Sum_grad/FillFill,gradients/Evaluation_layers/Sum_grad/Shape_1/gradients/Evaluation_layers/Sum_grad/Fill/value*
T0*
_output_shapes
:
�
2gradients/Evaluation_layers/Sum_grad/DynamicStitchDynamicStitch*gradients/Evaluation_layers/Sum_grad/range(gradients/Evaluation_layers/Sum_grad/mod*gradients/Evaluation_layers/Sum_grad/Shape)gradients/Evaluation_layers/Sum_grad/Fill*
N*
T0*#
_output_shapes
:���������
p
.gradients/Evaluation_layers/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
,gradients/Evaluation_layers/Sum_grad/MaximumMaximum2gradients/Evaluation_layers/Sum_grad/DynamicStitch.gradients/Evaluation_layers/Sum_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
-gradients/Evaluation_layers/Sum_grad/floordivFloorDiv*gradients/Evaluation_layers/Sum_grad/Shape,gradients/Evaluation_layers/Sum_grad/Maximum*
T0*
_output_shapes
:
�
,gradients/Evaluation_layers/Sum_grad/ReshapeReshape(gradients/Evaluation_layers/Neg_grad/Neg2gradients/Evaluation_layers/Sum_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
)gradients/Evaluation_layers/Sum_grad/TileTile,gradients/Evaluation_layers/Sum_grad/Reshape-gradients/Evaluation_layers/Sum_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
|
*gradients/Evaluation_layers/mul_grad/ShapeShapeTarget/Placeholder*
_output_shapes
:*
out_type0*
T0
�
,gradients/Evaluation_layers/mul_grad/Shape_1ShapeEvaluation_layers/Log*
out_type0*
_output_shapes
:*
T0
�
:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/Evaluation_layers/mul_grad/Shape,gradients/Evaluation_layers/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
(gradients/Evaluation_layers/mul_grad/mulMul)gradients/Evaluation_layers/Sum_grad/TileEvaluation_layers/Log*'
_output_shapes
:���������*
T0
�
(gradients/Evaluation_layers/mul_grad/SumSum(gradients/Evaluation_layers/mul_grad/mul:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
,gradients/Evaluation_layers/mul_grad/ReshapeReshape(gradients/Evaluation_layers/mul_grad/Sum*gradients/Evaluation_layers/mul_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
*gradients/Evaluation_layers/mul_grad/mul_1MulTarget/Placeholder)gradients/Evaluation_layers/Sum_grad/Tile*'
_output_shapes
:���������*
T0
�
*gradients/Evaluation_layers/mul_grad/Sum_1Sum*gradients/Evaluation_layers/mul_grad/mul_1<gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
.gradients/Evaluation_layers/mul_grad/Reshape_1Reshape*gradients/Evaluation_layers/mul_grad/Sum_1,gradients/Evaluation_layers/mul_grad/Shape_1*
T0*'
_output_shapes
:���������*
Tshape0
�
5gradients/Evaluation_layers/mul_grad/tuple/group_depsNoOp-^gradients/Evaluation_layers/mul_grad/Reshape/^gradients/Evaluation_layers/mul_grad/Reshape_1
�
=gradients/Evaluation_layers/mul_grad/tuple/control_dependencyIdentity,gradients/Evaluation_layers/mul_grad/Reshape6^gradients/Evaluation_layers/mul_grad/tuple/group_deps*?
_class5
31loc:@gradients/Evaluation_layers/mul_grad/Reshape*'
_output_shapes
:���������*
T0
�
?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1Identity.gradients/Evaluation_layers/mul_grad/Reshape_16^gradients/Evaluation_layers/mul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/Evaluation_layers/mul_grad/Reshape_1*'
_output_shapes
:���������
�
/gradients/Evaluation_layers/Log_grad/Reciprocal
ReciprocalEvaluation_layers/clip_by_value@^gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1*'
_output_shapes
:���������*
T0
�
(gradients/Evaluation_layers/Log_grad/mulMul?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1/gradients/Evaluation_layers/Log_grad/Reciprocal*
T0*'
_output_shapes
:���������
�
4gradients/Evaluation_layers/clip_by_value_grad/ShapeShape'Evaluation_layers/clip_by_value/Minimum*
out_type0*
_output_shapes
:*
T0
y
6gradients/Evaluation_layers/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
6gradients/Evaluation_layers/clip_by_value_grad/Shape_2Shape(gradients/Evaluation_layers/Log_grad/mul*
T0*
_output_shapes
:*
out_type0

:gradients/Evaluation_layers/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
4gradients/Evaluation_layers/clip_by_value_grad/zerosFill6gradients/Evaluation_layers/clip_by_value_grad/Shape_2:gradients/Evaluation_layers/clip_by_value_grad/zeros/Const*'
_output_shapes
:���������*
T0
�
;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqualGreaterEqual'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*'
_output_shapes
:���������*
T0
�
Dgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/Evaluation_layers/clip_by_value_grad/Shape6gradients/Evaluation_layers/clip_by_value_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
5gradients/Evaluation_layers/clip_by_value_grad/SelectSelect;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqual(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*'
_output_shapes
:���������*
T0
�
9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot
LogicalNot;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqual*'
_output_shapes
:���������
�
7gradients/Evaluation_layers/clip_by_value_grad/Select_1Select9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������
�
2gradients/Evaluation_layers/clip_by_value_grad/SumSum5gradients/Evaluation_layers/clip_by_value_grad/SelectDgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6gradients/Evaluation_layers/clip_by_value_grad/ReshapeReshape2gradients/Evaluation_layers/clip_by_value_grad/Sum4gradients/Evaluation_layers/clip_by_value_grad/Shape*'
_output_shapes
:���������*
Tshape0*
T0
�
4gradients/Evaluation_layers/clip_by_value_grad/Sum_1Sum7gradients/Evaluation_layers/clip_by_value_grad/Select_1Fgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1Reshape4gradients/Evaluation_layers/clip_by_value_grad/Sum_16gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
�
?gradients/Evaluation_layers/clip_by_value_grad/tuple/group_depsNoOp7^gradients/Evaluation_layers/clip_by_value_grad/Reshape9^gradients/Evaluation_layers/clip_by_value_grad/Reshape_1
�
Ggradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependencyIdentity6gradients/Evaluation_layers/clip_by_value_grad/Reshape@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*I
_class?
=;loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape*'
_output_shapes
:���������*
T0
�
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*
T0*
_output_shapes
: *K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
_output_shapes
:*
out_type0*
T0
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2ShapeGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
�
Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zerosFill>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:���������*
T0
�
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqual	LessEqualclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*
T0*'
_output_shapes
:���������
�
Lgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectSelect@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqualGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������*
T0
�
Agradients/Evaluation_layers/clip_by_value/Minimum_grad/LogicalNot
LogicalNot@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqual*'
_output_shapes
:���������
�
?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1SelectAgradients/Evaluation_layers/clip_by_value/Minimum_grad/LogicalNotGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:���������
�
:gradients/Evaluation_layers/clip_by_value/Minimum_grad/SumSum=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectLgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeReshape:gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1Sum?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1Ngradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1Reshape<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
�
Ggradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_depsNoOp?^gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeA^gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1
�
Ogradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeH^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:���������
�
Qgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1H^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*
_output_shapes
: *S
_classI
GEloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1*
T0
�
0gradients/classification_layers/Softmax_grad/mulMulOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyclassification_layers/Softmax*'
_output_shapes
:���������*
T0
�
Bgradients/classification_layers/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
�
0gradients/classification_layers/Softmax_grad/SumSum0gradients/classification_layers/Softmax_grad/mulBgradients/classification_layers/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
�
:gradients/classification_layers/Softmax_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   
�
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0
�
0gradients/classification_layers/Softmax_grad/subSubOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency4gradients/classification_layers/Softmax_grad/Reshape*'
_output_shapes
:���������*
T0
�
2gradients/classification_layers/Softmax_grad/mul_1Mul0gradients/classification_layers/Softmax_grad/subclassification_layers/Softmax*'
_output_shapes
:���������*
T0
�
Igradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/classification_layers/Softmax_grad/mul_1*
_output_shapes
:*
T0*
data_formatNHWC
�
Ngradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/classification_layers/Softmax_grad/mul_1J^gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
�
Vgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/classification_layers/Softmax_grad/mul_1O^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/classification_layers/Softmax_grad/mul_1*'
_output_shapes
:���������*
T0
�
Xgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradO^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*\
_classR
PNloc:@gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad*
T0
�
Cgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulMatMulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency2classification_layers/dense_last/dense/kernel/read*
transpose_b(*'
_output_shapes
:���������2*
transpose_a( *
T0
�
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense1/dropout/mulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:2*
transpose_a(*
T0
�
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul*'
_output_shapes
:���������2
�
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1*
_output_shapes

:2*
T0
�
=gradients/classification_layers/dense1/dropout/mul_grad/ShapeShape(classification_layers/dense1/dropout/div*#
_output_shapes
:���������*
out_type0*
T0
�
?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1Shape*classification_layers/dense1/dropout/Floor*
out_type0*#
_output_shapes
:���������*
T0
�
Mgradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense1/dropout/mul_grad/Shape?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
;gradients/classification_layers/dense1/dropout/mul_grad/mulMulUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense1/dropout/Floor*
_output_shapes
:*
T0
�
;gradients/classification_layers/dense1/dropout/mul_grad/SumSum;gradients/classification_layers/dense1/dropout/mul_grad/mulMgradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
?gradients/classification_layers/dense1/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense1/dropout/mul_grad/Sum=gradients/classification_layers/dense1/dropout/mul_grad/Shape*
_output_shapes
:*
Tshape0*
T0
�
=gradients/classification_layers/dense1/dropout/mul_grad/mul_1Mul(classification_layers/dense1/dropout/divUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense1/dropout/mul_grad/Sum_1Sum=gradients/classification_layers/dense1/dropout/mul_grad/mul_1Ogradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Agradients/classification_layers/dense1/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense1/dropout/mul_grad/Sum_1?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
�
Hgradients/classification_layers/dense1/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense1/dropout/mul_grad/Reshape_1
�
Pgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense1/dropout/mul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/classification_layers/dense1/dropout/mul_grad/Reshape*
_output_shapes
:
�
Rgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense1/dropout/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense1/dropout/mul_grad/Reshape_1
�
=gradients/classification_layers/dense1/dropout/div_grad/ShapeShape!classification_layers/dense1/Relu*
T0*
_output_shapes
:*
out_type0
�
?gradients/classification_layers/dense1/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*
out_type0*#
_output_shapes
:���������*
T0
�
Mgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense1/dropout/div_grad/Shape?gradients/classification_layers/dense1/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
?gradients/classification_layers/dense1/dropout/div_grad/RealDivRealDivPgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependency!classification_layers/Placeholder*
T0*
_output_shapes
:
�
;gradients/classification_layers/dense1/dropout/div_grad/SumSum?gradients/classification_layers/dense1/dropout/div_grad/RealDivMgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
?gradients/classification_layers/dense1/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense1/dropout/div_grad/Sum=gradients/classification_layers/dense1/dropout/div_grad/Shape*
T0*'
_output_shapes
:���������2*
Tshape0
�
;gradients/classification_layers/dense1/dropout/div_grad/NegNeg!classification_layers/dense1/Relu*
T0*'
_output_shapes
:���������2
�
Agradients/classification_layers/dense1/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense1/dropout/div_grad/Neg!classification_layers/Placeholder*
_output_shapes
:*
T0
�
Agradients/classification_layers/dense1/dropout/div_grad/RealDiv_2RealDivAgradients/classification_layers/dense1/dropout/div_grad/RealDiv_1!classification_layers/Placeholder*
T0*
_output_shapes
:
�
;gradients/classification_layers/dense1/dropout/div_grad/mulMulPgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependencyAgradients/classification_layers/dense1/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
�
=gradients/classification_layers/dense1/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense1/dropout/div_grad/mulOgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Agradients/classification_layers/dense1/dropout/div_grad/Reshape_1Reshape=gradients/classification_layers/dense1/dropout/div_grad/Sum_1?gradients/classification_layers/dense1/dropout/div_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
�
Hgradients/classification_layers/dense1/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dropout/div_grad/ReshapeB^gradients/classification_layers/dense1/dropout/div_grad/Reshape_1
�
Pgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dropout/div_grad/ReshapeI^gradients/classification_layers/dense1/dropout/div_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense1/dropout/div_grad/Reshape*'
_output_shapes
:���������2*
T0
�
Rgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense1/dropout/div_grad/tuple/group_deps*
T0*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense1/dropout/div_grad/Reshape_1
�
9gradients/classification_layers/dense1/Relu_grad/ReluGradReluGradPgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependency!classification_layers/dense1/Relu*'
_output_shapes
:���������2*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense1/batch_normalization/batchnorm/mul_1*
_output_shapes
:*
out_type0*
T0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:2*
_output_shapes
:*
dtype0
�
egradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/SumSum9gradients/classification_layers/dense1/Relu_grad/ReluGradegradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape*
Tshape0*'
_output_shapes
:���������2*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Sum_1Sum9gradients/classification_layers/dense1/Relu_grad/ReluGradggradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1*
_output_shapes
:2*
Tshape0*
T0
�
`gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*'
_output_shapes
:���������2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape
�
jgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes
:2*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:2
�
egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense1/batch_normalization/batchnorm/mul*'
_output_shapes
:���������2*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������2
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense1/dense/BiasAddhgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������2
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1*
Tshape0*
_output_shapes
:2*
T0
�
`gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������2*
T0
�
jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
_output_shapes
:2*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:2
�
cgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape*
T0*
_output_shapes
:2*
Tshape0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Sum_1*
_output_shapes
:*
T0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1*
Tshape0*
_output_shapes
:2*
T0
�
^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1
�
fgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape*
_output_shapes
:2*
T0
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1*
_output_shapes
:2
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
valueB:2*
dtype0*
_output_shapes
:
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:2
�
egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense1/batch_normalization/batchnorm/mul*
_output_shapes
:2*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape*
Tshape0*
_output_shapes
:2*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense1/batch_normalization/Squeezehgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
_output_shapes
:2*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*
_output_shapes
:2*
Tshape0
�
`gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*
_output_shapes
:2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape
�
jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*
_output_shapes
:2*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
Mgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   2   
�
Ogradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/Shape*
_output_shapes

:2*
Tshape0*
T0
�
gradients/AddNAddNjgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
N*
T0*
_output_shapes
:2*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:2
�
cgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN;classification_layers/dense1/batch_normalization/gamma/read*
T0*
_output_shapes
:2
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape*
_output_shapes
:2*
Tshape0*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense1/batch_normalization/batchnorm/Rsqrtgradients/AddN*
T0*
_output_shapes
:2
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1*
_output_shapes
:2*
Tshape0*
T0
�
^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1
�
fgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape*
_output_shapes
:2*
T0
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1*
T0
�
Qgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_likeConst*
dtype0*
_output_shapes

:2*
valueB2*    
�
Mgradients/classification_layers/dense1/batch_normalization/Select_grad/SelectSelect8classification_layers/dense1/batch_normalization/ReshapeOgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_like*
_output_shapes

:2*
T0
�
Ogradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1Select8classification_layers/dense1/batch_normalization/ReshapeQgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/Reshape*
_output_shapes

:2*
T0
�
Wgradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense1/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1
�
_gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense1/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_deps*
T0*
_output_shapes

:2*`
_classV
TRloc:@gradients/classification_layers/dense1/batch_normalization/Select_grad/Select
�
agradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_deps*
_output_shapes

:2*b
_classX
VTloc:@gradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1*
T0
�
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense1/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
_output_shapes
:2*
T0
�
Pgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:2
�
Rgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/Shape*
Tshape0*
_output_shapes
:2*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:2
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
cgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:2
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1
�
fgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
:2*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape*
T0
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
: *j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/ShapeConst*
valueB"   2   *
dtype0*
_output_shapes
:
�
Wgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Shape*
_output_shapes

:2*
Tshape0*
T0
�
Ogradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   2   
�
Qgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:2
�
Rgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ShapeConst*
valueB"   2   *
dtype0*
_output_shapes
:
�
Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1Const*
valueB"   2   *
_output_shapes
:*
dtype0
�
bgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Pgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/SumSumWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Reshapebgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape*
Tshape0*
_output_shapes

:2*
T0
�
Rgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Sum_1SumWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Reshapedgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Vgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1*
_output_shapes

:2*
Tshape0*
T0
�
]gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1
�
egradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_deps*g
_class]
[Yloc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:2*
T0
�
ggradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_deps*i
_class_
][loc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1*
_output_shapes

:2*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_likeConst*
valueB2*    *
_output_shapes

:2*
dtype0
�
Ogradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense1/batch_normalization/Reshape_1Qgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_like*
T0*
_output_shapes

:2
�
Qgradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense1/batch_normalization/Reshape_1Sgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/Reshape*
_output_shapes

:2*
T0
�
Ygradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1
�
agradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select*
_output_shapes

:2
�
cgradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1*
_output_shapes

:2
�
Rgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ShapeConst*
valueB:2*
dtype0*
_output_shapes
:
�
Tgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/Shape*
T0*
_output_shapes
:2*
Tshape0
�
Wgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   2   
�
Ygradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Shape*
T0*
_output_shapes

:2*
Tshape0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ShapeConst*
valueB"   2   *
_output_shapes
:*
dtype0
�
Xgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1Const*
valueB"   2   *
dtype0*
_output_shapes
:
�
fgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Tgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/SumSumYgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Reshapefgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Xgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ReshapeReshapeTgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/SumVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape*
_output_shapes

:2*
Tshape0*
T0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Sum_1SumYgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Reshapehgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Tgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/NegNegVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Sum_1*
T0*
_output_shapes
:
�
Zgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1ReshapeTgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/NegXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:2
�
agradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1
�
igradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*k
_classa
_]loc:@gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape*
_output_shapes

:2
�
kgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1*
_output_shapes

:2
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense1/batch_normalization/moments/SquaredDifference*
T0*
_output_shapes
:*
out_type0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
�
Rgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/addAddQclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indicesSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
�
Rgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/modFloorModRgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/addSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
�
Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/FillFillVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_1Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill/value*
T0*
_output_shapes
:
�
\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitchDynamicStitchTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/rangeRgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/modTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill*#
_output_shapes
:���������*
N*
T0
�
Xgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
Wgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum*
_output_shapes
:*
T0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense1/batch_normalization/moments/SquaredDifference*
T0*
out_type0*
_output_shapes
:
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_3Const*
valueB"   2   *
dtype0*
_output_shapes
:
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
Ugradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
Xgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1MaximumUgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Prod_1Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1/y*
_output_shapes
: *
T0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv_1FloorDivSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ProdXgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1*
_output_shapes
: *
T0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Cast*
T0*'
_output_shapes
:���������2
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul/xConstl^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
Rgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mulMulTgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul/xEclassification_layers/dense1/batch_normalization/moments/shifted_mean*
_output_shapes

:2*
T0
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul*
_output_shapes

:2*
T0
�
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
valueB"   2   *
_output_shapes
:*
dtype0
�
ogradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
`gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
�
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*'
_output_shapes
:���������2*
T0
�
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*'
_output_shapes
:���������2*
T0
�
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/sub*'
_output_shapes
:���������2*
T0
�
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������2
�
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
cgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1*
_output_shapes

:2*
Tshape0*
T0
�
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
_output_shapes

:2*
T0
�
jgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Neg
�
rgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*t
_classj
hfloc:@gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape*'
_output_shapes
:���������2
�
tgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*p
_classf
dbloc:@gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Neg*
_output_shapes

:2*
T0
�
gradients/AddN_1AddNegradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul_1*
N*
T0*
_output_shapes

:2*g
_class]
[Yloc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape
�
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense1/batch_normalization/moments/Sub*
out_type0*
_output_shapes
:*
T0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
�
Xgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/addAddWclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indicesYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size*
T0*
_output_shapes
:
�
Xgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/modFloorModXgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/addYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/delta*

Tidx0*
_output_shapes
:
�
_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill/value*
T0*
_output_shapes
:
�
bgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill*
N*
T0*#
_output_shapes
:���������
�
^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/MaximumMaximumbgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitch^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
]gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordivFloorDivZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_1bgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense1/batch_normalization/moments/Sub*
T0*
out_type0*
_output_shapes
:
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
dtype0*
_output_shapes
:*
valueB"   2   
�
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
[gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
�
^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1Maximum[gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod_1`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv_1FloorDivYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1*
T0*
_output_shapes
: 
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/CastCast_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivRealDivYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/TileYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Cast*
T0*'
_output_shapes
:���������2
�
Qgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1Const*
valueB"   2   *
_output_shapes
:*
dtype0
�
agradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Ogradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape*'
_output_shapes
:���������2*
Tshape0*
T0
�
Qgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Sum_1Sum\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivcgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ogradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/NegNegQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Sum_1*
_output_shapes
:*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1ReshapeOgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/NegSgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:2
�
\gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1
�
dgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_deps*f
_class\
ZXloc:@gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape*'
_output_shapes
:���������2*
T0
�
fgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_deps*
_output_shapes

:2*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1*
T0
�
gradients/AddN_2AddNggradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*
N*
T0*
_output_shapes

:2*i
_class_
][loc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1
�
gradients/AddN_3AddNhgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������2*
T0*
N
�
Egradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
data_formatNHWC*
T0*
_output_shapes
:2
�
Jgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3F^gradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_3K^gradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape*
T0
�
Tgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_deps*X
_classN
LJloc:@gradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:2*
T0
�
?gradients/classification_layers/dense1/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense1/dense/kernel/read*
transpose_b(*'
_output_shapes
:���������d*
transpose_a( *
T0
�
Agradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense0/dropout/mulRgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:d2*
transpose_a(
�
Igradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1
�
Qgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense1/dense/MatMul_grad/MatMul*'
_output_shapes
:���������d*
T0
�
Sgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:d2*T
_classJ
HFloc:@gradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1*
T0
�
=gradients/classification_layers/dense0/dropout/mul_grad/ShapeShape(classification_layers/dense0/dropout/div*
T0*#
_output_shapes
:���������*
out_type0
�
?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1Shape*classification_layers/dense0/dropout/Floor*#
_output_shapes
:���������*
out_type0*
T0
�
Mgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/mul_grad/Shape?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
;gradients/classification_layers/dense0/dropout/mul_grad/mulMulQgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense0/dropout/Floor*
_output_shapes
:*
T0
�
;gradients/classification_layers/dense0/dropout/mul_grad/SumSum;gradients/classification_layers/dense0/dropout/mul_grad/mulMgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/mul_grad/Sum=gradients/classification_layers/dense0/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Mul(classification_layers/dense0/dropout/divQgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1Sum=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Ogradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Agradients/classification_layers/dense0/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
�
Hgradients/classification_layers/dense0/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1
�
Pgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape
�
Rgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense0/dropout/div_grad/ShapeShape!classification_layers/dense0/Relu*
out_type0*
_output_shapes
:*
T0
�
?gradients/classification_layers/dense0/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*
T0*#
_output_shapes
:���������*
out_type0
�
Mgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/div_grad/Shape?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
?gradients/classification_layers/dense0/dropout/div_grad/RealDivRealDivPgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency!classification_layers/Placeholder*
_output_shapes
:*
T0
�
;gradients/classification_layers/dense0/dropout/div_grad/SumSum?gradients/classification_layers/dense0/dropout/div_grad/RealDivMgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
?gradients/classification_layers/dense0/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/div_grad/Sum=gradients/classification_layers/dense0/dropout/div_grad/Shape*
Tshape0*'
_output_shapes
:���������d*
T0
�
;gradients/classification_layers/dense0/dropout/div_grad/NegNeg!classification_layers/dense0/Relu*'
_output_shapes
:���������d*
T0
�
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense0/dropout/div_grad/Neg!classification_layers/Placeholder*
_output_shapes
:*
T0
�
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_2RealDivAgradients/classification_layers/dense0/dropout/div_grad/RealDiv_1!classification_layers/Placeholder*
T0*
_output_shapes
:
�
;gradients/classification_layers/dense0/dropout/div_grad/mulMulPgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyAgradients/classification_layers/dense0/dropout/div_grad/RealDiv_2*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense0/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense0/dropout/div_grad/mulOgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Agradients/classification_layers/dense0/dropout/div_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/div_grad/Sum_1?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
�
Hgradients/classification_layers/dense0/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/div_grad/ReshapeB^gradients/classification_layers/dense0/dropout/div_grad/Reshape_1
�
Pgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/div_grad/ReshapeI^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape*'
_output_shapes
:���������d*
T0
�
Rgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape_1*
_output_shapes
:*
T0
�
9gradients/classification_layers/dense0/Relu_grad/ReluGradReluGradPgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency!classification_layers/dense0/Relu*'
_output_shapes
:���������d*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense0/batch_normalization/batchnorm/mul_1*
T0*
_output_shapes
:*
out_type0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0
�
egradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumSum9gradients/classification_layers/dense0/Relu_grad/ReluGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape*'
_output_shapes
:���������d*
Tshape0*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Sum9gradients/classification_layers/dense0/Relu_grad/ReluGradggradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
_output_shapes
:d*
Tshape0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape*'
_output_shapes
:���������d
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes
:d*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:d
�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:���������d
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape*'
_output_shapes
:���������d*
Tshape0*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense0/dense/BiasAddhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������d
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
_output_shapes
:d*
Tshape0*
T0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*'
_output_shapes
:���������d*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
_output_shapes
:d*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeConst*
valueB:d*
_output_shapes
:*
dtype0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:d
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape*
_output_shapes
:d*
Tshape0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1*
_output_shapes
:*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*
_output_shapes
:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1*
_output_shapes
:d*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
valueB:d*
_output_shapes
:*
dtype0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
valueB:d*
_output_shapes
:*
dtype0
�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:d
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense0/batch_normalization/Squeezehgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
_output_shapes
:d*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
Tshape0*
_output_shapes
:d*
T0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape*
_output_shapes
:d
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes
:d*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1*
T0
�
Mgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   d   
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Shape*
Tshape0*
_output_shapes

:d*
T0
�
gradients/AddN_4AddNjgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
N*
T0*
_output_shapes
:d*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:d
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:d
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN_4;classification_layers/dense0/batch_normalization/gamma/read*
T0*
_output_shapes
:d
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape*
_output_shapes
:d*
Tshape0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtgradients/AddN_4*
_output_shapes
:d*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*
_output_shapes
:d*
Tshape0*
T0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*
_output_shapes
:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*
_output_shapes
:d*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1
�
Qgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeConst*
dtype0*
_output_shapes

:d*
valueBd*    
�
Mgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectSelect8classification_layers/dense0/batch_normalization/ReshapeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_like*
T0*
_output_shapes

:d
�
Ogradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1Select8classification_layers/dense0/batch_normalization/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Reshape*
_output_shapes

:d*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense0/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1
�
_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select*
_output_shapes

:d
�
agradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
_output_shapes

:d*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:d
�
Pgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ShapeConst*
valueB:d*
dtype0*
_output_shapes
:
�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/Shape*
T0*
_output_shapes
:d*
Tshape0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:d
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape*
Tshape0*
_output_shapes
:d*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape*
_output_shapes
:d
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
: *j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Shape*
T0*
_output_shapes

:d*
Tshape0
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0
�
Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
valueB"   d   *
dtype0*
_output_shapes
:
�
bgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumSumWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Reshapebgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape*
_output_shapes

:d*
Tshape0*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1SumWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Reshapedgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*
_output_shapes

:d*
Tshape0*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1
�
egradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:d
�
ggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*
_output_shapes

:d*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1
�
Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeConst*
valueBd*    *
_output_shapes

:d*
dtype0
�
Ogradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense0/batch_normalization/Reshape_1Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_like*
T0*
_output_shapes

:d
�
Qgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Reshape*
_output_shapes

:d*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1
�
agradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
T0*
_output_shapes

:d*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select
�
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
_output_shapes

:d*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:d
�
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
_output_shapes
:d*
Tshape0*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
valueB"   d   *
dtype0*
_output_shapes
:
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Shape*
Tshape0*
_output_shapes

:d*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
valueB"   d   *
_output_shapes
:*
dtype0
�
fgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshapefgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SumVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape*
Tshape0*
_output_shapes

:d*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshapehgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/NegNegVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Sum_1*
T0*
_output_shapes
:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1ReshapeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/NegXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:d
�
agradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1
�
igradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*k
_classa
_]loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape*
_output_shapes

:d*
T0
�
kgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1*
_output_shapes

:d
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
out_type0*
_output_shapes
:
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
�
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addAddQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
_output_shapes
:*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modFloorModRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/delta*

Tidx0*
_output_shapes
:
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/FillFillVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/value*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchDynamicStitchTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill*#
_output_shapes
:���������*
N*
T0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum*
T0*
_output_shapes
:
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
out_type0*
_output_shapes
:
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Const*
valueB"   d   *
_output_shapes
:*
dtype0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
�
Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1MaximumUgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/y*
_output_shapes
: *
T0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1FloorDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1*
_output_shapes
: *
T0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Cast*'
_output_shapes
:���������d*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xConstl^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1*
_output_shapes
: *
dtype0*
valueB
 *   @
�
Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mulMulTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
_output_shapes

:d*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul*
T0*
_output_shapes

:d
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
valueB"   d   *
_output_shapes
:*
dtype0
�
ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*'
_output_shapes
:���������d*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:���������d
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/sub*
T0*'
_output_shapes
:���������d
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������d
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
cgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*
_output_shapes

:d*
Tshape0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes

:d
�
jgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg
�
rgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*t
_classj
hfloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape*'
_output_shapes
:���������d
�
tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*p
_classf
dbloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg*
_output_shapes

:d
�
gradients/AddN_5AddNegradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1*
T0*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape*
N*
_output_shapes

:d
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense0/batch_normalization/moments/Sub*
_output_shapes
:*
out_type0*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
�
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addAddWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
_output_shapes
:*
T0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modFloorModXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/delta*
_output_shapes
:*

Tidx0
�
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/value*
_output_shapes
:*
T0
�
bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill*
N*
T0*#
_output_shapes
:���������
�
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/MaximumMaximumbgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordivFloorDivZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum*
T0*
_output_shapes
:
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_5bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense0/batch_normalization/moments/Sub*
out_type0*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
dtype0*
_output_shapes
:*
valueB"   d   
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
�
[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1Maximum[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv_1FloorDivYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1*
T0*
_output_shapes
: 
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/CastCast_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivRealDivYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Cast*
T0*'
_output_shapes
:���������d
�
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   d   
�
agradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape*'
_output_shapes
:���������d*
Tshape0*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Sum_1Sum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivcgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/NegNegQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Sum_1*
_output_shapes
:*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1ReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/NegSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*
T0*
_output_shapes

:d*
Tshape0
�
\gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1
�
dgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*
T0*'
_output_shapes
:���������d*f
_class\
ZXloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape
�
fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1*
_output_shapes

:d*
T0
�
gradients/AddN_6AddNggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*
N*
T0*
_output_shapes

:d*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1
�
gradients/AddN_7AddNhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������d*
T0*
N
�
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_7*
_output_shapes
:d*
data_formatNHWC*
T0
�
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_7F^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_7K^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������d*
T0
�
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:d*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense0/dense/kernel/read*
transpose_b(*(
_output_shapes
:����������*
transpose_a( *
T0
�
Agradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1MatMulFlatten/ReshapeRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	�d*
transpose_a(*
T0
�
Igradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
�
Qgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*(
_output_shapes
:����������*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul
�
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	�d*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
�
beta1_power/initial_valueConst*
valueB
 *fff?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
dtype0
�
beta1_power
VariableV2*
shared_name *
shape: *
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
	container 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_output_shapes
: *
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking(
�
beta1_power/readIdentitybeta1_power*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0
�
beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *w�?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
beta2_power
VariableV2*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
: 
�
beta2_power/readIdentitybeta2_power*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0
�
@classification_layers/dense0/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	�d*
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�d*    
�
.classification_layers/dense0/dense/kernel/Adam
VariableV2*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d*
shape:	�d*
dtype0*
shared_name *
	container 
�
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d*
T0*
validate_shape(*
use_locking(
�
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*
_output_shapes
:	�d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�d*    *
_output_shapes
:	�d*
dtype0
�
0classification_layers/dense0/dense/kernel/Adam_1
VariableV2*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d*
shape:	�d*
dtype0*
shared_name *
	container 
�
7classification_layers/dense0/dense/kernel/Adam_1/AssignAssign0classification_layers/dense0/dense/kernel/Adam_1Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zeros*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d*
T0*
validate_shape(*
use_locking(
�
5classification_layers/dense0/dense/kernel/Adam_1/readIdentity0classification_layers/dense0/dense/kernel/Adam_1*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d
�
>classification_layers/dense0/dense/bias/Adam/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    *
_output_shapes
:d*
dtype0
�
,classification_layers/dense0/dense/bias/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:d*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
3classification_layers/dense0/dense/bias/Adam/AssignAssign,classification_layers/dense0/dense/bias/Adam>classification_layers/dense0/dense/bias/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d
�
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    
�
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
�
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
Lclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    *
_output_shapes
:d*
dtype0
�
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
�
Aclassification_layers/dense0/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense0/batch_normalization/beta/AdamLclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zeros*
_output_shapes
:d*
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking(
�
?classification_layers/dense0/batch_normalization/beta/Adam/readIdentity:classification_layers/dense0/batch_normalization/beta/Adam*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d
�
Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    *
_output_shapes
:d*
dtype0
�
<classification_layers/dense0/batch_normalization/beta/Adam_1
VariableV2*
_output_shapes
:d*
dtype0*
shape:d*
	container *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
shared_name 
�
Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense0/batch_normalization/beta/Adam_1Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
validate_shape(*
_output_shapes
:d
�
Aclassification_layers/dense0/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense0/batch_normalization/beta/Adam_1*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
�
Mclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*    *
dtype0*
_output_shapes
:d
�
;classification_layers/dense0/batch_normalization/gamma/Adam
VariableV2*
	container *
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
shared_name *
_output_shapes
:d*
shape:d
�
Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense0/batch_normalization/gamma/AdamMclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
@classification_layers/dense0/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense0/batch_normalization/gamma/Adam*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0
�
Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*    *
dtype0*
_output_shapes
:d
�
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
�
Dclassification_layers/dense0/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense0/batch_normalization/gamma/Adam_1Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zeros*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
�
Bclassification_layers/dense0/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense0/batch_normalization/gamma/Adam_1*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0
�
@classification_layers/dense1/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes

:d2*
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueBd2*    
�
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
�
5classification_layers/dense1/dense/kernel/Adam/AssignAssign.classification_layers/dense1/dense/kernel/Adam@classification_layers/dense1/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
validate_shape(*
_output_shapes

:d2
�
3classification_layers/dense1/dense/kernel/Adam/readIdentity.classification_layers/dense1/dense/kernel/Adam*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
T0
�
Bclassification_layers/dense1/dense/kernel/Adam_1/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueBd2*    *
_output_shapes

:d2*
dtype0
�
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
�
7classification_layers/dense1/dense/kernel/Adam_1/AssignAssign0classification_layers/dense1/dense/kernel/Adam_1Bclassification_layers/dense1/dense/kernel/Adam_1/Initializer/zeros*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
_output_shapes

:d2*
T0*
validate_shape(*
use_locking(
�
5classification_layers/dense1/dense/kernel/Adam_1/readIdentity0classification_layers/dense1/dense/kernel/Adam_1*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
�
>classification_layers/dense1/dense/bias/Adam/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    *
_output_shapes
:2*
dtype0
�
,classification_layers/dense1/dense/bias/Adam
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
shared_name *
_output_shapes
:2*
shape:2
�
3classification_layers/dense1/dense/bias/Adam/AssignAssign,classification_layers/dense1/dense/bias/Adam>classification_layers/dense1/dense/bias/Adam/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
�
1classification_layers/dense1/dense/bias/Adam/readIdentity,classification_layers/dense1/dense/bias/Adam*
T0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2
�
@classification_layers/dense1/dense/bias/Adam_1/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    *
dtype0*
_output_shapes
:2
�
.classification_layers/dense1/dense/bias/Adam_1
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
shared_name *
_output_shapes
:2*
shape:2
�
5classification_layers/dense1/dense/bias/Adam_1/AssignAssign.classification_layers/dense1/dense/bias/Adam_1@classification_layers/dense1/dense/bias/Adam_1/Initializer/zeros*
_output_shapes
:2*
validate_shape(*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
T0*
use_locking(
�
3classification_layers/dense1/dense/bias/Adam_1/readIdentity.classification_layers/dense1/dense/bias/Adam_1*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
T0
�
Lclassification_layers/dense1/batch_normalization/beta/Adam/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    *
_output_shapes
:2*
dtype0
�
:classification_layers/dense1/batch_normalization/beta/Adam
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
shape:2*
shared_name 
�
Aclassification_layers/dense1/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense1/batch_normalization/beta/AdamLclassification_layers/dense1/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
T0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
validate_shape(*
_output_shapes
:2
�
?classification_layers/dense1/batch_normalization/beta/Adam/readIdentity:classification_layers/dense1/batch_normalization/beta/Adam*
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
�
Nclassification_layers/dense1/batch_normalization/beta/Adam_1/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    *
dtype0*
_output_shapes
:2
�
<classification_layers/dense1/batch_normalization/beta/Adam_1
VariableV2*
shared_name *H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
	container *
shape:2*
dtype0*
_output_shapes
:2
�
Cclassification_layers/dense1/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense1/batch_normalization/beta/Adam_1Nclassification_layers/dense1/batch_normalization/beta/Adam_1/Initializer/zeros*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
�
Aclassification_layers/dense1/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense1/batch_normalization/beta/Adam_1*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
T0
�
Mclassification_layers/dense1/batch_normalization/gamma/Adam/Initializer/zerosConst*
_output_shapes
:2*
dtype0*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*    
�
;classification_layers/dense1/batch_normalization/gamma/Adam
VariableV2*
shared_name *I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
	container *
shape:2*
dtype0*
_output_shapes
:2
�
Bclassification_layers/dense1/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense1/batch_normalization/gamma/AdamMclassification_layers/dense1/batch_normalization/gamma/Adam/Initializer/zeros*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
�
@classification_layers/dense1/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense1/batch_normalization/gamma/Adam*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0
�
Oclassification_layers/dense1/batch_normalization/gamma/Adam_1/Initializer/zerosConst*
_output_shapes
:2*
dtype0*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*    
�
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
�
Dclassification_layers/dense1/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense1/batch_normalization/gamma/Adam_1Oclassification_layers/dense1/batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
validate_shape(*
_output_shapes
:2
�
Bclassification_layers/dense1/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense1/batch_normalization/gamma/Adam_1*
T0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes

:2*
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB2*    
�
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape
:2*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0*
validate_shape(*
use_locking(
�
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0
�
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB2*    *
_output_shapes

:2*
dtype0
�
4classification_layers/dense_last/dense/kernel/Adam_1
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
�
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

:2*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
Bclassification_layers/dense_last/dense/bias/Adam/Initializer/zerosConst*
_output_shapes
:*
dtype0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    
�
0classification_layers/dense_last/dense/bias/Adam
VariableV2*
	container *
dtype0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
shape:*
shared_name 
�
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
5classification_layers/dense_last/dense/bias/Adam/readIdentity0classification_layers/dense_last/dense/bias/Adam*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
�
Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*
dtype0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    
�
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
�
9classification_layers/dense_last/dense/bias/Adam_1/AssignAssign2classification_layers/dense_last/dense/bias/Adam_1Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zeros*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
7classification_layers/dense_last/dense/bias/Adam_1/readIdentity2classification_layers/dense_last/dense/bias/Adam_1*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0
W
Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
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
 *w�?
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
?Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense0/dense/kernel.classification_layers/dense0/dense/kernel/Adam0classification_layers/dense0/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:	�d*
use_nesterov( *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking( 
�
=Adam/update_classification_layers/dense0/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense0/dense/bias,classification_layers/dense0/dense/bias/Adam.classification_layers/dense0/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d*
T0*
use_nesterov( *
use_locking( 
�
KAdam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense0/batch_normalization/beta:classification_layers/dense0/batch_normalization/beta/Adam<classification_layers/dense0/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
_output_shapes
:d*
use_nesterov( *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking( 
�
LAdam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense0/batch_normalization/gamma;classification_layers/dense0/batch_normalization/gamma/Adam=classification_layers/dense0/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
use_locking( *
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
use_nesterov( *
_output_shapes
:d
�
?Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense1/dense/kernel.classification_layers/dense1/dense/kernel/Adam0classification_layers/dense1/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
use_nesterov( *
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
�
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
�
KAdam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense1/batch_normalization/beta:classification_layers/dense1/batch_normalization/beta/Adam<classification_layers/dense1/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
�
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
�
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
�
AAdam/update_classification_layers/dense_last/dense/bias/ApplyAdam	ApplyAdam+classification_layers/dense_last/dense/bias0classification_layers/dense_last/dense/bias/Adam2classification_layers/dense_last/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonXgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
:*
use_nesterov( *>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0*
use_locking( 
�
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
: 
�
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign=^classification_layers/dense0/batch_normalization/beta/Assign>^classification_layers/dense0/batch_normalization/gamma/AssignD^classification_layers/dense0/batch_normalization/moving_mean/AssignH^classification_layers/dense0/batch_normalization/moving_variance/Assign1^classification_layers/dense1/dense/kernel/Assign/^classification_layers/dense1/dense/bias/Assign=^classification_layers/dense1/batch_normalization/beta/Assign>^classification_layers/dense1/batch_normalization/gamma/AssignD^classification_layers/dense1/batch_normalization/moving_mean/AssignH^classification_layers/dense1/batch_normalization/moving_variance/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/AssignB^classification_layers/dense0/batch_normalization/beta/Adam/AssignD^classification_layers/dense0/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense0/batch_normalization/gamma/Adam/AssignE^classification_layers/dense0/batch_normalization/gamma/Adam_1/Assign6^classification_layers/dense1/dense/kernel/Adam/Assign8^classification_layers/dense1/dense/kernel/Adam_1/Assign4^classification_layers/dense1/dense/bias/Adam/Assign6^classification_layers/dense1/dense/bias/Adam_1/AssignB^classification_layers/dense1/batch_normalization/beta/Adam/AssignD^classification_layers/dense1/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense1/batch_normalization/gamma/Adam/AssignE^classification_layers/dense1/batch_normalization/gamma/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign"Uəz}     ���,	}���^�AJ��
�#�#
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
2	��
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
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
p
	AssignSub
ref"T�

value"T

output_ref"T�"
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
�
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
2	�
�
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
2	�
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
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
2	�
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
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
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
	2	�
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
�
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
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.2.12v1.2.0-5-g435cdfc�
|
Input/PlaceholderPlaceholder*+
_output_shapes
:���������  * 
shape:���������  *
dtype0
u
Target/PlaceholderPlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
g
"controll_normalization/PlaceholderPlaceholder*
shape:*
dtype0
*
_output_shapes
:
^
Flatten/ShapeShapeInput/Placeholder*
_output_shapes
:*
out_type0*
T0
]
Flatten/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
\
Flatten/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
�
Flatten/SliceSliceFlatten/ShapeFlatten/Slice/beginFlatten/Slice/size*
_output_shapes
:*
T0*
Index0
_
Flatten/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB:
^
Flatten/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
�
Flatten/Slice_1SliceFlatten/ShapeFlatten/Slice_1/beginFlatten/Slice_1/size*
_output_shapes
:*
T0*
Index0
W
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
r
Flatten/ProdProdFlatten/Slice_1Flatten/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
X
Flatten/ExpandDims/dimConst*
value	B : *
_output_shapes
: *
dtype0
w
Flatten/ExpandDims
ExpandDimsFlatten/ProdFlatten/ExpandDims/dim*
_output_shapes
:*
T0*

Tdim0
U
Flatten/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
~
Flatten/ReshapeReshapeInput/PlaceholderFlatten/concat*
T0*
Tshape0*(
_output_shapes
:����������
f
!classification_layers/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:
�
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB"   d   *
dtype0*
_output_shapes
:
�
Kclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/meanConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *    *
_output_shapes
: *
dtype0
�
Mclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *  �?
�
Vclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	�d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes
:	�d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d*
T0
�
)classification_layers/dense0/dense/kernel
VariableV2*
	container *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
shared_name *
_output_shapes
:	�d*
shape:	�d
�
0classification_layers/dense0/dense/kernel/AssignAssign)classification_layers/dense0/dense/kernelFclassification_layers/dense0/dense/kernel/Initializer/truncated_normal*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d*
T0*
validate_shape(*
use_locking(
�
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*
T0*
_output_shapes
:	�d*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
9classification_layers/dense0/dense/bias/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    *
_output_shapes
:d*
dtype0
�
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
�
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
,classification_layers/dense0/dense/bias/readIdentity'classification_layers/dense0/dense/bias*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0
�
)classification_layers/dense0/dense/MatMulMatMulFlatten/Reshape.classification_layers/dense0/dense/kernel/read*
transpose_b( *'
_output_shapes
:���������d*
transpose_a( *
T0
�
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:���������d
�
Gclassification_layers/dense0/batch_normalization/beta/Initializer/zerosConst*
_output_shapes
:d*
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    
�
5classification_layers/dense0/batch_normalization/beta
VariableV2*
_output_shapes
:d*
dtype0*
shape:d*
	container *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
shared_name 
�
<classification_layers/dense0/batch_normalization/beta/AssignAssign5classification_layers/dense0/batch_normalization/betaGclassification_layers/dense0/batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
validate_shape(*
_output_shapes
:d
�
:classification_layers/dense0/batch_normalization/beta/readIdentity5classification_layers/dense0/batch_normalization/beta*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d*
T0
�
Gclassification_layers/dense0/batch_normalization/gamma/Initializer/onesConst*
_output_shapes
:d*
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*  �?
�
6classification_layers/dense0/batch_normalization/gamma
VariableV2*
	container *
shared_name *
dtype0*
shape:d*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
=classification_layers/dense0/batch_normalization/gamma/AssignAssign6classification_layers/dense0/batch_normalization/gammaGclassification_layers/dense0/batch_normalization/gamma/Initializer/ones*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
�
;classification_layers/dense0/batch_normalization/gamma/readIdentity6classification_layers/dense0/batch_normalization/gamma*
T0*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
Nclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zerosConst*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
valueBd*    *
dtype0*
_output_shapes
:d
�
<classification_layers/dense0/batch_normalization/moving_mean
VariableV2*
_output_shapes
:d*
dtype0*
shape:d*
	container *O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
shared_name 
�
Cclassification_layers/dense0/batch_normalization/moving_mean/AssignAssign<classification_layers/dense0/batch_normalization/moving_meanNclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
T0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
validate_shape(*
_output_shapes
:d
�
Aclassification_layers/dense0/batch_normalization/moving_mean/readIdentity<classification_layers/dense0/batch_normalization/moving_mean*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:d*
T0
�
Qclassification_layers/dense0/batch_normalization/moving_variance/Initializer/onesConst*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
valueBd*  �?*
dtype0*
_output_shapes
:d
�
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
�
Gclassification_layers/dense0/batch_normalization/moving_variance/AssignAssign@classification_layers/dense0/batch_normalization/moving_varianceQclassification_layers/dense0/batch_normalization/moving_variance/Initializer/ones*
_output_shapes
:d*
validate_shape(*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0*
use_locking(
�
Eclassification_layers/dense0/batch_normalization/moving_variance/readIdentity@classification_layers/dense0/batch_normalization/moving_variance*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:d*
T0
�
Oclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
�
=classification_layers/dense0/batch_normalization/moments/MeanMean*classification_layers/dense0/dense/BiasAddOclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indices*
_output_shapes

:d*
T0*
	keep_dims(*

Tidx0
�
Eclassification_layers/dense0/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense0/batch_normalization/moments/Mean*
T0*
_output_shapes

:d
�
<classification_layers/dense0/batch_normalization/moments/SubSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:���������d
�
Wclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
�
Eclassification_layers/dense0/batch_normalization/moments/shifted_meanMean<classification_layers/dense0/batch_normalization/moments/SubWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:d
�
Jclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*'
_output_shapes
:���������d*
T0
�
Qclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
�
?classification_layers/dense0/batch_normalization/moments/Mean_1MeanJclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indices*
_output_shapes

:d*
T0*
	keep_dims(*

Tidx0
�
?classification_layers/dense0/batch_normalization/moments/SquareSquareEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
_output_shapes

:d*
T0
�
Aclassification_layers/dense0/batch_normalization/moments/varianceSub?classification_layers/dense0/batch_normalization/moments/Mean_1?classification_layers/dense0/batch_normalization/moments/Square*
T0*
_output_shapes

:d
�
=classification_layers/dense0/batch_normalization/moments/meanAddEclassification_layers/dense0/batch_normalization/moments/shifted_meanEclassification_layers/dense0/batch_normalization/moments/StopGradient*
_output_shapes

:d*
T0
�
@classification_layers/dense0/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense0/batch_normalization/moments/mean*
T0*
_output_shapes
:d*
squeeze_dims
 
�
Bclassification_layers/dense0/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense0/batch_normalization/moments/variance*
squeeze_dims
 *
_output_shapes
:d*
T0
�
?classification_layers/dense0/batch_normalization/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
;classification_layers/dense0/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense0/batch_normalization/moments/Squeeze?classification_layers/dense0/batch_normalization/ExpandDims/dim*
T0*
_output_shapes

:d*

Tdim0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense0/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense0/batch_normalization/moving_mean/readAclassification_layers/dense0/batch_normalization/ExpandDims_1/dim*

Tdim0*
_output_shapes

:d*
T0
�
>classification_layers/dense0/batch_normalization/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
8classification_layers/dense0/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense0/batch_normalization/Reshape/shape*
T0
*
_output_shapes
:*
Tshape0
�
7classification_layers/dense0/batch_normalization/SelectSelect8classification_layers/dense0/batch_normalization/Reshape;classification_layers/dense0/batch_normalization/ExpandDims=classification_layers/dense0/batch_normalization/ExpandDims_1*
_output_shapes

:d*
T0
�
8classification_layers/dense0/batch_normalization/SqueezeSqueeze7classification_layers/dense0/batch_normalization/Select*
T0*
_output_shapes
:d*
squeeze_dims
 
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense0/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense0/batch_normalization/moments/Squeeze_1Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dim*
_output_shapes

:d*
T0*

Tdim0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense0/batch_normalization/moving_variance/readAclassification_layers/dense0/batch_normalization/ExpandDims_3/dim*
T0*
_output_shapes

:d*

Tdim0
�
@classification_layers/dense0/batch_normalization/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
�
:classification_layers/dense0/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_1/shape*
_output_shapes
:*
Tshape0*
T0

�
9classification_layers/dense0/batch_normalization/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1=classification_layers/dense0/batch_normalization/ExpandDims_2=classification_layers/dense0/batch_normalization/ExpandDims_3*
T0*
_output_shapes

:d
�
:classification_layers/dense0/batch_normalization/Squeeze_1Squeeze9classification_layers/dense0/batch_normalization/Select_1*
squeeze_dims
 *
_output_shapes
:d*
T0
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_4/inputConst*
dtype0*
_output_shapes
: *
valueB
 *�p}?
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*

Tdim0*
_output_shapes
:*
T0
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_5/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_5/inputAclassification_layers/dense0/batch_normalization/ExpandDims_5/dim*
_output_shapes
:*
T0*

Tdim0
�
@classification_layers/dense0/batch_normalization/Reshape_2/shapeConst*
valueB:*
_output_shapes
:*
dtype0
�
:classification_layers/dense0/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_2/shape*
T0
*
_output_shapes
:*
Tshape0
�
9classification_layers/dense0/batch_normalization/Select_2Select:classification_layers/dense0/batch_normalization/Reshape_2=classification_layers/dense0/batch_normalization/ExpandDims_4=classification_layers/dense0/batch_normalization/ExpandDims_5*
T0*
_output_shapes
:
�
:classification_layers/dense0/batch_normalization/Squeeze_2Squeeze9classification_layers/dense0/batch_normalization/Select_2*
squeeze_dims
 *
_output_shapes
: *
T0
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/xConst*
valueB
 *  �?*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
: *
dtype0
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*
T0*
_output_shapes
: *O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense0/batch_normalization/moving_mean/read8classification_layers/dense0/batch_normalization/Squeeze*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub*
_output_shapes
:d*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0
�
@classification_layers/dense0/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense0/batch_normalization/moving_meanDclassification_layers/dense0/batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:d
�
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/xConst*
valueB
 *  �?*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*
_output_shapes
: *S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0
�
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense0/batch_normalization/moving_variance/read:classification_layers/dense0/batch_normalization/Squeeze_1*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub*
T0*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense0/batch_normalization/moving_varianceFclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mul*
_output_shapes
:d*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0*
use_locking( 
�
@classification_layers/dense0/batch_normalization/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
>classification_layers/dense0/batch_normalization/batchnorm/addAdd:classification_layers/dense0/batch_normalization/Squeeze_1@classification_layers/dense0/batch_normalization/batchnorm/add/y*
_output_shapes
:d*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense0/batch_normalization/batchnorm/add*
T0*
_output_shapes
:d
�
>classification_layers/dense0/batch_normalization/batchnorm/mulMul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrt;classification_layers/dense0/batch_normalization/gamma/read*
T0*
_output_shapes
:d
�
@classification_layers/dense0/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense0/dense/BiasAdd>classification_layers/dense0/batch_normalization/batchnorm/mul*'
_output_shapes
:���������d*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense0/batch_normalization/Squeeze>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:d
�
>classification_layers/dense0/batch_normalization/batchnorm/subSub:classification_layers/dense0/batch_normalization/beta/read@classification_layers/dense0/batch_normalization/batchnorm/mul_2*
_output_shapes
:d*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/add_1Add@classification_layers/dense0/batch_normalization/batchnorm/mul_1>classification_layers/dense0/batch_normalization/batchnorm/sub*'
_output_shapes
:���������d*
T0
�
!classification_layers/dense0/ReluRelu@classification_layers/dense0/batch_normalization/batchnorm/add_1*
T0*'
_output_shapes
:���������d
�
*classification_layers/dense0/dropout/ShapeShape!classification_layers/dense0/Relu*
T0*
out_type0*
_output_shapes
:
|
7classification_layers/dense0/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
|
7classification_layers/dense0/dropout/random_uniform/maxConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Aclassification_layers/dense0/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense0/dropout/Shape*

seed *
T0*
dtype0*'
_output_shapes
:���������d*
seed2 
�
7classification_layers/dense0/dropout/random_uniform/subSub7classification_layers/dense0/dropout/random_uniform/max7classification_layers/dense0/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
7classification_layers/dense0/dropout/random_uniform/mulMulAclassification_layers/dense0/dropout/random_uniform/RandomUniform7classification_layers/dense0/dropout/random_uniform/sub*'
_output_shapes
:���������d*
T0
�
3classification_layers/dense0/dropout/random_uniformAdd7classification_layers/dense0/dropout/random_uniform/mul7classification_layers/dense0/dropout/random_uniform/min*
T0*'
_output_shapes
:���������d
�
(classification_layers/dense0/dropout/addAdd!classification_layers/Placeholder3classification_layers/dense0/dropout/random_uniform*
T0*
_output_shapes
:
�
*classification_layers/dense0/dropout/FloorFloor(classification_layers/dense0/dropout/add*
_output_shapes
:*
T0
�
(classification_layers/dense0/dropout/divRealDiv!classification_layers/dense0/Relu!classification_layers/Placeholder*
T0*
_output_shapes
:
�
(classification_layers/dense0/dropout/mulMul(classification_layers/dense0/dropout/div*classification_layers/dense0/dropout/Floor*'
_output_shapes
:���������d*
T0
�
Lclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB"d   2   
�
Kclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/meanConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Mclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueB
 *  �?
�
Vclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
�
Jclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/stddev*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
�
Fclassification_layers/dense1/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense1/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0
�
)classification_layers/dense1/dense/kernel
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
�
0classification_layers/dense1/dense/kernel/AssignAssign)classification_layers/dense1/dense/kernelFclassification_layers/dense1/dense/kernel/Initializer/truncated_normal*
_output_shapes

:d2*
validate_shape(*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0*
use_locking(
�
.classification_layers/dense1/dense/kernel/readIdentity)classification_layers/dense1/dense/kernel*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
�
9classification_layers/dense1/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    
�
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
�
.classification_layers/dense1/dense/bias/AssignAssign'classification_layers/dense1/dense/bias9classification_layers/dense1/dense/bias/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
validate_shape(*
_output_shapes
:2
�
,classification_layers/dense1/dense/bias/readIdentity'classification_layers/dense1/dense/bias*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
T0
�
)classification_layers/dense1/dense/MatMulMatMul(classification_layers/dense0/dropout/mul.classification_layers/dense1/dense/kernel/read*
transpose_b( *'
_output_shapes
:���������2*
transpose_a( *
T0
�
*classification_layers/dense1/dense/BiasAddBiasAdd)classification_layers/dense1/dense/MatMul,classification_layers/dense1/dense/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:���������2
�
Gclassification_layers/dense1/batch_normalization/beta/Initializer/zerosConst*
_output_shapes
:2*
dtype0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    
�
5classification_layers/dense1/batch_normalization/beta
VariableV2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2*
shape:2*
dtype0*
shared_name *
	container 
�
<classification_layers/dense1/batch_normalization/beta/AssignAssign5classification_layers/dense1/batch_normalization/betaGclassification_layers/dense1/batch_normalization/beta/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
�
:classification_layers/dense1/batch_normalization/beta/readIdentity5classification_layers/dense1/batch_normalization/beta*
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
�
Gclassification_layers/dense1/batch_normalization/gamma/Initializer/onesConst*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*  �?*
_output_shapes
:2*
dtype0
�
6classification_layers/dense1/batch_normalization/gamma
VariableV2*
shared_name *
shape:2*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
dtype0*
	container 
�
=classification_layers/dense1/batch_normalization/gamma/AssignAssign6classification_layers/dense1/batch_normalization/gammaGclassification_layers/dense1/batch_normalization/gamma/Initializer/ones*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
�
;classification_layers/dense1/batch_normalization/gamma/readIdentity6classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
T0
�
Nclassification_layers/dense1/batch_normalization/moving_mean/Initializer/zerosConst*
_output_shapes
:2*
dtype0*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
valueB2*    
�
<classification_layers/dense1/batch_normalization/moving_mean
VariableV2*
_output_shapes
:2*
dtype0*
shape:2*
	container *O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
shared_name 
�
Cclassification_layers/dense1/batch_normalization/moving_mean/AssignAssign<classification_layers/dense1/batch_normalization/moving_meanNclassification_layers/dense1/batch_normalization/moving_mean/Initializer/zeros*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2*
T0*
validate_shape(*
use_locking(
�
Aclassification_layers/dense1/batch_normalization/moving_mean/readIdentity<classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
T0
�
Qclassification_layers/dense1/batch_normalization/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
valueB2*  �?
�
@classification_layers/dense1/batch_normalization/moving_variance
VariableV2*
_output_shapes
:2*
dtype0*
shape:2*
	container *S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
shared_name 
�
Gclassification_layers/dense1/batch_normalization/moving_variance/AssignAssign@classification_layers/dense1/batch_normalization/moving_varianceQclassification_layers/dense1/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance
�
Eclassification_layers/dense1/batch_normalization/moving_variance/readIdentity@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
T0
�
Oclassification_layers/dense1/batch_normalization/moments/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
=classification_layers/dense1/batch_normalization/moments/MeanMean*classification_layers/dense1/dense/BiasAddOclassification_layers/dense1/batch_normalization/moments/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:2
�
Eclassification_layers/dense1/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense1/batch_normalization/moments/Mean*
_output_shapes

:2*
T0
�
<classification_layers/dense1/batch_normalization/moments/SubSub*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradient*'
_output_shapes
:���������2*
T0
�
Wclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
�
Eclassification_layers/dense1/batch_normalization/moments/shifted_meanMean<classification_layers/dense1/batch_normalization/moments/SubWclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:2
�
Jclassification_layers/dense1/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradient*'
_output_shapes
:���������2*
T0
�
Qclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
�
?classification_layers/dense1/batch_normalization/moments/Mean_1MeanJclassification_layers/dense1/batch_normalization/moments/SquaredDifferenceQclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:2
�
?classification_layers/dense1/batch_normalization/moments/SquareSquareEclassification_layers/dense1/batch_normalization/moments/shifted_mean*
_output_shapes

:2*
T0
�
Aclassification_layers/dense1/batch_normalization/moments/varianceSub?classification_layers/dense1/batch_normalization/moments/Mean_1?classification_layers/dense1/batch_normalization/moments/Square*
T0*
_output_shapes

:2
�
=classification_layers/dense1/batch_normalization/moments/meanAddEclassification_layers/dense1/batch_normalization/moments/shifted_meanEclassification_layers/dense1/batch_normalization/moments/StopGradient*
_output_shapes

:2*
T0
�
@classification_layers/dense1/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense1/batch_normalization/moments/mean*
squeeze_dims
 *
_output_shapes
:2*
T0
�
Bclassification_layers/dense1/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense1/batch_normalization/moments/variance*
T0*
_output_shapes
:2*
squeeze_dims
 
�
?classification_layers/dense1/batch_normalization/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
;classification_layers/dense1/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense1/batch_normalization/moments/Squeeze?classification_layers/dense1/batch_normalization/ExpandDims/dim*
_output_shapes

:2*
T0*

Tdim0
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_1/dimConst*
value	B : *
_output_shapes
: *
dtype0
�
=classification_layers/dense1/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense1/batch_normalization/moving_mean/readAclassification_layers/dense1/batch_normalization/ExpandDims_1/dim*
T0*
_output_shapes

:2*

Tdim0
�
>classification_layers/dense1/batch_normalization/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
�
8classification_layers/dense1/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense1/batch_normalization/Reshape/shape*
T0
*
_output_shapes
:*
Tshape0
�
7classification_layers/dense1/batch_normalization/SelectSelect8classification_layers/dense1/batch_normalization/Reshape;classification_layers/dense1/batch_normalization/ExpandDims=classification_layers/dense1/batch_normalization/ExpandDims_1*
T0*
_output_shapes

:2
�
8classification_layers/dense1/batch_normalization/SqueezeSqueeze7classification_layers/dense1/batch_normalization/Select*
squeeze_dims
 *
T0*
_output_shapes
:2
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense1/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense1/batch_normalization/moments/Squeeze_1Aclassification_layers/dense1/batch_normalization/ExpandDims_2/dim*
T0*
_output_shapes

:2*

Tdim0
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense1/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense1/batch_normalization/moving_variance/readAclassification_layers/dense1/batch_normalization/ExpandDims_3/dim*
T0*
_output_shapes

:2*

Tdim0
�
@classification_layers/dense1/batch_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
:classification_layers/dense1/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense1/batch_normalization/Reshape_1/shape*
Tshape0*
_output_shapes
:*
T0

�
9classification_layers/dense1/batch_normalization/Select_1Select:classification_layers/dense1/batch_normalization/Reshape_1=classification_layers/dense1/batch_normalization/ExpandDims_2=classification_layers/dense1/batch_normalization/ExpandDims_3*
_output_shapes

:2*
T0
�
:classification_layers/dense1/batch_normalization/Squeeze_1Squeeze9classification_layers/dense1/batch_normalization/Select_1*
squeeze_dims
 *
T0*
_output_shapes
:2
�
Cclassification_layers/dense1/batch_normalization/ExpandDims_4/inputConst*
_output_shapes
: *
dtype0*
valueB
 *�p}?
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_4/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense1/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense1/batch_normalization/ExpandDims_4/inputAclassification_layers/dense1/batch_normalization/ExpandDims_4/dim*
_output_shapes
:*
T0*

Tdim0
�
Cclassification_layers/dense1/batch_normalization/ExpandDims_5/inputConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
Aclassification_layers/dense1/batch_normalization/ExpandDims_5/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense1/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense1/batch_normalization/ExpandDims_5/inputAclassification_layers/dense1/batch_normalization/ExpandDims_5/dim*
_output_shapes
:*
T0*

Tdim0
�
@classification_layers/dense1/batch_normalization/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
�
:classification_layers/dense1/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense1/batch_normalization/Reshape_2/shape*
T0
*
_output_shapes
:*
Tshape0
�
9classification_layers/dense1/batch_normalization/Select_2Select:classification_layers/dense1/batch_normalization/Reshape_2=classification_layers/dense1/batch_normalization/ExpandDims_4=classification_layers/dense1/batch_normalization/ExpandDims_5*
_output_shapes
:*
T0
�
:classification_layers/dense1/batch_normalization/Squeeze_2Squeeze9classification_layers/dense1/batch_normalization/Select_2*
squeeze_dims
 *
_output_shapes
: *
T0
�
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub/xConst*
valueB
 *  �?*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
: *
dtype0
�
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense1/batch_normalization/Squeeze_2*
_output_shapes
: *O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
T0
�
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense1/batch_normalization/moving_mean/read8classification_layers/dense1/batch_normalization/Squeeze*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
T0
�
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense1/batch_normalization/AssignMovingAvg/sub*
T0*
_output_shapes
:2*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean
�
@classification_layers/dense1/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense1/batch_normalization/moving_meanDclassification_layers/dense1/batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*O
_classE
CAloc:@classification_layers/dense1/batch_normalization/moving_mean*
_output_shapes
:2
�
Hclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub/xConst*
valueB
 *  �?*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
�
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense1/batch_normalization/Squeeze_2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
: *
T0
�
Hclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense1/batch_normalization/moving_variance/read:classification_layers/dense1/batch_normalization/Squeeze_1*
T0*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance
�
Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/sub*
T0*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
_output_shapes
:2
�
Bclassification_layers/dense1/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense1/batch_normalization/moving_varianceFclassification_layers/dense1/batch_normalization/AssignMovingAvg_1/mul*
_output_shapes
:2*S
_classI
GEloc:@classification_layers/dense1/batch_normalization/moving_variance*
T0*
use_locking( 
�
@classification_layers/dense1/batch_normalization/batchnorm/add/yConst*
valueB
 *o�:*
_output_shapes
: *
dtype0
�
>classification_layers/dense1/batch_normalization/batchnorm/addAdd:classification_layers/dense1/batch_normalization/Squeeze_1@classification_layers/dense1/batch_normalization/batchnorm/add/y*
_output_shapes
:2*
T0
�
@classification_layers/dense1/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense1/batch_normalization/batchnorm/add*
T0*
_output_shapes
:2
�
>classification_layers/dense1/batch_normalization/batchnorm/mulMul@classification_layers/dense1/batch_normalization/batchnorm/Rsqrt;classification_layers/dense1/batch_normalization/gamma/read*
_output_shapes
:2*
T0
�
@classification_layers/dense1/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense1/dense/BiasAdd>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:���������2
�
@classification_layers/dense1/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense1/batch_normalization/Squeeze>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:2
�
>classification_layers/dense1/batch_normalization/batchnorm/subSub:classification_layers/dense1/batch_normalization/beta/read@classification_layers/dense1/batch_normalization/batchnorm/mul_2*
_output_shapes
:2*
T0
�
@classification_layers/dense1/batch_normalization/batchnorm/add_1Add@classification_layers/dense1/batch_normalization/batchnorm/mul_1>classification_layers/dense1/batch_normalization/batchnorm/sub*
T0*'
_output_shapes
:���������2
�
!classification_layers/dense1/ReluRelu@classification_layers/dense1/batch_normalization/batchnorm/add_1*'
_output_shapes
:���������2*
T0
�
*classification_layers/dense1/dropout/ShapeShape!classification_layers/dense1/Relu*
_output_shapes
:*
out_type0*
T0
|
7classification_layers/dense1/dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
|
7classification_layers/dense1/dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
Aclassification_layers/dense1/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense1/dropout/Shape*'
_output_shapes
:���������2*
seed2 *
dtype0*
T0*

seed 
�
7classification_layers/dense1/dropout/random_uniform/subSub7classification_layers/dense1/dropout/random_uniform/max7classification_layers/dense1/dropout/random_uniform/min*
T0*
_output_shapes
: 
�
7classification_layers/dense1/dropout/random_uniform/mulMulAclassification_layers/dense1/dropout/random_uniform/RandomUniform7classification_layers/dense1/dropout/random_uniform/sub*'
_output_shapes
:���������2*
T0
�
3classification_layers/dense1/dropout/random_uniformAdd7classification_layers/dense1/dropout/random_uniform/mul7classification_layers/dense1/dropout/random_uniform/min*'
_output_shapes
:���������2*
T0
�
(classification_layers/dense1/dropout/addAdd!classification_layers/Placeholder3classification_layers/dense1/dropout/random_uniform*
T0*
_output_shapes
:
�
*classification_layers/dense1/dropout/FloorFloor(classification_layers/dense1/dropout/add*
_output_shapes
:*
T0
�
(classification_layers/dense1/dropout/divRealDiv!classification_layers/dense1/Relu!classification_layers/Placeholder*
_output_shapes
:*
T0
�
(classification_layers/dense1/dropout/mulMul(classification_layers/dense1/dropout/div*classification_layers/dense1/dropout/Floor*
T0*'
_output_shapes
:���������2
�
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"2      *
dtype0*
_output_shapes
:
�
Oclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *    
�
Qclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *  �?
�
Zclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shape*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0*
dtype0*
seed2 *

seed 
�
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
�
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2
�
-classification_layers/dense_last/dense/kernel
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
shape
:2*
shared_name 
�
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0
�
=classification_layers/dense_last/dense/bias/Initializer/zerosConst*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    *
_output_shapes
:*
dtype0
�
+classification_layers/dense_last/dense/bias
VariableV2*
	container *
dtype0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
shape:*
shared_name 
�
2classification_layers/dense_last/dense/bias/AssignAssign+classification_layers/dense_last/dense/bias=classification_layers/dense_last/dense/bias/Initializer/zeros*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
0classification_layers/dense_last/dense/bias/readIdentity+classification_layers/dense_last/dense/bias*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0
�
-classification_layers/dense_last/dense/MatMulMatMul(classification_layers/dense1/dropout/mul2classification_layers/dense_last/dense/kernel/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
.classification_layers/dense_last/dense/BiasAddBiasAdd-classification_layers/dense_last/dense/MatMul0classification_layers/dense_last/dense/bias/read*'
_output_shapes
:���������*
T0*
data_formatNHWC
�
classification_layers/SoftmaxSoftmax.classification_layers/dense_last/dense/BiasAdd*
T0*'
_output_shapes
:���������
n
)Evaluation_layers/clip_by_value/Minimum/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
'Evaluation_layers/clip_by_value/MinimumMinimumclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*
T0*'
_output_shapes
:���������
f
!Evaluation_layers/clip_by_value/yConst*
valueB
 *���.*
_output_shapes
: *
dtype0
�
Evaluation_layers/clip_by_valueMaximum'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*
T0*'
_output_shapes
:���������
o
Evaluation_layers/LogLogEvaluation_layers/clip_by_value*
T0*'
_output_shapes
:���������
y
Evaluation_layers/mulMulTarget/PlaceholderEvaluation_layers/Log*'
_output_shapes
:���������*
T0
q
'Evaluation_layers/Sum/reduction_indicesConst*
valueB:*
_output_shapes
:*
dtype0
�
Evaluation_layers/SumSumEvaluation_layers/mul'Evaluation_layers/Sum/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
a
Evaluation_layers/NegNegEvaluation_layers/Sum*#
_output_shapes
:���������*
T0
a
Evaluation_layers/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
Evaluation_layers/MeanMeanEvaluation_layers/NegEvaluation_layers/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
d
"Evaluation_layers/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
�
Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:���������
f
$Evaluation_layers/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Evaluation_layers/ArgMax_1ArgMaxTarget/Placeholder$Evaluation_layers/ArgMax_1/dimension*#
_output_shapes
:���������*
T0*

Tidx0
�
Evaluation_layers/EqualEqualEvaluation_layers/ArgMaxEvaluation_layers/ArgMax_1*
T0	*#
_output_shapes
:���������
|
Evaluation_layers/accracy/CastCastEvaluation_layers/Equal*#
_output_shapes
:���������*

DstT0*

SrcT0

i
Evaluation_layers/accracy/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
Evaluation_layers/accracy/MeanMeanEvaluation_layers/accracy/CastEvaluation_layers/accracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
z
Evaluation_layers/accuracy/tagsConst*
dtype0*
_output_shapes
: *+
value"B  BEvaluation_layers/accuracy
�
Evaluation_layers/accuracyScalarSummaryEvaluation_layers/accuracy/tagsEvaluation_layers/accracy/Mean*
T0*
_output_shapes
: 
r
Evaluation_layers/loss/tagsConst*'
valueB BEvaluation_layers/loss*
_output_shapes
: *
dtype0
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
�
Evaluation_layers/accuracy_1ScalarSummary!Evaluation_layers/accuracy_1/tagsEvaluation_layers/accracy/Mean*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
T
gradients/ConstConst*
valueB
 *  �?*
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
�
-gradients/Evaluation_layers/Mean_grad/ReshapeReshapegradients/Fill3gradients/Evaluation_layers/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
�
+gradients/Evaluation_layers/Mean_grad/ShapeShapeEvaluation_layers/Neg*
T0*
out_type0*
_output_shapes
:
�
*gradients/Evaluation_layers/Mean_grad/TileTile-gradients/Evaluation_layers/Mean_grad/Reshape+gradients/Evaluation_layers/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
-gradients/Evaluation_layers/Mean_grad/Shape_1ShapeEvaluation_layers/Neg*
_output_shapes
:*
out_type0*
T0
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
�
*gradients/Evaluation_layers/Mean_grad/ProdProd-gradients/Evaluation_layers/Mean_grad/Shape_1+gradients/Evaluation_layers/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
w
-gradients/Evaluation_layers/Mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
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
�
-gradients/Evaluation_layers/Mean_grad/MaximumMaximum,gradients/Evaluation_layers/Mean_grad/Prod_1/gradients/Evaluation_layers/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
.gradients/Evaluation_layers/Mean_grad/floordivFloorDiv*gradients/Evaluation_layers/Mean_grad/Prod-gradients/Evaluation_layers/Mean_grad/Maximum*
_output_shapes
: *
T0
�
*gradients/Evaluation_layers/Mean_grad/CastCast.gradients/Evaluation_layers/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
�
-gradients/Evaluation_layers/Mean_grad/truedivRealDiv*gradients/Evaluation_layers/Mean_grad/Tile*gradients/Evaluation_layers/Mean_grad/Cast*#
_output_shapes
:���������*
T0
�
(gradients/Evaluation_layers/Neg_grad/NegNeg-gradients/Evaluation_layers/Mean_grad/truediv*
T0*#
_output_shapes
:���������

*gradients/Evaluation_layers/Sum_grad/ShapeShapeEvaluation_layers/mul*
T0*
out_type0*
_output_shapes
:
k
)gradients/Evaluation_layers/Sum_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
�
(gradients/Evaluation_layers/Sum_grad/addAdd'Evaluation_layers/Sum/reduction_indices)gradients/Evaluation_layers/Sum_grad/Size*
T0*
_output_shapes
:
�
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
0gradients/Evaluation_layers/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
r
0gradients/Evaluation_layers/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
*gradients/Evaluation_layers/Sum_grad/rangeRange0gradients/Evaluation_layers/Sum_grad/range/start)gradients/Evaluation_layers/Sum_grad/Size0gradients/Evaluation_layers/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
q
/gradients/Evaluation_layers/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
)gradients/Evaluation_layers/Sum_grad/FillFill,gradients/Evaluation_layers/Sum_grad/Shape_1/gradients/Evaluation_layers/Sum_grad/Fill/value*
_output_shapes
:*
T0
�
2gradients/Evaluation_layers/Sum_grad/DynamicStitchDynamicStitch*gradients/Evaluation_layers/Sum_grad/range(gradients/Evaluation_layers/Sum_grad/mod*gradients/Evaluation_layers/Sum_grad/Shape)gradients/Evaluation_layers/Sum_grad/Fill*
N*
T0*#
_output_shapes
:���������
p
.gradients/Evaluation_layers/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
,gradients/Evaluation_layers/Sum_grad/MaximumMaximum2gradients/Evaluation_layers/Sum_grad/DynamicStitch.gradients/Evaluation_layers/Sum_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
-gradients/Evaluation_layers/Sum_grad/floordivFloorDiv*gradients/Evaluation_layers/Sum_grad/Shape,gradients/Evaluation_layers/Sum_grad/Maximum*
T0*
_output_shapes
:
�
,gradients/Evaluation_layers/Sum_grad/ReshapeReshape(gradients/Evaluation_layers/Neg_grad/Neg2gradients/Evaluation_layers/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
)gradients/Evaluation_layers/Sum_grad/TileTile,gradients/Evaluation_layers/Sum_grad/Reshape-gradients/Evaluation_layers/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:���������
|
*gradients/Evaluation_layers/mul_grad/ShapeShapeTarget/Placeholder*
_output_shapes
:*
out_type0*
T0
�
,gradients/Evaluation_layers/mul_grad/Shape_1ShapeEvaluation_layers/Log*
T0*
out_type0*
_output_shapes
:
�
:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/Evaluation_layers/mul_grad/Shape,gradients/Evaluation_layers/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
(gradients/Evaluation_layers/mul_grad/mulMul)gradients/Evaluation_layers/Sum_grad/TileEvaluation_layers/Log*'
_output_shapes
:���������*
T0
�
(gradients/Evaluation_layers/mul_grad/SumSum(gradients/Evaluation_layers/mul_grad/mul:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
,gradients/Evaluation_layers/mul_grad/ReshapeReshape(gradients/Evaluation_layers/mul_grad/Sum*gradients/Evaluation_layers/mul_grad/Shape*'
_output_shapes
:���������*
Tshape0*
T0
�
*gradients/Evaluation_layers/mul_grad/mul_1MulTarget/Placeholder)gradients/Evaluation_layers/Sum_grad/Tile*
T0*'
_output_shapes
:���������
�
*gradients/Evaluation_layers/mul_grad/Sum_1Sum*gradients/Evaluation_layers/mul_grad/mul_1<gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
.gradients/Evaluation_layers/mul_grad/Reshape_1Reshape*gradients/Evaluation_layers/mul_grad/Sum_1,gradients/Evaluation_layers/mul_grad/Shape_1*'
_output_shapes
:���������*
Tshape0*
T0
�
5gradients/Evaluation_layers/mul_grad/tuple/group_depsNoOp-^gradients/Evaluation_layers/mul_grad/Reshape/^gradients/Evaluation_layers/mul_grad/Reshape_1
�
=gradients/Evaluation_layers/mul_grad/tuple/control_dependencyIdentity,gradients/Evaluation_layers/mul_grad/Reshape6^gradients/Evaluation_layers/mul_grad/tuple/group_deps*'
_output_shapes
:���������*?
_class5
31loc:@gradients/Evaluation_layers/mul_grad/Reshape*
T0
�
?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1Identity.gradients/Evaluation_layers/mul_grad/Reshape_16^gradients/Evaluation_layers/mul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/Evaluation_layers/mul_grad/Reshape_1*'
_output_shapes
:���������
�
/gradients/Evaluation_layers/Log_grad/Reciprocal
ReciprocalEvaluation_layers/clip_by_value@^gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������
�
(gradients/Evaluation_layers/Log_grad/mulMul?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1/gradients/Evaluation_layers/Log_grad/Reciprocal*'
_output_shapes
:���������*
T0
�
4gradients/Evaluation_layers/clip_by_value_grad/ShapeShape'Evaluation_layers/clip_by_value/Minimum*
out_type0*
_output_shapes
:*
T0
y
6gradients/Evaluation_layers/clip_by_value_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
�
6gradients/Evaluation_layers/clip_by_value_grad/Shape_2Shape(gradients/Evaluation_layers/Log_grad/mul*
T0*
out_type0*
_output_shapes
:

:gradients/Evaluation_layers/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
4gradients/Evaluation_layers/clip_by_value_grad/zerosFill6gradients/Evaluation_layers/clip_by_value_grad/Shape_2:gradients/Evaluation_layers/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:���������
�
;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqualGreaterEqual'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*'
_output_shapes
:���������*
T0
�
Dgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/Evaluation_layers/clip_by_value_grad/Shape6gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
5gradients/Evaluation_layers/clip_by_value_grad/SelectSelect;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqual(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������
�
9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot
LogicalNot;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqual*'
_output_shapes
:���������
�
7gradients/Evaluation_layers/clip_by_value_grad/Select_1Select9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*
T0*'
_output_shapes
:���������
�
2gradients/Evaluation_layers/clip_by_value_grad/SumSum5gradients/Evaluation_layers/clip_by_value_grad/SelectDgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6gradients/Evaluation_layers/clip_by_value_grad/ReshapeReshape2gradients/Evaluation_layers/clip_by_value_grad/Sum4gradients/Evaluation_layers/clip_by_value_grad/Shape*'
_output_shapes
:���������*
Tshape0*
T0
�
4gradients/Evaluation_layers/clip_by_value_grad/Sum_1Sum7gradients/Evaluation_layers/clip_by_value_grad/Select_1Fgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1Reshape4gradients/Evaluation_layers/clip_by_value_grad/Sum_16gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
�
?gradients/Evaluation_layers/clip_by_value_grad/tuple/group_depsNoOp7^gradients/Evaluation_layers/clip_by_value_grad/Reshape9^gradients/Evaluation_layers/clip_by_value_grad/Reshape_1
�
Ggradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependencyIdentity6gradients/Evaluation_layers/clip_by_value_grad/Reshape@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape*'
_output_shapes
:���������
�
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*
T0*
_output_shapes
: *K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
_output_shapes
:*
out_type0*
T0
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2ShapeGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency*
_output_shapes
:*
out_type0*
T0
�
Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zerosFill>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/Const*
T0*'
_output_shapes
:���������
�
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqual	LessEqualclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*'
_output_shapes
:���������*
T0
�
Lgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectSelect@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqualGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������*
T0
�
Agradients/Evaluation_layers/clip_by_value/Minimum_grad/LogicalNot
LogicalNot@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqual*'
_output_shapes
:���������
�
?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1SelectAgradients/Evaluation_layers/clip_by_value/Minimum_grad/LogicalNotGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������*
T0
�
:gradients/Evaluation_layers/clip_by_value/Minimum_grad/SumSum=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectLgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeReshape:gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1Sum?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1Ngradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1Reshape<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
�
Ggradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_depsNoOp?^gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeA^gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1
�
Ogradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeH^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:���������
�
Qgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1H^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*S
_classI
GEloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: *
T0
�
0gradients/classification_layers/Softmax_grad/mulMulOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyclassification_layers/Softmax*
T0*'
_output_shapes
:���������
�
Bgradients/classification_layers/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
�
0gradients/classification_layers/Softmax_grad/SumSum0gradients/classification_layers/Softmax_grad/mulBgradients/classification_layers/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
�
:gradients/classification_layers/Softmax_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   
�
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0
�
0gradients/classification_layers/Softmax_grad/subSubOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency4gradients/classification_layers/Softmax_grad/Reshape*'
_output_shapes
:���������*
T0
�
2gradients/classification_layers/Softmax_grad/mul_1Mul0gradients/classification_layers/Softmax_grad/subclassification_layers/Softmax*'
_output_shapes
:���������*
T0
�
Igradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/classification_layers/Softmax_grad/mul_1*
data_formatNHWC*
T0*
_output_shapes
:
�
Ngradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/classification_layers/Softmax_grad/mul_1J^gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
�
Vgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/classification_layers/Softmax_grad/mul_1O^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*E
_class;
97loc:@gradients/classification_layers/Softmax_grad/mul_1*'
_output_shapes
:���������*
T0
�
Xgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradO^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*\
_classR
PNloc:@gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
Cgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulMatMulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency2classification_layers/dense_last/dense/kernel/read*
transpose_b(*
T0*'
_output_shapes
:���������2*
transpose_a( 
�
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense1/dropout/mulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:2*
transpose_a(
�
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul*'
_output_shapes
:���������2
�
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:2*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1*
T0
�
=gradients/classification_layers/dense1/dropout/mul_grad/ShapeShape(classification_layers/dense1/dropout/div*
T0*
out_type0*#
_output_shapes
:���������
�
?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1Shape*classification_layers/dense1/dropout/Floor*
T0*#
_output_shapes
:���������*
out_type0
�
Mgradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense1/dropout/mul_grad/Shape?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
;gradients/classification_layers/dense1/dropout/mul_grad/mulMulUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense1/dropout/Floor*
_output_shapes
:*
T0
�
;gradients/classification_layers/dense1/dropout/mul_grad/SumSum;gradients/classification_layers/dense1/dropout/mul_grad/mulMgradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
?gradients/classification_layers/dense1/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense1/dropout/mul_grad/Sum=gradients/classification_layers/dense1/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
=gradients/classification_layers/dense1/dropout/mul_grad/mul_1Mul(classification_layers/dense1/dropout/divUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense1/dropout/mul_grad/Sum_1Sum=gradients/classification_layers/dense1/dropout/mul_grad/mul_1Ogradients/classification_layers/dense1/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Agradients/classification_layers/dense1/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense1/dropout/mul_grad/Sum_1?gradients/classification_layers/dense1/dropout/mul_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
�
Hgradients/classification_layers/dense1/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense1/dropout/mul_grad/Reshape_1
�
Pgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense1/dropout/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*R
_classH
FDloc:@gradients/classification_layers/dense1/dropout/mul_grad/Reshape
�
Rgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense1/dropout/mul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense1/dropout/mul_grad/Reshape_1*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense1/dropout/div_grad/ShapeShape!classification_layers/dense1/Relu*
T0*
_output_shapes
:*
out_type0
�
?gradients/classification_layers/dense1/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*#
_output_shapes
:���������*
out_type0*
T0
�
Mgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense1/dropout/div_grad/Shape?gradients/classification_layers/dense1/dropout/div_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
?gradients/classification_layers/dense1/dropout/div_grad/RealDivRealDivPgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependency!classification_layers/Placeholder*
T0*
_output_shapes
:
�
;gradients/classification_layers/dense1/dropout/div_grad/SumSum?gradients/classification_layers/dense1/dropout/div_grad/RealDivMgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
?gradients/classification_layers/dense1/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense1/dropout/div_grad/Sum=gradients/classification_layers/dense1/dropout/div_grad/Shape*'
_output_shapes
:���������2*
Tshape0*
T0
�
;gradients/classification_layers/dense1/dropout/div_grad/NegNeg!classification_layers/dense1/Relu*'
_output_shapes
:���������2*
T0
�
Agradients/classification_layers/dense1/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense1/dropout/div_grad/Neg!classification_layers/Placeholder*
_output_shapes
:*
T0
�
Agradients/classification_layers/dense1/dropout/div_grad/RealDiv_2RealDivAgradients/classification_layers/dense1/dropout/div_grad/RealDiv_1!classification_layers/Placeholder*
T0*
_output_shapes
:
�
;gradients/classification_layers/dense1/dropout/div_grad/mulMulPgradients/classification_layers/dense1/dropout/mul_grad/tuple/control_dependencyAgradients/classification_layers/dense1/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
�
=gradients/classification_layers/dense1/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense1/dropout/div_grad/mulOgradients/classification_layers/dense1/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Agradients/classification_layers/dense1/dropout/div_grad/Reshape_1Reshape=gradients/classification_layers/dense1/dropout/div_grad/Sum_1?gradients/classification_layers/dense1/dropout/div_grad/Shape_1*
T0*
_output_shapes
:*
Tshape0
�
Hgradients/classification_layers/dense1/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dropout/div_grad/ReshapeB^gradients/classification_layers/dense1/dropout/div_grad/Reshape_1
�
Pgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dropout/div_grad/ReshapeI^gradients/classification_layers/dense1/dropout/div_grad/tuple/group_deps*
T0*'
_output_shapes
:���������2*R
_classH
FDloc:@gradients/classification_layers/dense1/dropout/div_grad/Reshape
�
Rgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense1/dropout/div_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense1/dropout/div_grad/Reshape_1*
_output_shapes
:*
T0
�
9gradients/classification_layers/dense1/Relu_grad/ReluGradReluGradPgradients/classification_layers/dense1/dropout/div_grad/tuple/control_dependency!classification_layers/dense1/Relu*'
_output_shapes
:���������2*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense1/batch_normalization/batchnorm/mul_1*
T0*
_output_shapes
:*
out_type0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
�
egradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/SumSum9gradients/classification_layers/dense1/Relu_grad/ReluGradegradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape*
Tshape0*'
_output_shapes
:���������2*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Sum_1Sum9gradients/classification_layers/dense1/Relu_grad/ReluGradggradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:2
�
`gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*'
_output_shapes
:���������2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape*
T0
�
jgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*
_output_shapes
:2*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:2
�
egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:���������2
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������2
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense1/dense/BiasAddhgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*'
_output_shapes
:���������2*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Shape_1*
Tshape0*
_output_shapes
:2*
T0
�
`gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������2
�
jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
_output_shapes
:2*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:2
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:2
�
cgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape*
Tshape0*
_output_shapes
:2*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense1/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Sum_1*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:2
�
^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1
�
fgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape*
_output_shapes
:2
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*
_output_shapes
:2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/Reshape_1
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:2
�
egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense1/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:2
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:2
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense1/batch_normalization/Squeezehgradients/classification_layers/dense1/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
T0*
_output_shapes
:2
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Shape_1*
_output_shapes
:2*
Tshape0*
T0
�
`gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes
:2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape*
T0
�
jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/Reshape_1*
_output_shapes
:2*
T0
�
Mgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ShapeConst*
valueB"   2   *
_output_shapes
:*
dtype0
�
Ogradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:2
�
gradients/AddNAddNjgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*l
_classb
`^loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes
:2
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
�
cgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN;classification_layers/dense1/batch_normalization/gamma/read*
_output_shapes
:2*
T0
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape*
_output_shapes
:2*
Tshape0*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense1/batch_normalization/batchnorm/Rsqrtgradients/AddN*
T0*
_output_shapes
:2
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Shape_1*
_output_shapes
:2*
Tshape0*
T0
�
^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1
�
fgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:2*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape*
T0
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/Reshape_1*
T0
�
Qgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_likeConst*
valueB2*    *
_output_shapes

:2*
dtype0
�
Mgradients/classification_layers/dense1/batch_normalization/Select_grad/SelectSelect8classification_layers/dense1/batch_normalization/ReshapeOgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_like*
T0*
_output_shapes

:2
�
Ogradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1Select8classification_layers/dense1/batch_normalization/ReshapeQgradients/classification_layers/dense1/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense1/batch_normalization/Squeeze_grad/Reshape*
T0*
_output_shapes

:2
�
Wgradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense1/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1
�
_gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense1/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_deps*`
_classV
TRloc:@gradients/classification_layers/dense1/batch_normalization/Select_grad/Select*
_output_shapes

:2*
T0
�
agradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/group_deps*
_output_shapes

:2*b
_classX
VTloc:@gradients/classification_layers/dense1/batch_normalization/Select_grad/Select_1*
T0
�
Ygradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense1/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:2
�
Pgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0
�
Rgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense1/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/Shape*
T0*
_output_shapes
:2*
Tshape0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:2
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
cgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape*
_output_shapes
:2*
Tshape0*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense1/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
�
^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1
�
fgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_deps*
T0*
_output_shapes
:2*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape
�
hgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/Reshape_1*
_output_shapes
: *
T0
�
Ugradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   2   
�
Wgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense1/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Shape*
T0*
_output_shapes

:2*
Tshape0
�
Ogradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ShapeConst*
valueB"   2   *
dtype0*
_output_shapes
:
�
Qgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense1/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/Shape*
Tshape0*
_output_shapes

:2*
T0
�
Rgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   2   
�
Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   2   
�
bgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Pgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/SumSumWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Reshapebgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape*
T0*
_output_shapes

:2*
Tshape0
�
Rgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Sum_1SumWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_grad/Reshapedgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Shape_1*
_output_shapes

:2*
Tshape0*
T0
�
]gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1
�
egradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_deps*g
_class]
[Yloc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:2*
T0
�
ggradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*i
_class_
][loc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1*
_output_shapes

:2
�
Sgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_likeConst*
valueB2*    *
_output_shapes

:2*
dtype0
�
Ogradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense1/batch_normalization/Reshape_1Qgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_like*
T0*
_output_shapes

:2
�
Qgradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense1/batch_normalization/Reshape_1Sgradients/classification_layers/dense1/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense1/batch_normalization/Squeeze_1_grad/Reshape*
_output_shapes

:2*
T0
�
Ygradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1
�
agradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense1/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_deps*
T0*
_output_shapes

:2*b
_classX
VTloc:@gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select
�
cgradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/group_deps*
T0*
_output_shapes

:2*d
_classZ
XVloc:@gradients/classification_layers/dense1/batch_normalization/Select_1_grad/Select_1
�
Rgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ShapeConst*
valueB:2*
_output_shapes
:*
dtype0
�
Tgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense1/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/Shape*
T0*
_output_shapes
:2*
Tshape0
�
Wgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   2   
�
Ygradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense1/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:2
�
Vgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ShapeConst*
valueB"   2   *
dtype0*
_output_shapes
:
�
Xgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1Const*
valueB"   2   *
dtype0*
_output_shapes
:
�
fgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Tgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/SumSumYgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Reshapefgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Xgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/ReshapeReshapeTgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/SumVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape*
T0*
_output_shapes

:2*
Tshape0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Sum_1SumYgradients/classification_layers/dense1/batch_normalization/moments/Squeeze_1_grad/Reshapehgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Tgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/NegNegVgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Sum_1*
_output_shapes
:*
T0
�
Zgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1ReshapeTgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/NegXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:2
�
agradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1
�
igradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*k
_classa
_]loc:@gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape*
_output_shapes

:2
�
kgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*
_output_shapes

:2*m
_classc
a_loc:@gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/Reshape_1
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense1/batch_normalization/moments/SquaredDifference*
out_type0*
_output_shapes
:*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :
�
Rgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/addAddQclassification_layers/dense1/batch_normalization/moments/Mean_1/reduction_indicesSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Size*
_output_shapes
:*
T0
�
Rgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/modFloorModRgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/addSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
�
Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/range/delta*

Tidx0*
_output_shapes
:
�
Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/FillFillVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_1Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill/value*
T0*
_output_shapes
:
�
\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitchDynamicStitchTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/rangeRgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/modTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Fill*#
_output_shapes
:���������*
T0*
N
�
Xgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
Wgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum*
_output_shapes
:*
T0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense1/batch_normalization/moments/SquaredDifference*
T0*
_output_shapes
:*
out_type0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_3Const*
valueB"   2   *
_output_shapes
:*
dtype0
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
Ugradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :
�
Xgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1MaximumUgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Prod_1Zgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1/y*
_output_shapes
: *
T0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv_1FloorDivSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/ProdXgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Maximum_1*
_output_shapes
: *
T0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
Vgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/Cast*
T0*'
_output_shapes
:���������2
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul/xConstl^gradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1*
_output_shapes
: *
dtype0*
valueB
 *   @
�
Rgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mulMulTgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul/xEclassification_layers/dense1/batch_normalization/moments/shifted_mean*
T0*
_output_shapes

:2
�
Tgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense1/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul*
_output_shapes

:2*
T0
�
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"   2   
�
ogradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
`gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
�
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:���������2
�
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense1/dense/BiasAddEclassification_layers/dense1/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense1/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:���������2
�
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/sub*'
_output_shapes
:���������2*
T0
�
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape*
T0*'
_output_shapes
:���������2*
Tshape0
�
_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
cgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Shape_1*
Tshape0*
_output_shapes

:2*
T0
�
]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
_output_shapes

:2*
T0
�
jgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Neg
�
rgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*t
_classj
hfloc:@gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Reshape*'
_output_shapes
:���������2
�
tgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*
_output_shapes

:2*p
_classf
dbloc:@gradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/Neg
�
gradients/AddN_1AddNegradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense1/batch_normalization/moments/Square_grad/mul_1*g
_class]
[Yloc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:2*
T0*
N
�
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense1/batch_normalization/moments/Sub*
out_type0*
_output_shapes
:*
T0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
Xgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/addAddWclassification_layers/dense1/batch_normalization/moments/shifted_mean/reduction_indicesYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size*
T0*
_output_shapes
:
�
Xgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/modFloorModXgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/addYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
�
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/range/delta*

Tidx0*
_output_shapes
:
�
_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill/value*
_output_shapes
:*
T0
�
bgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Fill*
T0*
N*#
_output_shapes
:���������
�
^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/MaximumMaximumbgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitch^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
]gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordivFloorDivZgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_1bgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense1/batch_normalization/moments/Sub*
_output_shapes
:*
out_type0*
T0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   2   
�
Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
[gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1Maximum[gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod_1`gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1/y*
_output_shapes
: *
T0
�
_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv_1FloorDivYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Prod^gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Maximum_1*
_output_shapes
: *
T0
�
Ygradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/CastCast_gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivRealDivYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/TileYgradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/Cast*'
_output_shapes
:���������2*
T0
�
Qgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense1/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1Const*
valueB"   2   *
_output_shapes
:*
dtype0
�
agradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Ogradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Sgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������2
�
Qgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Sum_1Sum\gradients/classification_layers/dense1/batch_normalization/moments/shifted_mean_grad/truedivcgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ogradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/NegNegQgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Sum_1*
_output_shapes
:*
T0
�
Ugradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1ReshapeOgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/NegSgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Shape_1*
_output_shapes

:2*
Tshape0*
T0
�
\gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1
�
dgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_deps*
T0*'
_output_shapes
:���������2*f
_class\
ZXloc:@gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape
�
fgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/group_deps*
_output_shapes

:2*h
_class^
\Zloc:@gradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/Reshape_1*
T0
�
gradients/AddN_2AddNggradients/classification_layers/dense1/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*i
_class_
][loc:@gradients/classification_layers/dense1/batch_normalization/moments/mean_grad/Reshape_1*
_output_shapes

:2*
T0*
N
�
gradients/AddN_3AddNhgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense1/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense1/batch_normalization/moments/Sub_grad/tuple/control_dependency*
N*
T0*'
_output_shapes
:���������2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape
�
Egradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
data_formatNHWC*
T0*
_output_shapes
:2
�
Jgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3F^gradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_3K^gradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������2*j
_class`
^\loc:@gradients/classification_layers/dense1/batch_normalization/batchnorm/mul_1_grad/Reshape*
T0
�
Tgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:2*X
_classN
LJloc:@gradients/classification_layers/dense1/dense/BiasAdd_grad/BiasAddGrad*
T0
�
?gradients/classification_layers/dense1/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense1/dense/kernel/read*
transpose_b(*
T0*'
_output_shapes
:���������d*
transpose_a( 
�
Agradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense0/dropout/mulRgradients/classification_layers/dense1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:d2*
transpose_a(*
T0
�
Igradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense1/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1
�
Qgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense1/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:���������d*R
_classH
FDloc:@gradients/classification_layers/dense1/dense/MatMul_grad/MatMul
�
Sgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense1/dense/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense1/dense/MatMul_grad/MatMul_1*
_output_shapes

:d2*
T0
�
=gradients/classification_layers/dense0/dropout/mul_grad/ShapeShape(classification_layers/dense0/dropout/div*#
_output_shapes
:���������*
out_type0*
T0
�
?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1Shape*classification_layers/dense0/dropout/Floor*#
_output_shapes
:���������*
out_type0*
T0
�
Mgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/mul_grad/Shape?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
;gradients/classification_layers/dense0/dropout/mul_grad/mulMulQgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense0/dropout/Floor*
_output_shapes
:*
T0
�
;gradients/classification_layers/dense0/dropout/mul_grad/SumSum;gradients/classification_layers/dense0/dropout/mul_grad/mulMgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/mul_grad/Sum=gradients/classification_layers/dense0/dropout/mul_grad/Shape*
T0*
_output_shapes
:*
Tshape0
�
=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Mul(classification_layers/dense0/dropout/divQgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1Sum=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Ogradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Agradients/classification_layers/dense0/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
Hgradients/classification_layers/dense0/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1
�
Pgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape*
_output_shapes
:
�
Rgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1*
_output_shapes
:
�
=gradients/classification_layers/dense0/dropout/div_grad/ShapeShape!classification_layers/dense0/Relu*
T0*
_output_shapes
:*
out_type0
�
?gradients/classification_layers/dense0/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*
T0*#
_output_shapes
:���������*
out_type0
�
Mgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/div_grad/Shape?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
?gradients/classification_layers/dense0/dropout/div_grad/RealDivRealDivPgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency!classification_layers/Placeholder*
T0*
_output_shapes
:
�
;gradients/classification_layers/dense0/dropout/div_grad/SumSum?gradients/classification_layers/dense0/dropout/div_grad/RealDivMgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
?gradients/classification_layers/dense0/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/div_grad/Sum=gradients/classification_layers/dense0/dropout/div_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������d
�
;gradients/classification_layers/dense0/dropout/div_grad/NegNeg!classification_layers/dense0/Relu*'
_output_shapes
:���������d*
T0
�
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense0/dropout/div_grad/Neg!classification_layers/Placeholder*
_output_shapes
:*
T0
�
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_2RealDivAgradients/classification_layers/dense0/dropout/div_grad/RealDiv_1!classification_layers/Placeholder*
_output_shapes
:*
T0
�
;gradients/classification_layers/dense0/dropout/div_grad/mulMulPgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyAgradients/classification_layers/dense0/dropout/div_grad/RealDiv_2*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense0/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense0/dropout/div_grad/mulOgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Agradients/classification_layers/dense0/dropout/div_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/div_grad/Sum_1?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
�
Hgradients/classification_layers/dense0/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/div_grad/ReshapeB^gradients/classification_layers/dense0/dropout/div_grad/Reshape_1
�
Pgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/div_grad/ReshapeI^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*'
_output_shapes
:���������d*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape*
T0
�
Rgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape_1*
_output_shapes
:*
T0
�
9gradients/classification_layers/dense0/Relu_grad/ReluGradReluGradPgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency!classification_layers/dense0/Relu*
T0*'
_output_shapes
:���������d
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense0/batch_normalization/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:d*
dtype0*
_output_shapes
:
�
egradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumSum9gradients/classification_layers/dense0/Relu_grad/ReluGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape*'
_output_shapes
:���������d*
Tshape0*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Sum9gradients/classification_layers/dense0/Relu_grad/ReluGradggradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*
Tshape0*
_output_shapes
:d*
T0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape*'
_output_shapes
:���������d
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*
_output_shapes
:d*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:d
�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense0/batch_normalization/batchnorm/mul*'
_output_shapes
:���������d*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape*
T0*'
_output_shapes
:���������d*
Tshape0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense0/dense/BiasAddhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������d
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:d
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������d
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
_output_shapes
:d*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:d
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:d
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1*
_output_shapes
:*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*
_output_shapes
:d*
Tshape0*
T0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes
:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape*
T0
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1*
_output_shapes
:d*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
valueB:d*
_output_shapes
:*
dtype0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:d
�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:d
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense0/batch_normalization/Squeezehgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
_output_shapes
:d*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*
_output_shapes
:d*
Tshape0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*
_output_shapes
:d*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1*
_output_shapes
:d*
T0
�
Mgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Shape*
Tshape0*
_output_shapes

:d*
T0
�
gradients/AddN_4AddNjgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
_output_shapes
:d*
N*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
valueB:d*
_output_shapes
:*
dtype0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:d
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN_4;classification_layers/dense0/batch_normalization/gamma/read*
T0*
_output_shapes
:d
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtgradients/AddN_4*
_output_shapes
:d*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*
T0*
_output_shapes
:d*
Tshape0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape*
T0
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1*
_output_shapes
:d*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeConst*
valueBd*    *
_output_shapes

:d*
dtype0
�
Mgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectSelect8classification_layers/dense0/batch_normalization/ReshapeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_like*
T0*
_output_shapes

:d
�
Ogradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1Select8classification_layers/dense0/batch_normalization/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Reshape*
T0*
_output_shapes

:d
�
Wgradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense0/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1
�
_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select*
_output_shapes

:d
�
agradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1*
_output_shapes

:d
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:d
�
Pgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ShapeConst*
valueB:d*
dtype0*
_output_shapes
:
�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/Shape*
_output_shapes
:d*
Tshape0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeConst*
valueB:d*
dtype0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:d
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape*
T0
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
: *j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ShapeConst*
valueB"   d   *
_output_shapes
:*
dtype0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Shape*
T0*
_output_shapes

:d*
Tshape0
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   d   
�
Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Shape*
T0*
_output_shapes

:d*
Tshape0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   d   
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
valueB"   d   *
dtype0*
_output_shapes
:
�
bgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumSumWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Reshapebgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape*
T0*
_output_shapes

:d*
Tshape0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1SumWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Reshapedgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*
_output_shapes

:d*
Tshape0*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1
�
egradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
_output_shapes

:d*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape*
T0
�
ggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1*
_output_shapes

:d
�
Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeConst*
dtype0*
_output_shapes

:d*
valueBd*    
�
Ogradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense0/batch_normalization/Reshape_1Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_like*
T0*
_output_shapes

:d
�
Qgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Reshape*
T0*
_output_shapes

:d
�
Ygradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1
�
agradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
_output_shapes

:d*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select*
T0
�
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
T0*
_output_shapes

:d*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1
�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
valueB:d*
dtype0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
_output_shapes
:d*
Tshape0*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   d   
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Shape*
T0*
_output_shapes

:d*
Tshape0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   d   
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
valueB"   d   *
_output_shapes
:*
dtype0
�
fgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshapefgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SumVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape*
T0*
Tshape0*
_output_shapes

:d
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshapehgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/NegNegVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Sum_1*
T0*
_output_shapes
:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1ReshapeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/NegXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*
Tshape0*
_output_shapes

:d*
T0
�
agradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1
�
igradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*k
_classa
_]loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape*
_output_shapes

:d*
T0
�
kgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1*
_output_shapes

:d
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
out_type0*
_output_shapes
:
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addAddQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
�
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modFloorModRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
T0*
_output_shapes
:
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/FillFillVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/value*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchDynamicStitchTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill*#
_output_shapes
:���������*
T0*
N
�
Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum*
T0*
_output_shapes
:
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
_output_shapes
:*
out_type0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Const*
valueB"   d   *
dtype0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1MaximumUgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1FloorDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1*
_output_shapes
: *
T0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Cast*'
_output_shapes
:���������d*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xConstl^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1*
_output_shapes
: *
dtype0*
valueB
 *   @
�
Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mulMulTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
T0*
_output_shapes

:d
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul*
_output_shapes

:d*
T0
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
valueB"   d   *
dtype0*
_output_shapes
:
�
ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:���������d
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:���������d
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/sub*
T0*'
_output_shapes
:���������d
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape*
T0*'
_output_shapes
:���������d*
Tshape0
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
cgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*
_output_shapes

:d*
Tshape0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
_output_shapes

:d*
T0
�
jgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg
�
rgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*'
_output_shapes
:���������d*t
_classj
hfloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape
�
tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*p
_classf
dbloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg*
_output_shapes

:d
�
gradients/AddN_5AddNegradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1*
_output_shapes

:d*
N*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape*
T0
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense0/batch_normalization/moments/Sub*
T0*
_output_shapes
:*
out_type0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :
�
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addAddWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
T0*
_output_shapes
:
�
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modFloorModXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/delta*
_output_shapes
:*

Tidx0
�
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/value*
T0*
_output_shapes
:
�
bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill*
N*
T0*#
_output_shapes
:���������
�
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/MaximumMaximumbgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordivFloorDivZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_5bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense0/batch_normalization/moments/Sub*
T0*
_output_shapes
:*
out_type0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
dtype0*
_output_shapes
:*
valueB"   d   
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1Maximum[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/y*
_output_shapes
: *
T0
�
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv_1FloorDivYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1*
_output_shapes
: *
T0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/CastCast_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivRealDivYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Cast*'
_output_shapes
:���������d*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1Const*
valueB"   d   *
dtype0*
_output_shapes
:
�
agradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape*
Tshape0*'
_output_shapes
:���������d*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Sum_1Sum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivcgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/NegNegQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Sum_1*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1ReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/NegSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*
Tshape0*
_output_shapes

:d*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1
�
dgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*f
_class\
ZXloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape*'
_output_shapes
:���������d*
T0
�
fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*
_output_shapes

:d*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1*
T0
�
gradients/AddN_6AddNggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*
_output_shapes

:d*
N*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1*
T0
�
gradients/AddN_7AddNhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency*
N*
T0*'
_output_shapes
:���������d*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
�
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_7*
data_formatNHWC*
T0*
_output_shapes
:d
�
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_7F^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_7K^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������d*
T0
�
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:d*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense0/dense/kernel/read*
transpose_b(*(
_output_shapes
:����������*
transpose_a( *
T0
�
Agradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1MatMulFlatten/ReshapeRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	�d*
transpose_a(
�
Igradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
�
Qgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	�d*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
�
beta1_power/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *fff?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
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
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
beta1_power/readIdentitybeta1_power*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: 
�
beta2_power/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *w�?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
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
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
beta2_power/readIdentitybeta2_power*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: 
�
@classification_layers/dense0/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	�d*
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�d*    
�
.classification_layers/dense0/dense/kernel/Adam
VariableV2*
shared_name *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
	container *
shape:	�d*
dtype0*
_output_shapes
:	�d
�
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
:	�d
�
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d*
T0
�
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�d*    *
_output_shapes
:	�d*
dtype0
�
0classification_layers/dense0/dense/kernel/Adam_1
VariableV2*
shape:	�d*
_output_shapes
:	�d*
shared_name *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
	container 
�
7classification_layers/dense0/dense/kernel/Adam_1/AssignAssign0classification_layers/dense0/dense/kernel/Adam_1Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
:	�d
�
5classification_layers/dense0/dense/kernel/Adam_1/readIdentity0classification_layers/dense0/dense/kernel/Adam_1*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�d
�
>classification_layers/dense0/dense/bias/Adam/Initializer/zerosConst*
_output_shapes
:d*
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    
�
,classification_layers/dense0/dense/bias/Adam
VariableV2*
shared_name *
shape:d*
_output_shapes
:d*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
dtype0*
	container 
�
3classification_layers/dense0/dense/bias/Adam/AssignAssign,classification_layers/dense0/dense/bias/Adam>classification_layers/dense0/dense/bias/Adam/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d*
T0*
validate_shape(*
use_locking(
�
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d
�
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
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
�
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*
_output_shapes
:d*
validate_shape(*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking(
�
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d
�
Lclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    *
dtype0*
_output_shapes
:d
�
:classification_layers/dense0/batch_normalization/beta/Adam
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d*
shape:d*
shared_name 
�
Aclassification_layers/dense0/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense0/batch_normalization/beta/AdamLclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zeros*
_output_shapes
:d*
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking(
�
?classification_layers/dense0/batch_normalization/beta/Adam/readIdentity:classification_layers/dense0/batch_normalization/beta/Adam*
_output_shapes
:d*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
�
Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zerosConst*
_output_shapes
:d*
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueBd*    
�
<classification_layers/dense0/batch_normalization/beta/Adam_1
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
shared_name *
_output_shapes
:d*
shape:d
�
Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense0/batch_normalization/beta/Adam_1Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
validate_shape(*
_output_shapes
:d
�
Aclassification_layers/dense0/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense0/batch_normalization/beta/Adam_1*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:d
�
Mclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*    *
dtype0*
_output_shapes
:d
�
;classification_layers/dense0/batch_normalization/gamma/Adam
VariableV2*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d*
shape:d*
dtype0*
shared_name *
	container 
�
Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense0/batch_normalization/gamma/AdamMclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
@classification_layers/dense0/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense0/batch_normalization/gamma/Adam*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0
�
Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueBd*    *
_output_shapes
:d*
dtype0
�
=classification_layers/dense0/batch_normalization/gamma/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape:d*
_output_shapes
:d*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
Dclassification_layers/dense0/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense0/batch_normalization/gamma/Adam_1Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
validate_shape(*
_output_shapes
:d
�
Bclassification_layers/dense0/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense0/batch_normalization/gamma/Adam_1*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:d
�
@classification_layers/dense1/dense/kernel/Adam/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueBd2*    *
_output_shapes

:d2*
dtype0
�
.classification_layers/dense1/dense/kernel/Adam
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
�
5classification_layers/dense1/dense/kernel/Adam/AssignAssign.classification_layers/dense1/dense/kernel/Adam@classification_layers/dense1/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
validate_shape(*
_output_shapes

:d2
�
3classification_layers/dense1/dense/kernel/Adam/readIdentity.classification_layers/dense1/dense/kernel/Adam*
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
�
Bclassification_layers/dense1/dense/kernel/Adam_1/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
valueBd2*    *
_output_shapes

:d2*
dtype0
�
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
�
7classification_layers/dense1/dense/kernel/Adam_1/AssignAssign0classification_layers/dense1/dense/kernel/Adam_1Bclassification_layers/dense1/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

:d2*
validate_shape(*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0*
use_locking(
�
5classification_layers/dense1/dense/kernel/Adam_1/readIdentity0classification_layers/dense1/dense/kernel/Adam_1*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel*
T0
�
>classification_layers/dense1/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    
�
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
�
3classification_layers/dense1/dense/bias/Adam/AssignAssign,classification_layers/dense1/dense/bias/Adam>classification_layers/dense1/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
validate_shape(*
_output_shapes
:2
�
1classification_layers/dense1/dense/bias/Adam/readIdentity,classification_layers/dense1/dense/bias/Adam*
T0*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2
�
@classification_layers/dense1/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
valueB2*    
�
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
�
5classification_layers/dense1/dense/bias/Adam_1/AssignAssign.classification_layers/dense1/dense/bias/Adam_1@classification_layers/dense1/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*:
_class0
.,loc:@classification_layers/dense1/dense/bias
�
3classification_layers/dense1/dense/bias/Adam_1/readIdentity.classification_layers/dense1/dense/bias/Adam_1*:
_class0
.,loc:@classification_layers/dense1/dense/bias*
_output_shapes
:2*
T0
�
Lclassification_layers/dense1/batch_normalization/beta/Adam/Initializer/zerosConst*
_output_shapes
:2*
dtype0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    
�
:classification_layers/dense1/batch_normalization/beta/Adam
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
shared_name *
_output_shapes
:2*
shape:2
�
Aclassification_layers/dense1/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense1/batch_normalization/beta/AdamLclassification_layers/dense1/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta
�
?classification_layers/dense1/batch_normalization/beta/Adam/readIdentity:classification_layers/dense1/batch_normalization/beta/Adam*
_output_shapes
:2*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
T0
�
Nclassification_layers/dense1/batch_normalization/beta/Adam_1/Initializer/zerosConst*
_output_shapes
:2*
dtype0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
valueB2*    
�
<classification_layers/dense1/batch_normalization/beta/Adam_1
VariableV2*
shared_name *H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
	container *
shape:2*
dtype0*
_output_shapes
:2
�
Cclassification_layers/dense1/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense1/batch_normalization/beta/Adam_1Nclassification_layers/dense1/batch_normalization/beta/Adam_1/Initializer/zeros*
_output_shapes
:2*
validate_shape(*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
T0*
use_locking(
�
Aclassification_layers/dense1/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense1/batch_normalization/beta/Adam_1*
T0*H
_class>
<:loc:@classification_layers/dense1/batch_normalization/beta*
_output_shapes
:2
�
Mclassification_layers/dense1/batch_normalization/gamma/Adam/Initializer/zerosConst*
_output_shapes
:2*
dtype0*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*    
�
;classification_layers/dense1/batch_normalization/gamma/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:2*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
�
Bclassification_layers/dense1/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense1/batch_normalization/gamma/AdamMclassification_layers/dense1/batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
�
@classification_layers/dense1/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense1/batch_normalization/gamma/Adam*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0
�
Oclassification_layers/dense1/batch_normalization/gamma/Adam_1/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
valueB2*    *
_output_shapes
:2*
dtype0
�
=classification_layers/dense1/batch_normalization/gamma/Adam_1
VariableV2*
_output_shapes
:2*
dtype0*
shape:2*
	container *I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
shared_name 
�
Dclassification_layers/dense1/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense1/batch_normalization/gamma/Adam_1Oclassification_layers/dense1/batch_normalization/gamma/Adam_1/Initializer/zeros*
_output_shapes
:2*
validate_shape(*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
T0*
use_locking(
�
Bclassification_layers/dense1/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense1/batch_normalization/gamma/Adam_1*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma*
_output_shapes
:2*
T0
�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB2*    
�
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
shape
:2*
shared_name 
�
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB2*    *
_output_shapes

:2*
dtype0
�
4classification_layers/dense_last/dense/kernel/Adam_1
VariableV2*
_output_shapes

:2*
dtype0*
shape
:2*
	container *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
shared_name 
�
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes

:2
�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*
T0*
_output_shapes

:2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
Bclassification_layers/dense_last/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    
�
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
�
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
5classification_layers/dense_last/dense/bias/Adam/readIdentity0classification_layers/dense_last/dense/bias/Adam*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0
�
Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zerosConst*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    *
_output_shapes
:*
dtype0
�
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
�
9classification_layers/dense_last/dense/bias/Adam_1/AssignAssign2classification_layers/dense_last/dense/bias/Adam_1Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
�
7classification_layers/dense_last/dense/bias/Adam_1/readIdentity2classification_layers/dense_last/dense/bias/Adam_1*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0
W
Adam/learning_rateConst*
valueB
 *o�:*
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
 *w�?*
_output_shapes
: *
dtype0
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
?Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense0/dense/kernel.classification_layers/dense0/dense/kernel/Adam0classification_layers/dense0/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
use_nesterov( *
_output_shapes
:	�d
�
=Adam/update_classification_layers/dense0/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense0/dense/bias,classification_layers/dense0/dense/bias/Adam.classification_layers/dense0/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:d*
T0*
use_nesterov( *
use_locking( 
�
KAdam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense0/batch_normalization/beta:classification_layers/dense0/batch_normalization/beta/Adam<classification_layers/dense0/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
_output_shapes
:d*
use_nesterov( *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking( 
�
LAdam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense0/batch_normalization/gamma;classification_layers/dense0/batch_normalization/gamma/Adam=classification_layers/dense0/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
use_locking( *
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
use_nesterov( *
_output_shapes
:d
�
?Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense1/dense/kernel.classification_layers/dense1/dense/kernel/Adam0classification_layers/dense1/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense1/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
use_nesterov( *
T0*
_output_shapes

:d2*<
_class2
0.loc:@classification_layers/dense1/dense/kernel
�
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
�
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
�
LAdam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense1/batch_normalization/gamma;classification_layers/dense1/batch_normalization/gamma/Adam=classification_layers/dense1/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense1/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:2*I
_class?
=;loc:@classification_layers/dense1/batch_normalization/gamma
�
CAdam/update_classification_layers/dense_last/dense/kernel/ApplyAdam	ApplyAdam-classification_layers/dense_last/dense/kernel2classification_layers/dense_last/dense/kernel/Adam4classification_layers/dense_last/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:2*
T0*
use_nesterov( *
use_locking( 
�
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
�
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Adam/AssignAssignbeta1_powerAdam/mul*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking( 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
validate_shape(*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam@^Adam/update_classification_layers/dense1/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense1/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense1/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense1/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign=^classification_layers/dense0/batch_normalization/beta/Assign>^classification_layers/dense0/batch_normalization/gamma/AssignD^classification_layers/dense0/batch_normalization/moving_mean/AssignH^classification_layers/dense0/batch_normalization/moving_variance/Assign1^classification_layers/dense1/dense/kernel/Assign/^classification_layers/dense1/dense/bias/Assign=^classification_layers/dense1/batch_normalization/beta/Assign>^classification_layers/dense1/batch_normalization/gamma/AssignD^classification_layers/dense1/batch_normalization/moving_mean/AssignH^classification_layers/dense1/batch_normalization/moving_variance/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/AssignB^classification_layers/dense0/batch_normalization/beta/Adam/AssignD^classification_layers/dense0/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense0/batch_normalization/gamma/Adam/AssignE^classification_layers/dense0/batch_normalization/gamma/Adam_1/Assign6^classification_layers/dense1/dense/kernel/Adam/Assign8^classification_layers/dense1/dense/kernel/Adam_1/Assign4^classification_layers/dense1/dense/bias/Adam/Assign6^classification_layers/dense1/dense/bias/Adam_1/AssignB^classification_layers/dense1/batch_normalization/beta/Adam/AssignD^classification_layers/dense1/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense1/batch_normalization/gamma/Adam/AssignE^classification_layers/dense1/batch_normalization/gamma/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign""
train_op

Adam"�

update_ops�
�
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg:0
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg_1:0
Bclassification_layers/dense1/batch_normalization/AssignMovingAvg:0
Dclassification_layers/dense1/batch_normalization/AssignMovingAvg_1:0"g
	summariesZ
X
Evaluation_layers/accuracy:0
Evaluation_layers/loss:0
Evaluation_layers/accuracy_1:0"�
trainable_variables��
�
+classification_layers/dense0/dense/kernel:00classification_layers/dense0/dense/kernel/Assign0classification_layers/dense0/dense/kernel/read:0
�
)classification_layers/dense0/dense/bias:0.classification_layers/dense0/dense/bias/Assign.classification_layers/dense0/dense/bias/read:0
�
7classification_layers/dense0/batch_normalization/beta:0<classification_layers/dense0/batch_normalization/beta/Assign<classification_layers/dense0/batch_normalization/beta/read:0
�
8classification_layers/dense0/batch_normalization/gamma:0=classification_layers/dense0/batch_normalization/gamma/Assign=classification_layers/dense0/batch_normalization/gamma/read:0
�
+classification_layers/dense1/dense/kernel:00classification_layers/dense1/dense/kernel/Assign0classification_layers/dense1/dense/kernel/read:0
�
)classification_layers/dense1/dense/bias:0.classification_layers/dense1/dense/bias/Assign.classification_layers/dense1/dense/bias/read:0
�
7classification_layers/dense1/batch_normalization/beta:0<classification_layers/dense1/batch_normalization/beta/Assign<classification_layers/dense1/batch_normalization/beta/read:0
�
8classification_layers/dense1/batch_normalization/gamma:0=classification_layers/dense1/batch_normalization/gamma/Assign=classification_layers/dense1/batch_normalization/gamma/read:0
�
/classification_layers/dense_last/dense/kernel:04classification_layers/dense_last/dense/kernel/Assign4classification_layers/dense_last/dense/kernel/read:0
�
-classification_layers/dense_last/dense/bias:02classification_layers/dense_last/dense/bias/Assign2classification_layers/dense_last/dense/bias/read:0"�0
	variables�0�0
�
+classification_layers/dense0/dense/kernel:00classification_layers/dense0/dense/kernel/Assign0classification_layers/dense0/dense/kernel/read:0
�
)classification_layers/dense0/dense/bias:0.classification_layers/dense0/dense/bias/Assign.classification_layers/dense0/dense/bias/read:0
�
7classification_layers/dense0/batch_normalization/beta:0<classification_layers/dense0/batch_normalization/beta/Assign<classification_layers/dense0/batch_normalization/beta/read:0
�
8classification_layers/dense0/batch_normalization/gamma:0=classification_layers/dense0/batch_normalization/gamma/Assign=classification_layers/dense0/batch_normalization/gamma/read:0
�
>classification_layers/dense0/batch_normalization/moving_mean:0Cclassification_layers/dense0/batch_normalization/moving_mean/AssignCclassification_layers/dense0/batch_normalization/moving_mean/read:0
�
Bclassification_layers/dense0/batch_normalization/moving_variance:0Gclassification_layers/dense0/batch_normalization/moving_variance/AssignGclassification_layers/dense0/batch_normalization/moving_variance/read:0
�
+classification_layers/dense1/dense/kernel:00classification_layers/dense1/dense/kernel/Assign0classification_layers/dense1/dense/kernel/read:0
�
)classification_layers/dense1/dense/bias:0.classification_layers/dense1/dense/bias/Assign.classification_layers/dense1/dense/bias/read:0
�
7classification_layers/dense1/batch_normalization/beta:0<classification_layers/dense1/batch_normalization/beta/Assign<classification_layers/dense1/batch_normalization/beta/read:0
�
8classification_layers/dense1/batch_normalization/gamma:0=classification_layers/dense1/batch_normalization/gamma/Assign=classification_layers/dense1/batch_normalization/gamma/read:0
�
>classification_layers/dense1/batch_normalization/moving_mean:0Cclassification_layers/dense1/batch_normalization/moving_mean/AssignCclassification_layers/dense1/batch_normalization/moving_mean/read:0
�
Bclassification_layers/dense1/batch_normalization/moving_variance:0Gclassification_layers/dense1/batch_normalization/moving_variance/AssignGclassification_layers/dense1/batch_normalization/moving_variance/read:0
�
/classification_layers/dense_last/dense/kernel:04classification_layers/dense_last/dense/kernel/Assign4classification_layers/dense_last/dense/kernel/read:0
�
-classification_layers/dense_last/dense/bias:02classification_layers/dense_last/dense/bias/Assign2classification_layers/dense_last/dense/bias/read:0
7
beta1_power:0beta1_power/Assignbeta1_power/read:0
7
beta2_power:0beta2_power/Assignbeta2_power/read:0
�
0classification_layers/dense0/dense/kernel/Adam:05classification_layers/dense0/dense/kernel/Adam/Assign5classification_layers/dense0/dense/kernel/Adam/read:0
�
2classification_layers/dense0/dense/kernel/Adam_1:07classification_layers/dense0/dense/kernel/Adam_1/Assign7classification_layers/dense0/dense/kernel/Adam_1/read:0
�
.classification_layers/dense0/dense/bias/Adam:03classification_layers/dense0/dense/bias/Adam/Assign3classification_layers/dense0/dense/bias/Adam/read:0
�
0classification_layers/dense0/dense/bias/Adam_1:05classification_layers/dense0/dense/bias/Adam_1/Assign5classification_layers/dense0/dense/bias/Adam_1/read:0
�
<classification_layers/dense0/batch_normalization/beta/Adam:0Aclassification_layers/dense0/batch_normalization/beta/Adam/AssignAclassification_layers/dense0/batch_normalization/beta/Adam/read:0
�
>classification_layers/dense0/batch_normalization/beta/Adam_1:0Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignCclassification_layers/dense0/batch_normalization/beta/Adam_1/read:0
�
=classification_layers/dense0/batch_normalization/gamma/Adam:0Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignBclassification_layers/dense0/batch_normalization/gamma/Adam/read:0
�
?classification_layers/dense0/batch_normalization/gamma/Adam_1:0Dclassification_layers/dense0/batch_normalization/gamma/Adam_1/AssignDclassification_layers/dense0/batch_normalization/gamma/Adam_1/read:0
�
0classification_layers/dense1/dense/kernel/Adam:05classification_layers/dense1/dense/kernel/Adam/Assign5classification_layers/dense1/dense/kernel/Adam/read:0
�
2classification_layers/dense1/dense/kernel/Adam_1:07classification_layers/dense1/dense/kernel/Adam_1/Assign7classification_layers/dense1/dense/kernel/Adam_1/read:0
�
.classification_layers/dense1/dense/bias/Adam:03classification_layers/dense1/dense/bias/Adam/Assign3classification_layers/dense1/dense/bias/Adam/read:0
�
0classification_layers/dense1/dense/bias/Adam_1:05classification_layers/dense1/dense/bias/Adam_1/Assign5classification_layers/dense1/dense/bias/Adam_1/read:0
�
<classification_layers/dense1/batch_normalization/beta/Adam:0Aclassification_layers/dense1/batch_normalization/beta/Adam/AssignAclassification_layers/dense1/batch_normalization/beta/Adam/read:0
�
>classification_layers/dense1/batch_normalization/beta/Adam_1:0Cclassification_layers/dense1/batch_normalization/beta/Adam_1/AssignCclassification_layers/dense1/batch_normalization/beta/Adam_1/read:0
�
=classification_layers/dense1/batch_normalization/gamma/Adam:0Bclassification_layers/dense1/batch_normalization/gamma/Adam/AssignBclassification_layers/dense1/batch_normalization/gamma/Adam/read:0
�
?classification_layers/dense1/batch_normalization/gamma/Adam_1:0Dclassification_layers/dense1/batch_normalization/gamma/Adam_1/AssignDclassification_layers/dense1/batch_normalization/gamma/Adam_1/read:0
�
4classification_layers/dense_last/dense/kernel/Adam:09classification_layers/dense_last/dense/kernel/Adam/Assign9classification_layers/dense_last/dense/kernel/Adam/read:0
�
6classification_layers/dense_last/dense/kernel/Adam_1:0;classification_layers/dense_last/dense/kernel/Adam_1/Assign;classification_layers/dense_last/dense/kernel/Adam_1/read:0
�
2classification_layers/dense_last/dense/bias/Adam:07classification_layers/dense_last/dense/bias/Adam/Assign7classification_layers/dense_last/dense/bias/Adam/read:0
�
4classification_layers/dense_last/dense/bias/Adam_1:09classification_layers/dense_last/dense/bias/Adam_1/Assign9classification_layers/dense_last/dense/bias/Adam_1/read:0 ���