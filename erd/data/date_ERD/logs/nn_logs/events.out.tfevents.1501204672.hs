       �K"	   0�^�Abrain.Event:2yk_�4     \���	�g0�^�A"��
|
Input/PlaceholderPlaceholder*+
_output_shapes
:��������� *
dtype0* 
shape:��������� 
u
Target/PlaceholderPlaceholder*
dtype0*
shape:���������*'
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
�
Flatten/SliceSliceFlatten/ShapeFlatten/Slice/beginFlatten/Slice/size*
T0*
Index0*
_output_shapes
:
_
Flatten/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB:
^
Flatten/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
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
Flatten/ProdProdFlatten/Slice_1Flatten/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
X
Flatten/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
w
Flatten/ExpandDims
ExpandDimsFlatten/ProdFlatten/ExpandDims/dim*
_output_shapes
:*
T0*

Tdim0
U
Flatten/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
�
Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
~
Flatten/ReshapeReshapeInput/PlaceholderFlatten/concat*(
_output_shapes
:����������*
Tshape0*
T0
f
!classification_layers/PlaceholderPlaceholder*
shape:*
dtype0*
_output_shapes
:
�
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB"�   
   *
_output_shapes
:*
dtype0
�
Kclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *    
�
Mclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *  �?
�
Vclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shape*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0*
dtype0*
seed2 *

seed 
�
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0
�
)classification_layers/dense0/dense/kernel
VariableV2*
	container *
shared_name *
dtype0*
shape:	�
*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
0classification_layers/dense0/dense/kernel/AssignAssign)classification_layers/dense0/dense/kernelFclassification_layers/dense0/dense/kernel/Initializer/truncated_normal*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0*
validate_shape(*
use_locking(
�
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0
�
9classification_layers/dense0/dense/bias/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    *
dtype0*
_output_shapes
:

�
'classification_layers/dense0/dense/bias
VariableV2*
shared_name *
shape:
*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
dtype0*
	container 
�
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
,classification_layers/dense0/dense/bias/readIdentity'classification_layers/dense0/dense/bias*
T0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
)classification_layers/dense0/dense/MatMulMatMulFlatten/Reshape.classification_layers/dense0/dense/kernel/read*
transpose_b( *'
_output_shapes
:���������
*
transpose_a( *
T0
�
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������

�
Gclassification_layers/dense0/batch_normalization/beta/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    *
dtype0*
_output_shapes
:

�
5classification_layers/dense0/batch_normalization/beta
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:
*
shape:
*
shared_name 
�
<classification_layers/dense0/batch_normalization/beta/AssignAssign5classification_layers/dense0/batch_normalization/betaGclassification_layers/dense0/batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
validate_shape(*
_output_shapes
:

�
:classification_layers/dense0/batch_normalization/beta/readIdentity5classification_layers/dense0/batch_normalization/beta*
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
Gclassification_layers/dense0/batch_normalization/gamma/Initializer/onesConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*  �?*
_output_shapes
:
*
dtype0
�
6classification_layers/dense0/batch_normalization/gamma
VariableV2*
_output_shapes
:
*
dtype0*
shape:
*
	container *I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
shared_name 
�
=classification_layers/dense0/batch_normalization/gamma/AssignAssign6classification_layers/dense0/batch_normalization/gammaGclassification_layers/dense0/batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
validate_shape(*
_output_shapes
:

�
;classification_layers/dense0/batch_normalization/gamma/readIdentity6classification_layers/dense0/batch_normalization/gamma*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:
*
T0
�
Nclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zerosConst*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
valueB
*    *
_output_shapes
:
*
dtype0
�
<classification_layers/dense0/batch_normalization/moving_mean
VariableV2*
shape:
*
_output_shapes
:
*
shared_name *O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
dtype0*
	container 
�
Cclassification_layers/dense0/batch_normalization/moving_mean/AssignAssign<classification_layers/dense0/batch_normalization/moving_meanNclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zeros*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
Aclassification_layers/dense0/batch_normalization/moving_mean/readIdentity<classification_layers/dense0/batch_normalization/moving_mean*
T0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:

�
Qclassification_layers/dense0/batch_normalization/moving_variance/Initializer/onesConst*
_output_shapes
:
*
dtype0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
valueB
*  �?
�
@classification_layers/dense0/batch_normalization/moving_variance
VariableV2*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:
*
shape:
*
dtype0*
shared_name *
	container 
�
Gclassification_layers/dense0/batch_normalization/moving_variance/AssignAssign@classification_layers/dense0/batch_normalization/moving_varianceQclassification_layers/dense0/batch_normalization/moving_variance/Initializer/ones*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
Eclassification_layers/dense0/batch_normalization/moving_variance/readIdentity@classification_layers/dense0/batch_normalization/moving_variance*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:

�
Oclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
=classification_layers/dense0/batch_normalization/moments/MeanMean*classification_layers/dense0/dense/BiasAddOclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:

�
Eclassification_layers/dense0/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense0/batch_normalization/moments/Mean*
T0*
_output_shapes

:

�
<classification_layers/dense0/batch_normalization/moments/SubSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:���������

�
Wclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
�
Eclassification_layers/dense0/batch_normalization/moments/shifted_meanMean<classification_layers/dense0/batch_normalization/moments/SubWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:

�
Jclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:���������

�
Qclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
�
?classification_layers/dense0/batch_normalization/moments/Mean_1MeanJclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indices*
_output_shapes

:
*
T0*
	keep_dims(*

Tidx0
�
?classification_layers/dense0/batch_normalization/moments/SquareSquareEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
_output_shapes

:
*
T0
�
Aclassification_layers/dense0/batch_normalization/moments/varianceSub?classification_layers/dense0/batch_normalization/moments/Mean_1?classification_layers/dense0/batch_normalization/moments/Square*
_output_shapes

:
*
T0
�
=classification_layers/dense0/batch_normalization/moments/meanAddEclassification_layers/dense0/batch_normalization/moments/shifted_meanEclassification_layers/dense0/batch_normalization/moments/StopGradient*
_output_shapes

:
*
T0
�
@classification_layers/dense0/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense0/batch_normalization/moments/mean*
squeeze_dims
 *
_output_shapes
:
*
T0
�
Bclassification_layers/dense0/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense0/batch_normalization/moments/variance*
_output_shapes
:
*
T0*
squeeze_dims
 
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

:
*
T0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense0/batch_normalization/moving_mean/readAclassification_layers/dense0/batch_normalization/ExpandDims_1/dim*
_output_shapes

:
*
T0*

Tdim0
�
>classification_layers/dense0/batch_normalization/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
8classification_layers/dense0/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense0/batch_normalization/Reshape/shape*
T0
*
Tshape0*
_output_shapes
:
�
7classification_layers/dense0/batch_normalization/SelectSelect8classification_layers/dense0/batch_normalization/Reshape;classification_layers/dense0/batch_normalization/ExpandDims=classification_layers/dense0/batch_normalization/ExpandDims_1*
_output_shapes

:
*
T0
�
8classification_layers/dense0/batch_normalization/SqueezeSqueeze7classification_layers/dense0/batch_normalization/Select*
squeeze_dims
 *
T0*
_output_shapes
:

�
Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense0/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense0/batch_normalization/moments/Squeeze_1Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes

:

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

:
*

Tdim0
�
@classification_layers/dense0/batch_normalization/Reshape_1/shapeConst*
valueB:*
dtype0*
_output_shapes
:
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

:

�
:classification_layers/dense0/batch_normalization/Squeeze_1Squeeze9classification_layers/dense0/batch_normalization/Select_1*
T0*
_output_shapes
:
*
squeeze_dims
 
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_4/inputConst*
valueB
 *�p}?*
dtype0*
_output_shapes
: 
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_4/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*
T0*
_output_shapes
:*

Tdim0
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_5/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_5/inputAclassification_layers/dense0/batch_normalization/ExpandDims_5/dim*

Tdim0*
T0*
_output_shapes
:
�
@classification_layers/dense0/batch_normalization/Reshape_2/shapeConst*
valueB:*
_output_shapes
:*
dtype0
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
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*
T0*
_output_shapes
: *O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense0/batch_normalization/moving_mean/read8classification_layers/dense0/batch_normalization/Squeeze*
T0*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub*
T0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:

�
@classification_layers/dense0/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense0/batch_normalization/moving_meanDclassification_layers/dense0/batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
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
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
: *
T0
�
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense0/batch_normalization/moving_variance/read:classification_layers/dense0/batch_normalization/Squeeze_1*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:

�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub*
T0*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense0/batch_normalization/moving_varianceFclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mul*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0*
use_locking( 
�
@classification_layers/dense0/batch_normalization/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
�
>classification_layers/dense0/batch_normalization/batchnorm/addAdd:classification_layers/dense0/batch_normalization/Squeeze_1@classification_layers/dense0/batch_normalization/batchnorm/add/y*
_output_shapes
:
*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense0/batch_normalization/batchnorm/add*
T0*
_output_shapes
:

�
>classification_layers/dense0/batch_normalization/batchnorm/mulMul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrt;classification_layers/dense0/batch_normalization/gamma/read*
T0*
_output_shapes
:

�
@classification_layers/dense0/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense0/dense/BiasAdd>classification_layers/dense0/batch_normalization/batchnorm/mul*'
_output_shapes
:���������
*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense0/batch_normalization/Squeeze>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
>classification_layers/dense0/batch_normalization/batchnorm/subSub:classification_layers/dense0/batch_normalization/beta/read@classification_layers/dense0/batch_normalization/batchnorm/mul_2*
_output_shapes
:
*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/add_1Add@classification_layers/dense0/batch_normalization/batchnorm/mul_1>classification_layers/dense0/batch_normalization/batchnorm/sub*'
_output_shapes
:���������
*
T0
�
!classification_layers/dense0/ReluRelu@classification_layers/dense0/batch_normalization/batchnorm/add_1*
T0*'
_output_shapes
:���������

�
*classification_layers/dense0/dropout/ShapeShape!classification_layers/dense0/Relu*
out_type0*
_output_shapes
:*
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
 *  �?
�
Aclassification_layers/dense0/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense0/dropout/Shape*

seed *
T0*
dtype0*'
_output_shapes
:���������
*
seed2 
�
7classification_layers/dense0/dropout/random_uniform/subSub7classification_layers/dense0/dropout/random_uniform/max7classification_layers/dense0/dropout/random_uniform/min*
_output_shapes
: *
T0
�
7classification_layers/dense0/dropout/random_uniform/mulMulAclassification_layers/dense0/dropout/random_uniform/RandomUniform7classification_layers/dense0/dropout/random_uniform/sub*
T0*'
_output_shapes
:���������

�
3classification_layers/dense0/dropout/random_uniformAdd7classification_layers/dense0/dropout/random_uniform/mul7classification_layers/dense0/dropout/random_uniform/min*'
_output_shapes
:���������
*
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
(classification_layers/dense0/dropout/divRealDiv!classification_layers/dense0/Relu!classification_layers/Placeholder*
_output_shapes
:*
T0
�
(classification_layers/dense0/dropout/mulMul(classification_layers/dense0/dropout/div*classification_layers/dense0/dropout/Floor*'
_output_shapes
:���������
*
T0
�
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"
      
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
Qclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddevConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
Zclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
�
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:

�
-classification_layers/dense_last/dense/kernel
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:
*
shape
:
*
shared_name 
�
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*
_output_shapes

:
*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
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
shape:*
_output_shapes
:*
shared_name *>
_class4
20loc:@classification_layers/dense_last/dense/bias*
dtype0*
	container 
�
2classification_layers/dense_last/dense/bias/AssignAssign+classification_layers/dense_last/dense/bias=classification_layers/dense_last/dense/bias/Initializer/zeros*
_output_shapes
:*
validate_shape(*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0*
use_locking(
�
0classification_layers/dense_last/dense/bias/readIdentity+classification_layers/dense_last/dense/bias*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0
�
-classification_layers/dense_last/dense/MatMulMatMul(classification_layers/dense0/dropout/mul2classification_layers/dense_last/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
�
.classification_layers/dense_last/dense/BiasAddBiasAdd-classification_layers/dense_last/dense/MatMul0classification_layers/dense_last/dense/bias/read*'
_output_shapes
:���������*
data_formatNHWC*
T0
�
classification_layers/SoftmaxSoftmax.classification_layers/dense_last/dense/BiasAdd*
T0*'
_output_shapes
:���������
n
)Evaluation_layers/clip_by_value/Minimum/yConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
'Evaluation_layers/clip_by_value/MinimumMinimumclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*
T0*'
_output_shapes
:���������
f
!Evaluation_layers/clip_by_value/yConst*
valueB
 *���.*
dtype0*
_output_shapes
: 
�
Evaluation_layers/clip_by_valueMaximum'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*'
_output_shapes
:���������*
T0
o
Evaluation_layers/LogLogEvaluation_layers/clip_by_value*
T0*'
_output_shapes
:���������
y
Evaluation_layers/mulMulTarget/PlaceholderEvaluation_layers/Log*
T0*'
_output_shapes
:���������
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
Evaluation_layers/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
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
�
Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:���������
f
$Evaluation_layers/ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
�
Evaluation_layers/ArgMax_1ArgMaxTarget/Placeholder$Evaluation_layers/ArgMax_1/dimension*#
_output_shapes
:���������*
T0*

Tidx0
�
Evaluation_layers/EqualEqualEvaluation_layers/ArgMaxEvaluation_layers/ArgMax_1*#
_output_shapes
:���������*
T0	
|
Evaluation_layers/accracy/CastCastEvaluation_layers/Equal*#
_output_shapes
:���������*

DstT0*

SrcT0

i
Evaluation_layers/accracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Evaluation_layers/accracy/MeanMeanEvaluation_layers/accracy/CastEvaluation_layers/accracy/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
z
Evaluation_layers/accuracy/tagsConst*+
value"B  BEvaluation_layers/accuracy*
dtype0*
_output_shapes
: 
�
Evaluation_layers/accuracyScalarSummaryEvaluation_layers/accuracy/tagsEvaluation_layers/accracy/Mean*
T0*
_output_shapes
: 
r
Evaluation_layers/loss/tagsConst*
dtype0*
_output_shapes
: *'
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
�
Evaluation_layers/accuracy_1ScalarSummary!Evaluation_layers/accuracy_1/tagsEvaluation_layers/accracy/Mean*
_output_shapes
: *
T0
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
}
3gradients/Evaluation_layers/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
-gradients/Evaluation_layers/Mean_grad/ReshapeReshapegradients/Fill3gradients/Evaluation_layers/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
+gradients/Evaluation_layers/Mean_grad/ShapeShapeEvaluation_layers/Neg*
_output_shapes
:*
out_type0*
T0
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
-gradients/Evaluation_layers/Mean_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
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
-gradients/Evaluation_layers/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
,gradients/Evaluation_layers/Mean_grad/Prod_1Prod-gradients/Evaluation_layers/Mean_grad/Shape_2-gradients/Evaluation_layers/Mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
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
(gradients/Evaluation_layers/Neg_grad/NegNeg-gradients/Evaluation_layers/Mean_grad/truediv*#
_output_shapes
:���������*
T0

*gradients/Evaluation_layers/Sum_grad/ShapeShapeEvaluation_layers/mul*
out_type0*
_output_shapes
:*
T0
k
)gradients/Evaluation_layers/Sum_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
�
(gradients/Evaluation_layers/Sum_grad/addAdd'Evaluation_layers/Sum/reduction_indices)gradients/Evaluation_layers/Sum_grad/Size*
T0*
_output_shapes
:
�
(gradients/Evaluation_layers/Sum_grad/modFloorMod(gradients/Evaluation_layers/Sum_grad/add)gradients/Evaluation_layers/Sum_grad/Size*
_output_shapes
:*
T0
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
0gradients/Evaluation_layers/Sum_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
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
2gradients/Evaluation_layers/Sum_grad/DynamicStitchDynamicStitch*gradients/Evaluation_layers/Sum_grad/range(gradients/Evaluation_layers/Sum_grad/mod*gradients/Evaluation_layers/Sum_grad/Shape)gradients/Evaluation_layers/Sum_grad/Fill*#
_output_shapes
:���������*
N*
T0
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
-gradients/Evaluation_layers/Sum_grad/floordivFloorDiv*gradients/Evaluation_layers/Sum_grad/Shape,gradients/Evaluation_layers/Sum_grad/Maximum*
_output_shapes
:*
T0
�
,gradients/Evaluation_layers/Sum_grad/ReshapeReshape(gradients/Evaluation_layers/Neg_grad/Neg2gradients/Evaluation_layers/Sum_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
)gradients/Evaluation_layers/Sum_grad/TileTile,gradients/Evaluation_layers/Sum_grad/Reshape-gradients/Evaluation_layers/Sum_grad/floordiv*'
_output_shapes
:���������*
T0*

Tmultiples0
|
*gradients/Evaluation_layers/mul_grad/ShapeShapeTarget/Placeholder*
T0*
_output_shapes
:*
out_type0
�
,gradients/Evaluation_layers/mul_grad/Shape_1ShapeEvaluation_layers/Log*
_output_shapes
:*
out_type0*
T0
�
:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/Evaluation_layers/mul_grad/Shape,gradients/Evaluation_layers/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
(gradients/Evaluation_layers/mul_grad/mulMul)gradients/Evaluation_layers/Sum_grad/TileEvaluation_layers/Log*
T0*'
_output_shapes
:���������
�
(gradients/Evaluation_layers/mul_grad/SumSum(gradients/Evaluation_layers/mul_grad/mul:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
,gradients/Evaluation_layers/mul_grad/ReshapeReshape(gradients/Evaluation_layers/mul_grad/Sum*gradients/Evaluation_layers/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
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
.gradients/Evaluation_layers/mul_grad/Reshape_1Reshape*gradients/Evaluation_layers/mul_grad/Sum_1,gradients/Evaluation_layers/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:���������
�
5gradients/Evaluation_layers/mul_grad/tuple/group_depsNoOp-^gradients/Evaluation_layers/mul_grad/Reshape/^gradients/Evaluation_layers/mul_grad/Reshape_1
�
=gradients/Evaluation_layers/mul_grad/tuple/control_dependencyIdentity,gradients/Evaluation_layers/mul_grad/Reshape6^gradients/Evaluation_layers/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Evaluation_layers/mul_grad/Reshape*'
_output_shapes
:���������
�
?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1Identity.gradients/Evaluation_layers/mul_grad/Reshape_16^gradients/Evaluation_layers/mul_grad/tuple/group_deps*A
_class7
53loc:@gradients/Evaluation_layers/mul_grad/Reshape_1*'
_output_shapes
:���������*
T0
�
/gradients/Evaluation_layers/Log_grad/Reciprocal
ReciprocalEvaluation_layers/clip_by_value@^gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1*'
_output_shapes
:���������*
T0
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
6gradients/Evaluation_layers/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
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
7gradients/Evaluation_layers/clip_by_value_grad/Select_1Select9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*'
_output_shapes
:���������*
T0
�
2gradients/Evaluation_layers/clip_by_value_grad/SumSum5gradients/Evaluation_layers/clip_by_value_grad/SelectDgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6gradients/Evaluation_layers/clip_by_value_grad/ReshapeReshape2gradients/Evaluation_layers/clip_by_value_grad/Sum4gradients/Evaluation_layers/clip_by_value_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
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
T0*'
_output_shapes
:���������*I
_class?
=;loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape
�
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*
T0*
_output_shapes
: *K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
T0*
out_type0*
_output_shapes
:
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2ShapeGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
�
Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
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
Lgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
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
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeReshape:gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape*'
_output_shapes
:���������*
Tshape0*
T0
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1Sum?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1Ngradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
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
T0*'
_output_shapes
:���������*Q
_classG
ECloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape
�
Qgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1H^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*S
_classI
GEloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: *
T0
�
0gradients/classification_layers/Softmax_grad/mulMulOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyclassification_layers/Softmax*'
_output_shapes
:���������*
T0
�
Bgradients/classification_layers/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
�
0gradients/classification_layers/Softmax_grad/SumSum0gradients/classification_layers/Softmax_grad/mulBgradients/classification_layers/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
�
:gradients/classification_layers/Softmax_grad/Reshape/shapeConst*
valueB"����   *
_output_shapes
:*
dtype0
�
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*
Tshape0*'
_output_shapes
:���������*
T0
�
0gradients/classification_layers/Softmax_grad/subSubOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency4gradients/classification_layers/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������
�
2gradients/classification_layers/Softmax_grad/mul_1Mul0gradients/classification_layers/Softmax_grad/subclassification_layers/Softmax*'
_output_shapes
:���������*
T0
�
Igradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/classification_layers/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:
�
Ngradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/classification_layers/Softmax_grad/mul_1J^gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
�
Vgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/classification_layers/Softmax_grad/mul_1O^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*E
_class;
97loc:@gradients/classification_layers/Softmax_grad/mul_1
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
:���������
*
transpose_a( *
T0
�
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense0/dropout/mulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:
*
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
:���������

�
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:
*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
=gradients/classification_layers/dense0/dropout/mul_grad/ShapeShape(classification_layers/dense0/dropout/div*
T0*
out_type0*#
_output_shapes
:���������
�
?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1Shape*classification_layers/dense0/dropout/Floor*
T0*#
_output_shapes
:���������*
out_type0
�
Mgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/mul_grad/Shape?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
;gradients/classification_layers/dense0/dropout/mul_grad/mulMulUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense0/dropout/Floor*
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
?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/mul_grad/Sum=gradients/classification_layers/dense0/dropout/mul_grad/Shape*
Tshape0*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Mul(classification_layers/dense0/dropout/divUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*
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
Pgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
_output_shapes
:*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape*
T0
�
Rgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1*
_output_shapes
:*
T0
�
=gradients/classification_layers/dense0/dropout/div_grad/ShapeShape!classification_layers/dense0/Relu*
_output_shapes
:*
out_type0*
T0
�
?gradients/classification_layers/dense0/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*
out_type0*#
_output_shapes
:���������*
T0
�
Mgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/div_grad/Shape?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
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
?gradients/classification_layers/dense0/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/div_grad/Sum=gradients/classification_layers/dense0/dropout/div_grad/Shape*'
_output_shapes
:���������
*
Tshape0*
T0
�
;gradients/classification_layers/dense0/dropout/div_grad/NegNeg!classification_layers/dense0/Relu*'
_output_shapes
:���������
*
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
;gradients/classification_layers/dense0/dropout/div_grad/mulMulPgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyAgradients/classification_layers/dense0/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
�
=gradients/classification_layers/dense0/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense0/dropout/div_grad/mulOgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Agradients/classification_layers/dense0/dropout/div_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/div_grad/Sum_1?gradients/classification_layers/dense0/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
Hgradients/classification_layers/dense0/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/div_grad/ReshapeB^gradients/classification_layers/dense0/dropout/div_grad/Reshape_1
�
Pgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/div_grad/ReshapeI^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape*'
_output_shapes
:���������

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
:���������

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense0/batch_normalization/batchnorm/mul_1*
out_type0*
_output_shapes
:*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:
*
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
:���������
*
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
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*
_output_shapes
:
*
Tshape0*
T0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes
:
*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:
*
_output_shapes
:*
dtype0
�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense0/batch_normalization/batchnorm/mul*'
_output_shapes
:���������
*
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
T0*
Tshape0*'
_output_shapes
:���������

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense0/dense/BiasAddhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*'
_output_shapes
:���������
*
T0
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
:
*
Tshape0*
T0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1Const*
valueB:
*
_output_shapes
:*
dtype0
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape*
Tshape0*
_output_shapes
:
*
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
:

�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape*
_output_shapes
:
*
T0
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1*
_output_shapes
:
*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
valueB:
*
_output_shapes
:*
dtype0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense0/batch_normalization/Squeezehgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
T0*
_output_shapes
:

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape*
_output_shapes
:
*
T0
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1*
_output_shapes
:

�
Mgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:

�
gradients/AddNAddNjgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
_output_shapes
:
*
N*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:

�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN;classification_layers/dense0/batch_normalization/gamma/read*
T0*
_output_shapes
:

�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape*
_output_shapes
:
*
Tshape0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtgradients/AddN*
T0*
_output_shapes
:

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
:
*
Tshape0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*
_output_shapes
:
*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeConst*
dtype0*
_output_shapes

:
*
valueB
*    
�
Mgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectSelect8classification_layers/dense0/batch_normalization/ReshapeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_like*
_output_shapes

:
*
T0
�
Ogradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1Select8classification_layers/dense0/batch_normalization/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Reshape*
_output_shapes

:
*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense0/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1
�
_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*`
_classV
TRloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select*
_output_shapes

:
*
T0
�
agradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1*
_output_shapes

:

�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:

�
Pgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:

�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape*
_output_shapes
:
*
Tshape0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape*
_output_shapes
:
*
T0
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1*
_output_shapes
: *
T0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Shape*
_output_shapes

:
*
Tshape0*
T0
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
�
Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Shape*
_output_shapes

:
*
Tshape0*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   
   
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
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape*
Tshape0*
_output_shapes

:
*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1SumWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Reshapedgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*
Tshape0*
_output_shapes

:
*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1
�
egradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:

�
ggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1*
_output_shapes

:
*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeConst*
dtype0*
_output_shapes

:
*
valueB
*    
�
Ogradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense0/batch_normalization/Reshape_1Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_like*
T0*
_output_shapes

:

�
Qgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Reshape*
T0*
_output_shapes

:

�
Ygradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1
�
agradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
_output_shapes

:
*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select*
T0
�
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1*
_output_shapes

:
*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

�
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
Tshape0*
_output_shapes
:
*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Shape*
Tshape0*
_output_shapes

:
*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
valueB"   
   *
dtype0*
_output_shapes
:
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

:
*
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
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1ReshapeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/NegXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*
_output_shapes

:
*
Tshape0*
T0
�
agradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1
�
igradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*
_output_shapes

:
*k
_classa
_]loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape*
T0
�
kgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*
_output_shapes

:
*m
_classc
a_loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
_output_shapes
:*
out_type0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addAddQclassification_layers/dense0/batch_normalization/moments/Mean_1/reduction_indicesSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
_output_shapes
:*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modFloorModRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/addSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Size*
_output_shapes
:*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0
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
T0*
N
�
Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum*
_output_shapes
:*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
_output_shapes
:*
out_type0*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   
   
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1MaximumUgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1/y*
_output_shapes
: *
T0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1FloorDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum_1*
T0*
_output_shapes
: 
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Cast*'
_output_shapes
:���������
*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xConstl^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mulMulTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul/xEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
_output_shapes

:
*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul*
T0*
_output_shapes

:

�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   
   
�
ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*'
_output_shapes
:���������
*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:���������

�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/sub*
T0*'
_output_shapes
:���������

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
:���������
*
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
Tshape0*
_output_shapes

:

�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
_output_shapes

:
*
T0
�
jgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg
�
rgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*t
_classj
hfloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape*'
_output_shapes
:���������

�
tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
_output_shapes

:
*p
_classf
dbloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg*
T0
�
gradients/AddN_1AddNegradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:
*
T0*
N
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense0/batch_normalization/moments/Sub*
_output_shapes
:*
out_type0*
T0
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
value	B : *
dtype0*
_output_shapes
: 
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/delta*

Tidx0*
_output_shapes
:
�
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/value*
_output_shapes
:*
T0
�
bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill*#
_output_shapes
:���������*
N*
T0
�
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
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
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_1bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense0/batch_normalization/moments/Sub*
T0*
_output_shapes
:*
out_type0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
valueB"   
   *
dtype0*
_output_shapes
:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0
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
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/CastCast_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivRealDivYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Cast*'
_output_shapes
:���������
*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1Const*
valueB"   
   *
dtype0*
_output_shapes
:
�
agradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape*'
_output_shapes
:���������
*
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
Ugradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1ReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/NegSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*
Tshape0*
_output_shapes

:
*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1
�
dgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*
T0*'
_output_shapes
:���������
*f
_class\
ZXloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape
�
fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*
T0*
_output_shapes

:
*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1
�
gradients/AddN_2AddNggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*
_output_shapes

:
*
N*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1*
T0
�
gradients/AddN_3AddNhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency*
N*
T0*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
�
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
_output_shapes
:
*
T0*
data_formatNHWC
�
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3F^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_3K^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*
T0
�
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:
*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad*
T0
�
?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense0/dense/kernel/read*
transpose_b(*
T0*(
_output_shapes
:����������*
transpose_a( 
�
Agradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1MatMulFlatten/ReshapeRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	�
*
transpose_a(*
T0
�
Igradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
�
Qgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1*
_output_shapes
:	�

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
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
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
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
@classification_layers/dense0/dense/kernel/Adam/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�
*    *
dtype0*
_output_shapes
:	�

�
.classification_layers/dense0/dense/kernel/Adam
VariableV2*
shared_name *
shape:	�
*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
	container 
�
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
:	�

�
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�
*    *
_output_shapes
:	�
*
dtype0
�
0classification_layers/dense0/dense/kernel/Adam_1
VariableV2*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
shape:	�
*
dtype0*
shared_name *
	container 
�
7classification_layers/dense0/dense/kernel/Adam_1/AssignAssign0classification_layers/dense0/dense/kernel/Adam_1Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zeros*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0*
validate_shape(*
use_locking(
�
5classification_layers/dense0/dense/kernel/Adam_1/readIdentity0classification_layers/dense0/dense/kernel/Adam_1*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
>classification_layers/dense0/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    
�
,classification_layers/dense0/dense/bias/Adam
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
shape:
*
shared_name 
�
3classification_layers/dense0/dense/bias/Adam/AssignAssign,classification_layers/dense0/dense/bias/Adam>classification_layers/dense0/dense/bias/Adam/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0
�
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    *
dtype0*
_output_shapes
:

�
.classification_layers/dense0/dense/bias/Adam_1
VariableV2*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
shape:
*
dtype0*
shared_name *
	container 
�
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
T0
�
Lclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    *
_output_shapes
:
*
dtype0
�
:classification_layers/dense0/batch_normalization/beta/Adam
VariableV2*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:
*
shape:
*
dtype0*
shared_name *
	container 
�
Aclassification_layers/dense0/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense0/batch_normalization/beta/AdamLclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zeros*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
?classification_layers/dense0/batch_normalization/beta/Adam/readIdentity:classification_layers/dense0/batch_normalization/beta/Adam*
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zerosConst*
_output_shapes
:
*
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    
�
<classification_layers/dense0/batch_normalization/beta/Adam_1
VariableV2*
shared_name *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
	container *
shape:
*
dtype0*
_output_shapes
:

�
Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense0/batch_normalization/beta/Adam_1Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
validate_shape(*
_output_shapes
:

�
Aclassification_layers/dense0/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense0/batch_normalization/beta/Adam_1*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
�
Mclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*    
�
;classification_layers/dense0/batch_normalization/gamma/Adam
VariableV2*
shared_name *
shape:
*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
dtype0*
	container 
�
Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense0/batch_normalization/gamma/AdamMclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zeros*
_output_shapes
:
*
validate_shape(*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0*
use_locking(
�
@classification_layers/dense0/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense0/batch_normalization/gamma/Adam*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:

�
Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*    *
_output_shapes
:
*
dtype0
�
=classification_layers/dense0/batch_normalization/gamma/Adam_1
VariableV2*
_output_shapes
:
*
dtype0*
shape:
*
	container *I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
shared_name 
�
Dclassification_layers/dense0/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense0/batch_normalization/gamma/Adam_1Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zeros*
_output_shapes
:
*
validate_shape(*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0*
use_locking(
�
Bclassification_layers/dense0/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense0/batch_normalization/gamma/Adam_1*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:

�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
*    
�
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:
*
shape
:
*
dtype0*
shared_name *
	container 
�
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*
_output_shapes

:
*
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
*    
�
4classification_layers/dense_last/dense/kernel/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape
:
*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:
*
T0*
validate_shape(*
use_locking(
�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*
T0*
_output_shapes

:
*@
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
VariableV2*
shared_name *
shape:*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
dtype0*
	container 
�
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
validate_shape(*
_output_shapes
:
�
5classification_layers/dense_last/dense/bias/Adam/readIdentity0classification_layers/dense_last/dense/bias/Adam*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:
�
Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    
�
2classification_layers/dense_last/dense/bias/Adam_1
VariableV2*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
shape:*
dtype0*
shared_name *
	container 
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
7classification_layers/dense_last/dense/bias/Adam_1/readIdentity2classification_layers/dense_last/dense/bias/Adam_1*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
W
Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
O

Adam/beta1Const*
valueB
 *fff?*
_output_shapes
: *
dtype0
O

Adam/beta2Const*
valueB
 *w�?*
_output_shapes
: *
dtype0
Q
Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
�
?Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense0/dense/kernel.classification_layers/dense0/dense/kernel/Adam0classification_layers/dense0/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0*
use_nesterov( *
use_locking( 
�
=Adam/update_classification_layers/dense0/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense0/dense/bias,classification_layers/dense0/dense/bias/Adam.classification_layers/dense0/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
KAdam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense0/batch_normalization/beta:classification_layers/dense0/batch_normalization/beta/Adam<classification_layers/dense0/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
_output_shapes
:
*
use_nesterov( *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking( 
�
LAdam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense0/batch_normalization/gamma;classification_layers/dense0/batch_normalization/gamma/Adam=classification_layers/dense0/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
CAdam/update_classification_layers/dense_last/dense/kernel/ApplyAdam	ApplyAdam-classification_layers/dense_last/dense/kernel2classification_layers/dense_last/dense/kernel/Adam4classification_layers/dense_last/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
use_nesterov( *
T0*
_output_shapes

:
*@
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
�
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Adam/AssignAssignbeta1_powerAdam/mul*
_output_shapes
: *
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking( 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
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
�
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�	
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign=^classification_layers/dense0/batch_normalization/beta/Assign>^classification_layers/dense0/batch_normalization/gamma/AssignD^classification_layers/dense0/batch_normalization/moving_mean/AssignH^classification_layers/dense0/batch_normalization/moving_variance/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/AssignB^classification_layers/dense0/batch_normalization/beta/Adam/AssignD^classification_layers/dense0/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense0/batch_normalization/gamma/Adam/AssignE^classification_layers/dense0/batch_normalization/gamma/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign"l덂Z     ��(	R�0�^�AJ��	
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
shared_namestring �*1.2.12v1.2.0-5-g435cdfc��
|
Input/PlaceholderPlaceholder*+
_output_shapes
:��������� * 
shape:��������� *
dtype0
u
Target/PlaceholderPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
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
�
Flatten/SliceSliceFlatten/ShapeFlatten/Slice/beginFlatten/Slice/size*
T0*
Index0*
_output_shapes
:
_
Flatten/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB:
^
Flatten/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
�
Flatten/Slice_1SliceFlatten/ShapeFlatten/Slice_1/beginFlatten/Slice_1/size*
T0*
Index0*
_output_shapes
:
W
Flatten/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
Flatten/ProdProdFlatten/Slice_1Flatten/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
X
Flatten/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
w
Flatten/ExpandDims
ExpandDimsFlatten/ProdFlatten/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
U
Flatten/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
�
Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
~
Flatten/ReshapeReshapeInput/PlaceholderFlatten/concat*
T0*
Tshape0*(
_output_shapes
:����������
f
!classification_layers/PlaceholderPlaceholder*
_output_shapes
:*
shape:*
dtype0
�
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB"�   
   *
dtype0*
_output_shapes
:
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
seed2 *
T0*

seed *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�

�
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0
�
)classification_layers/dense0/dense/kernel
VariableV2*
shape:	�
*
_output_shapes
:	�
*
shared_name *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
	container 
�
0classification_layers/dense0/dense/kernel/AssignAssign)classification_layers/dense0/dense/kernelFclassification_layers/dense0/dense/kernel/Initializer/truncated_normal*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0*
validate_shape(*
use_locking(
�
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
9classification_layers/dense0/dense/bias/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    *
dtype0*
_output_shapes
:

�
'classification_layers/dense0/dense/bias
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
shared_name *
_output_shapes
:
*
shape:

�
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*
_output_shapes
:
*
validate_shape(*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking(
�
,classification_layers/dense0/dense/bias/readIdentity'classification_layers/dense0/dense/bias*
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:

�
)classification_layers/dense0/dense/MatMulMatMulFlatten/Reshape.classification_layers/dense0/dense/kernel/read*
transpose_b( *'
_output_shapes
:���������
*
transpose_a( *
T0
�
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������

�
Gclassification_layers/dense0/batch_normalization/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    
�
5classification_layers/dense0/batch_normalization/beta
VariableV2*
shared_name *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
	container *
shape:
*
dtype0*
_output_shapes
:

�
<classification_layers/dense0/batch_normalization/beta/AssignAssign5classification_layers/dense0/batch_normalization/betaGclassification_layers/dense0/batch_normalization/beta/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
:classification_layers/dense0/batch_normalization/beta/readIdentity5classification_layers/dense0/batch_normalization/beta*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:

�
Gclassification_layers/dense0/batch_normalization/gamma/Initializer/onesConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*  �?*
_output_shapes
:
*
dtype0
�
6classification_layers/dense0/batch_normalization/gamma
VariableV2*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:
*
shape:
*
dtype0*
shared_name *
	container 
�
=classification_layers/dense0/batch_normalization/gamma/AssignAssign6classification_layers/dense0/batch_normalization/gammaGclassification_layers/dense0/batch_normalization/gamma/Initializer/ones*
use_locking(*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
validate_shape(*
_output_shapes
:

�
;classification_layers/dense0/batch_normalization/gamma/readIdentity6classification_layers/dense0/batch_normalization/gamma*
T0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
Nclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zerosConst*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
valueB
*    *
_output_shapes
:
*
dtype0
�
<classification_layers/dense0/batch_normalization/moving_mean
VariableV2*
	container *
shared_name *
dtype0*
shape:
*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
Cclassification_layers/dense0/batch_normalization/moving_mean/AssignAssign<classification_layers/dense0/batch_normalization/moving_meanNclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zeros*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
Aclassification_layers/dense0/batch_normalization/moving_mean/readIdentity<classification_layers/dense0/batch_normalization/moving_mean*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:
*
T0
�
Qclassification_layers/dense0/batch_normalization/moving_variance/Initializer/onesConst*
_output_shapes
:
*
dtype0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
valueB
*  �?
�
@classification_layers/dense0/batch_normalization/moving_variance
VariableV2*
	container *
shared_name *
dtype0*
shape:
*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Gclassification_layers/dense0/batch_normalization/moving_variance/AssignAssign@classification_layers/dense0/batch_normalization/moving_varianceQclassification_layers/dense0/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Eclassification_layers/dense0/batch_normalization/moving_variance/readIdentity@classification_layers/dense0/batch_normalization/moving_variance*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:

�
Oclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
�
=classification_layers/dense0/batch_normalization/moments/MeanMean*classification_layers/dense0/dense/BiasAddOclassification_layers/dense0/batch_normalization/moments/Mean/reduction_indices*
_output_shapes

:
*
T0*
	keep_dims(*

Tidx0
�
Eclassification_layers/dense0/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense0/batch_normalization/moments/Mean*
_output_shapes

:
*
T0
�
<classification_layers/dense0/batch_normalization/moments/SubSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:���������

�
Wclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
�
Eclassification_layers/dense0/batch_normalization/moments/shifted_meanMean<classification_layers/dense0/batch_normalization/moments/SubWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:

�
Jclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*'
_output_shapes
:���������
*
T0
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

:

�
?classification_layers/dense0/batch_normalization/moments/SquareSquareEclassification_layers/dense0/batch_normalization/moments/shifted_mean*
T0*
_output_shapes

:

�
Aclassification_layers/dense0/batch_normalization/moments/varianceSub?classification_layers/dense0/batch_normalization/moments/Mean_1?classification_layers/dense0/batch_normalization/moments/Square*
_output_shapes

:
*
T0
�
=classification_layers/dense0/batch_normalization/moments/meanAddEclassification_layers/dense0/batch_normalization/moments/shifted_meanEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*
_output_shapes

:

�
@classification_layers/dense0/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense0/batch_normalization/moments/mean*
_output_shapes
:
*
T0*
squeeze_dims
 
�
Bclassification_layers/dense0/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense0/batch_normalization/moments/variance*
squeeze_dims
 *
T0*
_output_shapes
:

�
?classification_layers/dense0/batch_normalization/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
;classification_layers/dense0/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense0/batch_normalization/moments/Squeeze?classification_layers/dense0/batch_normalization/ExpandDims/dim*

Tdim0*
_output_shapes

:
*
T0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense0/batch_normalization/moving_mean/readAclassification_layers/dense0/batch_normalization/ExpandDims_1/dim*

Tdim0*
_output_shapes

:
*
T0
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
7classification_layers/dense0/batch_normalization/SelectSelect8classification_layers/dense0/batch_normalization/Reshape;classification_layers/dense0/batch_normalization/ExpandDims=classification_layers/dense0/batch_normalization/ExpandDims_1*
_output_shapes

:
*
T0
�
8classification_layers/dense0/batch_normalization/SqueezeSqueeze7classification_layers/dense0/batch_normalization/Select*
squeeze_dims
 *
T0*
_output_shapes
:

�
Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense0/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense0/batch_normalization/moments/Squeeze_1Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dim*

Tdim0*
_output_shapes

:
*
T0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense0/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense0/batch_normalization/moving_variance/readAclassification_layers/dense0/batch_normalization/ExpandDims_3/dim*

Tdim0*
T0*
_output_shapes

:

�
@classification_layers/dense0/batch_normalization/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
�
:classification_layers/dense0/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_1/shape*
T0
*
_output_shapes
:*
Tshape0
�
9classification_layers/dense0/batch_normalization/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1=classification_layers/dense0/batch_normalization/ExpandDims_2=classification_layers/dense0/batch_normalization/ExpandDims_3*
T0*
_output_shapes

:

�
:classification_layers/dense0/batch_normalization/Squeeze_1Squeeze9classification_layers/dense0/batch_normalization/Select_1*
T0*
_output_shapes
:
*
squeeze_dims
 
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_4/inputConst*
_output_shapes
: *
dtype0*
valueB
 *�p}?
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_4/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*

Tdim0*
T0*
_output_shapes
:
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_5/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
=classification_layers/dense0/batch_normalization/ExpandDims_5
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_5/inputAclassification_layers/dense0/batch_normalization/ExpandDims_5/dim*
_output_shapes
:*
T0*

Tdim0
�
@classification_layers/dense0/batch_normalization/Reshape_2/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
:classification_layers/dense0/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_2/shape*
_output_shapes
:*
Tshape0*
T0

�
9classification_layers/dense0/batch_normalization/Select_2Select:classification_layers/dense0/batch_normalization/Reshape_2=classification_layers/dense0/batch_normalization/ExpandDims_4=classification_layers/dense0/batch_normalization/ExpandDims_5*
T0*
_output_shapes
:
�
:classification_layers/dense0/batch_normalization/Squeeze_2Squeeze9classification_layers/dense0/batch_normalization/Select_2*
_output_shapes
: *
T0*
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
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense0/batch_normalization/moving_mean/read8classification_layers/dense0/batch_normalization/Squeeze*
T0*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub*
T0*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
@classification_layers/dense0/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense0/batch_normalization/moving_meanDclassification_layers/dense0/batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
: *
T0
�
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense0/batch_normalization/moving_variance/read:classification_layers/dense0/batch_normalization/Squeeze_1*
T0*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mulMulHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:

�
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense0/batch_normalization/moving_varianceFclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mul*
use_locking( *
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:

�
@classification_layers/dense0/batch_normalization/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
�
>classification_layers/dense0/batch_normalization/batchnorm/addAdd:classification_layers/dense0/batch_normalization/Squeeze_1@classification_layers/dense0/batch_normalization/batchnorm/add/y*
_output_shapes
:
*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense0/batch_normalization/batchnorm/add*
_output_shapes
:
*
T0
�
>classification_layers/dense0/batch_normalization/batchnorm/mulMul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrt;classification_layers/dense0/batch_normalization/gamma/read*
_output_shapes
:
*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense0/dense/BiasAdd>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:���������

�
@classification_layers/dense0/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense0/batch_normalization/Squeeze>classification_layers/dense0/batch_normalization/batchnorm/mul*
_output_shapes
:
*
T0
�
>classification_layers/dense0/batch_normalization/batchnorm/subSub:classification_layers/dense0/batch_normalization/beta/read@classification_layers/dense0/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:

�
@classification_layers/dense0/batch_normalization/batchnorm/add_1Add@classification_layers/dense0/batch_normalization/batchnorm/mul_1>classification_layers/dense0/batch_normalization/batchnorm/sub*'
_output_shapes
:���������
*
T0
�
!classification_layers/dense0/ReluRelu@classification_layers/dense0/batch_normalization/batchnorm/add_1*
T0*'
_output_shapes
:���������

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
7classification_layers/dense0/dropout/random_uniform/maxConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Aclassification_layers/dense0/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense0/dropout/Shape*'
_output_shapes
:���������
*
seed2 *
dtype0*
T0*

seed 
�
7classification_layers/dense0/dropout/random_uniform/subSub7classification_layers/dense0/dropout/random_uniform/max7classification_layers/dense0/dropout/random_uniform/min*
_output_shapes
: *
T0
�
7classification_layers/dense0/dropout/random_uniform/mulMulAclassification_layers/dense0/dropout/random_uniform/RandomUniform7classification_layers/dense0/dropout/random_uniform/sub*'
_output_shapes
:���������
*
T0
�
3classification_layers/dense0/dropout/random_uniformAdd7classification_layers/dense0/dropout/random_uniform/mul7classification_layers/dense0/dropout/random_uniform/min*
T0*'
_output_shapes
:���������

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
(classification_layers/dense0/dropout/divRealDiv!classification_layers/dense0/Relu!classification_layers/Placeholder*
_output_shapes
:*
T0
�
(classification_layers/dense0/dropout/mulMul(classification_layers/dense0/dropout/div*classification_layers/dense0/dropout/Floor*'
_output_shapes
:���������
*
T0
�
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"
      *
_output_shapes
:*
dtype0
�
Oclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *    
�
Qclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddevConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
Zclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:
*
T0
�
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
-classification_layers/dense_last/dense/kernel
VariableV2*
_output_shapes

:
*
dtype0*
shape
:
*
	container *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
shared_name 
�
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*
_output_shapes

:
*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:

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
VariableV2*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
shape:*
dtype0*
shared_name *
	container 
�
2classification_layers/dense_last/dense/bias/AssignAssign+classification_layers/dense_last/dense/bias=classification_layers/dense_last/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
�
0classification_layers/dense_last/dense/bias/readIdentity+classification_layers/dense_last/dense/bias*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0
�
-classification_layers/dense_last/dense/MatMulMatMul(classification_layers/dense0/dropout/mul2classification_layers/dense_last/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
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
)Evaluation_layers/clip_by_value/Minimum/yConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
'Evaluation_layers/clip_by_value/MinimumMinimumclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*
T0*'
_output_shapes
:���������
f
!Evaluation_layers/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *���.
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
Evaluation_layers/MeanMeanEvaluation_layers/NegEvaluation_layers/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
d
"Evaluation_layers/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
�
Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*

Tidx0*
T0*#
_output_shapes
:���������
f
$Evaluation_layers/ArgMax_1/dimensionConst*
value	B :*
_output_shapes
: *
dtype0
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
Evaluation_layers/accracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
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
�
Evaluation_layers/accuracy_1ScalarSummary!Evaluation_layers/accuracy_1/tagsEvaluation_layers/accracy/Mean*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
T
gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
}
3gradients/Evaluation_layers/Mean_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
�
-gradients/Evaluation_layers/Mean_grad/ReshapeReshapegradients/Fill3gradients/Evaluation_layers/Mean_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
�
+gradients/Evaluation_layers/Mean_grad/ShapeShapeEvaluation_layers/Neg*
_output_shapes
:*
out_type0*
T0
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
valueB *
dtype0*
_output_shapes
: 
u
+gradients/Evaluation_layers/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
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
�
,gradients/Evaluation_layers/Mean_grad/Prod_1Prod-gradients/Evaluation_layers/Mean_grad/Shape_2-gradients/Evaluation_layers/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
q
/gradients/Evaluation_layers/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
-gradients/Evaluation_layers/Mean_grad/MaximumMaximum,gradients/Evaluation_layers/Mean_grad/Prod_1/gradients/Evaluation_layers/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
.gradients/Evaluation_layers/Mean_grad/floordivFloorDiv*gradients/Evaluation_layers/Mean_grad/Prod-gradients/Evaluation_layers/Mean_grad/Maximum*
T0*
_output_shapes
: 
�
*gradients/Evaluation_layers/Mean_grad/CastCast.gradients/Evaluation_layers/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
-gradients/Evaluation_layers/Mean_grad/truedivRealDiv*gradients/Evaluation_layers/Mean_grad/Tile*gradients/Evaluation_layers/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
(gradients/Evaluation_layers/Neg_grad/NegNeg-gradients/Evaluation_layers/Mean_grad/truediv*#
_output_shapes
:���������*
T0

*gradients/Evaluation_layers/Sum_grad/ShapeShapeEvaluation_layers/mul*
_output_shapes
:*
out_type0*
T0
k
)gradients/Evaluation_layers/Sum_grad/SizeConst*
_output_shapes
: *
dtype0*
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
0gradients/Evaluation_layers/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
r
0gradients/Evaluation_layers/Sum_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
�
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
�
)gradients/Evaluation_layers/Sum_grad/FillFill,gradients/Evaluation_layers/Sum_grad/Shape_1/gradients/Evaluation_layers/Sum_grad/Fill/value*
_output_shapes
:*
T0
�
2gradients/Evaluation_layers/Sum_grad/DynamicStitchDynamicStitch*gradients/Evaluation_layers/Sum_grad/range(gradients/Evaluation_layers/Sum_grad/mod*gradients/Evaluation_layers/Sum_grad/Shape)gradients/Evaluation_layers/Sum_grad/Fill*#
_output_shapes
:���������*
N*
T0
p
.gradients/Evaluation_layers/Sum_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
,gradients/Evaluation_layers/Sum_grad/MaximumMaximum2gradients/Evaluation_layers/Sum_grad/DynamicStitch.gradients/Evaluation_layers/Sum_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
-gradients/Evaluation_layers/Sum_grad/floordivFloorDiv*gradients/Evaluation_layers/Sum_grad/Shape,gradients/Evaluation_layers/Sum_grad/Maximum*
_output_shapes
:*
T0
�
,gradients/Evaluation_layers/Sum_grad/ReshapeReshape(gradients/Evaluation_layers/Neg_grad/Neg2gradients/Evaluation_layers/Sum_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
�
)gradients/Evaluation_layers/Sum_grad/TileTile,gradients/Evaluation_layers/Sum_grad/Reshape-gradients/Evaluation_layers/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:���������
|
*gradients/Evaluation_layers/mul_grad/ShapeShapeTarget/Placeholder*
out_type0*
_output_shapes
:*
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
(gradients/Evaluation_layers/mul_grad/mulMul)gradients/Evaluation_layers/Sum_grad/TileEvaluation_layers/Log*
T0*'
_output_shapes
:���������
�
(gradients/Evaluation_layers/mul_grad/SumSum(gradients/Evaluation_layers/mul_grad/mul:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
*gradients/Evaluation_layers/mul_grad/Sum_1Sum*gradients/Evaluation_layers/mul_grad/mul_1<gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
.gradients/Evaluation_layers/mul_grad/Reshape_1Reshape*gradients/Evaluation_layers/mul_grad/Sum_1,gradients/Evaluation_layers/mul_grad/Shape_1*
T0*'
_output_shapes
:���������*
Tshape0
�
5gradients/Evaluation_layers/mul_grad/tuple/group_depsNoOp-^gradients/Evaluation_layers/mul_grad/Reshape/^gradients/Evaluation_layers/mul_grad/Reshape_1
�
=gradients/Evaluation_layers/mul_grad/tuple/control_dependencyIdentity,gradients/Evaluation_layers/mul_grad/Reshape6^gradients/Evaluation_layers/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Evaluation_layers/mul_grad/Reshape*'
_output_shapes
:���������
�
?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1Identity.gradients/Evaluation_layers/mul_grad/Reshape_16^gradients/Evaluation_layers/mul_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*A
_class7
53loc:@gradients/Evaluation_layers/mul_grad/Reshape_1
�
/gradients/Evaluation_layers/Log_grad/Reciprocal
ReciprocalEvaluation_layers/clip_by_value@^gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:���������
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
6gradients/Evaluation_layers/clip_by_value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
6gradients/Evaluation_layers/clip_by_value_grad/Shape_2Shape(gradients/Evaluation_layers/Log_grad/mul*
T0*
_output_shapes
:*
out_type0

:gradients/Evaluation_layers/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
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
7gradients/Evaluation_layers/clip_by_value_grad/Select_1Select9gradients/Evaluation_layers/clip_by_value_grad/LogicalNot(gradients/Evaluation_layers/Log_grad/mul4gradients/Evaluation_layers/clip_by_value_grad/zeros*'
_output_shapes
:���������*
T0
�
2gradients/Evaluation_layers/clip_by_value_grad/SumSum5gradients/Evaluation_layers/clip_by_value_grad/SelectDgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
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
T0*'
_output_shapes
:���������*I
_class?
=;loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape
�
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*
T0*
_output_shapes
: *K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
out_type0*
_output_shapes
:*
T0
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
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
=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectSelect@gradients/Evaluation_layers/clip_by_value/Minimum_grad/LessEqualGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:���������
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
:gradients/Evaluation_layers/clip_by_value/Minimum_grad/SumSum=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectLgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
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
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1Reshape<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
�
Ggradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_depsNoOp?^gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeA^gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1
�
Ogradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeH^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*'
_output_shapes
:���������*Q
_classG
ECloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape*
T0
�
Qgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1H^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*
_output_shapes
: *S
_classI
GEloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1*
T0
�
0gradients/classification_layers/Softmax_grad/mulMulOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyclassification_layers/Softmax*
T0*'
_output_shapes
:���������
�
Bgradients/classification_layers/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
0gradients/classification_layers/Softmax_grad/SumSum0gradients/classification_layers/Softmax_grad/mulBgradients/classification_layers/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
�
:gradients/classification_layers/Softmax_grad/Reshape/shapeConst*
valueB"����   *
_output_shapes
:*
dtype0
�
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*
T0*'
_output_shapes
:���������*
Tshape0
�
0gradients/classification_layers/Softmax_grad/subSubOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency4gradients/classification_layers/Softmax_grad/Reshape*'
_output_shapes
:���������*
T0
�
2gradients/classification_layers/Softmax_grad/mul_1Mul0gradients/classification_layers/Softmax_grad/subclassification_layers/Softmax*
T0*'
_output_shapes
:���������
�
Igradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/classification_layers/Softmax_grad/mul_1*
_output_shapes
:*
T0*
data_formatNHWC
�
Ngradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/classification_layers/Softmax_grad/mul_1J^gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
�
Vgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/classification_layers/Softmax_grad/mul_1O^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*E
_class;
97loc:@gradients/classification_layers/Softmax_grad/mul_1
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
:���������
*
transpose_a( *
T0
�
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense0/dropout/mulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes

:
*
transpose_a(*
T0
�
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������
*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul*
T0
�
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1*
_output_shapes

:

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
Mgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/mul_grad/Shape?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
;gradients/classification_layers/dense0/dropout/mul_grad/mulMulUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense0/dropout/Floor*
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
T0*
_output_shapes
:*
Tshape0
�
=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Mul(classification_layers/dense0/dropout/divUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*
T0*
_output_shapes
:
�
=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1Sum=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Ogradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Agradients/classification_layers/dense0/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
�
Hgradients/classification_layers/dense0/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1
�
Pgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
_output_shapes
:*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape*
T0
�
Rgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1*
T0
�
=gradients/classification_layers/dense0/dropout/div_grad/ShapeShape!classification_layers/dense0/Relu*
_output_shapes
:*
out_type0*
T0
�
?gradients/classification_layers/dense0/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*
T0*
out_type0*#
_output_shapes
:���������
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
;gradients/classification_layers/dense0/dropout/div_grad/SumSum?gradients/classification_layers/dense0/dropout/div_grad/RealDivMgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
?gradients/classification_layers/dense0/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/div_grad/Sum=gradients/classification_layers/dense0/dropout/div_grad/Shape*
T0*'
_output_shapes
:���������
*
Tshape0
�
;gradients/classification_layers/dense0/dropout/div_grad/NegNeg!classification_layers/dense0/Relu*'
_output_shapes
:���������
*
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
Pgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/div_grad/ReshapeI^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape*'
_output_shapes
:���������
*
T0
�
Rgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape_1*
_output_shapes
:
�
9gradients/classification_layers/dense0/Relu_grad/ReluGradReluGradPgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency!classification_layers/dense0/Relu*'
_output_shapes
:���������
*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense0/batch_normalization/batchnorm/mul_1*
T0*
out_type0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

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
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

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
:
*
Tshape0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
valueB:
*
_output_shapes
:*
dtype0
�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense0/batch_normalization/batchnorm/mul*'
_output_shapes
:���������
*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape*'
_output_shapes
:���������
*
Tshape0*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense0/dense/BiasAddhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
_output_shapes
:
*
Tshape0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*
T0
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
T0*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

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
:
*
Tshape0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1*
_output_shapes
:*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*
T0*
_output_shapes
:
*
Tshape0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes
:
*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape*
T0
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1*
_output_shapes
:

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:

�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:

�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape*
_output_shapes
:
*
Tshape0*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense0/batch_normalization/Squeezehgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
_output_shapes
:
*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
_output_shapes
:
*
Tshape0*
T0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape*
_output_shapes
:
*
T0
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1*
_output_shapes
:
*
T0
�
Mgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ShapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Shape*
T0*
_output_shapes

:
*
Tshape0
�
gradients/AddNAddNjgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
T0*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
N*
_output_shapes
:

�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN;classification_layers/dense0/batch_normalization/gamma/read*
_output_shapes
:
*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtgradients/AddN*
T0*
_output_shapes
:

�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*
Tshape0*
_output_shapes
:
*
T0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:
*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape*
T0
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1*
_output_shapes
:
*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeConst*
valueB
*    *
dtype0*
_output_shapes

:

�
Mgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectSelect8classification_layers/dense0/batch_normalization/ReshapeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_like*
T0*
_output_shapes

:

�
Ogradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1Select8classification_layers/dense0/batch_normalization/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Reshape*
T0*
_output_shapes

:

�
Wgradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense0/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1
�
_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
_output_shapes

:
*`
_classV
TRloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select*
T0
�
agradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
_output_shapes

:
*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
T0*
_output_shapes
:

�
Pgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1SumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
T0*
_output_shapes
:
*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1*
_output_shapes
: 
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ShapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Shape*
Tshape0*
_output_shapes

:
*
T0
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
�
Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Shape*
Tshape0*
_output_shapes

:
*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   
   
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
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeReshapePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SumRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape*
_output_shapes

:
*
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
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1ReshapeRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Sum_1Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1*
T0*
_output_shapes

:
*
Tshape0
�
]gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_depsNoOpU^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeW^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1
�
egradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyIdentityTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape*
_output_shapes

:

�
ggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1IdentityVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1^^gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/group_deps*
_output_shapes

:
*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeConst*
valueB
*    *
dtype0*
_output_shapes

:

�
Ogradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense0/batch_normalization/Reshape_1Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_like*
T0*
_output_shapes

:

�
Qgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Reshape*
_output_shapes

:
*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1
�
agradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select*
_output_shapes

:
*
T0
�
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
T0*
_output_shapes

:
*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1
�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

�
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:

�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:

�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
valueB"   
   *
_output_shapes
:*
dtype0
�
fgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/BroadcastGradientArgsBroadcastGradientArgsVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
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
_output_shapes

:
*
Tshape0
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
_output_shapes

:
*
Tshape0*
T0
�
agradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_depsNoOpY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape[^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1
�
igradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependencyIdentityXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshapeb^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*k
_classa
_]loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape*
_output_shapes

:

�
kgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1IdentityZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1b^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/group_deps*
T0*m
_classc
a_loc:@gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Reshape_1*
_output_shapes

:

�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
out_type0*
_output_shapes
:*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
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
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
Zgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRangeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/startSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/SizeZgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/range/delta*
_output_shapes
:*

Tidx0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/FillFillVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_1Ygradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill/value*
T0*
_output_shapes
:
�
\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchDynamicStitchTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/rangeRgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/modTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Fill*#
_output_shapes
:���������*
T0*
N
�
Xgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/MaximumMaximum\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitchXgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordivFloorDivTgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ShapeVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Maximum*
_output_shapes
:*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeReshapeigradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency\gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/DynamicStitch*
Tshape0*
_output_shapes
:*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileTileVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv*

Tmultiples0*
T0*0
_output_shapes
:������������������
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
_output_shapes
:*
out_type0*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Const*
valueB"   
   *
_output_shapes
:*
dtype0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/ProdProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_2Tgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Prod_1ProdVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Shape_3Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
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
Sgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/CastCastYgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truedivRealDivSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/TileSgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/Cast*'
_output_shapes
:���������
*
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

:

�
Tgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1Mulkgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/tuple/control_dependency_1Rgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul*
_output_shapes

:
*
T0
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"   
   
�
ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarVgradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*
T0*'
_output_shapes
:���������

�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradientW^gradients/classification_layers/dense0/batch_normalization/moments/Mean_1_grad/truediv*'
_output_shapes
:���������
*
T0
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/sub*
T0*'
_output_shapes
:���������

�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
T0
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
cgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
Tshape0*
_output_shapes

:
*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes

:

�
jgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg
�
rgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*t
_classj
hfloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape*'
_output_shapes
:���������
*
T0
�
tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
_output_shapes

:
*p
_classf
dbloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg*
T0
�
gradients/AddN_1AddNegradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependencyTgradients/classification_layers/dense0/batch_normalization/moments/Square_grad/mul_1*
N*
T0*
_output_shapes

:
*g
_class]
[Yloc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeShape<classification_layers/dense0/batch_normalization/moments/Sub*
T0*
_output_shapes
:*
out_type0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
�
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addAddWclassification_layers/dense0/batch_normalization/moments/shifted_mean/reduction_indicesYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
T0*
_output_shapes
:
�
Xgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modFloorModXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/addYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size*
T0*
_output_shapes
:
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeRange`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/startYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Size`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/range/delta*

Tidx0*
_output_shapes
:
�
_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/FillFill\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_1_gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill/value*
T0*
_output_shapes
:
�
bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitchDynamicStitchZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/rangeXgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/modZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ShapeYgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Fill*#
_output_shapes
:���������*
N*
T0
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
]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordivFloorDivZgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ReshapeReshapegradients/AddN_1bgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/TileTile\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Reshape]gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Shape<classification_layers/dense0/batch_normalization/moments/Sub*
out_type0*
_output_shapes
:*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3Const*
valueB"   
   *
dtype0*
_output_shapes
:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
Ygradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/ProdProd\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_2Zgradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1Prod\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Shape_3\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
�
^gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1Maximum[gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Prod_1`gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/Maximum_1/y*
_output_shapes
: *
T0
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
:���������

�
Qgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"   
   
�
agradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ShapeSgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Ogradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumSum\gradients/classification_layers/dense0/batch_normalization/moments/shifted_mean_grad/truedivagradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Sgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeReshapeOgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/SumQgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

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

:
*
T0
�
\gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_depsNoOpT^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/ReshapeV^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1
�
dgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependencyIdentitySgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*f
_class\
ZXloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape*'
_output_shapes
:���������
*
T0
�
fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1IdentityUgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1]^gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/group_deps*
_output_shapes

:
*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/Reshape_1*
T0
�
gradients/AddN_2AddNggradients/classification_layers/dense0/batch_normalization/moments/mean_grad/tuple/control_dependency_1tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1fgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency_1*
_output_shapes

:
*
N*i
_class_
][loc:@gradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Reshape_1*
T0
�
gradients/AddN_3AddNhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencydgradients/classification_layers/dense0/batch_normalization/moments/Sub_grad/tuple/control_dependency*
N*
T0*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
�
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
data_formatNHWC*
T0*
_output_shapes
:

�
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_3F^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_3K^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������

�
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:
*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad*
T0
�
?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense0/dense/kernel/read*
transpose_b(*(
_output_shapes
:����������*
transpose_a( *
T0
�
Agradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1MatMulFlatten/ReshapeRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	�
*
transpose_a(
�
Igradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
�
Qgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul*(
_output_shapes
:����������*
T0
�
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1*
_output_shapes
:	�
*
T0
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
VariableV2*
_output_shapes
: *
dtype0*
shape: *
	container *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
shared_name 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
: 
�
beta1_power/readIdentitybeta1_power*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
beta2_power/initial_valueConst*
valueB
 *w�?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
dtype0
�
beta2_power
VariableV2*
_output_shapes
: *
dtype0*
shape: *
	container *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
shared_name 
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
dtype0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�
*    
�
.classification_layers/dense0/dense/kernel/Adam
VariableV2*
	container *
shared_name *
dtype0*
shape:	�
*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*
_output_shapes
:	�
*
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking(
�
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�
*    *
dtype0*
_output_shapes
:	�

�
0classification_layers/dense0/dense/kernel/Adam_1
VariableV2*
	container *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
shape:	�
*
shared_name 
�
7classification_layers/dense0/dense/kernel/Adam_1/AssignAssign0classification_layers/dense0/dense/kernel/Adam_1Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
5classification_layers/dense0/dense/kernel/Adam_1/readIdentity0classification_layers/dense0/dense/kernel/Adam_1*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0
�
>classification_layers/dense0/dense/bias/Adam/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    *
dtype0*
_output_shapes
:

�
,classification_layers/dense0/dense/bias/Adam
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
shape:
*
shared_name 
�
3classification_layers/dense0/dense/bias/Adam/AssignAssign,classification_layers/dense0/dense/bias/Adam>classification_layers/dense0/dense/bias/Adam/Initializer/zeros*
_output_shapes
:
*
validate_shape(*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking(
�
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*
T0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    *
_output_shapes
:
*
dtype0
�
.classification_layers/dense0/dense/bias/Adam_1
VariableV2*
	container *
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
shared_name *
_output_shapes
:
*
shape:

�
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
T0
�
Lclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    
�
:classification_layers/dense0/batch_normalization/beta/Adam
VariableV2*
shared_name *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
	container *
shape:
*
dtype0*
_output_shapes
:

�
Aclassification_layers/dense0/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense0/batch_normalization/beta/AdamLclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zeros*
_output_shapes
:
*
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking(
�
?classification_layers/dense0/batch_normalization/beta/Adam/readIdentity:classification_layers/dense0/batch_normalization/beta/Adam*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
�
Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zerosConst*
_output_shapes
:
*
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    
�
<classification_layers/dense0/batch_normalization/beta/Adam_1
VariableV2*
_output_shapes
:
*
dtype0*
shape:
*
	container *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
shared_name 
�
Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense0/batch_normalization/beta/Adam_1Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zeros*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
Aclassification_layers/dense0/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense0/batch_normalization/beta/Adam_1*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
�
Mclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zerosConst*
_output_shapes
:
*
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*    
�
;classification_layers/dense0/batch_normalization/gamma/Adam
VariableV2*
_output_shapes
:
*
dtype0*
shape:
*
	container *I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
shared_name 
�
Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense0/batch_normalization/gamma/AdamMclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zeros*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
@classification_layers/dense0/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense0/batch_normalization/gamma/Adam*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:

�
Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*    *
dtype0*
_output_shapes
:

�
=classification_layers/dense0/batch_normalization/gamma/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape:
*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
Dclassification_layers/dense0/batch_normalization/gamma/Adam_1/AssignAssign=classification_layers/dense0/batch_normalization/gamma/Adam_1Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zeros*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
Bclassification_layers/dense0/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense0/batch_normalization/gamma/Adam_1*
T0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes

:
*
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
*    
�
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*
shared_name *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
	container *
shape
:
*
dtype0*
_output_shapes

:

�
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes

:

�
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
*    *
_output_shapes

:
*
dtype0
�
4classification_layers/dense_last/dense/kernel/Adam_1
VariableV2*
shape
:
*
_output_shapes

:
*
shared_name *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
dtype0*
	container 
�
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
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
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
validate_shape(*
_output_shapes
:
�
5classification_layers/dense_last/dense/bias/Adam/readIdentity0classification_layers/dense_last/dense/bias/Adam*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
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
9classification_layers/dense_last/dense/bias/Adam_1/AssignAssign2classification_layers/dense_last/dense/bias/Adam_1Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
validate_shape(*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0*
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

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *w�?
Q
Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2
�
?Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense0/dense/kernel.classification_layers/dense0/dense/kernel/Adam0classification_layers/dense0/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0*
use_nesterov( *
use_locking( 
�
=Adam/update_classification_layers/dense0/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense0/dense/bias,classification_layers/dense0/dense/bias/Adam.classification_layers/dense0/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes
:
*
use_nesterov( *:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking( 
�
KAdam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense0/batch_normalization/beta:classification_layers/dense0/batch_normalization/beta/Adam<classification_layers/dense0/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:
*
T0*
use_nesterov( *
use_locking( 
�
LAdam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense0/batch_normalization/gamma;classification_layers/dense0/batch_normalization/gamma/Adam=classification_layers/dense0/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*
_output_shapes
:
*
use_nesterov( *I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0*
use_locking( 
�
CAdam/update_classification_layers/dense_last/dense/kernel/ApplyAdam	ApplyAdam-classification_layers/dense_last/dense/kernel2classification_layers/dense_last/dense/kernel/Adam4classification_layers/dense_last/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:
*
use_nesterov( *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking( 
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
�
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking( 
�
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�	
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign=^classification_layers/dense0/batch_normalization/beta/Assign>^classification_layers/dense0/batch_normalization/gamma/AssignD^classification_layers/dense0/batch_normalization/moving_mean/AssignH^classification_layers/dense0/batch_normalization/moving_variance/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/AssignB^classification_layers/dense0/batch_normalization/beta/Adam/AssignD^classification_layers/dense0/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense0/batch_normalization/gamma/Adam/AssignE^classification_layers/dense0/batch_normalization/gamma/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign""g
	summariesZ
X
Evaluation_layers/accuracy:0
Evaluation_layers/loss:0
Evaluation_layers/accuracy_1:0"�
trainable_variables��
�
+classification_layers/dense0/dense/kernel:00classification_layers/dense0/dense/kernel/Assign0classification_layers/dense0/dense/kernel/read:0
�
)classification_layers/dense0/dense/bias:0.classification_layers/dense0/dense/bias/Assign.classification_layers/dense0/dense/bias/read:0
�
7classification_layers/dense0/batch_normalization/beta:0<classification_layers/dense0/batch_normalization/beta/Assign<classification_layers/dense0/batch_normalization/beta/read:0
�
8classification_layers/dense0/batch_normalization/gamma:0=classification_layers/dense0/batch_normalization/gamma/Assign=classification_layers/dense0/batch_normalization/gamma/read:0
�
/classification_layers/dense_last/dense/kernel:04classification_layers/dense_last/dense/kernel/Assign4classification_layers/dense_last/dense/kernel/read:0
�
-classification_layers/dense_last/dense/bias:02classification_layers/dense_last/dense/bias/Assign2classification_layers/dense_last/dense/bias/read:0"
train_op

Adam"�

update_ops�
�
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg:0
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg_1:0"�
	variables��
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
4classification_layers/dense_last/dense/kernel/Adam:09classification_layers/dense_last/dense/kernel/Adam/Assign9classification_layers/dense_last/dense/kernel/Adam/read:0
�
6classification_layers/dense_last/dense/kernel/Adam_1:0;classification_layers/dense_last/dense/kernel/Adam_1/Assign;classification_layers/dense_last/dense/kernel/Adam_1/read:0
�
2classification_layers/dense_last/dense/bias/Adam:07classification_layers/dense_last/dense/bias/Adam/Assign7classification_layers/dense_last/dense/bias/Adam/read:0
�
4classification_layers/dense_last/dense/bias/Adam_1:09classification_layers/dense_last/dense/bias/Adam_1/Assign9classification_layers/dense_last/dense/bias/Adam_1/read:0�z��r       %:�	ѳ>0�^�A*g
!
Evaluation_layers/accuracyZ� ?

Evaluation_layers/loss촧@
#
Evaluation_layers/accuracy_1Z� ?�`Ut       _gs�	�F0�^�A*g
!
Evaluation_layers/accuracyu� ?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1u� ?��t       _gs�	m,N0�^�A*g
!
Evaluation_layers/accuracyn� ?

Evaluation_layers/loss�,�@
#
Evaluation_layers/accuracy_1n� ?��?t       _gs�	��U0�^�A*g
!
Evaluation_layers/accuracyӲ?

Evaluation_layers/loss#�@
#
Evaluation_layers/accuracy_1Ӳ?V�K�t       _gs�	��]0�^�A*g
!
Evaluation_layers/accuracy�b?

Evaluation_layers/loss�h�@
#
Evaluation_layers/accuracy_1�b??et       _gs�	��e0�^�A*g
!
Evaluation_layers/accuracy�'?

Evaluation_layers/lossУ|@
#
Evaluation_layers/accuracy_1�'?Ϯt       _gs�	��m0�^�A*g
!
Evaluation_layers/accuracy�d?

Evaluation_layers/loss�h@
#
Evaluation_layers/accuracy_1�d?U���t       _gs�	�Iu0�^�A*g
!
Evaluation_layers/accuracya�?

Evaluation_layers/lossv�S@
#
Evaluation_layers/accuracy_1a�?/wj�t       _gs�	��|0�^�A*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss~�@@
#
Evaluation_layers/accuracy_1��?�a!�t       _gs�	��0�^�A	*g
!
Evaluation_layers/accuracyU�?

Evaluation_layers/loss�n/@
#
Evaluation_layers/accuracy_1U�?�A&it       _gs�	ִ�0�^�A
*g
!
Evaluation_layers/accuracyk	?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1k	?*��+t       _gs�	�)�0�^�A*g
!
Evaluation_layers/accuracy-�?

Evaluation_layers/lossʈ@
#
Evaluation_layers/accuracy_1-�?���^t       _gs�	��0�^�A*g
!
Evaluation_layers/accuracyJ�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1J�?bׇ.t       _gs�	#ѯ0�^�A*g
!
Evaluation_layers/accuracyU�?

Evaluation_layers/lossg4
@
#
Evaluation_layers/accuracy_1U�?o"jdt       _gs�	�
�0�^�A*g
!
Evaluation_layers/accuracy��	?

Evaluation_layers/loss�,@
#
Evaluation_layers/accuracy_1��	?��!t       _gs�	�[�0�^�A*g
!
Evaluation_layers/accuracy��	?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��	?#��}t       _gs�	���0�^�A*g
!
Evaluation_layers/accuracy��	?

Evaluation_layers/loss�9@
#
Evaluation_layers/accuracy_1��	?��7�t       _gs�	|0�0�^�A*g
!
Evaluation_layers/accuracy��	?

Evaluation_layers/lossй@
#
Evaluation_layers/accuracy_1��	?ٿ�dt       _gs�	9��0�^�A*g
!
Evaluation_layers/accuracy�"
?

Evaluation_layers/loss>@
#
Evaluation_layers/accuracy_1�"
?Y��t       _gs�	�	�0�^�A*g
!
Evaluation_layers/accuracy
g
?

Evaluation_layers/lossȹ@
#
Evaluation_layers/accuracy_1
g
?�L��t       _gs�	�D�0�^�A*g
!
Evaluation_layers/accuracy/�
?

Evaluation_layers/loss��	@
#
Evaluation_layers/accuracy_1/�
?��t       _gs�	��0�^�A*g
!
Evaluation_layers/accuracy>�
?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1>�
?��яt       _gs�	�� 1�^�A*g
!
Evaluation_layers/accuracya?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1a?N�K\t       _gs�	X1�^�A*g
!
Evaluation_layers/accuracyq;?

Evaluation_layers/losskh@
#
Evaluation_layers/accuracy_1q;?3.�t       _gs�	�z1�^�A*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��?�B�t       _gs�	Gr1�^�A*g
!
Evaluation_layers/accuracy?�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1?�?)a�Mt       _gs�	�{1�^�A*g
!
Evaluation_layers/accuracy=�?

Evaluation_layers/losso"@
#
Evaluation_layers/accuracy_1=�?yj��t       _gs�	w 1�^�A*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�
@
#
Evaluation_layers/accuracy_1��?^��t       _gs�	T&1�^�A*g
!
Evaluation_layers/accuracyP*?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1P*?_$t       _gs�	.f,1�^�A*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossލ@
#
Evaluation_layers/accuracy_1�?��6-t       _gs�	b�<1�^�A*g
!
Evaluation_layers/accuracy.�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1.�?	,t       _gs�	-�B1�^�A*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��?�6�$t       _gs�	l�H1�^�A *g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss� @
#
Evaluation_layers/accuracy_1�?bpo�t       _gs�	֮N1�^�A!*g
!
Evaluation_layers/accuracy4?

Evaluation_layers/loss[��?
#
Evaluation_layers/accuracy_14?��&t       _gs�	T�T1�^�A"*g
!
Evaluation_layers/accuracyv�?

Evaluation_layers/loss<��?
#
Evaluation_layers/accuracy_1v�?N�P�t       _gs�	�Z1�^�A#*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss[^�?
#
Evaluation_layers/accuracy_1�?�tg�t       _gs�	-�`1�^�A$*g
!
Evaluation_layers/accuracy�@?

Evaluation_layers/loss�D�?
#
Evaluation_layers/accuracy_1�@?���wt       _gs�	�g1�^�A%*g
!
Evaluation_layers/accuracy�4?

Evaluation_layers/loss\��?
#
Evaluation_layers/accuracy_1�4?�/D�t       _gs�	xAm1�^�A&*g
!
Evaluation_layers/accuracy�,?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�,?z�}t       _gs�	��s1�^�A'*g
!
Evaluation_layers/accuracy�(?

Evaluation_layers/lossj��?
#
Evaluation_layers/accuracy_1�(?w�Z>t       _gs�	�Ǆ1�^�A(*g
!
Evaluation_layers/accuracy�D?

Evaluation_layers/lossQ��?
#
Evaluation_layers/accuracy_1�D?;��t       _gs�	8�1�^�A)*g
!
Evaluation_layers/accuracy�p?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�p?noF�t       _gs�	.@�1�^�A**g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?��C�t       _gs�	�1�^�A+*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossU/�?
#
Evaluation_layers/accuracy_1�?D\+Xt       _gs�	$Ý1�^�A,*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�?�7�t       _gs�	1�^�A-*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossz��?
#
Evaluation_layers/accuracy_1�?�+bt       _gs�	�*�1�^�A.*g
!
Evaluation_layers/accuracy,?

Evaluation_layers/lossD��?
#
Evaluation_layers/accuracy_1,?o���t       _gs�	�[�1�^�A/*g
!
Evaluation_layers/accuracyUe?

Evaluation_layers/loss#�?
#
Evaluation_layers/accuracy_1Ue?D���t       _gs�	 ��1�^�A0*g
!
Evaluation_layers/accuracyr�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1r�?2i��t       _gs�	�/�1�^�A1*g
!
Evaluation_layers/accuracyx�?

Evaluation_layers/loss�h�?
#
Evaluation_layers/accuracy_1x�?�4t       _gs�	�\�1�^�A2*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��?��#t       _gs�	t��1�^�A3*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�(�?
#
Evaluation_layers/accuracy_1��?j9��t       _gs�	���1�^�A4*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossIQ�?
#
Evaluation_layers/accuracy_1�?$K=�t       _gs�	$)�1�^�A5*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/lossYz�?
#
Evaluation_layers/accuracy_1�5?R�E�t       _gs�	U�1�^�A6*g
!
Evaluation_layers/accuracy�i?

Evaluation_layers/loss10�?
#
Evaluation_layers/accuracy_1�i?�,
t       _gs�	���1�^�A7*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossP{�?
#
Evaluation_layers/accuracy_1�?�gt       _gs�		�1�^�A8*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�h�?
#
Evaluation_layers/accuracy_1�?�mF3t       _gs�	=�1�^�A9*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?�P!�t       _gs�	��2�^�A:*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss{�?
#
Evaluation_layers/accuracy_1�?�,t       _gs�	�2�^�A;*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�G�?
#
Evaluation_layers/accuracy_1�?E+?4t       _gs�	"2�^�A<*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss&��?
#
Evaluation_layers/accuracy_1��?g��Vt       _gs�	1�&2�^�A=*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?���t       _gs�	ɸ.2�^�A>*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�`�?
#
Evaluation_layers/accuracy_1�?��<t       _gs�	�62�^�A?*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��?�
t       _gs�	[>2�^�A@*g
!
Evaluation_layers/accuracy�a?

Evaluation_layers/lossM[�?
#
Evaluation_layers/accuracy_1�a?v�
�t       _gs�	<F2�^�AA*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�D�?
#
Evaluation_layers/accuracy_1�?>[�t       _gs�	��M2�^�AB*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossv��?
#
Evaluation_layers/accuracy_1��?���t       _gs�	m�U2�^�AC*g
!
Evaluation_layers/accuracy�y?

Evaluation_layers/lossA��?
#
Evaluation_layers/accuracy_1�y?�S�;t       _gs�	XZ]2�^�AD*g
!
Evaluation_layers/accuracy�y?

Evaluation_layers/lossʔ�?
#
Evaluation_layers/accuracy_1�y?mۦ!t       _gs�	/?e2�^�AE*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossOX�?
#
Evaluation_layers/accuracy_1�?��nt       _gs�	��z2�^�AF*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?��wFt       _gs�	G_�2�^�AG*g
!
Evaluation_layers/accuracy�Q?

Evaluation_layers/lossLw�?
#
Evaluation_layers/accuracy_1�Q?<��ct       _gs�	m(�2�^�AH*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/lossU9�?
#
Evaluation_layers/accuracy_1�)?�Jy�t       _gs�	��2�^�AI*g
!
Evaluation_layers/accuracy�	?

Evaluation_layers/loss�q�?
#
Evaluation_layers/accuracy_1�	?�h�=t       _gs�	�ٙ2�^�AJ*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss+i�?
#
Evaluation_layers/accuracy_1�?��J�t       _gs�	���2�^�AK*g
!
Evaluation_layers/accuracy�!?

Evaluation_layers/loss�q�?
#
Evaluation_layers/accuracy_1�!?�+�[t       _gs�	�p�2�^�AL*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�%?s�3�t       _gs�	3�2�^�AM*g
!
Evaluation_layers/accuracy�	?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�	?�*�	t       _gs�	��2�^�AN*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�w�?
#
Evaluation_layers/accuracy_1��?2�
`t       _gs�	��2�^�AO*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossf"�?
#
Evaluation_layers/accuracy_1��?ًt       _gs�	0+�2�^�AP*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�7�?
#
Evaluation_layers/accuracy_1��?���t       _gs�	���2�^�AQ*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossv��?
#
Evaluation_layers/accuracy_1��?g(��t       _gs�	Ҳ�2�^�AR*g
!
Evaluation_layers/accuracy�M?

Evaluation_layers/loss�2�?
#
Evaluation_layers/accuracy_1�M?Z��t       _gs�	���2�^�AS*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss+"�?
#
Evaluation_layers/accuracy_1�?�ܳt       _gs�	I�2�^�AT*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/losstp�?
#
Evaluation_layers/accuracy_1�?���t       _gs�	7��2�^�AU*g
!
Evaluation_layers/accuracy�e?

Evaluation_layers/loss �?
#
Evaluation_layers/accuracy_1�e?e~�t       _gs�	�3�^�AV*g
!
Evaluation_layers/accuracy�I?

Evaluation_layers/lossG��?
#
Evaluation_layers/accuracy_1�I?ʟt       _gs�	�3�^�AW*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�+�?
#
Evaluation_layers/accuracy_1�?�*�t       _gs�	��3�^�AX*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss@)�?
#
Evaluation_layers/accuracy_1��?�P*�t       _gs�	o,3�^�AY*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossp��?
#
Evaluation_layers/accuracy_1�?���t       _gs�	�'3�^�AZ*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�?���t       _gs�	g�-3�^�A[*g
!
Evaluation_layers/accuracy@J?

Evaluation_layers/loss�7�?
#
Evaluation_layers/accuracy_1@J?�P��t       _gs�	�43�^�A\*g
!
Evaluation_layers/accuracy#?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1#?��]�t       _gs�	{N:3�^�A]*g
!
Evaluation_layers/accuracye�?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1e�?�*f{t       _gs�	�.@3�^�A^*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossڒ�?
#
Evaluation_layers/accuracy_1��?cF�vt       _gs�	TF3�^�A_*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�c�?
#
Evaluation_layers/accuracy_1�?�`�At       _gs�	��K3�^�A`*g
!
Evaluation_layers/accuracy�b?

Evaluation_layers/loss+�?
#
Evaluation_layers/accuracy_1�b?u�y�t       _gs�	T�Q3�^�Aa*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�?H1�xt       _gs�	��W3�^�Ab*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss&�?
#
Evaluation_layers/accuracy_1��?@W�1t       _gs�	P�]3�^�Ac*g
!
Evaluation_layers/accuracy>W?

Evaluation_layers/loss0��?
#
Evaluation_layers/accuracy_1>W?~��t       _gs�	�o3�^�Ad*g
!
Evaluation_layers/accuracy5C?

Evaluation_layers/lossn��?
#
Evaluation_layers/accuracy_15C?�t       _gs�	�jv3�^�Ae*g
!
Evaluation_layers/accuracyV�?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1V�?T`�t       _gs�	�|3�^�Af*g
!
Evaluation_layers/accuracyg�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1g�?�G�Dt       _gs�	�˂3�^�Ag*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�(�?
#
Evaluation_layers/accuracy_1�?���t       _gs�	���3�^�Ah*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��?侷Lt       _gs�	�
�3�^�Ai*g
!
Evaluation_layers/accuracy�#?

Evaluation_layers/loss�_�?
#
Evaluation_layers/accuracy_1�#?�%At       _gs�	n�3�^�Aj*g
!
Evaluation_layers/accuracyߣ?

Evaluation_layers/loss�Z�?
#
Evaluation_layers/accuracy_1ߣ?�MBt       _gs�	���3�^�Ak*g
!
Evaluation_layers/accuracy?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1?$Nt       _gs�	���3�^�Al*g
!
Evaluation_layers/accuracy?

Evaluation_layers/lossb��?
#
Evaluation_layers/accuracy_1?Nx�t       _gs�	���3�^�Am*g
!
Evaluation_layers/accuracyBp?

Evaluation_layers/lossic�?
#
Evaluation_layers/accuracy_1Bp?%��t       _gs�	^�3�^�An*g
!
Evaluation_layers/accuracy^�?

Evaluation_layers/lossv�?
#
Evaluation_layers/accuracy_1^�?� t       _gs�	���3�^�Ao*g
!
Evaluation_layers/accuracyu�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1u�?��_}t       _gs�	L��3�^�Ap*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss�c�?
#
Evaluation_layers/accuracy_1� ?f�Lpt       _gs�	b��3�^�Aq*g
!
Evaluation_layers/accuracy�t?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�t?/w0t       _gs�	AY�3�^�Ar*g
!
Evaluation_layers/accuracy�@?

Evaluation_layers/lossG��?
#
Evaluation_layers/accuracy_1�@?E�+t       _gs�	r8�3�^�As*g
!
Evaluation_layers/accuracy�`?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�`?Z=��t       _gs�	�i�3�^�At*g
!
Evaluation_layers/accuracy?

Evaluation_layers/loss+��?
#
Evaluation_layers/accuracy_1?t       _gs�	���3�^�Au*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��?�"ft       _gs�	Dy�3�^�Av*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossK�?
#
Evaluation_layers/accuracy_1��?�$��t       _gs�	_�3�^�Aw*g
!
Evaluation_layers/accuracy1]?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_11]?U�Vt       _gs�	�q4�^�Ax*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?�F�t       _gs�	�Y4�^�Ay*g
!
Evaluation_layers/accuracy"=?

Evaluation_layers/lossx��?
#
Evaluation_layers/accuracy_1"=?ԯBt       _gs�	��4�^�Az*g
!
Evaluation_layers/accuracyF�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1F�?:��=t       _gs�	�j4�^�A{*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss
�?
#
Evaluation_layers/accuracy_1�?��$�t       _gs�		�4�^�A|*g
!
Evaluation_layers/accuracyX�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1X�?�m�Pt       _gs�	Z&4�^�A}*g
!
Evaluation_layers/accuracy?y?

Evaluation_layers/loss)��?
#
Evaluation_layers/accuracy_1?y?��oAt       _gs�	��-4�^�A~*g
!
Evaluation_layers/accuracy9m?

Evaluation_layers/lossn�?
#
Evaluation_layers/accuracy_19m?�g�t       _gs�	m�54�^�A*g
!
Evaluation_layers/accuracy;q?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1;q?�'z�u       ��Ax	��<4�^�A�*g
!
Evaluation_layers/accuracyZ�?

Evaluation_layers/loss4_�?
#
Evaluation_layers/accuracy_1Z�?��b�u       ��Ax	�C4�^�A�*g
!
Evaluation_layers/accuracy/Y?

Evaluation_layers/lossS��?
#
Evaluation_layers/accuracy_1/Y?�t�u       ��Ax	4b]4�^�A�*g
!
Evaluation_layers/accuracyi�?

Evaluation_layers/lossI��?
#
Evaluation_layers/accuracy_1i�?)��u       ��Ax	 �d4�^�A�*g
!
Evaluation_layers/accuracyN�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1N�?�5�u       ��Ax	��k4�^�A�*g
!
Evaluation_layers/accuracyZ�?

Evaluation_layers/lossa&�?
#
Evaluation_layers/accuracy_1Z�?κi4u       ��Ax	's4�^�A�*g
!
Evaluation_layers/accuracy7i?

Evaluation_layers/losskQ�?
#
Evaluation_layers/accuracy_17i?T��?u       ��Ax	�>z4�^�A�*g
!
Evaluation_layers/accuracyA}?

Evaluation_layers/loss׏�?
#
Evaluation_layers/accuracy_1A}?G Mu       ��Ax	4�^�A�*g
!
Evaluation_layers/accuracy%?

Evaluation_layers/loss�i�?
#
Evaluation_layers/accuracy_1%?8��u       ��Ax	���4�^�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?�	�u       ��Ax	�{�4�^�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss8�?
#
Evaluation_layers/accuracy_1��?z�֙u       ��Ax	��4�^�A�*g
!
Evaluation_layers/accuracy'I?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1'I?��zu       ��Ax	��4�^�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�\�?
#
Evaluation_layers/accuracy_1��?9��u       ��Ax	�4�^�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss9��?
#
Evaluation_layers/accuracy_1�?$���u       ��Ax	�r�4�^�A�*g
!
Evaluation_layers/accuracy"=?

Evaluation_layers/loss{J�?
#
Evaluation_layers/accuracy_1"=? q�u       ��Ax	���4�^�A�*g
!
Evaluation_layers/accuracy�l?

Evaluation_layers/loss�)�?
#
Evaluation_layers/accuracy_1�l?��gfu       ��Ax	�8�4�^�A�*g
!
Evaluation_layers/accuracy�@?

Evaluation_layers/lossn�?
#
Evaluation_layers/accuracy_1�@?)��hu       ��Ax	ei�4�^�A�*g
!
Evaluation_layers/accuracy�p?

Evaluation_layers/lossb�?
#
Evaluation_layers/accuracy_1�p?q�_u       ��Ax	�:�4�^�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossM)�?
#
Evaluation_layers/accuracy_1�?�Vu       ��Ax	�4�^�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�h�?
#
Evaluation_layers/accuracy_1�?o��au       ��Ax	�*�4�^�A�*g
!
Evaluation_layers/accuracye�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1e�?��u       ��Ax	^y�4�^�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�4�?
#
Evaluation_layers/accuracy_1��?O]i�u       ��Ax	���4�^�A�*g
!
Evaluation_layers/accuracyu�?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1u�?Ģ��u       ��Ax	v�5�^�A�*g
!
Evaluation_layers/accuracyT�?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1T�?z<u       ��Ax	��5�^�A�*g
!
Evaluation_layers/accuracyy�?

Evaluation_layers/lossǚ�?
#
Evaluation_layers/accuracy_1y�?Z u       ��Ax	��5�^�A�*g
!
Evaluation_layers/accuracyX�?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1X�?'le^u       ��Ax	��5�^�A�*g
!
Evaluation_layers/accuracy�t?

Evaluation_layers/lossJ�?
#
Evaluation_layers/accuracy_1�t?� ��u       ��Ax	�%5�^�A�*g
!
Evaluation_layers/accuracyo�?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1o�?��L\u       ��Ax	
+5�^�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss>.�?
#
Evaluation_layers/accuracy_1�?/�q6u       ��Ax	��05�^�A�*g
!
Evaluation_layers/accuracyL�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1L�?z�_�u       ��Ax	��65�^�A�*g
!
Evaluation_layers/accuracy}�?

Evaluation_layers/loss=��?
#
Evaluation_layers/accuracy_1}�?���u       ��Ax	��<5�^�A�*g
!
Evaluation_layers/accuracy_�?

Evaluation_layers/loss�'�?
#
Evaluation_layers/accuracy_1_�?��u       ��Ax	"�B5�^�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss@��?
#
Evaluation_layers/accuracy_1� ?j)��u       ��Ax	��S5�^�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss_�?
#
Evaluation_layers/accuracy_1��?\L�Iu       ��Ax	�Y5�^�A�*g
!
Evaluation_layers/accuracy֠?

Evaluation_layers/lossZ\�?
#
Evaluation_layers/accuracy_1֠?غNu       ��Ax	?y_5�^�A�*g
!
Evaluation_layers/accuracyؤ?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1ؤ?��l�u       ��Ax	:be5�^�A�*g
!
Evaluation_layers/accuracyA}?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1A}?ckb�u       ��Ax	"�k5�^�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�:�?
#
Evaluation_layers/accuracy_1��?����u       ��Ax	�xq5�^�A�*g
!
Evaluation_layers/accuracy}�?

Evaluation_layers/lossI��?
#
Evaluation_layers/accuracy_1}�?�#�u       ��Ax	��w5�^�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��?�!��u       ��Ax	b4~5�^�A�*g
!
Evaluation_layers/accuracy�@?

Evaluation_layers/loss�:�?
#
Evaluation_layers/accuracy_1�@?��}�u       ��Ax	v_�5�^�A�*g
!
Evaluation_layers/accuracy1]?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_11]?�+iMu       ��Ax	 c�5�^�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/lossC?�?
#
Evaluation_layers/accuracy_1�� ?��ދu       ��Ax	���5�^�A�*g
!
Evaluation_layers/accuracyÉ ?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1É ?��!u       ��Ax	ת�5�^�A�*g
!
Evaluation_layers/accuracyX�!?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1X�!?�ϛ�u       ��Ax	�٧5�^�A�*g
!
Evaluation_layers/accuracy�&"?

Evaluation_layers/lossL��?
#
Evaluation_layers/accuracy_1�&"?{�8u       ��Ax	%ŭ5�^�A�*g
!
Evaluation_layers/accuracy�:"?

Evaluation_layers/lossI��?
#
Evaluation_layers/accuracy_1�:"?�?�u       ��Ax	���5�^�A�*g
!
Evaluation_layers/accuracyh�#?

Evaluation_layers/lossb?�?
#
Evaluation_layers/accuracy_1h�#?֖ԡu       ��Ax	���5�^�A�*g
!
Evaluation_layers/accuracyI�#?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1I�#?�/IGu       ��Ax	fl�5�^�A�*g
!
Evaluation_layers/accuracyT%?

Evaluation_layers/loss袾?
#
Evaluation_layers/accuracy_1T%?5�\�u       ��Ax	�K�5�^�A�*g
!
Evaluation_layers/accuracyX�#?

Evaluation_layers/lossԾ?
#
Evaluation_layers/accuracy_1X�#?u�u       ��Ax	Y7�5�^�A�*g
!
Evaluation_layers/accuracy�W$?

Evaluation_layers/loss+ֿ?
#
Evaluation_layers/accuracy_1�W$?�T�u       ��Ax	�5�^�A�*g
!
Evaluation_layers/accuracy�S$?

Evaluation_layers/loss)ؿ?
#
Evaluation_layers/accuracy_1�S$?Cn�9u       ��Ax	߯�5�^�A�*g
!
Evaluation_layers/accuracyt$?

Evaluation_layers/loss<�?
#
Evaluation_layers/accuracy_1t$?�⯭u       ��Ax	/��5�^�A�*g
!
Evaluation_layers/accuracy@%?

Evaluation_layers/loss�۾?
#
Evaluation_layers/accuracy_1@%?	�Vgu       ��Ax	ۖ�5�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�"�?
#
Evaluation_layers/accuracy_1��$?�+�u       ��Ax	�m�5�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/lossQ�?
#
Evaluation_layers/accuracy_1�%?��y�u       ��Ax	8�5�^�A�*g
!
Evaluation_layers/accuracyG�%?

Evaluation_layers/lossRc�?
#
Evaluation_layers/accuracy_1G�%?�6{�u       ��Ax	��5�^�A�*g
!
Evaluation_layers/accuracy6�%?

Evaluation_layers/lossK�?
#
Evaluation_layers/accuracy_16�%?����u       ��Ax	��6�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss+�?
#
Evaluation_layers/accuracy_1�%?ۊ�Wu       ��Ax	�j6�^�A�*g
!
Evaluation_layers/accuracy^�%?

Evaluation_layers/losseg�?
#
Evaluation_layers/accuracy_1^�%?<�u       ��Ax	ɣ6�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�\�?
#
Evaluation_layers/accuracy_1��$?6�WQu       ��Ax	��6�^�A�*g
!
Evaluation_layers/accuracyT%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1T%?Z��u       ��Ax	�/6�^�A�*g
!
Evaluation_layers/accuracy2�%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_12�%?_��u       ��Ax	>�66�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss.��?
#
Evaluation_layers/accuracy_1�%?!X�u       ��Ax	R>6�^�A�*g
!
Evaluation_layers/accuracy*�%?

Evaluation_layers/loss읾?
#
Evaluation_layers/accuracy_1*�%?�Dr|u       ��Ax	7E6�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/lossZ��?
#
Evaluation_layers/accuracy_1�%?�F�u       ��Ax	D�L6�^�A�*g
!
Evaluation_layers/accuracy`%?

Evaluation_layers/loss<��?
#
Evaluation_layers/accuracy_1`%?�EX�u       ��Ax	�S6�^�A�*g
!
Evaluation_layers/accuracyI�%?

Evaluation_layers/loss�A�?
#
Evaluation_layers/accuracy_1I�%?".�u       ��Ax	/[6�^�A�*g
!
Evaluation_layers/accuracy�[$?

Evaluation_layers/loss�N�?
#
Evaluation_layers/accuracy_1�[$?nC5u       ��Ax	'fb6�^�A�*g
!
Evaluation_layers/accuracy8�%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_18�%?M��u       ��Ax	�+j6�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossk߾?
#
Evaluation_layers/accuracy_1��$?bvj�u       ��Ax	��q6�^�A�*g
!
Evaluation_layers/accuracyf�#?

Evaluation_layers/lossy۾?
#
Evaluation_layers/accuracy_1f�#?�V�?u       ��Ax	�Ć6�^�A�*g
!
Evaluation_layers/accuracy�o$?

Evaluation_layers/losst��?
#
Evaluation_layers/accuracy_1�o$?�V�u       ��Ax	���6�^�A�*g
!
Evaluation_layers/accuracyA�#?

Evaluation_layers/loss�p�?
#
Evaluation_layers/accuracy_1A�#?je�u       ��Ax	��6�^�A�*g
!
Evaluation_layers/accuracy$?

Evaluation_layers/losso��?
#
Evaluation_layers/accuracy_1$?N̪�u       ��Ax	ߨ�6�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss{ξ?
#
Evaluation_layers/accuracy_1��$?H� �u       ��Ax	�գ6�^�A�*g
!
Evaluation_layers/accuracy$c#?

Evaluation_layers/loss3x�?
#
Evaluation_layers/accuracy_1$c#?���du       ��Ax	��6�^�A�*g
!
Evaluation_layers/accuracyv$?

Evaluation_layers/lossb�?
#
Evaluation_layers/accuracy_1v$?tC <u       ��Ax	�C�6�^�A�*g
!
Evaluation_layers/accuracy�B"?

Evaluation_layers/lossi��?
#
Evaluation_layers/accuracy_1�B"?�P�u       ��Ax	���6�^�A�*g
!
Evaluation_layers/accuracy`�#?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1`�#?��{�u       ��Ax	@��6�^�A�*g
!
Evaluation_layers/accuracy(k#?

Evaluation_layers/loss6k�?
#
Evaluation_layers/accuracy_1(k#?��ͫu       ��Ax	!O�6�^�A�*g
!
Evaluation_layers/accuracyE�!?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1E�!?{�
u       ��Ax	���6�^�A�*g
!
Evaluation_layers/accuracyy"?

Evaluation_layers/lossO}�?
#
Evaluation_layers/accuracy_1y"?@-��u       ��Ax	�1�6�^�A�*g
!
Evaluation_layers/accuracyG#?

Evaluation_layers/loss ��?
#
Evaluation_layers/accuracy_1G#?�`��u       ��Ax	I��6�^�A�*g
!
Evaluation_layers/accuracyG�!?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1G�!?m�}du       ��Ax	��6�^�A�*g
!
Evaluation_layers/accuracyͮ"?

Evaluation_layers/lossdS�?
#
Evaluation_layers/accuracy_1ͮ"?�͌du       ��Ax	��6�^�A�*g
!
Evaluation_layers/accuracys�!?

Evaluation_layers/loss�6�?
#
Evaluation_layers/accuracy_1s�!?���u       ��Ax	1e7�^�A�*g
!
Evaluation_layers/accuracyV�!?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1V�!?:Q�u       ��Ax	��	7�^�A�*g
!
Evaluation_layers/accuracy-f!?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1-f!?��eu       ��Ax	�	7�^�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�"?��^�u       ��Ax	=7�^�A�*g
!
Evaluation_layers/accuracyܽ ?

Evaluation_layers/loss`��?
#
Evaluation_layers/accuracy_1ܽ ?W� u       ��Ax	(�7�^�A�*g
!
Evaluation_layers/accuracy�1 ?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�1 ?�d2�u       ��Ax	�,7�^�A�*g
!
Evaluation_layers/accuracyd�?

Evaluation_layers/lossz��?
#
Evaluation_layers/accuracy_1d�?��<u       ��Ax	[�27�^�A�*g
!
Evaluation_layers/accuracy�:"?

Evaluation_layers/loss�h�?
#
Evaluation_layers/accuracy_1�:"?ϭ�u       ��Ax	|�87�^�A�*g
!
Evaluation_layers/accuracy$R!?

Evaluation_layers/lossA4�?
#
Evaluation_layers/accuracy_1$R!?e�Pu       ��Ax	k*?7�^�A�*g
!
Evaluation_layers/accuracyB!?

Evaluation_layers/loss?��?
#
Evaluation_layers/accuracy_1B!?��F<u       ��Ax	dPE7�^�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss5�?
#
Evaluation_layers/accuracy_1�� ?Ϗ�cu       ��Ax	h5K7�^�A�*g
!
Evaluation_layers/accuracy�u ?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�u ?0�u       ��Ax	�Q7�^�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss�8�?
#
Evaluation_layers/accuracy_1�� ?�;hu       ��Ax	�W7�^�A�*g
!
Evaluation_layers/accuracy�i ?

Evaluation_layers/lossC��?
#
Evaluation_layers/accuracy_1�i ?�ڒ�u       ��Ax	�]7�^�A�*g
!
Evaluation_layers/accuracy�5 ?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1�5 ?m�0u       ��Ax	
�b7�^�A�*g
!
Evaluation_layers/accuracyT�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1T�?�Oau       ��Ax	E
t7�^�A�*g
!
Evaluation_layers/accuracy?y?

Evaluation_layers/loss�E�?
#
Evaluation_layers/accuracy_1?y?vU�Lu       ��Ax	��y7�^�A�*g
!
Evaluation_layers/accuracy�	 ?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�	 ?g+�u       ��Ax	[�7�^�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�X�?
#
Evaluation_layers/accuracy_1�?��C�u       ��Ax	l��7�^�A�*g
!
Evaluation_layers/accuracy�p?

Evaluation_layers/loss�I�?
#
Evaluation_layers/accuracy_1�p?}1��u       ��Ax	���7�^�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�P�?
#
Evaluation_layers/accuracy_1��?��2u       ��Ax	��7�^�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��?;)K�u       ��Ax	4L�7�^�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossnJ�?
#
Evaluation_layers/accuracy_1��?�׭�u       ��Ax	C$�7�^�A�*g
!
Evaluation_layers/accuracy%E?

Evaluation_layers/loss�S�?
#
Evaluation_layers/accuracy_1%E?��աu       ��Ax	���7�^�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�o�?
#
Evaluation_layers/accuracy_1�?���Eu       ��Ax	�Ѩ7�^�A�*g
!
Evaluation_layers/accuracyy"?

Evaluation_layers/loss� �?
#
Evaluation_layers/accuracy_1y"?RU-u       ��Ax	��7�^�A�*g
!
Evaluation_layers/accuracyG�#?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1G�#?PxV&u       ��Ax	��7�^�A�*g
!
Evaluation_layers/accuracy;�#?

Evaluation_layers/loss�J�?
#
Evaluation_layers/accuracy_1;�#?�/&�u       ��Ax	���7�^�A�*g
!
Evaluation_layers/accuracyv$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1v$?��_u       ��Ax	
��7�^�A�*g
!
Evaluation_layers/accuracyH%?

Evaluation_layers/lossN��?
#
Evaluation_layers/accuracy_1H%?�C�Ou       ��Ax	E��7�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/lossio�?
#
Evaluation_layers/accuracy_1�%?��F~u       ��Ax	�S�7�^�A�*g
!
Evaluation_layers/accuracyw$?

Evaluation_layers/loss=��?
#
Evaluation_layers/accuracy_1w$?�Y�u       ��Ax	63�7�^�A�*g
!
Evaluation_layers/accuracy˻$?

Evaluation_layers/loss�c�?
#
Evaluation_layers/accuracy_1˻$?wU�bu       ��Ax	�7�^�A�*g
!
Evaluation_layers/accuracyë$?

Evaluation_layers/loss�x�?
#
Evaluation_layers/accuracy_1ë$?;擲u       ��Ax	���7�^�A�*g
!
Evaluation_layers/accuracy�'$?

Evaluation_layers/loss=Y�?
#
Evaluation_layers/accuracy_1�'$?ڈɍu       ��Ax	
�7�^�A�*g
!
Evaluation_layers/accuracyM�#?

Evaluation_layers/loss�X�?
#
Evaluation_layers/accuracy_1M�#?�n��u       ��Ax	h[8�^�A�*g
!
Evaluation_layers/accuracy=�%?

Evaluation_layers/lossa�?
#
Evaluation_layers/accuracy_1=�%?�^H�u       ��Ax	R�8�^�A�*g
!
Evaluation_layers/accuracy�;$?

Evaluation_layers/losss�?
#
Evaluation_layers/accuracy_1�;$?Bȸ:u       ��Ax	I8�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossl��?
#
Evaluation_layers/accuracy_1��$?E�2u       ��Ax	n�8�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossN��?
#
Evaluation_layers/accuracy_1��$?�i�Ju       ��Ax	X8�^�A�*g
!
Evaluation_layers/accuracy˻$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1˻$?9�~�u       ��Ax	�J&8�^�A�*g
!
Evaluation_layers/accuracyD%?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1D%?���u       ��Ax	��-8�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss?��?
#
Evaluation_layers/accuracy_1��$?��� u       ��Ax	��48�^�A�*g
!
Evaluation_layers/accuracy�k$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�k$?��Dtu       ��Ax	)<8�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��$?T~�%u       ��Ax	�wC8�^�A�*g
!
Evaluation_layers/accuracyd�#?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1d�#?�>�2u       ��Ax	��X8�^�A�*g
!
Evaluation_layers/accuracyë$?

Evaluation_layers/losstF�?
#
Evaluation_layers/accuracy_1ë$?i	�u       ��Ax	�`8�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss@9�?
#
Evaluation_layers/accuracy_1�%?x+�u       ��Ax	�dg8�^�A�*g
!
Evaluation_layers/accuracy�K$?

Evaluation_layers/lossNT�?
#
Evaluation_layers/accuracy_1�K$?�Pu       ��Ax	]�n8�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/lossd��?
#
Evaluation_layers/accuracy_1�%?�\ u       ��Ax	 �v8�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�%?�v2u       ��Ax	��}8�^�A�*g
!
Evaluation_layers/accuracy�c$?

Evaluation_layers/loss#��?
#
Evaluation_layers/accuracy_1�c$?$�{�u       ��Ax	�C�8�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss;��?
#
Evaluation_layers/accuracy_1��$?W��Zu       ��Ax	���8�^�A�*g
!
Evaluation_layers/accuracyɷ$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1ɷ$?��u       ��Ax	���8�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�%?�K�u       ��Ax	p��8�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�~�?
#
Evaluation_layers/accuracy_1��$?&aAu       ��Ax	�y�8�^�A�*g
!
Evaluation_layers/accuracyh%?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1h%?ՁPu       ��Ax	0��8�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1�%?�'u�u       ��Ax	�;8�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��$?t2��u       ��Ax	�9�8�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss�D�?
#
Evaluation_layers/accuracy_1�%?�	إu       ��Ax	���8�^�A�*g
!
Evaluation_layers/accuracy�w$?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�w$?ٛ��u       ��Ax	N�8�^�A�*g
!
Evaluation_layers/accuracy�o$?

Evaluation_layers/losso4�?
#
Evaluation_layers/accuracy_1�o$?F��u       ��Ax	�K�8�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss3�?
#
Evaluation_layers/accuracy_1��$?�lEu       ��Ax	���8�^�A�*g
!
Evaluation_layers/accuracyP%?

Evaluation_layers/loss
��?
#
Evaluation_layers/accuracy_1P%?���u       ��Ax	�8�^�A�*g
!
Evaluation_layers/accuracy�o$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�o$?���u       ��Ax	Qo�8�^�A�*g
!
Evaluation_layers/accuracyM�%?

Evaluation_layers/lossX��?
#
Evaluation_layers/accuracy_1M�%?���$u       ��Ax	-�9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�}�?
#
Evaluation_layers/accuracy_1��$?��tu       ��Ax	�9�^�A�*g
!
Evaluation_layers/accuracy�#%?

Evaluation_layers/loss�D�?
#
Evaluation_layers/accuracy_1�#%?*+��u       ��Ax	��9�^�A�*g
!
Evaluation_layers/accuracyP%?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1P%?�:��u       ��Ax	79�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossߩ�?
#
Evaluation_layers/accuracy_1��$?:�/u       ��Ax	�C!9�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�%?���hu       ��Ax	'9�^�A�*g
!
Evaluation_layers/accuracyL%?

Evaluation_layers/loss�<�?
#
Evaluation_layers/accuracy_1L%?"��u       ��Ax	��,9�^�A�*g
!
Evaluation_layers/accuracyǳ$?

Evaluation_layers/loss)��?
#
Evaluation_layers/accuracy_1ǳ$?�u       ��Ax	|�29�^�A�*g
!
Evaluation_layers/accuracyP%?

Evaluation_layers/loss[�?
#
Evaluation_layers/accuracy_1P%?)��Ru       ��Ax	�89�^�A�*g
!
Evaluation_layers/accuracy�K$?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�K$?�!Gu       ��Ax	gT>9�^�A�*g
!
Evaluation_layers/accuracyH%?

Evaluation_layers/loss�}�?
#
Evaluation_layers/accuracy_1H%??�ܾu       ��Ax	"�P9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss3�?
#
Evaluation_layers/accuracy_1��$?����u       ��Ax	��V9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossK��?
#
Evaluation_layers/accuracy_1��$?�=}u       ��Ax	8�\9�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss0<�?
#
Evaluation_layers/accuracy_1�%?6�u       ��Ax	^�b9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��$?����u       ��Ax	�\h9�^�A�*g
!
Evaluation_layers/accuracyH%?

Evaluation_layers/lossS��?
#
Evaluation_layers/accuracy_1H%?ڽ�eu       ��Ax	2n9�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�%?w�#�u       ��Ax	�It9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��$?c$�u       ��Ax	Џz9�^�A�*g
!
Evaluation_layers/accuracy8%?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_18%?���3u       ��Ax	䑀9�^�A�*g
!
Evaluation_layers/accuracyͿ$?

Evaluation_layers/loss�s�?
#
Evaluation_layers/accuracy_1Ϳ$?g�;u       ��Ax	Rh�9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss3�?
#
Evaluation_layers/accuracy_1��$?V��Xu       ��Ax	ٗ9�^�A�*g
!
Evaluation_layers/accuracyT%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1T%?%�(u       ��Ax	���9�^�A�*g
!
Evaluation_layers/accuracyɷ$?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1ɷ$?j�u       ��Ax	Bi�9�^�A�*g
!
Evaluation_layers/accuracy`%?

Evaluation_layers/loss'�?
#
Evaluation_layers/accuracy_1`%?��B|u       ��Ax	�,�9�^�A�*g
!
Evaluation_layers/accuracy[�%?

Evaluation_layers/lossI��?
#
Evaluation_layers/accuracy_1[�%?���\u       ��Ax	��9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��$?���du       ��Ax	��9�^�A�*g
!
Evaluation_layers/accuracy�'%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�'%?^�9�u       ��Ax	RȺ9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/losso�?
#
Evaluation_layers/accuracy_1��$?���u       ��Ax	��9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�/�?
#
Evaluation_layers/accuracy_1��$?�ј�u       ��Ax	�z�9�^�A�*g
!
Evaluation_layers/accuracyQ�%?

Evaluation_layers/loss�$�?
#
Evaluation_layers/accuracy_1Q�%?E�u       ��Ax	�Q�9�^�A�*g
!
Evaluation_layers/accuracy�_$?

Evaluation_layers/loss Q�?
#
Evaluation_layers/accuracy_1�_$?"�[u       ��Ax	��9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss=d�?
#
Evaluation_layers/accuracy_1��$?{�Zu       ��Ax	l��9�^�A�*g
!
Evaluation_layers/accuracy6�%?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_16�%?�`&vu       ��Ax	���9�^�A�*g
!
Evaluation_layers/accuracyǳ$?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1ǳ$?8˧/u       ��Ax	���9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�?�?
#
Evaluation_layers/accuracy_1��$?�_�su       ��Ax	���9�^�A�*g
!
Evaluation_layers/accuracyM�%?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1M�%?��z�u       ��Ax	��9�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss]{�?
#
Evaluation_layers/accuracy_1��$?�7H�u       ��Ax	�m:�^�A�*g
!
Evaluation_layers/accuracyK�%?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1K�%?�ʳu       ��Ax	�_:�^�A�*g
!
Evaluation_layers/accuracyG�%?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1G�%?��0xu       ��Ax	�4:�^�A�*g
!
Evaluation_layers/accuracyO�%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1O�%?�	)u       ��Ax	�:�^�A�*g
!
Evaluation_layers/accuracyX%?

Evaluation_layers/loss$X�?
#
Evaluation_layers/accuracy_1X%?<�:$u       ��Ax	9Z-:�^�A�*g
!
Evaluation_layers/accuracyM�%?

Evaluation_layers/loss*J�?
#
Evaluation_layers/accuracy_1M�%?�Ru       ��Ax	��4:�^�A�*g
!
Evaluation_layers/accuracyx &?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1x &?�
u       ��Ax	��;:�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�T�?
#
Evaluation_layers/accuracy_1��$?��u       ��Ax	�,C:�^�A�*g
!
Evaluation_layers/accuracy�p&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�p&?=��u       ��Ax	7ZJ:�^�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��$?�E�u       ��Ax	%�Q:�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�K�?
#
Evaluation_layers/accuracy_1��&?���u       ��Ax	f�X:�^�A�*g
!
Evaluation_layers/accuracy(|%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1(|%?T���u       ��Ax	�.`:�^�A�*g
!
Evaluation_layers/accuracyh%?

Evaluation_layers/lossg�?
#
Evaluation_layers/accuracy_1h%?�L}su       ��Ax	$<g:�^�A�*g
!
Evaluation_layers/accuracy�p&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�p&?jXy�u       ��Ax	.rn:�^�A�*g
!
Evaluation_layers/accuracy@%?

Evaluation_layers/lossZ��?
#
Evaluation_layers/accuracy_1@%?��u       ��Ax	��:�^�A�*g
!
Evaluation_layers/accuracy.�%?

Evaluation_layers/lossd��?
#
Evaluation_layers/accuracy_1.�%?xo*[u       ��Ax	�V�:�^�A�*g
!
Evaluation_layers/accuracyW�%?

Evaluation_layers/lossg��?
#
Evaluation_layers/accuracy_1W�%? M��u       ��Ax	6��:�^�A�*g
!
Evaluation_layers/accuracy^�%?

Evaluation_layers/loss)�?
#
Evaluation_layers/accuracy_1^�%?
���u       ��Ax	��:�^�A�*g
!
Evaluation_layers/accuracy?�%?

Evaluation_layers/lossf'�?
#
Evaluation_layers/accuracy_1?�%?����u       ��Ax	k�:�^�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss�\�?
#
Evaluation_layers/accuracy_1�%?���u       ��Ax	���:�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��&?��u       ��Ax	��:�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss{��?
#
Evaluation_layers/accuracy_1��&?-��u       ��Ax	2�:�^�A�*g
!
Evaluation_layers/accuracy,%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1,%?�x�u       ��Ax	Kt�:�^�A�*g
!
Evaluation_layers/accuracy�h&?

Evaluation_layers/loss�>�?
#
Evaluation_layers/accuracy_1�h&?�UBu       ��Ax	��:�^�A�*g
!
Evaluation_layers/accuracyv&?

Evaluation_layers/loss�=�?
#
Evaluation_layers/accuracy_1v&?�p�u       ��Ax	���:�^�A�*g
!
Evaluation_layers/accuracy� '?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1� '?�^��u       ��Ax	+��:�^�A�*g
!
Evaluation_layers/accuracy0&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_10&?�
yu       ��Ax	���:�^�A�*g
!
Evaluation_layers/accuracy�0'?

Evaluation_layers/loss4��?
#
Evaluation_layers/accuracy_1�0'?Ct�Pu       ��Ax	Vc�:�^�A�*g
!
Evaluation_layers/accuracy$t%?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1$t%?W>#u       ��Ax	���:�^�A�*g
!
Evaluation_layers/accuracy�T&?

Evaluation_layers/lossқ�?
#
Evaluation_layers/accuracy_1�T&?�x2[u       ��Ax	�);�^�A�*g
!
Evaluation_layers/accuracy�4&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�4&?&Axu       ��Ax	(K;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/lossRc�?
#
Evaluation_layers/accuracy_1��&?��Gu       ��Ax	�	;�^�A�*g
!
Evaluation_layers/accuracyz$&?

Evaluation_layers/loss�@�?
#
Evaluation_layers/accuracy_1z$&?�8p�u       ��Ax	�M;�^�A�*g
!
Evaluation_layers/accuracy�P&?

Evaluation_layers/loss�/�?
#
Evaluation_layers/accuracy_1�P&?�n�u       ��Ax	4t;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/lossp��?
#
Evaluation_layers/accuracy_1��&?<��
u       ��Ax	m�4;�^�A�*g
!
Evaluation_layers/accuracy�l&?

Evaluation_layers/loss�<�?
#
Evaluation_layers/accuracy_1�l&?D��u       ��Ax	��:;�^�A�*g
!
Evaluation_layers/accuracy�0'?

Evaluation_layers/lossA��?
#
Evaluation_layers/accuracy_1�0'?����u       ��Ax	!l@;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��&?�yӰu       ��Ax	j:F;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss~��?
#
Evaluation_layers/accuracy_1��&?��^u       ��Ax	�L;�^�A�*g
!
Evaluation_layers/accuracy�l&?

Evaluation_layers/lossc\�?
#
Evaluation_layers/accuracy_1�l&?ә��u       ��Ax	c�Q;�^�A�*g
!
Evaluation_layers/accuracy�\&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�\&?Q�u       ��Ax	(�W;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss`C�?
#
Evaluation_layers/accuracy_1��&?��
-u       ��Ax	��];�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��&?7���u       ��Ax	|�c;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��&?�i�u       ��Ax	�yi;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/lossG��?
#
Evaluation_layers/accuracy_1��&?>�<Au       ��Ax	?�z;�^�A�*g
!
Evaluation_layers/accuracye'?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1e'?W�m�u       ��Ax	݀;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��&?� 1u       ��Ax	�Ɔ;�^�A�*g
!
Evaluation_layers/accuracy 9'?

Evaluation_layers/lossD(�?
#
Evaluation_layers/accuracy_1 9'?T�;�u       ��Ax	���;�^�A�*g
!
Evaluation_layers/accuracy@�'?

Evaluation_layers/loss-]�?
#
Evaluation_layers/accuracy_1@�'?�u       ��Ax	�I�;�^�A�*g
!
Evaluation_layers/accuracyE'?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1E'?��l�u       ��Ax	�+�;�^�A�*g
!
Evaluation_layers/accuracyY'?

Evaluation_layers/lossw��?
#
Evaluation_layers/accuracy_1Y'?�Nu       ��Ax	^�;�^�A�*g
!
Evaluation_layers/accuracy]'?

Evaluation_layers/loss�"�?
#
Evaluation_layers/accuracy_1]'?�L�u       ��Ax	�;�^�A�*g
!
Evaluation_layers/accuracyA'?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1A'?��ou       ��Ax	�Ω;�^�A�*g
!
Evaluation_layers/accuracy]'?

Evaluation_layers/loss#v�?
#
Evaluation_layers/accuracy_1]'?�nIu       ��Ax	^��;�^�A�*g
!
Evaluation_layers/accuracy]'?

Evaluation_layers/lossى�?
#
Evaluation_layers/accuracy_1]'?�#�u       ��Ax	qB�;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�#�?
#
Evaluation_layers/accuracy_1��&?���[u       ��Ax	zL�;�^�A�*g
!
Evaluation_layers/accuracyI'?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1I'?	7�u       ��Ax	��;�^�A�*g
!
Evaluation_layers/accuracyK�'?

Evaluation_layers/lossj�?
#
Evaluation_layers/accuracy_1K�'?�	�u       ��Ax	�2�;�^�A�*g
!
Evaluation_layers/accuracyU'?

Evaluation_layers/loss^�?
#
Evaluation_layers/accuracy_1U'?�^7u       ��Ax	c	�;�^�A�*g
!
Evaluation_layers/accuracy8�'?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_18�'?�-Tcu       ��Ax	���;�^�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossA��?
#
Evaluation_layers/accuracy_1��(?��©u       ��Ax	0��;�^�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/lossj��?
#
Evaluation_layers/accuracy_1��&?��u       ��Ax	��;�^�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�A�?
#
Evaluation_layers/accuracy_1��(?���u       ��Ax	֖�;�^�A�*g
!
Evaluation_layers/accuracy�'?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�'?���3u       ��Ax	�{�;�^�A�*g
!
Evaluation_layers/accuracyW�'?

Evaluation_layers/loss6��?
#
Evaluation_layers/accuracy_1W�'?��*�u       ��Ax	��	<�^�A�*g
!
Evaluation_layers/accuracyK�'?

Evaluation_layers/loss՝�?
#
Evaluation_layers/accuracy_1K�'?���^u       ��Ax	QQ<�^�A�*g
!
Evaluation_layers/accuracyB�'?

Evaluation_layers/lossS��?
#
Evaluation_layers/accuracy_1B�'?���u       ��Ax	@|<�^�A�*g
!
Evaluation_layers/accuracy�'?

Evaluation_layers/loss�"�?
#
Evaluation_layers/accuracy_1�'?,�!�u       ��Ax	��<�^�A�*g
!
Evaluation_layers/accuracy[�'?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1[�'?�v�u       ��Ax	X'<�^�A�*g
!
Evaluation_layers/accuracyU'?

Evaluation_layers/losst��?
#
Evaluation_layers/accuracy_1U'?��'u       ��Ax	QP.<�^�A�*g
!
Evaluation_layers/accuracyM�'?

Evaluation_layers/lossi�?
#
Evaluation_layers/accuracy_1M�'?	:jHu       ��Ax	9�5<�^�A�*g
!
Evaluation_layers/accuracy�i(?

Evaluation_layers/lossJ��?
#
Evaluation_layers/accuracy_1�i(?6���u       ��Ax	��<<�^�A�*g
!
Evaluation_layers/accuracyf(?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1f(?��tu       ��Ax	'HD<�^�A�*g
!
Evaluation_layers/accuracyG�'?

Evaluation_layers/loss�O�?
#
Evaluation_layers/accuracy_1G�'?̿S9u       ��Ax	�`K<�^�A�*g
!
Evaluation_layers/accuracy~=(?

Evaluation_layers/lossT�?
#
Evaluation_layers/accuracy_1~=(?��;>u       ��Ax	>b<�^�A�*g
!
Evaluation_layers/accuracy|9(?

Evaluation_layers/loss�=�?
#
Evaluation_layers/accuracy_1|9(?�cOu       ��Ax	�wi<�^�A�*g
!
Evaluation_layers/accuracy�Y(?

Evaluation_layers/loss"F�?
#
Evaluation_layers/accuracy_1�Y(?�W��u       ��Ax	��p<�^�A�*g
!
Evaluation_layers/accuracyz5(?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1z5(?��ߠu       ��Ax	�2x<�^�A�*g
!
Evaluation_layers/accuracyt)(?

Evaluation_layers/loss�>�?
#
Evaluation_layers/accuracy_1t)(?m��u       ��Ax	�N<�^�A�*g
!
Evaluation_layers/accuracy�I(?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�I(?:u       ��Ax	h͆<�^�A�*g
!
Evaluation_layers/accuracy�!)?

Evaluation_layers/lossTE�?
#
Evaluation_layers/accuracy_1�!)?=��u       ��Ax	�<�^�A�*g
!
Evaluation_layers/accuracy[�'?

Evaluation_layers/loss%��?
#
Evaluation_layers/accuracy_1[�'?���u       ��Ax	��<�^�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss>@�?
#
Evaluation_layers/accuracy_1�)?�
�u       ��Ax	�T�<�^�A�*g
!
Evaluation_layers/accuracy�m(?

Evaluation_layers/loss�}�?
#
Evaluation_layers/accuracy_1�m(?S��Wu       ��Ax	���<�^�A�*g
!
Evaluation_layers/accuracyc(?

Evaluation_layers/loss�$�?
#
Evaluation_layers/accuracy_1c(? YԼu       ��Ax	e�<�^�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��(?;r�u       ��Ax	b��<�^�A�*g
!
Evaluation_layers/accuracy)�)?

Evaluation_layers/loss}D�?
#
Evaluation_layers/accuracy_1)�)?#�Gsu       ��Ax	w/�<�^�A�*g
!
Evaluation_layers/accuracyn(?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1n(?�U"�u       ��Ax	Dk�<�^�A�*g
!
Evaluation_layers/accuracy�	)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�	)?DK�^u       ��Ax	�/�<�^�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��(?���u       ��Ax	��<�^�A�*g
!
Evaluation_layers/accuracy�Y(?

Evaluation_layers/loss�k�?
#
Evaluation_layers/accuracy_1�Y(?^J�u       ��Ax	���<�^�A�*g
!
Evaluation_layers/accuracyr)?

Evaluation_layers/loss�3�?
#
Evaluation_layers/accuracy_1r)?!Oiu       ��Ax	���<�^�A�*g
!
Evaluation_layers/accuracyD�'?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1D�'?�%d�u       ��Ax	�W�<�^�A�*g
!
Evaluation_layers/accuracyr)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1r)?xATu       ��Ax	��<�^�A�*g
!
Evaluation_layers/accuracy!�)?

Evaluation_layers/loss4�?
#
Evaluation_layers/accuracy_1!�)?[X�u       ��Ax	�=�^�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/lossFf�?
#
Evaluation_layers/accuracy_1�)?�3��u       ��Ax	�=�^�A�*g
!
Evaluation_layers/accuracy0�)?

Evaluation_layers/loss]+�?
#
Evaluation_layers/accuracy_10�)?��(u       ��Ax	�=�^�A�*g
!
Evaluation_layers/accuracy�A(?

Evaluation_layers/loss�g�?
#
Evaluation_layers/accuracy_1�A(?.���u       ��Ax	c#=�^�A�*g
!
Evaluation_layers/accuracyU�)?

Evaluation_layers/loss�.�?
#
Evaluation_layers/accuracy_1U�)?d4��u       ��Ax	�|)=�^�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��(?�DK�u       ��Ax	20=�^�A�*g
!
Evaluation_layers/accuracy%�)?

Evaluation_layers/losshR�?
#
Evaluation_layers/accuracy_1%�)?t��u       ��Ax	�"7=�^�A�*g
!
Evaluation_layers/accuracyS�)?

Evaluation_layers/lossh��?
#
Evaluation_layers/accuracy_1S�)?1�Wu       ��Ax	�i==�^�A�*g
!
Evaluation_layers/accuracy8�)?

Evaluation_layers/loss=��?
#
Evaluation_layers/accuracy_18�)?�h�&u       ��Ax	02C=�^�A�*g
!
Evaluation_layers/accuracyJ�)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1J�)?ݢd.u       ��Ax	aI=�^�A�*g
!
Evaluation_layers/accuracyp2*?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1p2*?C�îu       ��Ax	Z=�^�A�*g
!
Evaluation_layers/accuracyp2*?

Evaluation_layers/loss�+�?
#
Evaluation_layers/accuracy_1p2*?�*�u       ��Ax	�`=�^�A�*g
!
Evaluation_layers/accuracy[*?

Evaluation_layers/lossL>�?
#
Evaluation_layers/accuracy_1[*?���u       ��Ax	,�e=�^�A�*g
!
Evaluation_layers/accuracy|J*?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1|J*?r0&u       ��Ax	Z�k=�^�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss\z�?
#
Evaluation_layers/accuracy_1��*?CN�u       ��Ax	�q=�^�A�*g
!
Evaluation_layers/accuracyn.*?

Evaluation_layers/loss�a�?
#
Evaluation_layers/accuracy_1n.*?��u       ��Ax	�x=�^�A�*g
!
Evaluation_layers/accuracy]
*?

Evaluation_layers/loss�Խ?
#
Evaluation_layers/accuracy_1]
*?�Ctu       ��Ax	m�}=�^�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossUy�?
#
Evaluation_layers/accuracy_1��*?S؟u       ��Ax	��=�^�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��*?��~�u       ��Ax	'-�=�^�A�*g
!
Evaluation_layers/accuracy_*?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1_*?۬~>u       ��Ax	w�=�^�A�*g
!
Evaluation_layers/accuracy�B+?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�B+?M�7�u       ��Ax	$��=�^�A�*g
!
Evaluation_layers/accuracy|J*?

Evaluation_layers/lossû?
#
Evaluation_layers/accuracy_1|J*?�V!�u       ��Ax	=�=�^�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss+�?
#
Evaluation_layers/accuracy_1��*?G��u       ��Ax	�l�=�^�A�*g
!
Evaluation_layers/accuracy]
*?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1]
*?D�3�u       ��Ax	���=�^�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/lossWK�?
#
Evaluation_layers/accuracy_1�+?4.o�u       ��Ax	��=�^�A�*g
!
Evaluation_layers/accuracy'�)?

Evaluation_layers/lossⷼ?
#
Evaluation_layers/accuracy_1'�)?�uk�u       ��Ax	iQ�=�^�A�*g
!
Evaluation_layers/accuracy#�+?

Evaluation_layers/losso�?
#
Evaluation_layers/accuracy_1#�+?�#�u       ��Ax	���=�^�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossJk�?
#
Evaluation_layers/accuracy_1��*?@Ӭ`u       ��Ax	�^�=�^�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossx�?
#
Evaluation_layers/accuracy_1��*?T�QIu       ��Ax	��=�^�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/lossb��?
#
Evaluation_layers/accuracy_1�+?
�Hu       ��Ax	�-�=�^�A�*g
!
Evaluation_layers/accuracy�
+?

Evaluation_layers/loss_�?
#
Evaluation_layers/accuracy_1�
+?���u       ��Ax	d{�=�^�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/lossC�?
#
Evaluation_layers/accuracy_1�+?�| u       ��Ax	ӭ�=�^�A�*g
!
Evaluation_layers/accuracy [+?

Evaluation_layers/loss0!�?
#
Evaluation_layers/accuracy_1 [+?lb^ku       ��Ax	3&�=�^�A�*g
!
Evaluation_layers/accuracyg/,?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1g/,?����u       ��Ax	�h>�^�A�*g
!
Evaluation_layers/accuracy�V+?

Evaluation_layers/loss�^�?
#
Evaluation_layers/accuracy_1�V+?�a��u       ��Ax	��>�^�A�*g
!
Evaluation_layers/accuracym**?

Evaluation_layers/lossǹ?
#
Evaluation_layers/accuracy_1m**?����u       ��Ax	u�>�^�A�*g
!
Evaluation_layers/accuracy�6+?

Evaluation_layers/loss�޹?
#
Evaluation_layers/accuracy_1�6+?�;��u       ��Ax	��>�^�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��*?n�Vu       ��Ax	�i>�^�A�*g
!
Evaluation_layers/accuracyzW,?

Evaluation_layers/loss�ۺ?
#
Evaluation_layers/accuracy_1zW,?���u       ��Ax	�&>�^�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�+?y��u       ��Ax	L�->�^�A�*g
!
Evaluation_layers/accuracyF�+?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1F�+?��K�u       ��Ax	tiF>�^�A�*g
!
Evaluation_layers/accuracyN�+?

Evaluation_layers/loss�4�?
#
Evaluation_layers/accuracy_1N�+?��u       ��Ax	��N>�^�A�*g
!
Evaluation_layers/accuracy+?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1+?��*�u       ��Ax	�tV>�^�A�*g
!
Evaluation_layers/accuracy{+?

Evaluation_layers/loss[��?
#
Evaluation_layers/accuracy_1{+?Ҫ�Yu       ��Ax	�h^>�^�A�*g
!
Evaluation_layers/accuracy��,?

Evaluation_layers/loss%��?
#
Evaluation_layers/accuracy_1��,?��u       ��Ax	�Xf>�^�A�*g
!
Evaluation_layers/accuracy_+?

Evaluation_layers/lossE{�?
#
Evaluation_layers/accuracy_1_+?"���u       ��Ax	n>�^�A�*g
!
Evaluation_layers/accuracy!�+?

Evaluation_layers/lossZֶ?
#
Evaluation_layers/accuracy_1!�+?	]�u       ��Ax	q	v>�^�A�*g
!
Evaluation_layers/accuracy-�+?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1-�+?�t� u       ��Ax	��}>�^�A�*g
!
Evaluation_layers/accuracy�-?

Evaluation_layers/lossx��?
#
Evaluation_layers/accuracy_1�-?��|u       ��Ax	>��>�^�A�*g
!
Evaluation_layers/accuracy�R+?

Evaluation_layers/loss3�?
#
Evaluation_layers/accuracy_1�R+?h�܏u       ��Ax	��>�^�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�k�?
#
Evaluation_layers/accuracy_1��*?�f`u       ��Ax	 ��>�^�A�*g
!
Evaluation_layers/accuracy�-?

Evaluation_layers/lossS��?
#
Evaluation_layers/accuracy_1�-?�D�u       ��Ax	�}�>�^�A�*g
!
Evaluation_layers/accuracy4�+?

Evaluation_layers/loss1�?
#
Evaluation_layers/accuracy_14�+?�d':u       ��Ax	�U�>�^�A�*g
!
Evaluation_layers/accuracy_,?

Evaluation_layers/lossz<�?
#
Evaluation_layers/accuracy_1_,?�BU�u       ��Ax	o��>�^�A�*g
!
Evaluation_layers/accuracy<�-?

Evaluation_layers/loss�Ŵ?
#
Evaluation_layers/accuracy_1<�-?��eu       ��Ax	��>�^�A�*g
!
Evaluation_layers/accuracyD�+?

Evaluation_layers/lossG�?
#
Evaluation_layers/accuracy_1D�+?Q���u       ��Ax	0�>�^�A�*g
!
Evaluation_layers/accuracy�'-?

Evaluation_layers/loss�T�?
#
Evaluation_layers/accuracy_1�'-? )m�u       ��Ax	�y�>�^�A�*g
!
Evaluation_layers/accuracy�#-?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�#-?�B�u       ��Ax	���>�^�A�*g
!
Evaluation_layers/accuracyc',?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1c',?��%�u       ��Ax	8��>�^�A�*g
!
Evaluation_layers/accuracyD�-?

Evaluation_layers/loss�:�?
#
Evaluation_layers/accuracy_1D�-?!.�u       ��Ax	�'�>�^�A�*g
!
Evaluation_layers/accuracy~_,?

Evaluation_layers/lossk��?
#
Evaluation_layers/accuracy_1~_,?�d�ou       ��Ax	�
?�^�A�*g
!
Evaluation_layers/accuracy�-?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�-?���u       ��Ax	*k?�^�A�*g
!
Evaluation_layers/accuracy��,?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��,?�={�u       ��Ax	��?�^�A�*g
!
Evaluation_layers/accuracy1�+?

Evaluation_layers/lossZ�?
#
Evaluation_layers/accuracy_11�+?Y�j�u       ��Ax	-D?�^�A�*g
!
Evaluation_layers/accuracy�7-?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�7-?:D\u       ��Ax	�T?�^�A�*g
!
Evaluation_layers/accuracyx-?

Evaluation_layers/lossߓ�?
#
Evaluation_layers/accuracy_1x-?���Fu       ��Ax	B&?�^�A�*g
!
Evaluation_layers/accuracy�?-?

Evaluation_layers/lossj߰?
#
Evaluation_layers/accuracy_1�?-?J�C�u       ��Ax	��,?�^�A�*g
!
Evaluation_layers/accuracy�#-?

Evaluation_layers/loss�N�?
#
Evaluation_layers/accuracy_1�#-?�i4�u       ��Ax	4�3?�^�A�*g
!
Evaluation_layers/accuracy
�-?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1
�-?)��u       ��Ax	�D:?�^�A�*g
!
Evaluation_layers/accuracy�c-?

Evaluation_layers/loss"E�?
#
Evaluation_layers/accuracy_1�c-?�<zvu       ��Ax	UA?�^�A�*g
!
Evaluation_layers/accuracyt-?

Evaluation_layers/loss�z�?
#
Evaluation_layers/accuracy_1t-?�߼u       ��Ax	�1Z?�^�A�*g
!
Evaluation_layers/accuracy�-?

Evaluation_layers/loss^��?
#
Evaluation_layers/accuracy_1�-?Vz4u       ��Ax	�R`?�^�A�*g
!
Evaluation_layers/accuracy�-?

Evaluation_layers/loss@��?
#
Evaluation_layers/accuracy_1�-?�W3Ku       ��Ax	�Lf?�^�A�*g
!
Evaluation_layers/accuracy�;-?

Evaluation_layers/loss;��?
#
Evaluation_layers/accuracy_1�;-?SA��u       ��Ax	p9l?�^�A�*g
!
Evaluation_layers/accuracyV.?

Evaluation_layers/loss'��?
#
Evaluation_layers/accuracy_1V.?�e��u       ��Ax	�2r?�^�A�*g
!
Evaluation_layers/accuracy�'-?

Evaluation_layers/loss.ݯ?
#
Evaluation_layers/accuracy_1�'-?'��u       ��Ax	9�x?�^�A�*g
!
Evaluation_layers/accuracyT.?

Evaluation_layers/lossz��?
#
Evaluation_layers/accuracy_1T.?o���u       ��Ax	q�?�^�A�*g
!
Evaluation_layers/accuracyiD.?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1iD.?R���u       ��Ax	 �?�^�A�*g
!
Evaluation_layers/accuracy�W-?

Evaluation_layers/loss�,�?
#
Evaluation_layers/accuracy_1�W-?��oku       ��Ax	���?�^�A�*g
!
Evaluation_layers/accuracyT.?

Evaluation_layers/lossG\�?
#
Evaluation_layers/accuracy_1T.?R�]�u       ��Ax	{�?�^�A�*g
!
Evaluation_layers/accuracy�'-?

Evaluation_layers/loss?B�?
#
Evaluation_layers/accuracy_1�'-?����u       ��Ax	�{�?�^�A�*g
!
Evaluation_layers/accuracy<�-?

Evaluation_layers/loss�n�?
#
Evaluation_layers/accuracy_1<�-?T�%;u       ��Ax	��?�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/lossJ��?
#
Evaluation_layers/accuracy_1��.?��Ǎu       ��Ax	L��?�^�A�*g
!
Evaluation_layers/accuracy1�-?

Evaluation_layers/loss1t�?
#
Evaluation_layers/accuracy_11�-?Ut�u       ��Ax	�4�?�^�A�*g
!
Evaluation_layers/accuracyX .?

Evaluation_layers/loss_�?
#
Evaluation_layers/accuracy_1X .?�qu       ��Ax	]��?�^�A�*g
!
Evaluation_layers/accuracyJ.?

Evaluation_layers/loss�l�?
#
Evaluation_layers/accuracy_1J.?��
�u       ��Ax	���?�^�A�*g
!
Evaluation_layers/accuracye<.?

Evaluation_layers/loss�;�?
#
Evaluation_layers/accuracy_1e<.?�f�u       ��Ax	���?�^�A�*g
!
Evaluation_layers/accuracyw`.?

Evaluation_layers/lossh��?
#
Evaluation_layers/accuracy_1w`.?��uu       ��Ax	^�?�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��.?Ί��u       ��Ax	���?�^�A�*g
!
Evaluation_layers/accuracy_0.?

Evaluation_layers/loss�H�?
#
Evaluation_layers/accuracy_1_0.?k5Vu       ��Ax	
��?�^�A�*g
!
Evaluation_layers/accuracyc8.?

Evaluation_layers/losssȪ?
#
Evaluation_layers/accuracy_1c8.?�F�<u       ��Ax	*��?�^�A�*g
!
Evaluation_layers/accuracy�</?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�</?��\_u       ��Ax	�X�?�^�A�*g
!
Evaluation_layers/accuracyR.?

Evaluation_layers/lossS��?
#
Evaluation_layers/accuracy_1R.?��%u       ��Ax	�O@�^�A�*g
!
Evaluation_layers/accuracy�-?

Evaluation_layers/lossn�?
#
Evaluation_layers/accuracy_1�-?<���u       ��Ax	�	@�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/loss|�?
#
Evaluation_layers/accuracy_1��.?.��u       ��Ax	��@�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��.?\q�xu       ��Ax	�#@�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/loss	��?
#
Evaluation_layers/accuracy_1�/?�u       ��Ax	|�@�^�A�*g
!
Evaluation_layers/accuracy�L/?

Evaluation_layers/loss7�?
#
Evaluation_layers/accuracy_1�L/?6�G�u       ��Ax	]%@�^�A�*g
!
Evaluation_layers/accuracykH.?

Evaluation_layers/loss�	�?
#
Evaluation_layers/accuracy_1kH.?��3u       ��Ax	ǎ,@�^�A�*g
!
Evaluation_layers/accuracy3�/?

Evaluation_layers/lossc��?
#
Evaluation_layers/accuracy_13�/?�#�Du       ��Ax	O4@�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�/?X�p~u       ��Ax	L@�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/loss(�?
#
Evaluation_layers/accuracy_1�/?ųJru       ��Ax	.T@�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��.?*gu       ��Ax	��\@�^�A�*g
!
Evaluation_layers/accuracy7�/?

Evaluation_layers/loss�U�?
#
Evaluation_layers/accuracy_17�/?[	�u       ��Ax	�|d@�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/lossUˣ?
#
Evaluation_layers/accuracy_1��.?0��Vu       ��Ax	��m@�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/loss�ʣ?
#
Evaluation_layers/accuracy_1��.?����u       ��Ax	��u@�^�A�*g
!
Evaluation_layers/accuracy�0/?

Evaluation_layers/loss}�?
#
Evaluation_layers/accuracy_1�0/?�HE�u       ��Ax	�~}@�^�A�*g
!
Evaluation_layers/accuracy�</?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1�</?���u       ��Ax	L�@�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/loss,��?
#
Evaluation_layers/accuracy_1�/?`��ju       ��Ax	cی@�^�A�*g
!
Evaluation_layers/accuracy�l/?

Evaluation_layers/lossF��?
#
Evaluation_layers/accuracy_1�l/?w��u       ��Ax	8�@�^�A�*g
!
Evaluation_layers/accuracy�`/?

Evaluation_layers/loss�s�?
#
Evaluation_layers/accuracy_1�`/?"W@u       ��Ax	q��@�^�A�*g
!
Evaluation_layers/accuracy�x/?

Evaluation_layers/loss_9�?
#
Evaluation_layers/accuracy_1�x/?��u       ��Ax	~��@�^�A�*g
!
Evaluation_layers/accuracy�@/?

Evaluation_layers/lossz��?
#
Evaluation_layers/accuracy_1�@/?�[x�u       ��Ax	j3�@�^�A�*g
!
Evaluation_layers/accuracy�T/?

Evaluation_layers/lossO��?
#
Evaluation_layers/accuracy_1�T/?ח{2u       ��Ax	c�@�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/lossՏ�?
#
Evaluation_layers/accuracy_1��.? �Ou       ��Ax	S��@�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/loss\�?
#
Evaluation_layers/accuracy_1�/?�B$cu       ��Ax	�g�@�^�A�*g
!
Evaluation_layers/accuracy�4/?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�4/?��4lu       ��Ax	/��@�^�A�*g
!
Evaluation_layers/accuracy�D/?

Evaluation_layers/lossI��?
#
Evaluation_layers/accuracy_1�D/?
Uםu       ��Ax	�a�@�^�A�*g
!
Evaluation_layers/accuracy3�/?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_13�/?@�	u       ��Ax	�u�@�^�A�*g
!
Evaluation_layers/accuracyeM0?

Evaluation_layers/lossI�?
#
Evaluation_layers/accuracy_1eM0?���?u       ��Ax	���@�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/lossX�?
#
Evaluation_layers/accuracy_1�/?ƐKu       ��Ax	K�A�^�A�*g
!
Evaluation_layers/accuracyR%0?

Evaluation_layers/loss�ݝ?
#
Evaluation_layers/accuracy_1R%0?�1lu       ��Ax	
A�^�A�*g
!
Evaluation_layers/accuracyX10?

Evaluation_layers/loss�a�?
#
Evaluation_layers/accuracy_1X10?�q��u       ��Ax	'A�^�A�*g
!
Evaluation_layers/accuracyum0?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1um0?�G�u       ��Ax	5BA�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss�.�?
#
Evaluation_layers/accuracy_1��0?|ܭ"u       ��Ax	C"A�^�A�*g
!
Evaluation_layers/accuracy%�/?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1%�/?�I�u       ��Ax	6G(A�^�A�*g
!
Evaluation_layers/accuracy�`/?

Evaluation_layers/loss�՛?
#
Evaluation_layers/accuracy_1�`/?ѱ��u       ��Ax	9#.A�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��0?�	�(u       ��Ax	��3A�^�A�*g
!
Evaluation_layers/accuracyum0?

Evaluation_layers/lossOd�?
#
Evaluation_layers/accuracy_1um0?q�[u       ��Ax	A�9A�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1�/?ۤ�>u       ��Ax	��?A�^�A�*g
!
Evaluation_layers/accuracy3�/?

Evaluation_layers/loss�6�?
#
Evaluation_layers/accuracy_13�/?�7�u       ��Ax	�RRA�^�A�*g
!
Evaluation_layers/accuracy�E1?

Evaluation_layers/loss�}�?
#
Evaluation_layers/accuracy_1�E1?y/�+u       ��Ax	LnXA�^�A�*g
!
Evaluation_layers/accuracy�l/?

Evaluation_layers/loss|7�?
#
Evaluation_layers/accuracy_1�l/?9���u       ��Ax	;^A�^�A�*g
!
Evaluation_layers/accuracy�a1?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�a1?t���u       ��Ax	WcdA�^�A�*g
!
Evaluation_layers/accuracy�A1?

Evaluation_layers/loss�
�?
#
Evaluation_layers/accuracy_1�A1?��u       ��Ax	%gjA�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/lossL��?
#
Evaluation_layers/accuracy_1��0?/w6u       ��Ax	!pA�^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�:�?
#
Evaluation_layers/accuracy_1�1?�W�u       ��Ax	�vA�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/lossU	�?
#
Evaluation_layers/accuracy_1��2?Hg�u       ��Ax	C�{A�^�A�*g
!
Evaluation_layers/accuracyoa0?

Evaluation_layers/losss̘?
#
Evaluation_layers/accuracy_1oa0?68�0u       ��Ax	]��A�^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�1?h0!�u       ��Ax	�[�A�^�A�*g
!
Evaluation_layers/accuracy}�2?

Evaluation_layers/lossS��?
#
Evaluation_layers/accuracy_1}�2?�4Esu       ��Ax	wΘA�^�A�*g
!
Evaluation_layers/accuracyoa0?

Evaluation_layers/loss�՗?
#
Evaluation_layers/accuracy_1oa0?xy�u       ��Ax	�ڞA�^�A�*g
!
Evaluation_layers/accuracy92?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_192?�q�u       ��Ax	Y�A�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��2?jN�u       ��Ax	�q�A�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�3?�qu       ��Ax	6Y�A�^�A�*g
!
Evaluation_layers/accuracy7�1?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_17�1?#�h�u       ��Ax	h:�A�^�A�*g
!
Evaluation_layers/accuracyjf2?

Evaluation_layers/loss�)�?
#
Evaluation_layers/accuracy_1jf2?� L�u       ��Ax	c�A�^�A�*g
!
Evaluation_layers/accuracy&�3?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1&�3?<���u       ��Ax	 �A�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/loss�$�?
#
Evaluation_layers/accuracy_1��2?���u       ��Ax	���A�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/loss�ߓ?
#
Evaluation_layers/accuracy_1�3?m5�5u       ��Ax	���A�^�A�*g
!
Evaluation_layers/accuracy$�3?

Evaluation_layers/loss�ْ?
#
Evaluation_layers/accuracy_1$�3?,=�Fu       ��Ax	Q��A�^�A�*g
!
Evaluation_layers/accuracyu~2?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1u~2?�b�
u       ��Ax	���A�^�A�*g
!
Evaluation_layers/accuracy��4?

Evaluation_layers/loss�o�?
#
Evaluation_layers/accuracy_1��4?�F2u       ��Ax	���A�^�A�*g
!
Evaluation_layers/accuracy�B3?

Evaluation_layers/loss� �?
#
Evaluation_layers/accuracy_1�B3?��du       ��Ax	���A�^�A�*g
!
Evaluation_layers/accuracyVO4?

Evaluation_layers/loss�T�?
#
Evaluation_layers/accuracy_1VO4?*7��u       ��Ax	���A�^�A�*g
!
Evaluation_layers/accuracyQC4?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1QC4?��ofu       ��Ax	���A�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/loss�{�?
#
Evaluation_layers/accuracy_1��2? ��\u       ��Ax	שB�^�A�*g
!
Evaluation_layers/accuracy��4?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��4?�>�+u       ��Ax	ԐB�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/loss7��?
#
Evaluation_layers/accuracy_1�3?^n�u       ��Ax	�B�^�A�*g
!
Evaluation_layers/accuracyI34?

Evaluation_layers/loss{4�?
#
Evaluation_layers/accuracy_1I34?�"�u       ��Ax	�UB�^�A�*g
!
Evaluation_layers/accuracy�v3?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�v3?��Agu       ��Ax	y�2B�^�A�*g
!
Evaluation_layers/accuracy��4?

Evaluation_layers/loss%�?
#
Evaluation_layers/accuracy_1��4?���&u       ��Ax	:B�^�A�*g
!
Evaluation_layers/accuracy`c4?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1`c4?��Q+u       ��Ax	RAB�^�A�*g
!
Evaluation_layers/accuracyy�4?

Evaluation_layers/loss3%�?
#
Evaluation_layers/accuracy_1y�4?���u       ��Ax	�rHB�^�A�*g
!
Evaluation_layers/accuracyjw4?

Evaluation_layers/loss�T�?
#
Evaluation_layers/accuracy_1jw4?�XZu       ��Ax	S�OB�^�A�*g
!
Evaluation_layers/accuracybg4?

Evaluation_layers/lossQo�?
#
Evaluation_layers/accuracy_1bg4?��eu       ��Ax	rWB�^�A�*g
!
Evaluation_layers/accuracyM;4?

Evaluation_layers/lossg/�?
#
Evaluation_layers/accuracy_1M;4?�W��u       ��Ax	�^B�^�A�*g
!
Evaluation_layers/accuracyM;4?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1M;4?��Su       ��Ax	��fB�^�A�*g
!
Evaluation_layers/accuracy�c5?

Evaluation_layers/lossc��?
#
Evaluation_layers/accuracy_1�c5? ��u       ��Ax	3oB�^�A�*g
!
Evaluation_layers/accuracyTK4?

Evaluation_layers/loss&{�?
#
Evaluation_layers/accuracy_1TK4?��~u       ��Ax	iCwB�^�A�*g
!
Evaluation_layers/accuracy�K5?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�K5?�t�]u       ��Ax	䂖B�^�A�*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/loss�c�?
#
Evaluation_layers/accuracy_1�5?-.�fu       ��Ax	˯�B�^�A�*g
!
Evaluation_layers/accuracy�[5?

Evaluation_layers/lossn��?
#
Evaluation_layers/accuracy_1�[5?�~�u       ��Ax	-�B�^�A�*g
!
Evaluation_layers/accuracy�#5?

Evaluation_layers/loss5`�?
#
Evaluation_layers/accuracy_1�#5?R;��u       ��Ax	�K�B�^�A�*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/loss1��?
#
Evaluation_layers/accuracy_1�5?�@ �u       ��Ax	8��B�^�A�*g
!
Evaluation_layers/accuracy	�5?

Evaluation_layers/loss�W�?
#
Evaluation_layers/accuracy_1	�5?�c'u       ��Ax	�,�B�^�A�*g
!
Evaluation_layers/accuracy�g5?

Evaluation_layers/lossuٍ?
#
Evaluation_layers/accuracy_1�g5?b�6Fu       ��Ax	���B�^�A�*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/loss"2�?
#
Evaluation_layers/accuracy_1�5?��k/u       ��Ax	7��B�^�A�*g
!
Evaluation_layers/accuracyA46?

Evaluation_layers/lossUC�?
#
Evaluation_layers/accuracy_1A46?|���u       ��Ax	w/�B�^�A�*g
!
Evaluation_layers/accuracy�?5?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�?5?9�!~u       ��Ax	�p�B�^�A�*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/lossOR�?
#
Evaluation_layers/accuracy_1�5?��r:u       ��Ax	_l�B�^�A�*g
!
Evaluation_layers/accuracy`t6?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1`t6?bP}u       ��Ax	���B�^�A�*g
!
Evaluation_layers/accuracy��4?

Evaluation_layers/loss;��?
#
Evaluation_layers/accuracy_1��4?�I%vu       ��Ax	�C�^�A�*g
!
Evaluation_layers/accuracy?06?

Evaluation_layers/loss ��?
#
Evaluation_layers/accuracy_1?06?DC��u       ��Ax	2�
C�^�A�*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/loss
��?
#
Evaluation_layers/accuracy_1�5?ZW,�u       ��Ax	lC�^�A�*g
!
Evaluation_layers/accuracy�k5?

Evaluation_layers/loss?!�?
#
Evaluation_layers/accuracy_1�k5?Q�,u       ��Ax	��C�^�A�*g
!
Evaluation_layers/accuracy66?

Evaluation_layers/lossݮ�?
#
Evaluation_layers/accuracy_166?$��u       ��Ax	��C�^�A�*g
!
Evaluation_layers/accuracy�C5?

Evaluation_layers/loss�D�?
#
Evaluation_layers/accuracy_1�C5?Zy3u       ��Ax	u�"C�^�A�*g
!
Evaluation_layers/accuracy�35?

Evaluation_layers/loss�5�?
#
Evaluation_layers/accuracy_1�35?����u       ��Ax	�(C�^�A�*g
!
Evaluation_layers/accuracy�s5?

Evaluation_layers/lossﮍ?
#
Evaluation_layers/accuracy_1�s5?σSu       ��Ax	�.C�^�A�*g
!
Evaluation_layers/accuracyQT6?

Evaluation_layers/loss�&�?
#
Evaluation_layers/accuracy_1QT6?ck�yu       ��Ax	��AC�^�A�*g
!
Evaluation_layers/accuracy	�5?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1	�5?g�<�u       ��Ax	l�GC�^�A�*g
!
Evaluation_layers/accuracy �5?

Evaluation_layers/lossDӌ?
#
Evaluation_layers/accuracy_1 �5?�}u       ��Ax	��MC�^�A�*g
!
Evaluation_layers/accuracy��4?

Evaluation_layers/loss�u�?
#
Evaluation_layers/accuracy_1��4?����u       ��Ax	�gSC�^�A�*g
!
Evaluation_layers/accuracy46?

Evaluation_layers/lossD��?
#
Evaluation_layers/accuracy_146?m�.u       ��Ax	�SYC�^�A�*g
!
Evaluation_layers/accuracyp�4?

Evaluation_layers/loss1�?
#
Evaluation_layers/accuracy_1p�4?���Wu       ��Ax	�%_C�^�A�*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/loss8o�?
#
Evaluation_layers/accuracy_1�5?={h�u       ��Ax	j�dC�^�A�*g
!
Evaluation_layers/accuracy��4?

Evaluation_layers/loss9�?
#
Evaluation_layers/accuracy_1��4?e��fu       ��Ax	�jC�^�A�*g
!
Evaluation_layers/accuracyh�6?

Evaluation_layers/loss �?
#
Evaluation_layers/accuracy_1h�6?���u       ��Ax	іpC�^�A�*g
!
Evaluation_layers/accuracy��4?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��4?�i�u       ��Ax	n|vC�^�A�*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/lossmP�?
#
Evaluation_layers/accuracy_1�5?�Fu       ��Ax	k,�C�^�A�*g
!
Evaluation_layers/accuracyp�4?

Evaluation_layers/lossc�?
#
Evaluation_layers/accuracy_1p�4?�'
u       ��Ax	y�C�^�A�*g
!
Evaluation_layers/accuracy��4?

Evaluation_layers/loss?"�?
#
Evaluation_layers/accuracy_1��4?���u       ��Ax	a�C�^�A�*g
!
Evaluation_layers/accuracyOP6?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1OP6?����u       ��Ax	���C�^�A�*g
!
Evaluation_layers/accuracy.�3?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1.�3?�<�Au       ��Ax	��C�^�A�*g
!
Evaluation_layers/accuracy�k5?

Evaluation_layers/loss�ݍ?
#
Evaluation_layers/accuracy_1�k5?���u       ��Ax	���C�^�A�*g
!
Evaluation_layers/accuracybg4?

Evaluation_layers/loss讎?
#
Evaluation_layers/accuracy_1bg4?={7u       ��Ax	��C�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�3?�b�|u       ��Ax	I�C�^�A�*g
!
Evaluation_layers/accuracy�;5?

Evaluation_layers/lossA��?
#
Evaluation_layers/accuracy_1�;5?�Z�u       ��Ax	͖�C�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�3?���u       ��Ax	@־C�^�A�*g
!
Evaluation_layers/accuracy��5?

Evaluation_layers/loss	��?
#
Evaluation_layers/accuracy_1��5?问8u       ��Ax	�_�C�^�A�*g
!
Evaluation_layers/accuracy�^3?

Evaluation_layers/lossC��?
#
Evaluation_layers/accuracy_1�^3?��GQu       ��Ax	C��C�^�A�*g
!
Evaluation_layers/accuracyjw4?

Evaluation_layers/loss� �?
#
Evaluation_layers/accuracy_1jw4?~ˬsu       ��Ax	���C�^�A�*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/lossd��?
#
Evaluation_layers/accuracy_1�5?nv��u       ��Ax	}f�C�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�3?"+��u       ��Ax	iO�C�^�A�*g
!
Evaluation_layers/accuracy;4?

Evaluation_layers/lossv�?
#
Evaluation_layers/accuracy_1;4?Hqtu       ��Ax	{F�C�^�A�*g
!
Evaluation_layers/accuracy�
3?

Evaluation_layers/lossB\�?
#
Evaluation_layers/accuracy_1�
3?H&��u       ��Ax	�b�C�^�A�*g
!
Evaluation_layers/accuracy�5?

Evaluation_layers/lossg�?
#
Evaluation_layers/accuracy_1�5?*F�su       ��Ax	$7�C�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/lossbm�?
#
Evaluation_layers/accuracy_1�3?�]Mu       ��Ax	�D�^�A�*g
!
Evaluation_layers/accuracy\[4?

Evaluation_layers/loss�w�?
#
Evaluation_layers/accuracy_1\[4?�Їu       ��Ax	P�D�^�A�*g
!
Evaluation_layers/accuracyhs4?

Evaluation_layers/lossn��?
#
Evaluation_layers/accuracy_1hs4?v-u       ��Ax	<D�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/loss1��?
#
Evaluation_layers/accuracy_1�3?�KBu       ��Ax	G<$D�^�A�*g
!
Evaluation_layers/accuracyC'4?

Evaluation_layers/loss+|�?
#
Evaluation_layers/accuracy_1C'4?U|��u       ��Ax	��+D�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�3?���Ru       ��Ax	�3D�^�A�*g
!
Evaluation_layers/accuracy"�3?

Evaluation_layers/loss	[�?
#
Evaluation_layers/accuracy_1"�3?�J�u       ��Ax	_C:D�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/loss\c�?
#
Evaluation_layers/accuracy_1��2?��u       ��Ax	A�AD�^�A�*g
!
Evaluation_layers/accuracyu�4?

Evaluation_layers/loss� �?
#
Evaluation_layers/accuracy_1u�4?#/��u       ��Ax	��HD�^�A�*g
!
Evaluation_layers/accuracyK&2?

Evaluation_layers/loss蓕?
#
Evaluation_layers/accuracy_1K&2?��\u       ��Ax	��OD�^�A�*g
!
Evaluation_layers/accuracyjf2?

Evaluation_layers/loss�Ĕ?
#
Evaluation_layers/accuracy_1jf2?20`/u       ��Ax	�$WD�^�A�*g
!
Evaluation_layers/accuracyn4?

Evaluation_layers/loss� �?
#
Evaluation_layers/accuracy_1n4?��Z�u       ��Ax	�C^D�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/loss}�?
#
Evaluation_layers/accuracy_1��2?/�^[u       ��Ax	�qvD�^�A�*g
!
Evaluation_layers/accuracy�a1?

Evaluation_layers/loss�T�?
#
Evaluation_layers/accuracy_1�a1?�{ȣu       ��Ax	~D�^�A�*g
!
Evaluation_layers/accuracy�r3?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�r3?� t�u       ��Ax	=d�D�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/loss�!�?
#
Evaluation_layers/accuracy_1��2?qou       ��Ax	���D�^�A�*g
!
Evaluation_layers/accuracy"�3?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1"�3?���u       ��Ax	��D�^�A�*g
!
Evaluation_layers/accuracy�]1?

Evaluation_layers/loss� �?
#
Evaluation_layers/accuracy_1�]1?�m�u       ��Ax	1%�D�^�A�*g
!
Evaluation_layers/accuracyR62?

Evaluation_layers/lossf��?
#
Evaluation_layers/accuracy_1R62?D��u       ��Ax	�R�D�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/losshҔ?
#
Evaluation_layers/accuracy_1��2?���u       ��Ax	��D�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/lossW<�?
#
Evaluation_layers/accuracy_1��2?\j��u       ��Ax	���D�^�A�*g
!
Evaluation_layers/accuracy�I1?

Evaluation_layers/lossS��?
#
Evaluation_layers/accuracy_1�I1?9Mߚu       ��Ax	�D�^�A�*g
!
Evaluation_layers/accuracy"�1?

Evaluation_layers/loss5��?
#
Evaluation_layers/accuracy_1"�1?F�P�u       ��Ax	U��D�^�A�*g
!
Evaluation_layers/accuracy��1?

Evaluation_layers/loss	Q�?
#
Evaluation_layers/accuracy_1��1?w��u       ��Ax	���D�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��2?�1a�u       ��Ax	�D�^�A�*g
!
Evaluation_layers/accuracy�-1?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�-1?Ni2u       ��Ax	-T�D�^�A�*g
!
Evaluation_layers/accuracy+�1?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1+�1?��u       ��Ax	���D�^�A�*g
!
Evaluation_layers/accuracy�U1?

Evaluation_layers/lossڄ�?
#
Evaluation_layers/accuracy_1�U1?���>u       ��Ax	C�D�^�A�*g
!
Evaluation_layers/accuracy1�1?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_11�1?Qok�u       ��Ax	A"�D�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��0?���u       ��Ax	gvE�^�A�*g
!
Evaluation_layers/accuracy(�1?

Evaluation_layers/loss>�?
#
Evaluation_layers/accuracy_1(�1?J��u       ��Ax	?�	E�^�A�*g
!
Evaluation_layers/accuracydZ2?

Evaluation_layers/lossℕ?
#
Evaluation_layers/accuracy_1dZ2?W��ou       ��Ax	�E�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss{S�?
#
Evaluation_layers/accuracy_1��0?d*�&u       ��Ax	�$E�^�A�*g
!
Evaluation_layers/accuracyH0?

Evaluation_layers/lossn{�?
#
Evaluation_layers/accuracy_1H0?35�#u       ��Ax	,*E�^�A�*g
!
Evaluation_layers/accuracy�3?

Evaluation_layers/lossߟ�?
#
Evaluation_layers/accuracy_1�3?���u       ��Ax	��/E�^�A�*g
!
Evaluation_layers/accuracyF0?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1F0?�+Z�u       ��Ax	��5E�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/lossaH�?
#
Evaluation_layers/accuracy_1��0?�5V�u       ��Ax	l�;E�^�A�*g
!
Evaluation_layers/accuracy�a1?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�a1?�/@?u       ��Ax	��AE�^�A�*g
!
Evaluation_layers/accuracyyu0?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1yu0?��ݠu       ��Ax	��GE�^�A�*g
!
Evaluation_layers/accuracy�m1?

Evaluation_layers/lossaė?
#
Evaluation_layers/accuracy_1�m1?F٠pu       ��Ax	�XNE�^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/lossz�?
#
Evaluation_layers/accuracy_1�1?��M�u       ��Ax	F�TE�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss�К?
#
Evaluation_layers/accuracy_1��0?W��u       ��Ax	f�ZE�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��0?\vÃu       ��Ax	nE�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/lossԷ�?
#
Evaluation_layers/accuracy_1��0?8���u       ��Ax	�tE�^�A�*g
!
Evaluation_layers/accuracy�11?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�11?�}��u       ��Ax	�zE�^�A�*g
!
Evaluation_layers/accuracyJ0?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1J0?�ů�u       ��Ax	�E�^�A�*g
!
Evaluation_layers/accuracy�P/?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�P/?w)'�u       ��Ax	�ǅE�^�A�*g
!
Evaluation_layers/accuracy5�/?

Evaluation_layers/loss40�?
#
Evaluation_layers/accuracy_15�/?��D�u       ��Ax	�~�E�^�A�*g
!
Evaluation_layers/accuracy"�/?

Evaluation_layers/loss+��?
#
Evaluation_layers/accuracy_1"�/?u}"�u       ��Ax	�t�E�^�A�*g
!
Evaluation_layers/accuracy�t/?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�t/?ᗳ�u       ��Ax	bH�E�^�A�*g
!
Evaluation_layers/accuracygQ0?

Evaluation_layers/loss䵛?
#
Evaluation_layers/accuracy_1gQ0?�u�u       ��Ax	�n�E�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/losso�?
#
Evaluation_layers/accuracy_1�/?�m3Uu       ��Ax	m�E�^�A�*g
!
Evaluation_layers/accuracy=�/?

Evaluation_layers/lossHҝ?
#
Evaluation_layers/accuracy_1=�/?����u       ��Ax	Q��E�^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�1?�{�u       ��Ax	1�E�^�A�*g
!
Evaluation_layers/accuracy�0/?

Evaluation_layers/lossD2�?
#
Evaluation_layers/accuracy_1�0/?��du       ��Ax	�@�E�^�A�*g
!
Evaluation_layers/accuracy�)1?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�)1?�O_�u       ��Ax	P��E�^�A�*g
!
Evaluation_layers/accuracy�8/?

Evaluation_layers/loss�O�?
#
Evaluation_layers/accuracy_1�8/?����u       ��Ax	�}�E�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��0?_�u       ��Ax	�w�E�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�/?�=9u       ��Ax	wM�E�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/loss!�?
#
Evaluation_layers/accuracy_1��.?LU�u       ��Ax	#g�E�^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	�:�E�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/loss�G�?
#
Evaluation_layers/accuracy_1��.?��o{u       ��Ax	�0�E�^�A�*g
!
Evaluation_layers/accuracy�!1?

Evaluation_layers/loss�0�?
#
Evaluation_layers/accuracy_1�!1?����u       ��Ax	�hF�^�A�*g
!
Evaluation_layers/accuracy��2?

Evaluation_layers/loss԰�?
#
Evaluation_layers/accuracy_1��2?��P�u       ��Ax	��F�^�A�*g
!
Evaluation_layers/accuracy��,?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��,?i��u       ��Ax	E�F�^�A�*g
!
Evaluation_layers/accuracy�q1?

Evaluation_layers/lossd��?
#
Evaluation_layers/accuracy_1�q1?U~<0u       ��Ax	B`F�^�A�*g
!
Evaluation_layers/accuracy?�/?

Evaluation_layers/loss %�?
#
Evaluation_layers/accuracy_1?�/?λO�u       ��Ax	~F�^�A�*g
!
Evaluation_layers/accuracyN0?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1N0?|�ku       ��Ax	e'F�^�A�*g
!
Evaluation_layers/accuracyeM0?

Evaluation_layers/loss�{�?
#
Evaluation_layers/accuracy_1eM0?�}Bu       ��Ax	�Y.F�^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss5��?
#
Evaluation_layers/accuracy_1�1?|���u       ��Ax	�5F�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss=@�?
#
Evaluation_layers/accuracy_1��0?_�˰u       ��Ax	\�<F�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss�M�?
#
Evaluation_layers/accuracy_1��0?N#�eu       ��Ax	]�DF�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/loss�/�?
#
Evaluation_layers/accuracy_1�/?�b�/u       ��Ax	N�\F�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss|V�?
#
Evaluation_layers/accuracy_1��0?��>u       ��Ax	]hF�^�A�*g
!
Evaluation_layers/accuracy=�/?

Evaluation_layers/loss
Τ?
#
Evaluation_layers/accuracy_1=�/?Pa�9u       ��Ax	feoF�^�A�*g
!
Evaluation_layers/accuracy�h/?

Evaluation_layers/lossÿ�?
#
Evaluation_layers/accuracy_1�h/?e�:Iu       ��Ax	��vF�^�A�*g
!
Evaluation_layers/accuracyP22?

Evaluation_layers/lossK�?
#
Evaluation_layers/accuracy_1P22?&�h�u       ��Ax	)�~F�^�A�*g
!
Evaluation_layers/accuracyR%0?

Evaluation_layers/loss�?�?
#
Evaluation_layers/accuracy_1R%0?�u       ��Ax	���F�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss]�?
#
Evaluation_layers/accuracy_1��0?��E�u       ��Ax	�ˍF�^�A�*g
!
Evaluation_layers/accuracyI"2?

Evaluation_layers/loss�&�?
#
Evaluation_layers/accuracy_1I"2?^��Pu       ��Ax	�(�F�^�A�*g
!
Evaluation_layers/accuracy�/?

Evaluation_layers/lossF�?
#
Evaluation_layers/accuracy_1�/?��~�u       ��Ax	���F�^�A�*g
!
Evaluation_layers/accuracy7�/?

Evaluation_layers/losszڧ?
#
Evaluation_layers/accuracy_17�/?����u       ��Ax	���F�^�A�*g
!
Evaluation_layers/accuracyw�2?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1w�2?��e�u       ��Ax	���F�^�A�*g
!
Evaluation_layers/accuracyD	0?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1D	0?[�u       ��Ax	ǒ�F�^�A�*g
!
Evaluation_layers/accuracy-�/?

Evaluation_layers/lossr��?
#
Evaluation_layers/accuracy_1-�/?��w�u       ��Ax	fa�F�^�A�*g
!
Evaluation_layers/accuracyL0?

Evaluation_layers/loss	�?
#
Evaluation_layers/accuracy_1L0?��ٟu       ��Ax	ǟ�F�^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss)�?
#
Evaluation_layers/accuracy_1�1?�&u       ��Ax	���F�^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss>��?
#
Evaluation_layers/accuracy_1�1?�Qe�u       ��Ax	W�F�^�A�*g
!
Evaluation_layers/accuracy
�/?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1
�/?��~�u       ��Ax	 ��F�^�A�*g
!
Evaluation_layers/accuracy�Y1?

Evaluation_layers/lossP�?
#
Evaluation_layers/accuracy_1�Y1?���u       ��Ax	���F�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/loss(w�?
#
Evaluation_layers/accuracy_1��0?/�u       ��Ax	�@ G�^�A�*g
!
Evaluation_layers/accuracy��0?

Evaluation_layers/lossY�?
#
Evaluation_layers/accuracy_1��0?�[��u       ��Ax	+~G�^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�H�?
#
Evaluation_layers/accuracy_1�1?�v�u       ��Ax	��G�^�A�*g
!
Evaluation_layers/accuracy��1?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��1?�j;Yu       ��Ax	ȉ#G�^�A�*g
!
Evaluation_layers/accuracyiU0?

Evaluation_layers/lossD��?
#
Evaluation_layers/accuracy_1iU0?��>u       ��Ax	�)G�^�A�*g
!
Evaluation_layers/accuracy��.?

Evaluation_layers/loss�<�?
#
Evaluation_layers/accuracy_1��.?jѻ�