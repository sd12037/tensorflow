       �K"	   ^gh�Abrain.Event:2���      ���	@�5^gh�A"��
|
Input/PlaceholderPlaceholder* 
shape:��������� *
dtype0*+
_output_shapes
:��������� 
u
Target/PlaceholderPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
g
"controll_normalization/PlaceholderPlaceholder*
_output_shapes
:*
shape:*
dtype0

^
Flatten/ShapeShapeInput/Placeholder*
out_type0*
_output_shapes
:*
T0
]
Flatten/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
\
Flatten/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
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
Flatten/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
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
Flatten/ProdProdFlatten/Slice_1Flatten/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
X
Flatten/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
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
�
Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*
_output_shapes
:*
N*
T0*

Tidx0
~
Flatten/ReshapeReshapeInput/PlaceholderFlatten/concat*(
_output_shapes
:����������*
Tshape0*
T0
f
!classification_layers/PlaceholderPlaceholder*
dtype0*
shape:*
_output_shapes
:
�
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB"�   
   
�
Kclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB
 *    
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
Vclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalLclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shape*
_output_shapes
:	�
*
dtype0*
seed2 *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*

seed 
�
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
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
:	�
*
shape:	�

�
0classification_layers/dense0/dense/kernel/AssignAssign)classification_layers/dense0/dense/kernelFclassification_layers/dense0/dense/kernel/Initializer/truncated_normal*
_output_shapes
:	�
*
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking(
�
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
9classification_layers/dense0/dense/bias/Initializer/zerosConst*
_output_shapes
:
*
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    
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
,classification_layers/dense0/dense/bias/readIdentity'classification_layers/dense0/dense/bias*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0
�
)classification_layers/dense0/dense/MatMulMatMulFlatten/Reshape.classification_layers/dense0/dense/kernel/read*
transpose_b( *'
_output_shapes
:���������
*
transpose_a( *
T0
�
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*'
_output_shapes
:���������
*
data_formatNHWC*
T0
�
Gclassification_layers/dense0/batch_normalization/beta/Initializer/zerosConst*
_output_shapes
:
*
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    
�
5classification_layers/dense0/batch_normalization/beta
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
shared_name *
_output_shapes
:
*
shape:

�
<classification_layers/dense0/batch_normalization/beta/AssignAssign5classification_layers/dense0/batch_normalization/betaGclassification_layers/dense0/batch_normalization/beta/Initializer/zeros*
_output_shapes
:
*
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking(
�
:classification_layers/dense0/batch_normalization/beta/readIdentity5classification_layers/dense0/batch_normalization/beta*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
�
Gclassification_layers/dense0/batch_normalization/gamma/Initializer/onesConst*
_output_shapes
:
*
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*  �?
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
=classification_layers/dense0/batch_normalization/gamma/AssignAssign6classification_layers/dense0/batch_normalization/gammaGclassification_layers/dense0/batch_normalization/gamma/Initializer/ones*
_output_shapes
:
*
validate_shape(*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0*
use_locking(
�
;classification_layers/dense0/batch_normalization/gamma/readIdentity6classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0
�
Nclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zerosConst*
_output_shapes
:
*
dtype0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
valueB
*    
�
<classification_layers/dense0/batch_normalization/moving_mean
VariableV2*
	container *
dtype0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
shared_name *
_output_shapes
:
*
shape:

�
Cclassification_layers/dense0/batch_normalization/moving_mean/AssignAssign<classification_layers/dense0/batch_normalization/moving_meanNclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zeros*
_output_shapes
:
*
validate_shape(*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0*
use_locking(
�
Aclassification_layers/dense0/batch_normalization/moving_mean/readIdentity<classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
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
	container *
dtype0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
shared_name *
_output_shapes
:
*
shape:

�
Gclassification_layers/dense0/batch_normalization/moving_variance/AssignAssign@classification_layers/dense0/batch_normalization/moving_varianceQclassification_layers/dense0/batch_normalization/moving_variance/Initializer/ones*
_output_shapes
:
*
validate_shape(*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0*
use_locking(
�
Eclassification_layers/dense0/batch_normalization/moving_variance/readIdentity@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0
�
Oclassification_layers/dense0/batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
=classification_layers/dense0/batch_normalization/moments/meanMean*classification_layers/dense0/dense/BiasAddOclassification_layers/dense0/batch_normalization/moments/mean/reduction_indices*
_output_shapes

:
*
T0*
	keep_dims(*

Tidx0
�
Eclassification_layers/dense0/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense0/batch_normalization/moments/mean*
_output_shapes

:
*
T0
�
Jclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*'
_output_shapes
:���������
*
T0
�
Sclassification_layers/dense0/batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
�
Aclassification_layers/dense0/batch_normalization/moments/varianceMeanJclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSclassification_layers/dense0/batch_normalization/moments/variance/reduction_indices*
_output_shapes

:
*
T0*
	keep_dims(*

Tidx0
�
@classification_layers/dense0/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense0/batch_normalization/moments/mean*
_output_shapes
:
*
T0*
squeeze_dims
 
�
Bclassification_layers/dense0/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense0/batch_normalization/moments/variance*
_output_shapes
:
*
T0*
squeeze_dims
 
�
?classification_layers/dense0/batch_normalization/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
;classification_layers/dense0/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense0/batch_normalization/moments/Squeeze?classification_layers/dense0/batch_normalization/ExpandDims/dim*
_output_shapes

:
*
T0*

Tdim0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
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
>classification_layers/dense0/batch_normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
8classification_layers/dense0/batch_normalization/ReshapeReshape"controll_normalization/Placeholder>classification_layers/dense0/batch_normalization/Reshape/shape*
_output_shapes
:*
Tshape0*
T0

�
7classification_layers/dense0/batch_normalization/SelectSelect8classification_layers/dense0/batch_normalization/Reshape;classification_layers/dense0/batch_normalization/ExpandDims=classification_layers/dense0/batch_normalization/ExpandDims_1*
_output_shapes

:
*
T0
�
8classification_layers/dense0/batch_normalization/SqueezeSqueeze7classification_layers/dense0/batch_normalization/Select*
_output_shapes
:
*
T0*
squeeze_dims
 
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense0/batch_normalization/moments/Squeeze_1Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dim*
_output_shapes

:
*
T0*

Tdim0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_3
ExpandDimsEclassification_layers/dense0/batch_normalization/moving_variance/readAclassification_layers/dense0/batch_normalization/ExpandDims_3/dim*
_output_shapes

:
*
T0*

Tdim0
�
@classification_layers/dense0/batch_normalization/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
:classification_layers/dense0/batch_normalization/Reshape_1Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_1/shape*
_output_shapes
:*
Tshape0*
T0

�
9classification_layers/dense0/batch_normalization/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1=classification_layers/dense0/batch_normalization/ExpandDims_2=classification_layers/dense0/batch_normalization/ExpandDims_3*
_output_shapes

:
*
T0
�
:classification_layers/dense0/batch_normalization/Squeeze_1Squeeze9classification_layers/dense0/batch_normalization/Select_1*
_output_shapes
:
*
T0*
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
Aclassification_layers/dense0/batch_normalization/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*
_output_shapes
:*
T0*

Tdim0
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
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
@classification_layers/dense0/batch_normalization/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
:classification_layers/dense0/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_2/shape*
_output_shapes
:*
Tshape0*
T0

�
9classification_layers/dense0/batch_normalization/Select_2Select:classification_layers/dense0/batch_normalization/Reshape_2=classification_layers/dense0/batch_normalization/ExpandDims_4=classification_layers/dense0/batch_normalization/ExpandDims_5*
_output_shapes
:*
T0
�
:classification_layers/dense0/batch_normalization/Squeeze_2Squeeze9classification_layers/dense0/batch_normalization/Select_2*
_output_shapes
: *
T0*
squeeze_dims
 
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
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
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0
�
@classification_layers/dense0/batch_normalization/AssignMovingAvg	AssignSub<classification_layers/dense0/batch_normalization/moving_meanDclassification_layers/dense0/batch_normalization/AssignMovingAvg/mul*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0*
use_locking( 
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
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/subSubHclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*
T0*
_output_shapes
: *S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
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
T0*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense0/batch_normalization/moving_varianceFclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mul*
use_locking( *
T0*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
@classification_layers/dense0/batch_normalization/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
�
>classification_layers/dense0/batch_normalization/batchnorm/addAdd:classification_layers/dense0/batch_normalization/Squeeze_1@classification_layers/dense0/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:

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
@classification_layers/dense0/batch_normalization/batchnorm/mul_1Mul*classification_layers/dense0/dense/BiasAdd>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:���������

�
@classification_layers/dense0/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense0/batch_normalization/Squeeze>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

�
>classification_layers/dense0/batch_normalization/batchnorm/subSub:classification_layers/dense0/batch_normalization/beta/read@classification_layers/dense0/batch_normalization/batchnorm/mul_2*
T0*
_output_shapes
:

�
@classification_layers/dense0/batch_normalization/batchnorm/add_1Add@classification_layers/dense0/batch_normalization/batchnorm/mul_1>classification_layers/dense0/batch_normalization/batchnorm/sub*
T0*'
_output_shapes
:���������

�
!classification_layers/dense0/ReluRelu@classification_layers/dense0/batch_normalization/batchnorm/add_1*
T0*'
_output_shapes
:���������

�
*classification_layers/dense0/dropout/ShapeShape!classification_layers/dense0/Relu*
T0*
_output_shapes
:*
out_type0
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
*classification_layers/dense0/dropout/FloorFloor(classification_layers/dense0/dropout/add*
T0*
_output_shapes
:
�
(classification_layers/dense0/dropout/divRealDiv!classification_layers/dense0/Relu!classification_layers/Placeholder*
T0*
_output_shapes
:
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
      *
dtype0*
_output_shapes
:
�
Oclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/meanConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Qclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *  �?
�
Zclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shape*
seed2 *
T0*

seed *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:

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
VariableV2*
shared_name *
shape
:
*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
dtype0*
	container 
�
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:

�
=classification_layers/dense_last/dense/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*>
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
use_locking(*
validate_shape(*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
�
0classification_layers/dense_last/dense/bias/readIdentity+classification_layers/dense_last/dense/bias*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
�
-classification_layers/dense_last/dense/MatMulMatMul(classification_layers/dense0/dropout/mul2classification_layers/dense_last/dense/kernel/read*
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
�
.classification_layers/dense_last/dense/BiasAddBiasAdd-classification_layers/dense_last/dense/MatMul0classification_layers/dense_last/dense/bias/read*
data_formatNHWC*
T0*'
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
!Evaluation_layers/clip_by_value/yConst*
valueB
 *���.*
_output_shapes
: *
dtype0
�
Evaluation_layers/clip_by_valueMaximum'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*'
_output_shapes
:���������*
T0
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
'Evaluation_layers/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
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
Evaluation_layers/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
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
�
Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*#
_output_shapes
:���������*
T0*

Tidx0*
output_type0	
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

Tidx0*
output_type0	
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
Evaluation_layers/accuracy/tagsConst*+
value"B  BEvaluation_layers/accuracy*
_output_shapes
: *
dtype0
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
valueB *
dtype0*
_output_shapes
: 
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
-gradients/Evaluation_layers/Mean_grad/Shape_1ShapeEvaluation_layers/Neg*
T0*
out_type0*
_output_shapes
:
p
-gradients/Evaluation_layers/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
u
+gradients/Evaluation_layers/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
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
/gradients/Evaluation_layers/Mean_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :
�
-gradients/Evaluation_layers/Mean_grad/MaximumMaximum,gradients/Evaluation_layers/Mean_grad/Prod_1/gradients/Evaluation_layers/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
.gradients/Evaluation_layers/Mean_grad/floordivFloorDiv*gradients/Evaluation_layers/Mean_grad/Prod-gradients/Evaluation_layers/Mean_grad/Maximum*
_output_shapes
: *
T0
�
*gradients/Evaluation_layers/Mean_grad/CastCast.gradients/Evaluation_layers/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
-gradients/Evaluation_layers/Mean_grad/truedivRealDiv*gradients/Evaluation_layers/Mean_grad/Tile*gradients/Evaluation_layers/Mean_grad/Cast*#
_output_shapes
:���������*
T0
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
value	B :*
dtype0*
_output_shapes
: 
�
(gradients/Evaluation_layers/Sum_grad/addAdd'Evaluation_layers/Sum/reduction_indices)gradients/Evaluation_layers/Sum_grad/Size*
_output_shapes
:*
T0
�
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
0gradients/Evaluation_layers/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
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
.gradients/Evaluation_layers/Sum_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
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
T0*'
_output_shapes
:���������*
Tshape0
�
*gradients/Evaluation_layers/mul_grad/mul_1MulTarget/Placeholder)gradients/Evaluation_layers/Sum_grad/Tile*
T0*'
_output_shapes
:���������
�
*gradients/Evaluation_layers/mul_grad/Sum_1Sum*gradients/Evaluation_layers/mul_grad/mul_1<gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
.gradients/Evaluation_layers/mul_grad/Reshape_1Reshape*gradients/Evaluation_layers/mul_grad/Sum_1,gradients/Evaluation_layers/mul_grad/Shape_1*'
_output_shapes
:���������*
Tshape0*
T0
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
(gradients/Evaluation_layers/Log_grad/mulMul?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1/gradients/Evaluation_layers/Log_grad/Reciprocal*
T0*'
_output_shapes
:���������
�
4gradients/Evaluation_layers/clip_by_value_grad/ShapeShape'Evaluation_layers/clip_by_value/Minimum*
_output_shapes
:*
out_type0*
T0
y
6gradients/Evaluation_layers/clip_by_value_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
�
6gradients/Evaluation_layers/clip_by_value_grad/Shape_2Shape(gradients/Evaluation_layers/Log_grad/mul*
out_type0*
_output_shapes
:*
T0
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
;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqualGreaterEqual'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*
T0*'
_output_shapes
:���������
�
Dgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/Evaluation_layers/clip_by_value_grad/Shape6gradients/Evaluation_layers/clip_by_value_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
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
2gradients/Evaluation_layers/clip_by_value_grad/SumSum5gradients/Evaluation_layers/clip_by_value_grad/SelectDgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
6gradients/Evaluation_layers/clip_by_value_grad/ReshapeReshape2gradients/Evaluation_layers/clip_by_value_grad/Sum4gradients/Evaluation_layers/clip_by_value_grad/Shape*
Tshape0*'
_output_shapes
:���������*
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
T0*
Tshape0*
_output_shapes
: 
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
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*
_output_shapes
: *K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1*
T0
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
out_type0*
_output_shapes
:*
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
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeReshape:gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
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
Ogradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeH^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*Q
_classG
ECloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:���������*
T0
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
:gradients/classification_layers/Softmax_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   
�
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
0gradients/classification_layers/Softmax_grad/subSubOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency4gradients/classification_layers/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������
�
2gradients/classification_layers/Softmax_grad/mul_1Mul0gradients/classification_layers/Softmax_grad/subclassification_layers/Softmax*
T0*'
_output_shapes
:���������
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
Xgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradO^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
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
T0*
_output_shapes

:
*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
=gradients/classification_layers/dense0/dropout/mul_grad/ShapeShape(classification_layers/dense0/dropout/div*#
_output_shapes
:���������*
out_type0*
T0
�
?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1Shape*classification_layers/dense0/dropout/Floor*
T0*
out_type0*#
_output_shapes
:���������
�
Mgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs=gradients/classification_layers/dense0/dropout/mul_grad/Shape?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
;gradients/classification_layers/dense0/dropout/mul_grad/mulMulUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense0/dropout/Floor*
T0*
_output_shapes
:
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
Pgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
_output_shapes
:*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape*
T0
�
Rgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
T0*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1
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
?gradients/classification_layers/dense0/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/div_grad/Sum=gradients/classification_layers/dense0/dropout/div_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
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
Rgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*
T0*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape_1
�
9gradients/classification_layers/dense0/Relu_grad/ReluGradReluGradPgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency!classification_layers/dense0/Relu*'
_output_shapes
:���������
*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense0/batch_normalization/batchnorm/mul_1*
out_type0*
_output_shapes
:*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

�
egradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumSum9gradients/classification_layers/dense0/Relu_grad/ReluGradegradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape*
Tshape0*'
_output_shapes
:���������
*
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
T0*
Tshape0*
_output_shapes
:

�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape*'
_output_shapes
:���������

�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
T0*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1*
_output_shapes
:

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
valueB:

�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:���������

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
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense0/dense/BiasAddhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

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
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
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
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:

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
:
*
Tshape0*
T0
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
hgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes
:
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
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
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/mul_1Mul8classification_layers/dense0/batch_normalization/Squeezehgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1*
_output_shapes
:
*
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
:
*
Tshape0
�
`gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_depsNoOpX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ReshapeZ^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*
_output_shapes
:
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape
�
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1*
T0
�
Mgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ShapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Shape*
_output_shapes

:
*
Tshape0*
T0
�
gradients/AddNAddNjgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1*
N*
T0*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
valueB:
*
_output_shapes
:*
dtype0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulMulgradients/AddN;classification_layers/dense0/batch_normalization/gamma/read*
_output_shapes
:
*
T0
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
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtgradients/AddN*
_output_shapes
:
*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape*
_output_shapes
:

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
_output_shapes

:
*
dtype0
�
Mgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectSelect8classification_layers/dense0/batch_normalization/ReshapeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_like*
T0*
_output_shapes

:

�
Ogradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1Select8classification_layers/dense0/batch_normalization/ReshapeQgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeOgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Reshape*
_output_shapes

:
*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_depsNoOpN^gradients/classification_layers/dense0/batch_normalization/Select_grad/SelectP^gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1
�
_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
T0*
_output_shapes

:
*`
_classV
TRloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select
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
Pgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/Shape*
_output_shapes
:
*
Tshape0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
cgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgsBroadcastGradientArgsSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1*
Tshape0*
_output_shapes
: *
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
T0*
_output_shapes
: *j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Shape*
T0*
_output_shapes

:
*
Tshape0
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ShapeConst*
valueB"   
   *
_output_shapes
:*
dtype0
�
Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:

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
agradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
T0*
_output_shapes

:
*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select
�
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1*
_output_shapes

:

�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
valueB:
*
_output_shapes
:*
dtype0
�
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
valueB"   
   *
dtype0*
_output_shapes
:
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Shape*
T0*
_output_shapes

:
*
Tshape0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
_output_shapes
:*
out_type0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/addAddSclassification_layers/dense0/batch_normalization/moments/variance/reduction_indicesUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Size*
T0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/modFloorModTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/addUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Size*
_output_shapes
:*
T0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/rangeRange\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/startUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Size\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/delta*

Tidx0*
_output_shapes
:
�
[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/FillFillXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill/value*
T0*
_output_shapes
:
�
^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/DynamicStitchDynamicStitchVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/rangeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/modVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill*
N*
T0*#
_output_shapes
:���������
�
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/MaximumMaximum^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/DynamicStitchZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/variance_grad/floordivFloorDivVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum*
T0*
_output_shapes
:
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ReshapeReshapeYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshape^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/TileTileXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ReshapeYgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
out_type0*
_output_shapes
:*
T0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   
   
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ProdProdXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_2Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
Wgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Prod_1ProdXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_3Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :
�
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1MaximumWgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Prod_1\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1/y*
_output_shapes
: *
T0
�
[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/floordiv_1FloorDivUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ProdZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1*
_output_shapes
: *
T0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/CastCast[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truedivRealDivUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/TileUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Cast*'
_output_shapes
:���������
*
T0
�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
out_type0*
_output_shapes
:*
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
�
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*
valueB
 *   @*
_output_shapes
: *
dtype0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*'
_output_shapes
:���������
*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradientY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*
T0*'
_output_shapes
:���������

�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/sub*'
_output_shapes
:���������
*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape*'
_output_shapes
:���������
*
Tshape0*
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
_output_shapes

:
*
Tshape0*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
_output_shapes

:
*
T0
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
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
�
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/addAddOclassification_layers/dense0/batch_normalization/moments/mean/reduction_indicesQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Size*
_output_shapes
:*
T0
�
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/modFloorModPgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/addQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Size*
T0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/rangeRangeXgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/startQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SizeXgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/delta*
_output_shapes
:*

Tidx0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/FillFillTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Wgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill/value*
_output_shapes
:*
T0
�
Zgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/DynamicStitchDynamicStitchRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/rangePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/modRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill*
T0*
N*#
_output_shapes
:���������
�
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/MaximumMaximumZgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/DynamicStitchVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordivFloorDivRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum*
_output_shapes
:*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeZgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/TileTileTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_2Shape*classification_layers/dense0/dense/BiasAdd*
T0*
out_type0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_3Const*
valueB"   
   *
_output_shapes
:*
dtype0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ProdProdTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_2Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
�
Sgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Prod_1ProdTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_3Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1MaximumSgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Prod_1Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
Wgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordiv_1FloorDivQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ProdVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1*
T0*
_output_shapes
: 
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/CastCastWgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordiv_1*

SrcT0*
_output_shapes
: *

DstT0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/truedivRealDivQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/TileQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Cast*
T0*'
_output_shapes
:���������

�
gradients/AddN_1AddNhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/truediv*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*'
_output_shapes
:���������
*
T0*
N
�
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
data_formatNHWC*
T0*
_output_shapes
:

�
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1F^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_1K^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
�
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
*
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
T0*(
_output_shapes
:����������*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul
�
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	�
*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1*
T0
�
beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
beta1_power
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
: *
shape: *
shared_name 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_output_shapes
: *
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking(
�
beta1_power/readIdentitybeta1_power*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
beta2_power/initial_valueConst*
valueB
 *w�?*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
	container *
shared_name *
dtype0*
shape: *
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
beta2_power/readIdentitybeta2_power*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
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
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0*
validate_shape(*
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
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*
_output_shapes
:	�
*
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�
*    
�
0classification_layers/dense0/dense/kernel/Adam_1
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
7classification_layers/dense0/dense/kernel/Adam_1/AssignAssign0classification_layers/dense0/dense/kernel/Adam_1Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes
:	�
*
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking(
�
5classification_layers/dense0/dense/kernel/Adam_1/readIdentity0classification_layers/dense0/dense/kernel/Adam_1*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�

�
>classification_layers/dense0/dense/bias/Adam/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    *
_output_shapes
:
*
dtype0
�
,classification_layers/dense0/dense/bias/Adam
VariableV2*
shape:
*
_output_shapes
:
*
shared_name *:
_class0
.,loc:@classification_layers/dense0/dense/bias*
dtype0*
	container 
�
3classification_layers/dense0/dense/bias/Adam/AssignAssign,classification_layers/dense0/dense/bias/Adam>classification_layers/dense0/dense/bias/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0
�
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    
�
.classification_layers/dense0/dense/bias/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape:
*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
validate_shape(*
_output_shapes
:

�
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
T0
�
Lclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zerosConst*
_output_shapes
:
*
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    
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
Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    *
dtype0*
_output_shapes
:

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
Aclassification_layers/dense0/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense0/batch_normalization/beta/Adam_1*
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
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
Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense0/batch_normalization/gamma/AdamMclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
@classification_layers/dense0/batch_normalization/gamma/Adam/readIdentity;classification_layers/dense0/batch_normalization/gamma/Adam*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0
�
Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*    
�
=classification_layers/dense0/batch_normalization/gamma/Adam_1
VariableV2*
	container *
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
shared_name *
_output_shapes
:
*
shape:

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
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:

�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
*    *
dtype0*
_output_shapes

:

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
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:
*
T0*
validate_shape(*
use_locking(
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
dtype0*
_output_shapes

:

�
4classification_layers/dense_last/dense/kernel/Adam_1
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
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes

:

�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:

�
Bclassification_layers/dense_last/dense/bias/Adam/Initializer/zerosConst*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    *
_output_shapes
:*
dtype0
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
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
5classification_layers/dense_last/dense/bias/Adam/readIdentity0classification_layers/dense_last/dense/bias/Adam*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0
�
Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zerosConst*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
2classification_layers/dense_last/dense/bias/Adam_1
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
9classification_layers/dense_last/dense/bias/Adam_1/AssignAssign2classification_layers/dense_last/dense/bias/Adam_1Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zeros*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
7classification_layers/dense_last/dense/bias/Adam_1/readIdentity2classification_layers/dense_last/dense/bias/Adam_1*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:
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

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
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
Adam/beta2Adam/epsilonTgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
T0*
use_nesterov( *
use_locking( 
�
KAdam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdam	ApplyAdam5classification_layers/dense0/batch_normalization/beta:classification_layers/dense0/batch_normalization/beta/Adam<classification_layers/dense0/batch_normalization/beta/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonfgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency*
use_locking( *
use_nesterov( *
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
LAdam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdam	ApplyAdam6classification_layers/dense0/batch_normalization/gamma;classification_layers/dense0/batch_normalization/gamma/Adam=classification_layers/dense0/batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:
*
T0*
use_nesterov( *
use_locking( 
�
CAdam/update_classification_layers/dense_last/dense/kernel/ApplyAdam	ApplyAdam-classification_layers/dense_last/dense/kernel2classification_layers/dense_last/dense/kernel/Adam4classification_layers/dense_last/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
use_nesterov( *
_output_shapes

:

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
�
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
: *
T0
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
validate_shape(*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
validate_shape(*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�	
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign=^classification_layers/dense0/batch_normalization/beta/Assign>^classification_layers/dense0/batch_normalization/gamma/AssignD^classification_layers/dense0/batch_normalization/moving_mean/AssignH^classification_layers/dense0/batch_normalization/moving_variance/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/AssignB^classification_layers/dense0/batch_normalization/beta/Adam/AssignD^classification_layers/dense0/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense0/batch_normalization/gamma/Adam/AssignE^classification_layers/dense0/batch_normalization/gamma/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign"�/��%     ��i�	�)9^gh�AJ��
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
�
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
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
shared_namestring �*	1.3.0-rc12v1.3.0-rc0-33-g6f0d70e��
|
Input/PlaceholderPlaceholder*+
_output_shapes
:��������� *
dtype0* 
shape:��������� 
u
Target/PlaceholderPlaceholder*'
_output_shapes
:���������*
shape:���������*
dtype0
g
"controll_normalization/PlaceholderPlaceholder*
dtype0
*
shape:*
_output_shapes
:
^
Flatten/ShapeShapeInput/Placeholder*
T0*
_output_shapes
:*
out_type0
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
Flatten/Slice_1/beginConst*
valueB:*
_output_shapes
:*
dtype0
^
Flatten/Slice_1/sizeConst*
valueB:*
_output_shapes
:*
dtype0
�
Flatten/Slice_1SliceFlatten/ShapeFlatten/Slice_1/beginFlatten/Slice_1/size*
_output_shapes
:*
T0*
Index0
W
Flatten/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
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
Flatten/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
~
Flatten/ReshapeReshapeInput/PlaceholderFlatten/concat*
T0*(
_output_shapes
:����������*
Tshape0
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
seed2 *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*

seed *
_output_shapes
:	�
*
T0
�
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�

�
)classification_layers/dense0/dense/kernel
VariableV2*
_output_shapes
:	�
*
dtype0*
shape:	�
*
	container *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
shared_name 
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
T0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
)classification_layers/dense0/dense/MatMulMatMulFlatten/Reshape.classification_layers/dense0/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������
*
transpose_a( 
�
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*
data_formatNHWC*
T0*'
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
<classification_layers/dense0/batch_normalization/beta/AssignAssign5classification_layers/dense0/batch_normalization/betaGclassification_layers/dense0/batch_normalization/beta/Initializer/zeros*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:
*
T0*
validate_shape(*
use_locking(
�
:classification_layers/dense0/batch_normalization/beta/readIdentity5classification_layers/dense0/batch_normalization/beta*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:
*
T0
�
Gclassification_layers/dense0/batch_normalization/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*  �?
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
=classification_layers/dense0/batch_normalization/gamma/AssignAssign6classification_layers/dense0/batch_normalization/gammaGclassification_layers/dense0/batch_normalization/gamma/Initializer/ones*
_output_shapes
:
*
validate_shape(*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0*
use_locking(
�
;classification_layers/dense0/batch_normalization/gamma/readIdentity6classification_layers/dense0/batch_normalization/gamma*
T0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:

�
Nclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
valueB
*    
�
<classification_layers/dense0/batch_normalization/moving_mean
VariableV2*
	container *
dtype0*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
shared_name *
_output_shapes
:
*
shape:

�
Cclassification_layers/dense0/batch_normalization/moving_mean/AssignAssign<classification_layers/dense0/batch_normalization/moving_meanNclassification_layers/dense0/batch_normalization/moving_mean/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
Aclassification_layers/dense0/batch_normalization/moving_mean/readIdentity<classification_layers/dense0/batch_normalization/moving_mean*
T0*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
Qclassification_layers/dense0/batch_normalization/moving_variance/Initializer/onesConst*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
valueB
*  �?*
dtype0*
_output_shapes
:

�
@classification_layers/dense0/batch_normalization/moving_variance
VariableV2*
_output_shapes
:
*
dtype0*
shape:
*
	container *S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
shared_name 
�
Gclassification_layers/dense0/batch_normalization/moving_variance/AssignAssign@classification_layers/dense0/batch_normalization/moving_varianceQclassification_layers/dense0/batch_normalization/moving_variance/Initializer/ones*
use_locking(*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
validate_shape(*
_output_shapes
:

�
Eclassification_layers/dense0/batch_normalization/moving_variance/readIdentity@classification_layers/dense0/batch_normalization/moving_variance*
T0*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:

�
Oclassification_layers/dense0/batch_normalization/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
�
=classification_layers/dense0/batch_normalization/moments/meanMean*classification_layers/dense0/dense/BiasAddOclassification_layers/dense0/batch_normalization/moments/mean/reduction_indices*
_output_shapes

:
*
T0*
	keep_dims(*

Tidx0
�
Eclassification_layers/dense0/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense0/batch_normalization/moments/mean*
_output_shapes

:
*
T0
�
Jclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*'
_output_shapes
:���������
*
T0
�
Sclassification_layers/dense0/batch_normalization/moments/variance/reduction_indicesConst*
valueB: *
_output_shapes
:*
dtype0
�
Aclassification_layers/dense0/batch_normalization/moments/varianceMeanJclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSclassification_layers/dense0/batch_normalization/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
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
 *
_output_shapes
:
*
T0
�
?classification_layers/dense0/batch_normalization/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
;classification_layers/dense0/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense0/batch_normalization/moments/Squeeze?classification_layers/dense0/batch_normalization/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:

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
>classification_layers/dense0/batch_normalization/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
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
Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_2
ExpandDimsBclassification_layers/dense0/batch_normalization/moments/Squeeze_1Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dim*
T0*
_output_shapes

:
*

Tdim0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
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
9classification_layers/dense0/batch_normalization/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1=classification_layers/dense0/batch_normalization/ExpandDims_2=classification_layers/dense0/batch_normalization/ExpandDims_3*
_output_shapes

:
*
T0
�
:classification_layers/dense0/batch_normalization/Squeeze_1Squeeze9classification_layers/dense0/batch_normalization/Select_1*
squeeze_dims
 *
T0*
_output_shapes
:

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
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*
_output_shapes
:*
T0*

Tdim0
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_5/dimConst*
value	B : *
_output_shapes
: *
dtype0
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
:classification_layers/dense0/batch_normalization/Reshape_2Reshape"controll_normalization/Placeholder@classification_layers/dense0/batch_normalization/Reshape_2/shape*
_output_shapes
:*
Tshape0*
T0

�
9classification_layers/dense0/batch_normalization/Select_2Select:classification_layers/dense0/batch_normalization/Reshape_2=classification_layers/dense0/batch_normalization/ExpandDims_4=classification_layers/dense0/batch_normalization/ExpandDims_5*
_output_shapes
:*
T0
�
:classification_layers/dense0/batch_normalization/Squeeze_2Squeeze9classification_layers/dense0/batch_normalization/Select_2*
squeeze_dims
 *
T0*
_output_shapes
: 
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/subSubFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/x:classification_layers/dense0/batch_normalization/Squeeze_2*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
: *
T0
�
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1SubAclassification_layers/dense0/batch_normalization/moving_mean/read8classification_layers/dense0/batch_normalization/Squeeze*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
_output_shapes
:
*
T0
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0
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
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/xConst*
dtype0*
_output_shapes
: *
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
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub_1SubEclassification_layers/dense0/batch_normalization/moving_variance/read:classification_layers/dense0/batch_normalization/Squeeze_1*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
_output_shapes
:
*
T0
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
@classification_layers/dense0/batch_normalization/batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
�
>classification_layers/dense0/batch_normalization/batchnorm/addAdd:classification_layers/dense0/batch_normalization/Squeeze_1@classification_layers/dense0/batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:

�
@classification_layers/dense0/batch_normalization/batchnorm/RsqrtRsqrt>classification_layers/dense0/batch_normalization/batchnorm/add*
_output_shapes
:
*
T0
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
@classification_layers/dense0/batch_normalization/batchnorm/mul_2Mul8classification_layers/dense0/batch_normalization/Squeeze>classification_layers/dense0/batch_normalization/batchnorm/mul*
_output_shapes
:
*
T0
�
>classification_layers/dense0/batch_normalization/batchnorm/subSub:classification_layers/dense0/batch_normalization/beta/read@classification_layers/dense0/batch_normalization/batchnorm/mul_2*
_output_shapes
:
*
T0
�
@classification_layers/dense0/batch_normalization/batchnorm/add_1Add@classification_layers/dense0/batch_normalization/batchnorm/mul_1>classification_layers/dense0/batch_normalization/batchnorm/sub*
T0*'
_output_shapes
:���������

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
 *  �?*
_output_shapes
: *
dtype0
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
Zclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shape*

seed *
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
seed2 *
dtype0*
_output_shapes

:

�
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
�
-classification_layers/dense_last/dense/kernel
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
shared_name *
_output_shapes

:
*
shape
:

�
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:
*
T0*
validate_shape(*
use_locking(
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
�
=classification_layers/dense_last/dense/bias/Initializer/zerosConst*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
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
)Evaluation_layers/clip_by_value/Minimum/yConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
'Evaluation_layers/clip_by_value/MinimumMinimumclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*'
_output_shapes
:���������*
T0
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
Evaluation_layers/SumSumEvaluation_layers/mul'Evaluation_layers/Sum/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
a
Evaluation_layers/NegNegEvaluation_layers/Sum*
T0*#
_output_shapes
:���������
a
Evaluation_layers/ConstConst*
valueB: *
dtype0*
_output_shapes
:
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
Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
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
:���������*
output_type0	*
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
Evaluation_layers/accracy/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
Evaluation_layers/accracy/MeanMeanEvaluation_layers/accracy/CastEvaluation_layers/accracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
z
Evaluation_layers/accuracy/tagsConst*
_output_shapes
: *
dtype0*+
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
value$B" BEvaluation_layers/accuracy_1*
_output_shapes
: *
dtype0
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
gradients/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
Y
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
}
3gradients/Evaluation_layers/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
-gradients/Evaluation_layers/Mean_grad/ReshapeReshapegradients/Fill3gradients/Evaluation_layers/Mean_grad/Reshape/shape*
T0*
_output_shapes
:*
Tshape0
�
+gradients/Evaluation_layers/Mean_grad/ShapeShapeEvaluation_layers/Neg*
T0*
out_type0*
_output_shapes
:
�
*gradients/Evaluation_layers/Mean_grad/TileTile-gradients/Evaluation_layers/Mean_grad/Reshape+gradients/Evaluation_layers/Mean_grad/Shape*#
_output_shapes
:���������*
T0*

Tmultiples0
�
-gradients/Evaluation_layers/Mean_grad/Shape_1ShapeEvaluation_layers/Neg*
T0*
_output_shapes
:*
out_type0
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
valueB: *
_output_shapes
:*
dtype0
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
T0*
_output_shapes
:*
out_type0
k
)gradients/Evaluation_layers/Sum_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
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
,gradients/Evaluation_layers/Sum_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
r
0gradients/Evaluation_layers/Sum_grad/range/startConst*
_output_shapes
: *
dtype0*
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
value	B :*
_output_shapes
: *
dtype0
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
.gradients/Evaluation_layers/Sum_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
,gradients/Evaluation_layers/Sum_grad/MaximumMaximum2gradients/Evaluation_layers/Sum_grad/DynamicStitch.gradients/Evaluation_layers/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
-gradients/Evaluation_layers/Sum_grad/floordivFloorDiv*gradients/Evaluation_layers/Sum_grad/Shape,gradients/Evaluation_layers/Sum_grad/Maximum*
T0*
_output_shapes
:
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
T0*
out_type0*
_output_shapes
:
�
,gradients/Evaluation_layers/mul_grad/Shape_1ShapeEvaluation_layers/Log*
out_type0*
_output_shapes
:*
T0
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
(gradients/Evaluation_layers/mul_grad/SumSum(gradients/Evaluation_layers/mul_grad/mul:gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
,gradients/Evaluation_layers/mul_grad/ReshapeReshape(gradients/Evaluation_layers/mul_grad/Sum*gradients/Evaluation_layers/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
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
=gradients/Evaluation_layers/mul_grad/tuple/control_dependencyIdentity,gradients/Evaluation_layers/mul_grad/Reshape6^gradients/Evaluation_layers/mul_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*?
_class5
31loc:@gradients/Evaluation_layers/mul_grad/Reshape
�
?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1Identity.gradients/Evaluation_layers/mul_grad/Reshape_16^gradients/Evaluation_layers/mul_grad/tuple/group_deps*'
_output_shapes
:���������*A
_class7
53loc:@gradients/Evaluation_layers/mul_grad/Reshape_1*
T0
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
6gradients/Evaluation_layers/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *
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
4gradients/Evaluation_layers/clip_by_value_grad/zerosFill6gradients/Evaluation_layers/clip_by_value_grad/Shape_2:gradients/Evaluation_layers/clip_by_value_grad/zeros/Const*'
_output_shapes
:���������*
T0
�
;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqualGreaterEqual'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*
T0*'
_output_shapes
:���������
�
Dgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/Evaluation_layers/clip_by_value_grad/Shape6gradients/Evaluation_layers/clip_by_value_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
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
Ggradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependencyIdentity6gradients/Evaluation_layers/clip_by_value_grad/Reshape@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*'
_output_shapes
:���������*I
_class?
=;loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape*
T0
�
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*
_output_shapes
: *K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1*
T0
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
T0*
_output_shapes
:*
out_type0
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
Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
_output_shapes
: *
dtype0
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
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1Reshape<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
T0*
_output_shapes
: *
Tshape0
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
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:���������
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
Vgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/classification_layers/Softmax_grad/mul_1O^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*E
_class;
97loc:@gradients/classification_layers/Softmax_grad/mul_1
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
:���������
*
transpose_a( 
�
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense0/dropout/mulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:
*
transpose_a(
�
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:���������
*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul
�
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1*
_output_shapes

:

�
=gradients/classification_layers/dense0/dropout/mul_grad/ShapeShape(classification_layers/dense0/dropout/div*
out_type0*#
_output_shapes
:���������*
T0
�
?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1Shape*classification_layers/dense0/dropout/Floor*
out_type0*#
_output_shapes
:���������*
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
;gradients/classification_layers/dense0/dropout/mul_grad/SumSum;gradients/classification_layers/dense0/dropout/mul_grad/mulMgradients/classification_layers/dense0/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/mul_grad/Sum=gradients/classification_layers/dense0/dropout/mul_grad/Shape*
_output_shapes
:*
Tshape0*
T0
�
=gradients/classification_layers/dense0/dropout/mul_grad/mul_1Mul(classification_layers/dense0/dropout/divUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*
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
T0*
out_type0*#
_output_shapes
:���������
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
?gradients/classification_layers/dense0/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/div_grad/Sum=gradients/classification_layers/dense0/dropout/div_grad/Shape*
T0*'
_output_shapes
:���������
*
Tshape0
�
;gradients/classification_layers/dense0/dropout/div_grad/NegNeg!classification_layers/dense0/Relu*
T0*'
_output_shapes
:���������

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
T0*
_output_shapes
:*
out_type0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
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
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ReshapeReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape*
T0*'
_output_shapes
:���������
*
Tshape0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Sum_1Sum9gradients/classification_layers/dense0/Relu_grad/ReluGradggradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
jgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulMulhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency>classification_layers/dense0/batch_normalization/batchnorm/mul*
T0*'
_output_shapes
:���������

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
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1Mul*classification_layers/dense0/dense/BiasAddhgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:���������

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1SumUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mul_1ggradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1ReshapeUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Sum_1Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

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
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/group_deps*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeConst*
valueB:
*
_output_shapes
:*
dtype0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

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
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape*
_output_shapes
:
*
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
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1ReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1*
Tshape0*
_output_shapes
:
*
T0
�
^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_depsNoOpV^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeX^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1
�
fgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*
_output_shapes
:
*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
_output_shapes
:
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

�
egradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
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
N*
T0*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape_1
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
valueB:
*
_output_shapes
:*
dtype0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:

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
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSumQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mulcgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/mul_1Mul@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtgradients/AddN*
_output_shapes
:
*
T0
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
fgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape*
_output_shapes
:
*
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
_output_shapes

:
*
dtype0
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
_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyIdentityMgradients/classification_layers/dense0/batch_normalization/Select_grad/SelectX^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
T0*
_output_shapes

:
*`
_classV
TRloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select
�
agradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependency_1IdentityOgradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1X^gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_grad/Select_1*
_output_shapes

:

�
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
_output_shapes
:
*
T0
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
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
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
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Shape*
Tshape0*
_output_shapes
:
*
T0
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
fgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
:
*h
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
valueB"   
   *
_output_shapes
:*
dtype0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeReshapeRgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/Shape*
_output_shapes

:
*
Tshape0*
T0
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   
�
Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeReshapefgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependencyOgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Shape*
T0*
_output_shapes

:
*
Tshape0
�
Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeConst*
dtype0*
_output_shapes

:
*
valueB
*    
�
Ogradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectSelect:classification_layers/dense0/batch_normalization/Reshape_1Qgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/ReshapeSgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_like*
_output_shapes

:
*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Select:classification_layers/dense0/batch_normalization/Reshape_1Sgradients/classification_layers/dense0/batch_normalization/Select_1_grad/zeros_likeQgradients/classification_layers/dense0/batch_normalization/Squeeze_1_grad/Reshape*
_output_shapes

:
*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_depsNoOpP^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectR^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1
�
agradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
T0*
_output_shapes

:
*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select
�
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1*
_output_shapes

:
*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
valueB:
*
dtype0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
Tshape0*
_output_shapes
:
*
T0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Shape*
Tshape0*
_output_shapes

:
*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
out_type0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SizeConst*
value	B :*
_output_shapes
: *
dtype0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/addAddSclassification_layers/dense0/batch_normalization/moments/variance/reduction_indicesUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Size*
T0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/modFloorModTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/addUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Size*
_output_shapes
:*
T0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/rangeRange\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/startUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Size\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/delta*
_output_shapes
:*

Tidx0
�
[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/FillFillXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill/value*
T0*
_output_shapes
:
�
^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/DynamicStitchDynamicStitchVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/rangeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/modVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill*#
_output_shapes
:���������*
T0*
N
�
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/MaximumMaximum^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/DynamicStitchZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum/y*#
_output_shapes
:���������*
T0
�
Ygradients/classification_layers/dense0/batch_normalization/moments/variance_grad/floordivFloorDivVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum*
_output_shapes
:*
T0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ReshapeReshapeYgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Reshape^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/TileTileXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ReshapeYgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
out_type0*
_output_shapes
:*
T0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_3Const*
valueB"   
   *
_output_shapes
:*
dtype0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ProdProdXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_2Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
Wgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Prod_1ProdXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_3Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1/yConst*
value	B :*
_output_shapes
: *
dtype0
�
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1MaximumWgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Prod_1\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1/y*
_output_shapes
: *
T0
�
[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/floordiv_1FloorDivUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ProdZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1*
_output_shapes
: *
T0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/CastCast[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truedivRealDivUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/TileUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Cast*
T0*'
_output_shapes
:���������

�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
valueB"   
   *
_output_shapes
:*
dtype0
�
ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*'
_output_shapes
:���������
*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradientY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*
T0*'
_output_shapes
:���������

�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1Mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/sub*'
_output_shapes
:���������
*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/SumSum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ReshapeReshape]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������

�
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1Sum_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mul_1qgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
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
T0*'
_output_shapes
:���������
*t
_classj
hfloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape
�
tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
_output_shapes

:
*p
_classf
dbloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :
�
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/addAddOclassification_layers/dense0/batch_normalization/moments/mean/reduction_indicesQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Size*
_output_shapes
:*
T0
�
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/modFloorModPgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/addQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Size*
_output_shapes
:*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/rangeRangeXgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/startQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SizeXgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/delta*
_output_shapes
:*

Tidx0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/FillFillTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Wgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill/value*
T0*
_output_shapes
:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/DynamicStitchDynamicStitchRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/rangePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/modRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill*
T0*
N*#
_output_shapes
:���������
�
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/MaximumMaximumZgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/DynamicStitchVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
Ugradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordivFloorDivRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum*
_output_shapes
:*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeZgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/TileTileTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_2Shape*classification_layers/dense0/dense/BiasAdd*
out_type0*
_output_shapes
:*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_3Const*
valueB"   
   *
_output_shapes
:*
dtype0
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ProdProdTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_2Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
�
Sgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Prod_1ProdTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_3Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1MaximumSgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Prod_1Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1/y*
T0*
_output_shapes
: 
�
Wgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordiv_1FloorDivQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ProdVgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1*
_output_shapes
: *
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/CastCastWgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/truedivRealDivQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/TileQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Cast*
T0*'
_output_shapes
:���������

�
gradients/AddN_1AddNhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/truediv*
N*
T0*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
�
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC*
_output_shapes
:

�
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1F^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_1K^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
T0*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape
�
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:
*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense0/dense/kernel/read*
transpose_b(*(
_output_shapes
:����������*
transpose_a( *
T0
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
Qgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul*(
_output_shapes
:����������*
T0
�
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	�
*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
�
beta1_power/initial_valueConst*
_output_shapes
: *
dtype0*
valueB
 *fff?*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
beta1_power
VariableV2*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
beta1_power/readIdentitybeta1_power*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
: *
T0
�
beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *w�?*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
beta2_power
VariableV2*
	container *
dtype0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
shared_name *
_output_shapes
: *
shape: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
beta2_power/readIdentitybeta2_power*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
: *
T0
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
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*
T0
�
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�
*    
�
0classification_layers/dense0/dense/kernel/Adam_1
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
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
:	�

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
	container *
shared_name *
dtype0*
shape:
*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
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
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
*
T0
�
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:
*
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    
�
.classification_layers/dense0/dense/bias/Adam_1
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
VariableV2*
shared_name *
shape:
*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
dtype0*
	container 
�
Aclassification_layers/dense0/batch_normalization/beta/Adam/AssignAssign:classification_layers/dense0/batch_normalization/beta/AdamLclassification_layers/dense0/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
?classification_layers/dense0/batch_normalization/beta/Adam/readIdentity:classification_layers/dense0/batch_normalization/beta/Adam*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
�
Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zerosConst*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    *
_output_shapes
:
*
dtype0
�
<classification_layers/dense0/batch_normalization/beta/Adam_1
VariableV2*
shape:
*
_output_shapes
:
*
shared_name *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
dtype0*
	container 
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
Aclassification_layers/dense0/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense0/batch_normalization/beta/Adam_1*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
:

�
Mclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zerosConst*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
valueB
*    *
_output_shapes
:
*
dtype0
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
Bclassification_layers/dense0/batch_normalization/gamma/Adam/AssignAssign;classification_layers/dense0/batch_normalization/gamma/AdamMclassification_layers/dense0/batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
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
	container *
dtype0*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:
*
shape:
*
shared_name 
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
Bclassification_layers/dense0/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense0/batch_normalization/gamma/Adam_1*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:
*
T0
�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
*    *
_output_shapes

:
*
dtype0
�
2classification_layers/dense_last/dense/kernel/Adam
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
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*
_output_shapes

:
*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
�
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:

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
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

:
*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:
*
T0
�
Bclassification_layers/dense_last/dense/bias/Adam/Initializer/zerosConst*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
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
5classification_layers/dense_last/dense/bias/Adam/readIdentity0classification_layers/dense_last/dense/bias/Adam*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0
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
9classification_layers/dense_last/dense/bias/Adam_1/AssignAssign2classification_layers/dense_last/dense/bias/Adam_1Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
validate_shape(*
_output_shapes
:
�
7classification_layers/dense_last/dense/bias/Adam_1/readIdentity2classification_layers/dense_last/dense/bias/Adam_1*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:
W
Adam/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
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
Adam/beta2Adam/epsilonSgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
use_nesterov( *
_output_shapes
:	�

�
=Adam/update_classification_layers/dense0/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense0/dense/bias,classification_layers/dense0/dense/bias/Adam.classification_layers/dense0/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
use_nesterov( *
_output_shapes
:

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
Adam/beta2Adam/epsilonXgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0*
use_nesterov( *
use_locking( 
�
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
validate_shape(*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
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
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�	
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign=^classification_layers/dense0/batch_normalization/beta/Assign>^classification_layers/dense0/batch_normalization/gamma/AssignD^classification_layers/dense0/batch_normalization/moving_mean/AssignH^classification_layers/dense0/batch_normalization/moving_variance/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/AssignB^classification_layers/dense0/batch_normalization/beta/Adam/AssignD^classification_layers/dense0/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense0/batch_normalization/gamma/Adam/AssignE^classification_layers/dense0/batch_normalization/gamma/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign""�
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
4classification_layers/dense_last/dense/bias/Adam_1:09classification_layers/dense_last/dense/bias/Adam_1/Assign9classification_layers/dense_last/dense/bias/Adam_1/read:0"g
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
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg_1:0FTr       %:�	��)_gh�A*g
!
Evaluation_layers/accuracy9�%?

Evaluation_layers/loss5h5@
#
Evaluation_layers/accuracy_19�%?V�t       _gs�	��-_gh�A*g
!
Evaluation_layers/accuracy�$'?

Evaluation_layers/loss[�,@
#
Evaluation_layers/accuracy_1�$'?�Dc�t       _gs�	ir1_gh�A*g
!
Evaluation_layers/accuracyG�'?

Evaluation_layers/loss-�$@
#
Evaluation_layers/accuracy_1G�'?�~%$t       _gs�	�h5_gh�A*g
!
Evaluation_layers/accuracyZ�'?

Evaluation_layers/loss`3@
#
Evaluation_layers/accuracy_1Z�'?O;�t       _gs�	�n9_gh�A*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��&?�T!6t       _gs�	�=_gh�A*g
!
Evaluation_layers/accuracyd�%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1d�%?W�St       _gs�	�A_gh�A*g
!
Evaluation_layers/accuracyV�#?

Evaluation_layers/loss �@
#
Evaluation_layers/accuracy_1V�#?z��t       _gs�	�E_gh�A*g
!
Evaluation_layers/accuracy�I ?

Evaluation_layers/loss�`@
#
Evaluation_layers/accuracy_1�I ?E�t       _gs�	.uI_gh�A*g
!
Evaluation_layers/accuracy�O?

Evaluation_layers/loss;@
#
Evaluation_layers/accuracy_1�O?�rY�t       _gs�	#�M_gh�A	*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��?����t       _gs�	�A^_gh�A
*g
!
Evaluation_layers/accuracy�.?

Evaluation_layers/loss�Z@
#
Evaluation_layers/accuracy_1�.?��\t       _gs�	�.b_gh�A*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��?�ǰ%t       _gs�	7f_gh�A*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss	0@
#
Evaluation_layers/accuracy_1��?X��t       _gs�	�$j_gh�A*g
!
Evaluation_layers/accuracy�Z?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�Z?�t       _gs�	�En_gh�A*g
!
Evaluation_layers/accuracy&#?

Evaluation_layers/loss�&@
#
Evaluation_layers/accuracy_1&#?}*�dt       _gs�	ur_gh�A*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss3+@
#
Evaluation_layers/accuracy_1�?�iBxt       _gs�	��v_gh�A*g
!
Evaluation_layers/accuracy@h?

Evaluation_layers/lossM@
#
Evaluation_layers/accuracy_1@h?U���t       _gs�	}{_gh�A*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss!
@
#
Evaluation_layers/accuracy_1��?��b�t       _gs�	X�_gh�A*g
!
Evaluation_layers/accuracy�p?

Evaluation_layers/lossB�	@
#
Evaluation_layers/accuracy_1�p?���t       _gs�	�>�_gh�A*g
!
Evaluation_layers/accuracyۨ?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1ۨ?���8t       _gs�	B�_gh�A*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�?r��t       _gs�	��_gh�A*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss,R@
#
Evaluation_layers/accuracy_1�?�X_t       _gs�	�H�_gh�A*g
!
Evaluation_layers/accuracy�h?

Evaluation_layers/loss�2@
#
Evaluation_layers/accuracy_1�h?e�9t       _gs�	H��_gh�A*g
!
Evaluation_layers/accuracyݬ?

Evaluation_layers/loss�v@
#
Evaluation_layers/accuracy_1ݬ? n��t       _gs�	�ӧ_gh�A*g
!
Evaluation_layers/accuracy?

Evaluation_layers/loss�c@
#
Evaluation_layers/accuracy_1?�D�t       _gs�	�.�_gh�A*g
!
Evaluation_layers/accuracy/U?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1/U?zG��t       _gs�	�^�_gh�A*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/lossB!@
#
Evaluation_layers/accuracy_1!?h�]t       _gs�	�S�_gh�A*g
!
Evaluation_layers/accuracy%A?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1%A?h��t       _gs�	�&�_gh�A*g
!
Evaluation_layers/accuracy[�?

Evaluation_layers/lossxY@
#
Evaluation_layers/accuracy_1[�?�V7�t       _gs�	���_gh�A*g
!
Evaluation_layers/accuracyw�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1w�?ҘC
t       _gs�	�2�_gh�A*g
!
Evaluation_layers/accuracy�A ?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�A ?FQ��t       _gs�	�#�_gh�A*g
!
Evaluation_layers/accuracy�e ?

Evaluation_layers/loss*M@
#
Evaluation_layers/accuracy_1�e ?����t       _gs�	y �_gh�A *g
!
Evaluation_layers/accuracy޽ ?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1޽ ?���t       _gs�	�	�_gh�A!*g
!
Evaluation_layers/accuracy̙ ?

Evaluation_layers/loss�,@
#
Evaluation_layers/accuracy_1̙ ?�Dlt       _gs�	�D�_gh�A"*g
!
Evaluation_layers/accuracy�! ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�! ?���t       _gs�	��_gh�A#*g
!
Evaluation_layers/accuracy�= ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�= ?�A_,t       _gs�	�/�_gh�A$*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�� ?��F{t       _gs�	���_gh�A%*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�� ?3˹�t       _gs�	=��_gh�A&*g
!
Evaluation_layers/accuracy@�!?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1@�!?�)Ut       _gs�	V5�_gh�A'*g
!
Evaluation_layers/accuracy4r!?

Evaluation_layers/loss�8@
#
Evaluation_layers/accuracy_14r!?1�t       _gs�	��_gh�A(*g
!
Evaluation_layers/accuracy F!?

Evaluation_layers/loss4@
#
Evaluation_layers/accuracy_1 F!?mi~zt       _gs�	u<`gh�A)*g
!
Evaluation_layers/accuracy"J!?

Evaluation_layers/lossH�
@
#
Evaluation_layers/accuracy_1"J!?<��t       _gs�	��`gh�A**g
!
Evaluation_layers/accuracy>�!?

Evaluation_layers/loss�?
@
#
Evaluation_layers/accuracy_1>�!?0+�t       _gs�	�3`gh�A+*g
!
Evaluation_layers/accuracyB�!?

Evaluation_layers/loss	
@
#
Evaluation_layers/accuracy_1B�!?� ]�t       _gs�	�$`gh�A,*g
!
Evaluation_layers/accuracys�!?

Evaluation_layers/loss�N@
#
Evaluation_layers/accuracy_1s�!?!�ەt       _gs�	�`gh�A-*g
!
Evaluation_layers/accuracyĚ"?

Evaluation_layers/loss4�@
#
Evaluation_layers/accuracy_1Ě"?YdQBt       _gs�	�`gh�A.*g
!
Evaluation_layers/accuracyɦ"?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1ɦ"??7�it       _gs�	�'`gh�A/*g
!
Evaluation_layers/accuracy�F"?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�F"?��a#t       _gs�	�F"`gh�A0*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�>@
#
Evaluation_layers/accuracy_1��"?Y�>+t       _gs�	��&`gh�A1*g
!
Evaluation_layers/accuracy�b"?

Evaluation_layers/loss!@
#
Evaluation_layers/accuracy_1�b"?Ql/ t       _gs�	g6`gh�A2*g
!
Evaluation_layers/accuracy�z"?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�z"?T(�t       _gs�	��:`gh�A3*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/loss7�@
#
Evaluation_layers/accuracy_1�"?O�mt       _gs�	�?`gh�A4*g
!
Evaluation_layers/accuracyȢ"?

Evaluation_layers/loss�w�?
#
Evaluation_layers/accuracy_1Ȣ"?a�M t       _gs�	LC`gh�A5*g
!
Evaluation_layers/accuracy̪"?

Evaluation_layers/loss�L�?
#
Evaluation_layers/accuracy_1̪"?	��t       _gs�	��G`gh�A6*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�M�?
#
Evaluation_layers/accuracy_1��"?W��t       _gs�	��K`gh�A7*g
!
Evaluation_layers/accuracy#?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1#?rQUt       _gs�	�O`gh�A8*g
!
Evaluation_layers/accuracy7#?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_17#?��ht       _gs�	��S`gh�A9*g
!
Evaluation_layers/accuracy?�#?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1?�#?`d~Pt       _gs�	�{W`gh�A:*g
!
Evaluation_layers/accuracyx$?

Evaluation_layers/lossF��?
#
Evaluation_layers/accuracy_1x$?�2w:t       _gs�	K�[`gh�A;*g
!
Evaluation_layers/accuracyx$?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1x$?fn.t       _gs�	�gj`gh�A<*g
!
Evaluation_layers/accuracyZ�#?

Evaluation_layers/lossh�?
#
Evaluation_layers/accuracy_1Z�#?��a\t       _gs�	�En`gh�A=*g
!
Evaluation_layers/accuracyb�#?

Evaluation_layers/loss�I�?
#
Evaluation_layers/accuracy_1b�#?��:t       _gs�	/r`gh�A>*g
!
Evaluation_layers/accuracyX�#?

Evaluation_layers/losst��?
#
Evaluation_layers/accuracy_1X�#?t�t       _gs�	jtv`gh�A?*g
!
Evaluation_layers/accuracy2#?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_12#?rS��t       _gs�	ʅz`gh�A@*g
!
Evaluation_layers/accuracy3#?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_13#?�n�t       _gs�	�`gh�AA*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�b�?
#
Evaluation_layers/accuracy_1��"?��șt       _gs�	G��`gh�AB*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��"?k�elt       _gs�	�`gh�AC*g
!
Evaluation_layers/accuracy�N"?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�N"?���t       _gs�	%�`gh�AD*g
!
Evaluation_layers/accuracy;~!?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1;~!?����t       _gs�	���`gh�AE*g
!
Evaluation_layers/accuracy�y ?

Evaluation_layers/loss�k�?
#
Evaluation_layers/accuracy_1�y ?bUa�t       _gs�	L/�`gh�AF*g
!
Evaluation_layers/accuracyI�!?

Evaluation_layers/loss[��?
#
Evaluation_layers/accuracy_1I�!?�Złt       _gs�	�	�`gh�AG*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�� ?V@�At       _gs�	-֨`gh�AH*g
!
Evaluation_layers/accuracy{"?

Evaluation_layers/loss1��?
#
Evaluation_layers/accuracy_1{"?\��Vt       _gs�	�$�`gh�AI*g
!
Evaluation_layers/accuracy�5 ?

Evaluation_layers/loss4��?
#
Evaluation_layers/accuracy_1�5 ?���t       _gs�	���`gh�AJ*g
!
Evaluation_layers/accuracyܹ ?

Evaluation_layers/loss�{ @
#
Evaluation_layers/accuracy_1ܹ ?�q�t       _gs�	j��`gh�AK*g
!
Evaluation_layers/accuracyө ?

Evaluation_layers/loss'@
#
Evaluation_layers/accuracy_1ө ?�Sv8t       _gs�	�`gh�AL*g
!
Evaluation_layers/accuracyt�?

Evaluation_layers/loss5�@
#
Evaluation_layers/accuracy_1t�?�]�t       _gs�	̎�`gh�AM*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1!?����t       _gs�	Q7�`gh�AN*g
!
Evaluation_layers/accuracy5?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_15?c��t       _gs�	2��`gh�AO*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss�=@
#
Evaluation_layers/accuracy_1�� ?�B�Jt       _gs�	s"�`gh�AP*g
!
Evaluation_layers/accuracyF!?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1F!?�t       _gs�	#��`gh�AQ*g
!
Evaluation_layers/accuracyb�?

Evaluation_layers/lossM�@
#
Evaluation_layers/accuracy_1b�?��.Rt       _gs�	l�`gh�AR*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss�k@
#
Evaluation_layers/accuracy_1�� ?�˙�t       _gs�	�K�`gh�AS*g
!
Evaluation_layers/accuracy�b"?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�b"?���t       _gs�	��`gh�AT*g
!
Evaluation_layers/accuracyݽ ?

Evaluation_layers/loss�	@
#
Evaluation_layers/accuracy_1ݽ ?�r�t       _gs�	<��`gh�AU*g
!
Evaluation_layers/accuracy|�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1|�?��Bt       _gs�	N�`gh�AV*g
!
Evaluation_layers/accuracyl�?

Evaluation_layers/loss�A@
#
Evaluation_layers/accuracy_1l�?�>�)t       _gs�	/��`gh�AW*g
!
Evaluation_layers/accuracy�!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�!?^�yyt       _gs�	���`gh�AX*g
!
Evaluation_layers/accuracy)Z!?

Evaluation_layers/lossp�@
#
Evaluation_layers/accuracy_1)Z!?�̸t       _gs�	%�`gh�AY*g
!
Evaluation_layers/accuracy ?

Evaluation_layers/loss۶@
#
Evaluation_layers/accuracy_1 ?��B�t       _gs�	�~agh�AZ*g
!
Evaluation_layers/accuracyu�?

Evaluation_layers/loss\V@
#
Evaluation_layers/accuracy_1u�?��}t       _gs�	ۍagh�A[*g
!
Evaluation_layers/accuracy�!?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�!?�$Ot       _gs�	 �agh�A\*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1� ?%}�t       _gs�	agh�A]*g
!
Evaluation_layers/accuracy
!?

Evaluation_layers/loss]&@
#
Evaluation_layers/accuracy_1
!?oL��t       _gs�	�w"agh�A^*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss>y@
#
Evaluation_layers/accuracy_1��?�87�t       _gs�	�8'agh�A_*g
!
Evaluation_layers/accuracy_�!?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1_�!?�OKt       _gs�	��+agh�A`*g
!
Evaluation_layers/accuracy�\?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�\?]�Ot       _gs�	�\0agh�Aa*g
!
Evaluation_layers/accuracy<q?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1<q?w
6t       _gs�	ݿ4agh�Ab*g
!
Evaluation_layers/accuracy`�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1`�?r�Ѷt       _gs�	(9agh�Ac*g
!
Evaluation_layers/accuracyؠ?

Evaluation_layers/lossg�@
#
Evaluation_layers/accuracy_1ؠ?H��'t       _gs�	>�Gagh�Ad*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss @
#
Evaluation_layers/accuracy_1�� ?��e�t       _gs�	bKagh�Ae*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss4c@
#
Evaluation_layers/accuracy_1�?k:��t       _gs�	�WOagh�Af*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/loss6�@
#
Evaluation_layers/accuracy_1!?�̤t       _gs�	ĕSagh�Ag*g
!
Evaluation_layers/accuracy#=?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1#=?�9��t       _gs�	[�Wagh�Ah*g
!
Evaluation_layers/accuracyF!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1F!?�P*�t       _gs�	Vq\agh�Ai*g
!
Evaluation_layers/accuracy.U?

Evaluation_layers/lossU@
#
Evaluation_layers/accuracy_1.U?���yt       _gs�	}p`agh�Aj*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�"?$���t       _gs�	B�dagh�Ak*g
!
Evaluation_layers/accuracy�q ?

Evaluation_layers/lossX$@
#
Evaluation_layers/accuracy_1�q ?DD�t       _gs�	D�hagh�Al*g
!
Evaluation_layers/accuracy}"?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1}"?�h�t       _gs�	��lagh�Am*g
!
Evaluation_layers/accuracy�Q ?

Evaluation_layers/loss}p@
#
Evaluation_layers/accuracy_1�Q ?SZ�t       _gs�	��}agh�An*g
!
Evaluation_layers/accuracyq�!?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1q�!?Hdŏt       _gs�	�ׁagh�Ao*g
!
Evaluation_layers/accuracyҥ ?

Evaluation_layers/lossV_@
#
Evaluation_layers/accuracy_1ҥ ?9(O�t       _gs�	�a�agh�Ap*g
!
Evaluation_layers/accuracyk�?

Evaluation_layers/lossǑ@
#
Evaluation_layers/accuracy_1k�?��0�t       _gs�	'�agh�Aq*g
!
Evaluation_layers/accuracy�~"?

Evaluation_layers/loss:� @
#
Evaluation_layers/accuracy_1�~"?�O��t       _gs�	�w�agh�Ar*g
!
Evaluation_layers/accuracyk�?

Evaluation_layers/loss#F@
#
Evaluation_layers/accuracy_1k�?H�St       _gs�	�
�agh�As*g
!
Evaluation_layers/accuracy$R!?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1$R!? 5�t       _gs�	lr�agh�At*g
!
Evaluation_layers/accuracy\�#?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1\�#?�{gt       _gs�	��agh�Au*g
!
Evaluation_layers/accuracyĉ ?

Evaluation_layers/loss5  @
#
Evaluation_layers/accuracy_1ĉ ?SD}�t       _gs�	���agh�Av*g
!
Evaluation_layers/accuracy$_#?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1$_#?�c�t       _gs�	��agh�Aw*g
!
Evaluation_layers/accuracy"J!?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1"J!?�U��t       _gs�	��agh�Ax*g
!
Evaluation_layers/accuracy#?

Evaluation_layers/lossEc�?
#
Evaluation_layers/accuracy_1#?��q�t       _gs�	�!�agh�Ay*g
!
Evaluation_layers/accuracy�^"?

Evaluation_layers/loss\��?
#
Evaluation_layers/accuracy_1�^"?<�1t       _gs�	�V�agh�Az*g
!
Evaluation_layers/accuracyy$?

Evaluation_layers/lossle�?
#
Evaluation_layers/accuracy_1y$?nf�t       _gs�	Ş�agh�A{*g
!
Evaluation_layers/accuracyc�#?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1c�#?��[t       _gs�	���agh�A|*g
!
Evaluation_layers/accuracy#?

Evaluation_layers/loss2��?
#
Evaluation_layers/accuracy_1#?Un^�t       _gs�	���agh�A}*g
!
Evaluation_layers/accuracy+o#?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1+o#? {'t       _gs�	�g�agh�A~*g
!
Evaluation_layers/accuracy�#?

Evaluation_layers/loss�n�?
#
Evaluation_layers/accuracy_1�#?I�S~t       _gs�	��agh�A*g
!
Evaluation_layers/accuracyO#?

Evaluation_layers/lossԞ�?
#
Evaluation_layers/accuracy_1O#?�t�u       ��Ax	���agh�A�*g
!
Evaluation_layers/accuracyG#?

Evaluation_layers/loss�v�?
#
Evaluation_layers/accuracy_1G#?���6u       ��Ax	l��agh�A�*g
!
Evaluation_layers/accuracy�
#?

Evaluation_layers/lossD��?
#
Evaluation_layers/accuracy_1�
#?eg�u       ��Ax	bQ�agh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossRo�?
#
Evaluation_layers/accuracy_1��"?�ө�u       ��Ax	�@�agh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss`��?
#
Evaluation_layers/accuracy_1��"?�Y\Cu       ��Ax	��agh�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/lossd��?
#
Evaluation_layers/accuracy_1�"?`M�u       ��Ax	���agh�A�*g
!
Evaluation_layers/accuracy>�#?

Evaluation_layers/loss�,�?
#
Evaluation_layers/accuracy_1>�#?�}pJu       ��Ax	���agh�A�*g
!
Evaluation_layers/accuracy�2"?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�2"?���Pu       ��Ax	��agh�A�*g
!
Evaluation_layers/accuracy�r"?

Evaluation_layers/loss�^�?
#
Evaluation_layers/accuracy_1�r"?��S0u       ��Ax	b2bgh�A�*g
!
Evaluation_layers/accuracy�j"?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�j"?�x�Lu       ��Ax	jIbgh�A�*g
!
Evaluation_layers/accuracy<�!?

Evaluation_layers/loss�@�?
#
Evaluation_layers/accuracy_1<�!?��u       ��Ax	Wsbgh�A�*g
!
Evaluation_layers/accuracyٵ ?

Evaluation_layers/loss!H�?
#
Evaluation_layers/accuracy_1ٵ ?#�!Ru       ��Ax	��bgh�A�*g
!
Evaluation_layers/accuracy3n!?

Evaluation_layers/lossZb�?
#
Evaluation_layers/accuracy_13n!?`5��u       ��Ax	_Pbgh�A�*g
!
Evaluation_layers/accuracy$R!?

Evaluation_layers/loss.��?
#
Evaluation_layers/accuracy_1$R!?~~�%u       ��Ax	.�#bgh�A�*g
!
Evaluation_layers/accuracyڵ ?

Evaluation_layers/loss&��?
#
Evaluation_layers/accuracy_1ڵ ?N�9u       ��Ax	�'bgh�A�*g
!
Evaluation_layers/accuracy�y ?

Evaluation_layers/loss�g�?
#
Evaluation_layers/accuracy_1�y ?\vvu       ��Ax	�s,bgh�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss�l�?
#
Evaluation_layers/accuracy_1� ?\�C�u       ��Ax	�0bgh�A�*g
!
Evaluation_layers/accuracy�a ?

Evaluation_layers/lossf��?
#
Evaluation_layers/accuracy_1�a ?*�޳u       ��Ax	�5bgh�A�*g
!
Evaluation_layers/accuracy.f!?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1.f!?<�D�u       ��Ax	�9bgh�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/losskD�?
#
Evaluation_layers/accuracy_1� ?����u       ��Ax	�F>bgh�A�*g
!
Evaluation_layers/accuracy�- ?

Evaluation_layers/loss�?�?
#
Evaluation_layers/accuracy_1�- ?���Yu       ��Ax	`	Cbgh�A�*g
!
Evaluation_layers/accuracyV�?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1V�?��� u       ��Ax	V{Gbgh�A�*g
!
Evaluation_layers/accuracy>u?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1>u?-���u       ��Ax	V7Vbgh�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/lossT��?
#
Evaluation_layers/accuracy_1� ?���u       ��Ax	�Zbgh�A�*g
!
Evaluation_layers/accuracyn�?

Evaluation_layers/loss�m @
#
Evaluation_layers/accuracy_1n�?�
�	u       ��Ax	_bgh�A�*g
!
Evaluation_layers/accuracy,Q?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1,Q?&~{u       ��Ax	i�cbgh�A�*g
!
Evaluation_layers/accuracyx�?

Evaluation_layers/loss2  @
#
Evaluation_layers/accuracy_1x�?���7u       ��Ax	�shbgh�A�*g
!
Evaluation_layers/accuracy`�?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1`�?�:_�u       ��Ax	��lbgh�A�*g
!
Evaluation_layers/accuracy#=?

Evaluation_layers/loss �@
#
Evaluation_layers/accuracy_1#=?KQ�u       ��Ax	Aqbgh�A�*g
!
Evaluation_layers/accuracy+M?

Evaluation_layers/loss�V@
#
Evaluation_layers/accuracy_1+M?���u       ��Ax	b�ubgh�A�*g
!
Evaluation_layers/accuracyD�?

Evaluation_layers/loss�	@
#
Evaluation_layers/accuracy_1D�?��$wu       ��Ax	 Fzbgh�A�*g
!
Evaluation_layers/accuracy8i?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_18i?��:u       ��Ax	��~bgh�A�*g
!
Evaluation_layers/accuracy)?

Evaluation_layers/loss.S@
#
Evaluation_layers/accuracy_1)?���!u       ��Ax	Qw�bgh�A�*g
!
Evaluation_layers/accuracy*M?

Evaluation_layers/loss�*@
#
Evaluation_layers/accuracy_1*M?PyEu       ��Ax	U`�bgh�A�*g
!
Evaluation_layers/accuracyJ�?

Evaluation_layers/loss#)@
#
Evaluation_layers/accuracy_1J�?�h!�u       ��Ax	iO�bgh�A�*g
!
Evaluation_layers/accuracy-?

Evaluation_layers/losss�@
#
Evaluation_layers/accuracy_1-?�üu       ��Ax	e�bgh�A�*g
!
Evaluation_layers/accuracyz�?

Evaluation_layers/lossX�@
#
Evaluation_layers/accuracy_1z�?0
$�u       ��Ax	X��bgh�A�*g
!
Evaluation_layers/accuracyB}?

Evaluation_layers/lossJ�@
#
Evaluation_layers/accuracy_1B}?�r1{u       ��Ax	/�bgh�A�*g
!
Evaluation_layers/accuracy%A?

Evaluation_layers/loss/�@
#
Evaluation_layers/accuracy_1%A?7$`�u       ��Ax	��bgh�A�*g
!
Evaluation_layers/accuracyW�?

Evaluation_layers/lossV�@
#
Evaluation_layers/accuracy_1W�?���Iu       ��Ax	g��bgh�A�*g
!
Evaluation_layers/accuracyZ�?

Evaluation_layers/loss�g@
#
Evaluation_layers/accuracy_1Z�?��SRu       ��Ax	���bgh�A�*g
!
Evaluation_layers/accuracyz�?

Evaluation_layers/loss�w@
#
Evaluation_layers/accuracy_1z�?����u       ��Ax	�w�bgh�A�*g
!
Evaluation_layers/accuracyn�?

Evaluation_layers/loss�M@
#
Evaluation_layers/accuracy_1n�?�C)u       ��Ax	��bgh�A�*g
!
Evaluation_layers/accuracyD�?

Evaluation_layers/loss�&@
#
Evaluation_layers/accuracy_1D�?���u       ��Ax	]�bgh�A�*g
!
Evaluation_layers/accuracy4a?

Evaluation_layers/loss>i@
#
Evaluation_layers/accuracy_14a?[L�u       ��Ax	(��bgh�A�*g
!
Evaluation_layers/accuracy�Y ?

Evaluation_layers/lossp�@
#
Evaluation_layers/accuracy_1�Y ?ğ�^u       ��Ax	>��bgh�A�*g
!
Evaluation_layers/accuracyP�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1P�?��K}u       ��Ax	"}�bgh�A�*g
!
Evaluation_layers/accuracyg�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1g�?��u       ��Ax	�|�bgh�A�*g
!
Evaluation_layers/accuracy�E ?

Evaluation_layers/loss�v@
#
Evaluation_layers/accuracy_1�E ?-��u       ��Ax	��bgh�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1� ?_!��u       ��Ax	��bgh�A�*g
!
Evaluation_layers/accuracyp�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1p�?��F>u       ��Ax	���bgh�A�*g
!
Evaluation_layers/accuracyq�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1q�?�[�u       ��Ax	���bgh�A�*g
!
Evaluation_layers/accuracyo�?

Evaluation_layers/lossA�@
#
Evaluation_layers/accuracy_1o�?x�L�u       ��Ax	s�bgh�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss @
#
Evaluation_layers/accuracy_1� ?uT��u       ��Ax	[�bgh�A�*g
!
Evaluation_layers/accuracyx�?

Evaluation_layers/lossl�@
#
Evaluation_layers/accuracy_1x�?3�u       ��Ax	�H�bgh�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss"	@
#
Evaluation_layers/accuracy_1� ?�;T�u       ��Ax	uVcgh�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss8^	@
#
Evaluation_layers/accuracy_1� ?n6��u       ��Ax	�scgh�A�*g
!
Evaluation_layers/accuracy�m ?

Evaluation_layers/loss=�
@
#
Evaluation_layers/accuracy_1�m ?�c��u       ��Ax	}a	cgh�A�*g
!
Evaluation_layers/accuracy�! ?

Evaluation_layers/loss�(	@
#
Evaluation_layers/accuracy_1�! ?�E�u       ��Ax	
zcgh�A�*g
!
Evaluation_layers/accuracyD�?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1D�?4�uKu       ��Ax	bycgh�A�*g
!
Evaluation_layers/accuracy�% ?

Evaluation_layers/lossV�
@
#
Evaluation_layers/accuracy_1�% ?h���u       ��Ax	іcgh�A�*g
!
Evaluation_layers/accuracya�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1a�?^6�9u       ��Ax	�cgh�A�*g
!
Evaluation_layers/accuracy�M ?

Evaluation_layers/loss�#@
#
Evaluation_layers/accuracy_1�M ?�8��u       ��Ax	��'cgh�A�*g
!
Evaluation_layers/accuracy�) ?

Evaluation_layers/lossii@
#
Evaluation_layers/accuracy_1�) ?x��u       ��Ax	9,cgh�A�*g
!
Evaluation_layers/accuracy�1 ?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1�1 ?(̓�u       ��Ax	�M0cgh�A�*g
!
Evaluation_layers/accuracy`�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1`�?=b^Tu       ��Ax	��4cgh�A�*g
!
Evaluation_layers/accuracy�Q ?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�Q ?mu       ��Ax	�I9cgh�A�*g
!
Evaluation_layers/accuracyȑ ?

Evaluation_layers/loss�M@
#
Evaluation_layers/accuracy_1ȑ ?Gv'u       ��Ax	b�=cgh�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/lossc@
#
Evaluation_layers/accuracy_1� ?ɯػu       ��Ax	�=Bcgh�A�*g
!
Evaluation_layers/accuracyʕ ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1ʕ ?ݠ�u       ��Ax	��Fcgh�A�*g
!
Evaluation_layers/accuracy�9 ?

Evaluation_layers/loss�	@
#
Evaluation_layers/accuracy_1�9 ?�1�u       ��Ax	�Jcgh�A�*g
!
Evaluation_layers/accuracy !?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1 !?M�u       ��Ax	��Ncgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss�c@
#
Evaluation_layers/accuracy_1�� ?`I+�u       ��Ax	H�]cgh�A�*g
!
Evaluation_layers/accuracy�1 ?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1�1 ?,R�pu       ��Ax	�Bbcgh�A�*g
!
Evaluation_layers/accuracy	!?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1	!?n'u       ��Ax	��fcgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/lossF)@
#
Evaluation_layers/accuracy_1�� ?����u       ��Ax	j�jcgh�A�*g
!
Evaluation_layers/accuracy
!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1
!?&h1�u       ��Ax	u&ocgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss6�@
#
Evaluation_layers/accuracy_1�� ?��u       ��Ax	��scgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss+�@
#
Evaluation_layers/accuracy_1�� ?�p�(u       ��Ax	
�xcgh�A�*g
!
Evaluation_layers/accuracy�m ?

Evaluation_layers/lossf�@
#
Evaluation_layers/accuracy_1�m ?$���u       ��Ax	��}cgh�A�*g
!
Evaluation_layers/accuracy֭ ?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1֭ ?�Cu       ��Ax	��cgh�A�*g
!
Evaluation_layers/accuracy޽ ?

Evaluation_layers/lossv�@
#
Evaluation_layers/accuracy_1޽ ?�=2�u       ��Ax	K��cgh�A�*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1!?Q9��u       ��Ax	�cgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�� ?*�wu       ��Ax	���cgh�A�*g
!
Evaluation_layers/accuracyխ ?

Evaluation_layers/losspE@
#
Evaluation_layers/accuracy_1խ ?d0�u       ��Ax	̄�cgh�A�*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1!?�m=u       ��Ax	13�cgh�A�*g
!
Evaluation_layers/accuracyɕ ?

Evaluation_layers/lossn�@
#
Evaluation_layers/accuracy_1ɕ ?�h�u       ��Ax	��cgh�A�*g
!
Evaluation_layers/accuracy۹ ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1۹ ?֔`su       ��Ax	C�cgh�A�*g
!
Evaluation_layers/accuracyױ ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1ױ ?����u       ��Ax	$v�cgh�A�*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/loss�H@
#
Evaluation_layers/accuracy_1!?�l�u       ��Ax	�ʵcgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�� ?,DGu       ��Ax	�cgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss%�@
#
Evaluation_layers/accuracy_1�� ?d>`�u       ��Ax	s�cgh�A�*g
!
Evaluation_layers/accuracy>!?

Evaluation_layers/loss�R@
#
Evaluation_layers/accuracy_1>!?���u       ��Ax	���cgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/lossh�@
#
Evaluation_layers/accuracy_1�� ?�8�3u       ��Ax	L��cgh�A�*g
!
Evaluation_layers/accuracy�!?

Evaluation_layers/lossY@
#
Evaluation_layers/accuracy_1�!?��ғu       ��Ax	���cgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�� ?)��hu       ��Ax	v��cgh�A�*g
!
Evaluation_layers/accuracy&!?

Evaluation_layers/loss�,@
#
Evaluation_layers/accuracy_1&!?@2�`u       ��Ax	���cgh�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/loss .@
#
Evaluation_layers/accuracy_1�� ?��x;u       ��Ax	���cgh�A�*g
!
Evaluation_layers/accuracy(V!?

Evaluation_layers/loss3�@
#
Evaluation_layers/accuracy_1(V!?#T8lu       ��Ax	I�cgh�A�*g
!
Evaluation_layers/accuracyō ?

Evaluation_layers/lossO@
#
Evaluation_layers/accuracy_1ō ?��Yiu       ��Ax	GR�cgh�A�*g
!
Evaluation_layers/accuracyL�!?

Evaluation_layers/lossK\@
#
Evaluation_layers/accuracy_1L�!?Q�i�u       ��Ax	*@�cgh�A�*g
!
Evaluation_layers/accuracy4r!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_14r!?R��u       ��Ax	���cgh�A�*g
!
Evaluation_layers/accuracy1j!?

Evaluation_layers/lossZ�@
#
Evaluation_layers/accuracy_11j!?'�^�u       ��Ax	#� dgh�A�*g
!
Evaluation_layers/accuracy/f!?

Evaluation_layers/loss&8@
#
Evaluation_layers/accuracy_1/f!?tQ[~u       ��Ax	Wdgh�A�*g
!
Evaluation_layers/accuracyB�!?

Evaluation_layers/lossO&@
#
Evaluation_layers/accuracy_1B�!?ϟ'u       ��Ax	�	dgh�A�*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/loss�x@
#
Evaluation_layers/accuracy_1!?��(�u       ��Ax	%{dgh�A�*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1!?HS>u       ��Ax	96dgh�A�*g
!
Evaluation_layers/accuracy@�!?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1@�!?>�S�u       ��Ax	��dgh�A�*g
!
Evaluation_layers/accuracy3n!?

Evaluation_layers/loss�P@
#
Evaluation_layers/accuracy_13n!?��`u       ��Ax	o�dgh�A�*g
!
Evaluation_layers/accuracyT�!?

Evaluation_layers/lossl@
#
Evaluation_layers/accuracy_1T�!?�bHu       ��Ax	��dgh�A�*g
!
Evaluation_layers/accuracy^�!?

Evaluation_layers/loss�e@
#
Evaluation_layers/accuracy_1^�!??H�5u       ��Ax	t5$dgh�A�*g
!
Evaluation_layers/accuracy>!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1>!?u���u       ��Ax	4O(dgh�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/lossݥ@
#
Evaluation_layers/accuracy_1�"?���u       ��Ax	$�6dgh�A�*g
!
Evaluation_layers/accuracyu�!?

Evaluation_layers/loss�o@
#
Evaluation_layers/accuracy_1u�!?T+�Lu       ��Ax	28;dgh�A�*g
!
Evaluation_layers/accuracyv�!?

Evaluation_layers/loss�B@
#
Evaluation_layers/accuracy_1v�!?���'u       ��Ax	(�?dgh�A�*g
!
Evaluation_layers/accuracya�!?

Evaluation_layers/loss3�@
#
Evaluation_layers/accuracy_1a�!?��P'u       ��Ax	��Cdgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�	@
#
Evaluation_layers/accuracy_1��"?]���u       ��Ax	&Hdgh�A�*g
!
Evaluation_layers/accuracyr�!?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1r�!?I��u       ��Ax	,Ldgh�A�*g
!
Evaluation_layers/accuracym�!?

Evaluation_layers/loss1�@
#
Evaluation_layers/accuracy_1m�!?���u       ��Ax	��Pdgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossS/
@
#
Evaluation_layers/accuracy_1��"?�41�u       ��Ax	��Tdgh�A�*g
!
Evaluation_layers/accuracy�>"?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1�>"?��|�u       ��Ax	^Ydgh�A�*g
!
Evaluation_layers/accuracyҶ"?

Evaluation_layers/lossf�	@
#
Evaluation_layers/accuracy_1Ҷ"?��,iu       ��Ax	��]dgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/losspt
@
#
Evaluation_layers/accuracy_1��"?Z���u       ��Ax	�fndgh�A�*g
!
Evaluation_layers/accuracy�n"?

Evaluation_layers/losso
@
#
Evaluation_layers/accuracy_1�n"?�<u       ��Ax	Ardgh�A�*g
!
Evaluation_layers/accuracy�z"?

Evaluation_layers/loss`$
@
#
Evaluation_layers/accuracy_1�z"?R�?u       ��Ax	�cvdgh�A�*g
!
Evaluation_layers/accuracy�""?

Evaluation_layers/loss \@
#
Evaluation_layers/accuracy_1�""?��M7u       ��Ax	K{zdgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��"?�I�u       ��Ax	̤~dgh�A�*g
!
Evaluation_layers/accuracyÖ"?

Evaluation_layers/lossw
@
#
Evaluation_layers/accuracy_1Ö"?r1�Tu       ��Ax	]Ȃdgh�A�*g
!
Evaluation_layers/accuracy?#?

Evaluation_layers/loss�	@
#
Evaluation_layers/accuracy_1?#?� u       ��Ax	u�dgh�A�*g
!
Evaluation_layers/accuracy<�#?

Evaluation_layers/loss�v@
#
Evaluation_layers/accuracy_1<�#?6>��u       ��Ax	]�dgh�A�*g
!
Evaluation_layers/accuracyƞ"?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1ƞ"?9V�u       ��Ax	D��dgh�A�*g
!
Evaluation_layers/accuracy/#?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1/#?�{Hu       ��Ax	v͓dgh�A�*g
!
Evaluation_layers/accuracy;#?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1;#?���<u       ��Ax	O �dgh�A�*g
!
Evaluation_layers/accuracyв"?

Evaluation_layers/loss�-
@
#
Evaluation_layers/accuracy_1в"?��?�u       ��Ax	�çdgh�A�*g
!
Evaluation_layers/accuracy=�#?

Evaluation_layers/lossl@
#
Evaluation_layers/accuracy_1=�#?�Qpu       ��Ax	N��dgh�A�*g
!
Evaluation_layers/accuracy+o#?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1+o#?���u       ��Ax	��dgh�A�*g
!
Evaluation_layers/accuracy(g#?

Evaluation_layers/loss1	@
#
Evaluation_layers/accuracy_1(g#?V,�Bu       ��Ax	���dgh�A�*g
!
Evaluation_layers/accuracy;�#?

Evaluation_layers/lossQ@
#
Evaluation_layers/accuracy_1;�#?IU�7u       ��Ax	�\�dgh�A�*g
!
Evaluation_layers/accuracy4#?

Evaluation_layers/loss�-	@
#
Evaluation_layers/accuracy_14#?t'�u       ��Ax	��dgh�A�*g
!
Evaluation_layers/accuracy<�#?

Evaluation_layers/loss� @
#
Evaluation_layers/accuracy_1<�#?���u       ��Ax	!!�dgh�A�*g
!
Evaluation_layers/accuracyN�#?

Evaluation_layers/lossf�@
#
Evaluation_layers/accuracy_1N�#?���u       ��Ax	 ��dgh�A�*g
!
Evaluation_layers/accuracyx$?

Evaluation_layers/loss(�@
#
Evaluation_layers/accuracy_1x$?�1�u       ��Ax	P��dgh�A�*g
!
Evaluation_layers/accuracy|$?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1|$?���Du       ��Ax	|��dgh�A�*g
!
Evaluation_layers/accuracy`�#?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1`�#?�;#u       ��Ax	6��dgh�A�*g
!
Evaluation_layers/accuracy�o$?

Evaluation_layers/lossh
@
#
Evaluation_layers/accuracy_1�o$?�ۦ�u       ��Ax	\�dgh�A�*g
!
Evaluation_layers/accuracy_�#?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1_�#?��Ԩu       ��Ax	ݑ�dgh�A�*g
!
Evaluation_layers/accuracy~$?

Evaluation_layers/loss	f@
#
Evaluation_layers/accuracy_1~$?�/�'u       ��Ax	8�dgh�A�*g
!
Evaluation_layers/accuracy8�#?

Evaluation_layers/lossi	@
#
Evaluation_layers/accuracy_18�#?�K6u       ��Ax	b��dgh�A�*g
!
Evaluation_layers/accuracy�[$?

Evaluation_layers/loss\�@
#
Evaluation_layers/accuracy_1�[$?^��[u       ��Ax	��dgh�A�*g
!
Evaluation_layers/accuracyp�#?

Evaluation_layers/loss^@
#
Evaluation_layers/accuracy_1p�#?�$�Ru       ��Ax	``�dgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss2e@
#
Evaluation_layers/accuracy_1��$?务�u       ��Ax	,��dgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossk�@
#
Evaluation_layers/accuracy_1��$?Ľ:u       ��Ax	��egh�A�*g
!
Evaluation_layers/accuracy�C$?

Evaluation_layers/loss�R@
#
Evaluation_layers/accuracy_1�C$?+/S�u       ��Ax	|egh�A�*g
!
Evaluation_layers/accuracy�w$?

Evaluation_layers/loss!�@
#
Evaluation_layers/accuracy_1�w$?&�opu       ��Ax	�egh�A�*g
!
Evaluation_layers/accuracyy$?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1y$?Cu       ��Ax	Qegh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�h@
#
Evaluation_layers/accuracy_1��$?�?��u       ��Ax	�5egh�A�*g
!
Evaluation_layers/accuracy�w$?

Evaluation_layers/lossCi@
#
Evaluation_layers/accuracy_1�w$?nA"�u       ��Ax	\�"egh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��$?$�
&u       ��Ax	Cr&egh�A�*g
!
Evaluation_layers/accuracy�O$?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�O$?�è.u       ��Ax	}�*egh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossdk@
#
Evaluation_layers/accuracy_1��$?�L]�u       ��Ax	#�.egh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossr@
#
Evaluation_layers/accuracy_1��$?\p�u       ��Ax	��3egh�A�*g
!
Evaluation_layers/accuracy�K$?

Evaluation_layers/loss�D@
#
Evaluation_layers/accuracy_1�K$?u:s�u       ��Ax	�L8egh�A�*g
!
Evaluation_layers/accuracy (%?

Evaluation_layers/loss�K@
#
Evaluation_layers/accuracy_1 (%??6�u       ��Ax	�vHegh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1��$?XL�u       ��Ax		�Legh�A�*g
!
Evaluation_layers/accuracy4%?

Evaluation_layers/loss+p@
#
Evaluation_layers/accuracy_14%?k��u       ��Ax	2�Pegh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��$?۠Ƚu       ��Ax	�Uegh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��$?��uJu       ��Ax	߮Yegh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss�R@
#
Evaluation_layers/accuracy_1�%?��tWu       ��Ax	�H^egh�A�*g
!
Evaluation_layers/accuracyϿ$?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1Ͽ$?���u       ��Ax	��begh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�%?W{��u       ��Ax	^�gegh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss7�@
#
Evaluation_layers/accuracy_1�%?2!9u       ��Ax	�Slegh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��$?�EGu       ��Ax	�+qegh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�%?3��u       ��Ax	]��egh�A�*g
!
Evaluation_layers/accuracyο$?

Evaluation_layers/losso�@
#
Evaluation_layers/accuracy_1ο$?D�lu       ��Ax	a��egh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�%?����u       ��Ax	��egh�A�*g
!
Evaluation_layers/accuracyT%?

Evaluation_layers/lossB�@
#
Evaluation_layers/accuracy_1T%?�9~�u       ��Ax	B[�egh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss+�@
#
Evaluation_layers/accuracy_1��$?wY�u       ��Ax	m��egh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss-@
#
Evaluation_layers/accuracy_1��$?����u       ��Ax	���egh�A�*g
!
Evaluation_layers/accuracy5�%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_15�%?}~��u       ��Ax	�'�egh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��$?�V[�u       ��Ax	܀�egh�A�*g
!
Evaluation_layers/accuracy+�%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1+�%?��w\u       ��Ax	�ܦegh�A�*g
!
Evaluation_layers/accuracyN�%?

Evaluation_layers/lossg$@
#
Evaluation_layers/accuracy_1N�%?S+~�u       ��Ax	�=�egh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/lossC@
#
Evaluation_layers/accuracy_1�%?�tOu       ��Ax	���egh�A�*g
!
Evaluation_layers/accuracyD�%?

Evaluation_layers/loss(u@
#
Evaluation_layers/accuracy_1D�%?;T!�u       ��Ax	ٸ�egh�A�*g
!
Evaluation_layers/accuracy(%?

Evaluation_layers/loss_Q@
#
Evaluation_layers/accuracy_1(%?R��u       ��Ax	!��egh�A�*g
!
Evaluation_layers/accuracy9�%?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_19�%?h|28u       ��Ax	���egh�A�*g
!
Evaluation_layers/accuracy@%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1@%?\d�mu       ��Ax	�#�egh�A�*g
!
Evaluation_layers/accuracy0�%?

Evaluation_layers/loss�W@
#
Evaluation_layers/accuracy_10�%?g�,u       ��Ax	�3�egh�A�*g
!
Evaluation_layers/accuracy-�%?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1-�%?Ţ� u       ��Ax	���egh�A�*g
!
Evaluation_layers/accuracyC�%?

Evaluation_layers/loss8�@
#
Evaluation_layers/accuracy_1C�%?N��u       ��Ax	]Q�egh�A�*g
!
Evaluation_layers/accuracyH%?

Evaluation_layers/loss� @
#
Evaluation_layers/accuracy_1H%?->mZu       ��Ax	P��egh�A�*g
!
Evaluation_layers/accuracy�H&?

Evaluation_layers/loss�}@
#
Evaluation_layers/accuracy_1�H&?%s��u       ��Ax	d
�egh�A�*g
!
Evaluation_layers/accuracyT%?

Evaluation_layers/lossnn@
#
Evaluation_layers/accuracy_1T%?T�ɘu       ��Ax	o��egh�A�*g
!
Evaluation_layers/accuracyK�%?

Evaluation_layers/lossd @
#
Evaluation_layers/accuracy_1K�%?X|�Lu       ��Ax	`��egh�A�*g
!
Evaluation_layers/accuracy7�%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_17�%?��u u       ��Ax	
��egh�A�*g
!
Evaluation_layers/accuracy5�%?

Evaluation_layers/loss�I@
#
Evaluation_layers/accuracy_15�%?�t�u       ��Ax	��egh�A�*g
!
Evaluation_layers/accuracyM�%?

Evaluation_layers/loss`�@
#
Evaluation_layers/accuracy_1M�%?�N��u       ��Ax	��fgh�A�*g
!
Evaluation_layers/accuracyY�%?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1Y�%?x���u       ��Ax	B'fgh�A�*g
!
Evaluation_layers/accuracyu&?

Evaluation_layers/loss�k@
#
Evaluation_layers/accuracy_1u&?�h��u       ��Ax	��
fgh�A�*g
!
Evaluation_layers/accuracyd%?

Evaluation_layers/loss�n@
#
Evaluation_layers/accuracy_1d%?[��u       ��Ax	�fgh�A�*g
!
Evaluation_layers/accuracyL�%?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1L�%?���uu       ��Ax	o0fgh�A�*g
!
Evaluation_layers/accuracyP�%?

Evaluation_layers/loss>�@
#
Evaluation_layers/accuracy_1P�%?�ؒu       ��Ax	hfgh�A�*g
!
Evaluation_layers/accuracyP�%?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1P�%?���u       ��Ax	�(fgh�A�*g
!
Evaluation_layers/accuracy,�%?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1,�%?�i��u       ��Ax	c,fgh�A�*g
!
Evaluation_layers/accuracyl&?

Evaluation_layers/lossI�@
#
Evaluation_layers/accuracy_1l&?��e�u       ��Ax	 �0fgh�A�*g
!
Evaluation_layers/accuracyB�%?

Evaluation_layers/loss�e@
#
Evaluation_layers/accuracy_1B�%?�7xu       ��Ax	q5fgh�A�*g
!
Evaluation_layers/accuracy�L&?

Evaluation_layers/loss(�@
#
Evaluation_layers/accuracy_1�L&?�k��u       ��Ax	��9fgh�A�*g
!
Evaluation_layers/accuracyb�%?

Evaluation_layers/lossY�@
#
Evaluation_layers/accuracy_1b�%?;��u       ��Ax	Ù>fgh�A�*g
!
Evaluation_layers/accuracyJ�%?

Evaluation_layers/loss�U@
#
Evaluation_layers/accuracy_1J�%?��j�u       ��Ax	-QCfgh�A�*g
!
Evaluation_layers/accuracyq&?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1q&?u!�u       ��Ax	p�Gfgh�A�*g
!
Evaluation_layers/accuracy�|&?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�|&?|�c�u       ��Ax	��Kfgh�A�*g
!
Evaluation_layers/accuracy^�%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1^�%?�hu       ��Ax	ʹOfgh�A�*g
!
Evaluation_layers/accuracy�D&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�D&?�`�u       ��Ax	�h]fgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss<y@
#
Evaluation_layers/accuracy_1��&?f1s�u       ��Ax	�Zafgh�A�*g
!
Evaluation_layers/accuracy�<&?

Evaluation_layers/loss?�@
#
Evaluation_layers/accuracy_1�<&?�f�u       ��Ax	Eiefgh�A�*g
!
Evaluation_layers/accuracy�4&?

Evaluation_layers/loss [@
#
Evaluation_layers/accuracy_1�4&?E�uYu       ��Ax	djfgh�A�*g
!
Evaluation_layers/accuracy�0&?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�0&?��-u       ��Ax	��nfgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��&?�G�u       ��Ax	Wwsfgh�A�*g
!
Evaluation_layers/accuracy�D&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�D&?�w�u       ��Ax	�wfgh�A�*g
!
Evaluation_layers/accuracy�p&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�p&?ψ��u       ��Ax	X9|fgh�A�*g
!
Evaluation_layers/accuracy�|&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�|&?����u       ��Ax	P�fgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��&?R�Ru       ��Ax	��fgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��&?'E��u       ��Ax	�іfgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/lossa�@
#
Evaluation_layers/accuracy_1��&?�SNu       ��Ax	��fgh�A�*g
!
Evaluation_layers/accuracyø&?

Evaluation_layers/loss\w@
#
Evaluation_layers/accuracy_1ø&?-�!pu       ��Ax	?�fgh�A�*g
!
Evaluation_layers/accuracy�4'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�4'?X+�:u       ��Ax	�٣fgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��&?�u�u       ��Ax	��fgh�A�*g
!
Evaluation_layers/accuracy�4'?

Evaluation_layers/loss�i@
#
Evaluation_layers/accuracy_1�4'?C��u       ��Ax	�j�fgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss9�@
#
Evaluation_layers/accuracy_1��&?h_u       ��Ax	7�fgh�A�*g
!
Evaluation_layers/accuracy='?

Evaluation_layers/loss�:@
#
Evaluation_layers/accuracy_1='?��/Zu       ��Ax	}?�fgh�A�*g
!
Evaluation_layers/accuracy�,'?

Evaluation_layers/loss0�@
#
Evaluation_layers/accuracy_1�,'?n�֞u       ��Ax	܃�fgh�A�*g
!
Evaluation_layers/accuracy�$'?

Evaluation_layers/lossj@
#
Evaluation_layers/accuracy_1�$'?��H$u       ��Ax	��fgh�A�*g
!
Evaluation_layers/accuracyA'?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1A'?��ju       ��Ax	
��fgh�A�*g
!
Evaluation_layers/accuracyE'?

Evaluation_layers/loss6� @
#
Evaluation_layers/accuracy_1E'?����u       ��Ax	���fgh�A�*g
!
Evaluation_layers/accuracy0�'?

Evaluation_layers/loss7@
#
Evaluation_layers/accuracy_10�'?:@u       ��Ax	�X�fgh�A�*g
!
Evaluation_layers/accuracy�('?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�('?��ׂu       ��Ax	���fgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss?@
#
Evaluation_layers/accuracy_1��&?�JO1u       ��Ax	_��fgh�A�*g
!
Evaluation_layers/accuracy='?

Evaluation_layers/lossО @
#
Evaluation_layers/accuracy_1='?��	�u       ��Ax	���fgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss8�@
#
Evaluation_layers/accuracy_1��&?�YQ�u       ��Ax	"A�fgh�A�*g
!
Evaluation_layers/accuracy"}'?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1"}'?�@�u       ��Ax	B	�fgh�A�*g
!
Evaluation_layers/accuracyB�'?

Evaluation_layers/loss$� @
#
Evaluation_layers/accuracy_1B�'? ���u       ��Ax	m��fgh�A�*g
!
Evaluation_layers/accuracy$�'?

Evaluation_layers/lossW7@
#
Evaluation_layers/accuracy_1$�'?�X�^u       ��Ax	8��fgh�A�*g
!
Evaluation_layers/accuracyq'?

Evaluation_layers/loss*@
#
Evaluation_layers/accuracy_1q'?��� u       ��Ax	R�ggh�A�*g
!
Evaluation_layers/accuracyu'?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1u'?jh�u       ��Ax	l�ggh�A�*g
!
Evaluation_layers/accuracy\�'?

Evaluation_layers/loss�
@
#
Evaluation_layers/accuracy_1\�'?�@u       ��Ax	�ggh�A�*g
!
Evaluation_layers/accuracy� '?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1� '?�г&u       ��Ax	O�ggh�A�*g
!
Evaluation_layers/accuracyA'?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1A'?8p�<u       ��Ax	J
ggh�A�*g
!
Evaluation_layers/accuracy y'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1 y'?��?�u       ��Ax	�.ggh�A�*g
!
Evaluation_layers/accuracy='?

Evaluation_layers/loss]@
#
Evaluation_layers/accuracy_1='?)ZG�u       ��Ax	4�!ggh�A�*g
!
Evaluation_layers/accuracyj(?

Evaluation_layers/lossL7�?
#
Evaluation_layers/accuracy_1j(?
�u       ��Ax	�H&ggh�A�*g
!
Evaluation_layers/accuracyS�'?

Evaluation_layers/loss΅@
#
Evaluation_layers/accuracy_1S�'?�9�u       ��Ax	�^*ggh�A�*g
!
Evaluation_layers/accuracyo(?

Evaluation_layers/loss�3 @
#
Evaluation_layers/accuracy_1o(?�>��u       ��Ax	��.ggh�A�*g
!
Evaluation_layers/accuracyI�'?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1I�'?7L�Cu       ��Ax	�y<ggh�A�*g
!
Evaluation_layers/accuracyJ�'?

Evaluation_layers/lossb��?
#
Evaluation_layers/accuracy_1J�'?���u       ��Ax	�x@ggh�A�*g
!
Evaluation_layers/accuracyL�'?

Evaluation_layers/lossm�@
#
Evaluation_layers/accuracy_1L�'?Pϝu       ��Ax	�jDggh�A�*g
!
Evaluation_layers/accuracys%(?

Evaluation_layers/lossN��?
#
Evaluation_layers/accuracy_1s%(?�w�u       ��Ax	p�Hggh�A�*g
!
Evaluation_layers/accuracyH�'?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1H�'?R��u       ��Ax	�Mggh�A�*g
!
Evaluation_layers/accuracyR�'?

Evaluation_layers/loss's�?
#
Evaluation_layers/accuracy_1R�'?�X6�u       ��Ax	�QQggh�A�*g
!
Evaluation_layers/accuracy`�'?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1`�'?ݳAwu       ��Ax	,�Uggh�A�*g
!
Evaluation_layers/accuracy}9(?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1}9(?f�͜u       ��Ax	�Zggh�A�*g
!
Evaluation_layers/accuracy`�'?

Evaluation_layers/loss f�?
#
Evaluation_layers/accuracy_1`�'?���u       ��Ax	ա^ggh�A�*g
!
Evaluation_layers/accuracyM�'?

Evaluation_layers/loss)3�?
#
Evaluation_layers/accuracy_1M�'?֨�u       ��Ax	�-cggh�A�*g
!
Evaluation_layers/accuracyn(?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1n(?�Du       ��Ax	��sggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss4��?
#
Evaluation_layers/accuracy_1��(?�p�lu       ��Ax	+ xggh�A�*g
!
Evaluation_layers/accuracyC�'?

Evaluation_layers/lossi� @
#
Evaluation_layers/accuracy_1C�'?;��u       ��Ax	{|ggh�A�*g
!
Evaluation_layers/accuracy�](?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�](?d�u�u       ��Ax	�ggh�A�*g
!
Evaluation_layers/accuracyo(?

Evaluation_layers/loss%�?
#
Evaluation_layers/accuracy_1o(?�NSu       ��Ax	E�ggh�A�*g
!
Evaluation_layers/accuracy�](?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�](?|��u       ��Ax	���ggh�A�*g
!
Evaluation_layers/accuracy�y(?

Evaluation_layers/loss-��?
#
Evaluation_layers/accuracy_1�y(?�o�@u       ��Ax	��ggh�A�*g
!
Evaluation_layers/accuracyh(?

Evaluation_layers/lossU @
#
Evaluation_layers/accuracy_1h(?ۑ@Ku       ��Ax	H�ggh�A�*g
!
Evaluation_layers/accuracy�e(?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�e(?3�Q�u       ��Ax	ԇ�ggh�A�*g
!
Evaluation_layers/accuracy�=(?

Evaluation_layers/lossM� @
#
Evaluation_layers/accuracy_1�=(?%�[u       ��Ax	}��ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�H�?
#
Evaluation_layers/accuracy_1��(?���Ou       ��Ax	�ggh�A�*g
!
Evaluation_layers/accuracy�M(?

Evaluation_layers/lossb�?
#
Evaluation_layers/accuracy_1�M(?��<�u       ��Ax	29�ggh�A�*g
!
Evaluation_layers/accuracy�Q(?

Evaluation_layers/loss�D�?
#
Evaluation_layers/accuracy_1�Q(?�P��u       ��Ax	��ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossܵ�?
#
Evaluation_layers/accuracy_1��(?��	u       ��Ax	◹ggh�A�*g
!
Evaluation_layers/accuracym(?

Evaluation_layers/loss�e�?
#
Evaluation_layers/accuracy_1m(?��4�u       ��Ax	E�ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss$��?
#
Evaluation_layers/accuracy_1��(?S�u       ��Ax	��ggh�A�*g
!
Evaluation_layers/accuracyJ)?

Evaluation_layers/loss ��?
#
Evaluation_layers/accuracy_1J)?�Nu       ��Ax	�;�ggh�A�*g
!
Evaluation_layers/accuracy�u(?

Evaluation_layers/loss`�?
#
Evaluation_layers/accuracy_1�u(?d=!)u       ��Ax	��ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossbj�?
#
Evaluation_layers/accuracy_1��(?�Bưu       ��Ax	b�ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��(?a�D�u       ��Ax	���ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��(?j�ERu       ��Ax	%��ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�5�?
#
Evaluation_layers/accuracy_1��(?�鲉u       ��Ax	�O�ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossP{�?
#
Evaluation_layers/accuracy_1��(?�<�u       ��Ax	@��ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossl�?
#
Evaluation_layers/accuracy_1��(?�`��u       ��Ax	���ggh�A�*g
!
Evaluation_layers/accuracy�	)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�	)?0��u       ��Ax	�$�ggh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��(?��u       ��Ax	c=�ggh�A�*g
!
Evaluation_layers/accuracyj)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1j)?8�s�u       ��Ax	��ggh�A�*g
!
Evaluation_layers/accuracyr)?

Evaluation_layers/lossA��?
#
Evaluation_layers/accuracy_1r)?I���u       ��Ax	8��ggh�A�*g
!
Evaluation_layers/accuracyJ)?

Evaluation_layers/lossZb�?
#
Evaluation_layers/accuracy_1J)?�k�u       ��Ax	�hgh�A�*g
!
Evaluation_layers/accuracy�9)?

Evaluation_layers/lossF�?
#
Evaluation_layers/accuracy_1�9)?��Wu       ��Ax	ϣhgh�A�*g
!
Evaluation_layers/accuracy4�)?

Evaluation_layers/loss�?�?
#
Evaluation_layers/accuracy_14�)?*���u       ��Ax	��hgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss�l�?
#
Evaluation_layers/accuracy_1�)?��%�u       ��Ax	8�hgh�A�*g
!
Evaluation_layers/accuracy�1)?

Evaluation_layers/lossr��?
#
Evaluation_layers/accuracy_1�1)??e��u       ��Ax	�!hgh�A�*g
!
Evaluation_layers/accuracyW�)?

Evaluation_layers/lossH��?
#
Evaluation_layers/accuracy_1W�)?��eu       ��Ax	8�%hgh�A�*g
!
Evaluation_layers/accuracyV)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1V)?~M��u       ��Ax	�T*hgh�A�*g
!
Evaluation_layers/accuracy�A)?

Evaluation_layers/lossrl�?
#
Evaluation_layers/accuracy_1�A)?�!�$u       ��Ax	A�.hgh�A�*g
!
Evaluation_layers/accuracy.�)?

Evaluation_layers/loss�p�?
#
Evaluation_layers/accuracy_1.�)?�/�7u       ��Ax	8Y3hgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�,�?
#
Evaluation_layers/accuracy_1��(?�RȞu       ��Ax	l8hgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss8��?
#
Evaluation_layers/accuracy_1�)?9R��u       ��Ax	R�<hgh�A�*g
!
Evaluation_layers/accuracy^)?

Evaluation_layers/loss<��?
#
Evaluation_layers/accuracy_1^)?���u       ��Ax	Z�@hgh�A�*g
!
Evaluation_layers/accuracyf)?

Evaluation_layers/lossrz�?
#
Evaluation_layers/accuracy_1f)?�DA�u       ��Ax	�IOhgh�A�*g
!
Evaluation_layers/accuracy<�)?

Evaluation_layers/loss �?
#
Evaluation_layers/accuracy_1<�)?Bq�]u       ��Ax	RWShgh�A�*g
!
Evaluation_layers/accuracy �)?

Evaluation_layers/lossr3�?
#
Evaluation_layers/accuracy_1 �)?��,�u       ��Ax	@�Whgh�A�*g
!
Evaluation_layers/accuracy$�)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1$�)?穗qu       ��Ax	��[hgh�A�*g
!
Evaluation_layers/accuracy�9)?

Evaluation_layers/lossi�?
#
Evaluation_layers/accuracy_1�9)?,&T�u       ��Ax	e�_hgh�A�*g
!
Evaluation_layers/accuracyN�)?

Evaluation_layers/loss �?
#
Evaluation_layers/accuracy_1N�)?s�<�u       ��Ax	�chgh�A�*g
!
Evaluation_layers/accuracy(�)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1(�)?�33Hu       ��Ax	��ghgh�A�*g
!
Evaluation_layers/accuracyr)?

Evaluation_layers/lossT��?
#
Evaluation_layers/accuracy_1r)?�ru       ��Ax	$�khgh�A�*g
!
Evaluation_layers/accuracyz)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1z)?�6�u       ��Ax	n�ohgh�A�*g
!
Evaluation_layers/accuracye*?

Evaluation_layers/lossI.�?
#
Evaluation_layers/accuracy_1e*?.}�u       ��Ax	�shgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss:[�?
#
Evaluation_layers/accuracy_1�)?�_�Pu       ��Ax	�G�hgh�A�*g
!
Evaluation_layers/accuracy}J*?

Evaluation_layers/losse�?
#
Evaluation_layers/accuracy_1}J*?�v��u       ��Ax	"/�hgh�A�*g
!
Evaluation_layers/accuracyZ)?

Evaluation_layers/loss�8�?
#
Evaluation_layers/accuracy_1Z)?�ݖ'u       ��Ax	/��hgh�A�*g
!
Evaluation_layers/accuracyj"*?

Evaluation_layers/lossc>�?
#
Evaluation_layers/accuracy_1j"*?��S�u       ��Ax	gˑhgh�A�*g
!
Evaluation_layers/accuracy.�)?

Evaluation_layers/lossax�?
#
Evaluation_layers/accuracy_1.�)?.Σu       ��Ax	�9�hgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�)?iF{u       ��Ax	�[�hgh�A�*g
!
Evaluation_layers/accuracy*�)?

Evaluation_layers/loss.�?
#
Evaluation_layers/accuracy_1*�)?R��{u       ��Ax	��hgh�A�*g
!
Evaluation_layers/accuracy.�)?

Evaluation_layers/loss�C�?
#
Evaluation_layers/accuracy_1.�)?C��u       ��Ax	�͢hgh�A�*g
!
Evaluation_layers/accuracyj)?

Evaluation_layers/loss�f�?
#
Evaluation_layers/accuracy_1j)?�[!u       ��Ax	@�hgh�A�*g
!
Evaluation_layers/accuracyF�)?

Evaluation_layers/lossj��?
#
Evaluation_layers/accuracy_1F�)?��su       ��Ax	F|�hgh�A�*g
!
Evaluation_layers/accuracy\*?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1\*?f$$u       ��Ax	ܺhgh�A�*g
!
Evaluation_layers/accuracyY�)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1Y�)?7��Cu       ��Ax	
�hgh�A�*g
!
Evaluation_layers/accuracy*�)?

Evaluation_layers/lossȗ�?
#
Evaluation_layers/accuracy_1*�)?��nu       ��Ax	a�hgh�A�*g
!
Evaluation_layers/accuracy�-)?

Evaluation_layers/lossd!�?
#
Evaluation_layers/accuracy_1�-)?�ZBu       ��Ax	5w�hgh�A�*g
!
Evaluation_layers/accuracyd*?

Evaluation_layers/lossr��?
#
Evaluation_layers/accuracy_1d*?�ߌ�u       ��Ax	_�hgh�A�*g
!
Evaluation_layers/accuracy[*?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1[*?�+�u       ��Ax	���hgh�A�*g
!
Evaluation_layers/accuracy7�)?

Evaluation_layers/loss>��?
#
Evaluation_layers/accuracy_17�)?�[�Du       ��Ax	��hgh�A�*g
!
Evaluation_layers/accuracy>�)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1>�)?�N�u       ��Ax	!�hgh�A�*g
!
Evaluation_layers/accuracy_
*?

Evaluation_layers/loss�C�?
#
Evaluation_layers/accuracy_1_
*?I���u       ��Ax	4k�hgh�A�*g
!
Evaluation_layers/accuracyE�)?

Evaluation_layers/lossH��?
#
Evaluation_layers/accuracy_1E�)?q-~�u       ��Ax	ܴ�hgh�A�*g
!
Evaluation_layers/accuracy;�)?

Evaluation_layers/lossRm�?
#
Evaluation_layers/accuracy_1;�)?C�V1u       ��Ax	~��hgh�A�*g
!
Evaluation_layers/accuracyD�)?

Evaluation_layers/loss�)�?
#
Evaluation_layers/accuracy_1D�)?HE��u       ��Ax	B�hgh�A�*g
!
Evaluation_layers/accuracyv:*?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1v:*?@8Ru       ��Ax	�w�hgh�A�*g
!
Evaluation_layers/accuracy�V*?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�V*?��TFu       ��Ax	U;�hgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�5�?
#
Evaluation_layers/accuracy_1��*?�;Yeu       ��Ax	iigh�A�*g
!
Evaluation_layers/accuracyZ*?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1Z*?����u       ��Ax	aigh�A�*g
!
Evaluation_layers/accuracyh*?

Evaluation_layers/loss�J�?
#
Evaluation_layers/accuracy_1h*?��uu       ��Ax	5�igh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�)?g¤	u       ��Ax	�igh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�x�?
#
Evaluation_layers/accuracy_1��*?���8u       ��Ax	�igh�A�*g
!
Evaluation_layers/accuracy+�)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1+�)?�s��u       ��Ax	(igh�A�*g
!
Evaluation_layers/accuracy�f*?

Evaluation_layers/lossG��?
#
Evaluation_layers/accuracy_1�f*?ʜ�u       ��Ax	�!)igh�A�*g
!
Evaluation_layers/accuracyM�)?

Evaluation_layers/loss6-�?
#
Evaluation_layers/accuracy_1M�)?��u       ��Ax	�-igh�A�*g
!
Evaluation_layers/accuracy^
*?

Evaluation_layers/loss�G�?
#
Evaluation_layers/accuracy_1^
*?�/�+u       ��Ax	v"2igh�A�*g
!
Evaluation_layers/accuracy`
*?

Evaluation_layers/loss�I�?
#
Evaluation_layers/accuracy_1`
*?����u       ��Ax	��6igh�A�*g
!
Evaluation_layers/accuracy�R*?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�R*?�+�Cu       ��Ax	�;igh�A�*g
!
Evaluation_layers/accuracy�^*?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�^*?ύ�u       ��Ax	�@igh�A�*g
!
Evaluation_layers/accuracy�!)?

Evaluation_layers/loss_��?
#
Evaluation_layers/accuracy_1�!)?p)�u       ��Ax	�+Eigh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossN��?
#
Evaluation_layers/accuracy_1��*?��S3u       ��Ax	n�Iigh�A�*g
!
Evaluation_layers/accuracyb)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1b)?A��Yu       ��Ax	�GNigh�A�*g
!
Evaluation_layers/accuracy�f*?

Evaluation_layers/loss3��?
#
Evaluation_layers/accuracy_1�f*?�O�eu       ��Ax	�Sigh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/lossZ��?
#
Evaluation_layers/accuracy_1�)?����u       ��Ax	]�cigh�A�*g
!
Evaluation_layers/accuracy�9)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�9)?��m�u       ��Ax	��gigh�A�*g
!
Evaluation_layers/accuracy�~*?

Evaluation_layers/lossB��?
#
Evaluation_layers/accuracy_1�~*?���u       ��Ax	J)ligh�A�*g
!
Evaluation_layers/accuracyz)?

Evaluation_layers/loss�H�?
#
Evaluation_layers/accuracy_1z)?�ִu       ��Ax	��pigh�A�*g
!
Evaluation_layers/accuracy"�)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1"�)?F��u       ��Ax	]uigh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/losssc�?
#
Evaluation_layers/accuracy_1��*?�\�u       ��Ax	��yigh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossE�?
#
Evaluation_layers/accuracy_1��(?���u       ��Ax	�d~igh�A�*g
!
Evaluation_layers/accuracyC�)?

Evaluation_layers/loss�]�?
#
Evaluation_layers/accuracy_1C�)?�?Qu       ��Ax	��igh�A�*g
!
Evaluation_layers/accuracyp.*?

Evaluation_layers/loss,��?
#
Evaluation_layers/accuracy_1p.*?�Z�u       ��Ax		B�igh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossd��?
#
Evaluation_layers/accuracy_1��(?��3�u       ��Ax	%W�igh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossr��?
#
Evaluation_layers/accuracy_1��*?�Q3�u       ��Ax	Ga�igh�A�*g
!
Evaluation_layers/accuracyL�)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1L�)?�+w�u       ��Ax	q��igh�A�*g
!
Evaluation_layers/accuracyz)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1z)?^��yu       ��Ax	Y�igh�A�*g
!
Evaluation_layers/accuracyf*?

Evaluation_layers/loss�J�?
#
Evaluation_layers/accuracy_1f*?=��u       ��Ax	�x�igh�A�*g
!
Evaluation_layers/accuracy*�)?

Evaluation_layers/loss�,�?
#
Evaluation_layers/accuracy_1*�)?���nu       ��Ax	�Ȫigh�A�*g
!
Evaluation_layers/accuracyb)?

Evaluation_layers/loss�6�?
#
Evaluation_layers/accuracy_1b)?!�D�u       ��Ax	���igh�A�*g
!
Evaluation_layers/accuracy0�)?

Evaluation_layers/loss8N�?
#
Evaluation_layers/accuracy_10�)?�GBu       ��Ax	.�igh�A�*g
!
Evaluation_layers/accuracy	Z)?

Evaluation_layers/loss'��?
#
Evaluation_layers/accuracy_1	Z)?OG��u       ��Ax	�2�igh�A�*g
!
Evaluation_layers/accuracy]*?

Evaluation_layers/lossp3�?
#
Evaluation_layers/accuracy_1]*?�ǿ�u       ��Ax	�^�igh�A�*g
!
Evaluation_layers/accuracyn)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1n)?���u       ��Ax	���igh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1��(?�B�Ru       ��Ax	��igh�A�*g
!
Evaluation_layers/accuracy�V*?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�V*?�n�u       ��Ax	-�igh�A�*g
!
Evaluation_layers/accuracy�](?

Evaluation_layers/loss�W�?
#
Evaluation_layers/accuracy_1�](?J2,�u       ��Ax	���igh�A�*g
!
Evaluation_layers/accuracyn**?

Evaluation_layers/lossD��?
#
Evaluation_layers/accuracy_1n**??T��u       ��Ax	�1�igh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��(?\�+�u       ��Ax	QO�igh�A�*g
!
Evaluation_layers/accuracyC�)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1C�)?�}�Qu       ��Ax	rO�igh�A�*g
!
Evaluation_layers/accuracyG�)?

Evaluation_layers/lossNu�?
#
Evaluation_layers/accuracy_1G�)?���u       ��Ax	��igh�A�*g
!
Evaluation_layers/accuracyR)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1R)?7��u       ��Ax	u,�igh�A�*g
!
Evaluation_layers/accuracy�R*?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�R*?a�}Du       ��Ax	���igh�A�*g
!
Evaluation_layers/accuracy�A(?

Evaluation_layers/lossz� @
#
Evaluation_layers/accuracy_1�A(?R��|u       ��Ax	ë�igh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��*?�Ku       ��Ax	vxjgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossВ�?
#
Evaluation_layers/accuracy_1��(?oXu       ��Ax	~�
jgh�A�*g
!
Evaluation_layers/accuracyx>*?

Evaluation_layers/lossr�?
#
Evaluation_layers/accuracy_1x>*?_ڝ�u       ��Ax	4�jgh�A�*g
!
Evaluation_layers/accuracyi*?

Evaluation_layers/lossC��?
#
Evaluation_layers/accuracy_1i*?C, �u       ��Ax	�	jgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�)?2��u       ��Ax	�jgh�A�*g
!
Evaluation_layers/accuracy-�)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1-�)?_�u       ��Ax	-�jgh�A�*g
!
Evaluation_layers/accuracyd*?

Evaluation_layers/lossʭ�?
#
Evaluation_layers/accuracy_1d*?^�2�u       ��Ax	8�jgh�A�*g
!
Evaluation_layers/accuracyl&*?

Evaluation_layers/loss�s�?
#
Evaluation_layers/accuracy_1l&*?����u       ��Ax	6�#jgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��(?��q�u       ��Ax	ޓ'jgh�A�*g
!
Evaluation_layers/accuracy*�)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1*�)?�{�u       ��Ax	�L,jgh�A�*g
!
Evaluation_layers/accuracy;�)?

Evaluation_layers/lossco�?
#
Evaluation_layers/accuracy_1;�)?W�u       ��Ax	Y�<jgh�A�*g
!
Evaluation_layers/accuracyF�)?

Evaluation_layers/loss�M�?
#
Evaluation_layers/accuracy_1F�)?K��ru       ��Ax	?�@jgh�A�*g
!
Evaluation_layers/accuracyf*?

Evaluation_layers/loss|`�?
#
Evaluation_layers/accuracy_1f*?���ru       ��Ax	EMEjgh�A�*g
!
Evaluation_layers/accuracyn)?

Evaluation_layers/lossP��?
#
Evaluation_layers/accuracy_1n)?ė��u       ��Ax	��Ijgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossJ��?
#
Evaluation_layers/accuracy_1��(?�X!�u       ��Ax	tNjgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�z�?
#
Evaluation_layers/accuracy_1��*?&��(u       ��Ax	��Rjgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss�T�?
#
Evaluation_layers/accuracy_1�)?铏�u       ��Ax	2$Wjgh�A�*g
!
Evaluation_layers/accuracy[*?

Evaluation_layers/loss�	�?
#
Evaluation_layers/accuracy_1[*?%�KOu       ��Ax	�[jgh�A�*g
!
Evaluation_layers/accuracyD�)?

Evaluation_layers/loss�k�?
#
Evaluation_layers/accuracy_1D�)?o���u       ��Ax	��^jgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossB0�?
#
Evaluation_layers/accuracy_1��*?�RMu       ��Ax	>2cjgh�A�*g
!
Evaluation_layers/accuracy2�)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_12�)?��"/u       ��Ax	��sjgh�A�*g
!
Evaluation_layers/accuracy	Z)?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1	Z)?ȴ}u       ��Ax	"�xjgh�A�*g
!
Evaluation_layers/accuracy>�)?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1>�)?W���u       ��Ax	O)~jgh�A�*g
!
Evaluation_layers/accuracyC�)?

Evaluation_layers/loss0��?
#
Evaluation_layers/accuracy_1C�)?�Br�u       ��Ax	��jgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/lossa� @
#
Evaluation_layers/accuracy_1�)?_�Lu       ��Ax	���jgh�A�*g
!
Evaluation_layers/accuracyF�)?

Evaluation_layers/loss� @
#
Evaluation_layers/accuracy_1F�)?Ǥ� u       ��Ax	K7�jgh�A�*g
!
Evaluation_layers/accuracy�5)?

Evaluation_layers/loss#� @
#
Evaluation_layers/accuracy_1�5)?L�]�u       ��Ax	U>�jgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1��(?���u       ��Ax	���jgh�A�*g
!
Evaluation_layers/accuracy<�)?

Evaluation_layers/lossW: @
#
Evaluation_layers/accuracy_1<�)?��c�u       ��Ax	��jgh�A�*g
!
Evaluation_layers/accuracyf)?

Evaluation_layers/lossT� @
#
Evaluation_layers/accuracy_1f)?.��u       ��Ax	�.�jgh�A�*g
!
Evaluation_layers/accuracy2�)?

Evaluation_layers/loss� @
#
Evaluation_layers/accuracy_12�)?V��u       ��Ax	��jgh�A�*g
!
Evaluation_layers/accuracyb)?

Evaluation_layers/losse� @
#
Evaluation_layers/accuracy_1b)?���u       ��Ax	a�jgh�A�*g
!
Evaluation_layers/accuracy4�)?

Evaluation_layers/loss�\�?
#
Evaluation_layers/accuracy_14�)?.��u       ��Ax	���jgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossK @
#
Evaluation_layers/accuracy_1��(?�һ�u       ��Ax	FJ�jgh�A�*g
!
Evaluation_layers/accuracy�Z*?

Evaluation_layers/loss�m�?
#
Evaluation_layers/accuracy_1�Z*?�a�u       ��Ax	:z�jgh�A�*g
!
Evaluation_layers/accuracy$�)?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1$�)?�$I�u       ��Ax	��jgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossą�?
#
Evaluation_layers/accuracy_1��*?��[ u       ��Ax	l>�jgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss�1@
#
Evaluation_layers/accuracy_1�)?�!�u       ��Ax	BX�jgh�A�*g
!
Evaluation_layers/accuracyf)?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1f)?&s�cu       ��Ax	���jgh�A�*g
!
Evaluation_layers/accuracyR)?

Evaluation_layers/loss� @
#
Evaluation_layers/accuracy_1R)?S�ثu       ��Ax	�R�jgh�A�*g
!
Evaluation_layers/accuracyE�)?

Evaluation_layers/lossq<@
#
Evaluation_layers/accuracy_1E�)?�K�u       ��Ax	�t�jgh�A�*g
!
Evaluation_layers/accuracyJ)?

Evaluation_layers/loss�0@
#
Evaluation_layers/accuracy_1J)?���u       ��Ax	�
�jgh�A�*g
!
Evaluation_layers/accuracy(�)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1(�)?N���u       ��Ax	���jgh�A�*g
!
Evaluation_layers/accuracyu:*?

Evaluation_layers/lossU@
#
Evaluation_layers/accuracy_1u:*?�\�u       ��Ax	<I�jgh�A�*g
!
Evaluation_layers/accuracy�Z*?

Evaluation_layers/loss*@
#
Evaluation_layers/accuracy_1�Z*?l��u       ��Ax	J �jgh�A�*g
!
Evaluation_layers/accuracyO�)?

Evaluation_layers/loss7N@
#
Evaluation_layers/accuracy_1O�)?bH�^u       ��Ax	#��jgh�A�*g
!
Evaluation_layers/accuracyV)?

Evaluation_layers/loss?@
#
Evaluation_layers/accuracy_1V)?�N��u       ��Ax	� kgh�A�*g
!
Evaluation_layers/accuracyG�)?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1G�)?:�tu       ��Ax	b�kgh�A�*g
!
Evaluation_layers/accuracyG�)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1G�)?�-,u       ��Ax	��kgh�A�*g
!
Evaluation_layers/accuracy*�)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1*�)?n�Hu       ��Ax	0kgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss9X@
#
Evaluation_layers/accuracy_1�)?9wDu       ��Ax	Iekgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��*?U��Wu       ��Ax	7�!kgh�A�*g
!
Evaluation_layers/accuracy&�)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1&�)?��u       ��Ax	[ &kgh�A�*g
!
Evaluation_layers/accuracy�r*?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1�r*?@0�,u       ��Ax	8V*kgh�A�*g
!
Evaluation_layers/accuracy�R*?

Evaluation_layers/lossj)@
#
Evaluation_layers/accuracy_1�R*?:�u       ��Ax	��.kgh�A�*g
!
Evaluation_layers/accuracyJ�)?

Evaluation_layers/loss�q@
#
Evaluation_layers/accuracy_1J�)?���u       ��Ax	b3kgh�A�*g
!
Evaluation_layers/accuracy�j*?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�j*?s�'�u       ��Ax	��7kgh�A�*g
!
Evaluation_layers/accuracy0�)?

Evaluation_layers/loss̞@
#
Evaluation_layers/accuracy_10�)?8Rlu       ��Ax	��;kgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�)?�T�tu       ��Ax	�@kgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss(�@
#
Evaluation_layers/accuracy_1��*?����u       ��Ax	�Dkgh�A�*g
!
Evaluation_layers/accuracyN*?

Evaluation_layers/loss�I@
#
Evaluation_layers/accuracy_1N*?�ނ�u       ��Ax	��Skgh�A�*g
!
Evaluation_layers/accuracy�>+?

Evaluation_layers/loss|� @
#
Evaluation_layers/accuracy_1�>+?���u       ��Ax	^	Xkgh�A�*g
!
Evaluation_layers/accuracyl&*?

Evaluation_layers/lossR�@
#
Evaluation_layers/accuracy_1l&*?+ܦu       ��Ax	��\kgh�A�*g
!
Evaluation_layers/accuracy�N+?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�N+?S)lu       ��Ax	I�`kgh�A�*g
!
Evaluation_layers/accuracy/�)?

Evaluation_layers/lossJ�@
#
Evaluation_layers/accuracy_1/�)?2�Pu       ��Ax	ekgh�A�*g
!
Evaluation_layers/accuracy�N*?

Evaluation_layers/loss�\@
#
Evaluation_layers/accuracy_1�N*?�6cu       ��Ax	o�ikgh�A�*g
!
Evaluation_layers/accuracyw>*?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1w>*?���u       ��Ax	E�nkgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�p@
#
Evaluation_layers/accuracy_1��*?�M�Au       ��Ax	M�rkgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss[�@
#
Evaluation_layers/accuracy_1��*?Ʈ�ru       ��Ax	�Dwkgh�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/loss�r@
#
Evaluation_layers/accuracy_1�+?&�ru       ��Ax	6|kgh�A�*g
!
Evaluation_layers/accuracyE�)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1E�)?���u       ��Ax	g�kgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossa�@
#
Evaluation_layers/accuracy_1��*?�p�u       ��Ax	��kgh�A�*g
!
Evaluation_layers/accuracy�r*?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1�r*?�W�u       ��Ax	�kgh�A�*g
!
Evaluation_layers/accuracy�j*?

Evaluation_layers/losst�@
#
Evaluation_layers/accuracy_1�j*?��Bu       ��Ax	D�kgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss`@
#
Evaluation_layers/accuracy_1��*?+���u       ��Ax	xn�kgh�A�*g
!
Evaluation_layers/accuracy~J*?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1~J*?��@u       ��Ax	�ߡkgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�U@
#
Evaluation_layers/accuracy_1��*?��u       ��Ax	�t�kgh�A�*g
!
Evaluation_layers/accuracy�V*?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�V*?�vKu       ��Ax	]�kgh�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�+?��u       ��Ax	E^�kgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossJ@
#
Evaluation_layers/accuracy_1��*?"ўgu       ��Ax	ܳkgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�K@
#
Evaluation_layers/accuracy_1��*?$ ��u       ��Ax	��kgh�A�*g
!
Evaluation_layers/accuracy�J+?

Evaluation_layers/lossת@
#
Evaluation_layers/accuracy_1�J+?;	~,u       ��Ax	���kgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossn:@
#
Evaluation_layers/accuracy_1��*?��u       ��Ax	�8�kgh�A�*g
!
Evaluation_layers/accuracy�b*?

Evaluation_layers/losss&@
#
Evaluation_layers/accuracy_1�b*?;�A�u       ��Ax	���kgh�A�*g
!
Evaluation_layers/accuracyF�+?

Evaluation_layers/lossڙ@
#
Evaluation_layers/accuracy_1F�+?�_�*u       ��Ax	�x�kgh�A�*g
!
Evaluation_layers/accuracys+?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1s+?�? �u       ��Ax	���kgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/lossL�@
#
Evaluation_layers/accuracy_1��*?��/!u       ��Ax	�X�kgh�A�*g
!
Evaluation_layers/accuracyo+?

Evaluation_layers/loss^X@
#
Evaluation_layers/accuracy_1o+?�*{�u       ��Ax	��kgh�A�*g
!
Evaluation_layers/accuracy��,?

Evaluation_layers/lossS&@
#
Evaluation_layers/accuracy_1��,?�jciu       ��Ax	w�kgh�A�*g
!
Evaluation_layers/accuracy�v*?

Evaluation_layers/lossߔ@
#
Evaluation_layers/accuracy_1�v*?z�<�u       ��Ax	�j�kgh�A�*g
!
Evaluation_layers/accuracy�>+?

Evaluation_layers/loss�X@
#
Evaluation_layers/accuracy_1�>+?2��u       ��Ax	���kgh�A�*g
!
Evaluation_layers/accuracy_+?

Evaluation_layers/lossA�@
#
Evaluation_layers/accuracy_1_+?""�u       ��Ax	dT lgh�A�*g
!
Evaluation_layers/accuracy5�+?

Evaluation_layers/loss�@@
#
Evaluation_layers/accuracy_15�+?G�j�u       ��Ax	��lgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�I@
#
Evaluation_layers/accuracy_1��*?����u       ��Ax	I 	lgh�A�*g
!
Evaluation_layers/accuracyp?,?

Evaluation_layers/loss8�@
#
Evaluation_layers/accuracy_1p?,?ě}�u       ��Ax	�<lgh�A�*g
!
Evaluation_layers/accuracy��,?

Evaluation_layers/loss�-@
#
Evaluation_layers/accuracy_1��,?u���u       ��Ax	�[lgh�A�*g
!
Evaluation_layers/accuracy�>+?

Evaluation_layers/loss�	@
#
Evaluation_layers/accuracy_1�>+?��u       ��Ax	y�lgh�A�*g
!
Evaluation_layers/accuracyS,?

Evaluation_layers/loss	\@
#
Evaluation_layers/accuracy_1S,?�Zv[u       ��Ax	{�lgh�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/lossa�	@
#
Evaluation_layers/accuracy_1�+?!ъ=u       ��Ax	�!lgh�A�*g
!
Evaluation_layers/accuracy"�+?

Evaluation_layers/loss?
@
#
Evaluation_layers/accuracy_1"�+?W	�fu       ��Ax	+�#lgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�?	@
#
Evaluation_layers/accuracy_1��*?���u       ��Ax	.7lgh�A�*g
!
Evaluation_layers/accuracyU,?

Evaluation_layers/loss��
@
#
Evaluation_layers/accuracy_1U,?r�L~u       ��Ax	k;lgh�A�*g
!
Evaluation_layers/accuracy5�+?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_15�+?7��Wu       ��Ax	�Q?lgh�A�*g
!
Evaluation_layers/accuracyg+?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1g+?����u       ��Ax	�cClgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�?@
#
Evaluation_layers/accuracy_1��*?O�Uu       ��Ax	J�Glgh�A�*g
!
Evaluation_layers/accuracyzS,?

Evaluation_layers/lossW�
@
#
Evaluation_layers/accuracy_1zS,?�O� u       ��Ax	i�Klgh�A�*g
!
Evaluation_layers/accuracyq?,?

Evaluation_layers/lossx�
@
#
Evaluation_layers/accuracy_1q?,?���u       ��Ax	ePlgh�A�*g
!
Evaluation_layers/accuracy�
+?

Evaluation_layers/lossFl@
#
Evaluation_layers/accuracy_1�
+?G���u       ��Ax	�8Ulgh�A�*g
!
Evaluation_layers/accuracy��*?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��*?���u       ��Ax	��Ylgh�A�*g
!
Evaluation_layers/accuracyg+?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1g+?v�{�u       ��Ax	�Z^lgh�A�*g
!
Evaluation_layers/accuracy�z*?

Evaluation_layers/lossÆ@
#
Evaluation_layers/accuracy_1�z*?A��.u       ��Ax	t�olgh�A�*g
!
Evaluation_layers/accuracy7�+?

Evaluation_layers/lossɆ@
#
Evaluation_layers/accuracy_17�+?�<�u       ��Ax	�tlgh�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/lossN�@
#
Evaluation_layers/accuracy_1�+?�v �u       ��Ax	��xlgh�A�*g
!
Evaluation_layers/accuracyi*?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1i*?�Dd1u       ��Ax	3=}lgh�A�*g
!
Evaluation_layers/accuracy�N+?

Evaluation_layers/loss�
@
#
Evaluation_layers/accuracy_1�N+?��u       ��Ax	���lgh�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/lossfF@
#
Evaluation_layers/accuracy_1�+?+�ku       ��Ax	5G�lgh�A�*g
!
Evaluation_layers/accuracyJ�)?

Evaluation_layers/lossg@@
#
Evaluation_layers/accuracy_1J�)?���u       ��Ax	/��lgh�A�*g
!
Evaluation_layers/accuracy�v*?

Evaluation_layers/loss>O@
#
Evaluation_layers/accuracy_1�v*?�_Q�u       ��Ax	��lgh�A�*g
!
Evaluation_layers/accuracy�v*?

Evaluation_layers/lossٴ@
#
Evaluation_layers/accuracy_1�v*?%3x�u       ��Ax	Aj�lgh�A�*g
!
Evaluation_layers/accuracy~)?

Evaluation_layers/loss#�@
#
Evaluation_layers/accuracy_1~)?ha�Gu       ��Ax	���lgh�A�*g
!
Evaluation_layers/accuracy[*?

Evaluation_layers/loss�!@
#
Evaluation_layers/accuracy_1[*?�u       ��Ax	��lgh�A�*g
!
Evaluation_layers/accuracyU�)?

Evaluation_layers/lossM�@
#
Evaluation_layers/accuracy_1U�)?��W�u       ��Ax	G�lgh�A�*g
!
Evaluation_layers/accuracy:�)?

Evaluation_layers/lossh�@
#
Evaluation_layers/accuracy_1:�)?�4K<u       ��Ax	�lgh�A�*g
!
Evaluation_layers/accuracyR�)?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1R�)?=Eއu       ��Ax	�V�lgh�A�*g
!
Evaluation_layers/accuracyg*?

Evaluation_layers/loss/@
#
Evaluation_layers/accuracy_1g*?�x��u       ��Ax	+O�lgh�A�*g
!
Evaluation_layers/accuracyU�)?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1U�)?�s�u       ��Ax	�k�lgh�A�*g
!
Evaluation_layers/accuracyN)?

Evaluation_layers/loss�8@
#
Evaluation_layers/accuracy_1N)?�7�u       ��Ax	��lgh�A�*g
!
Evaluation_layers/accuracyzB*?

Evaluation_layers/losss4@
#
Evaluation_layers/accuracy_1zB*?c�u       ��Ax	;��lgh�A�*g
!
Evaluation_layers/accuracy:�)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1:�)?��8ou       ��Ax	���lgh�A�*g
!
Evaluation_layers/accuracyL�)?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1L�)?2'ku       ��Ax	���lgh�A�*g
!
Evaluation_layers/accuracy�E)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�E)?�=��u       ��Ax	'��lgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss/�@
#
Evaluation_layers/accuracy_1��(?>e(mu       ��Ax	��lgh�A�*g
!
Evaluation_layers/accuracy;�)?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1;�)?l�vu       ��Ax	��lgh�A�*g
!
Evaluation_layers/accuracyV)?

Evaluation_layers/lossk�@
#
Evaluation_layers/accuracy_1V)?j�u       ��Ax	���lgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��(?�VEtu       ��Ax	c�lgh�A�*g
!
Evaluation_layers/accuracy F)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1 F)?��wu       ��Ax	�p�lgh�A�*g
!
Evaluation_layers/accuracy$�)?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1$�)?H�Vu       ��Ax	��lgh�A�*g
!
Evaluation_layers/accuracy�Y(?

Evaluation_layers/loss�&@
#
Evaluation_layers/accuracy_1�Y(?m�ơu       ��Ax	(|�lgh�A�*g
!
Evaluation_layers/accuracyX�)?

Evaluation_layers/loss`@
#
Evaluation_layers/accuracy_1X�)?��1�u       ��Ax	�lgh�A�*g
!
Evaluation_layers/accuracy�Y(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�Y(?�esu       ��Ax	Amgh�A�*g
!
Evaluation_layers/accuracyt6*?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1t6*?-�-u       ��Ax	Ґmgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��(?�2�%u       ��Ax	��mgh�A�*g
!
Evaluation_layers/accuracyV)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1V)?{Μ�u       ��Ax	WXmgh�A�*g
!
Evaluation_layers/accuracyzB*?

Evaluation_layers/loss�,@
#
Evaluation_layers/accuracy_1zB*?�g�u       ��Ax	}�mgh�A�*g
!
Evaluation_layers/accuracy�M(?

Evaluation_layers/loss\�@
#
Evaluation_layers/accuracy_1�M(?$�u       ��Ax	��#mgh�A�*g
!
Evaluation_layers/accuracy
Z)?

Evaluation_layers/loss  @
#
Evaluation_layers/accuracy_1
Z)?��Ru       ��Ax	^A(mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��(?��E�u       ��Ax	o,mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��(?-c��u       ��Ax	��0mgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�)?�Vu       ��Ax	�Z5mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�Q@
#
Evaluation_layers/accuracy_1��(? ̓#u       ��Ax	�9mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss.�@
#
Evaluation_layers/accuracy_1��(?O�su       ��Ax	�RImgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossk(@
#
Evaluation_layers/accuracy_1��(?KO�%u       ��Ax	��Mmgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss{D@
#
Evaluation_layers/accuracy_1��(?]	sHu       ��Ax	4�Qmgh�A�*g
!
Evaluation_layers/accuracy�)?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�)?��a<u       ��Ax	��Umgh�A�*g
!
Evaluation_layers/accuracyQ�'?

Evaluation_layers/loss�P@
#
Evaluation_layers/accuracy_1Q�'?_zB u       ��Ax	n�Ymgh�A�*g
!
Evaluation_layers/accuracya'?

Evaluation_layers/loss�t@
#
Evaluation_layers/accuracy_1a'?�w�u       ��Ax	1^mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��(?!&{u       ��Ax	�*bmgh�A�*g
!
Evaluation_layers/accuracy�%)?

Evaluation_layers/lossp�@
#
Evaluation_layers/accuracy_1�%)?��u       ��Ax	�fmgh�A�*g
!
Evaluation_layers/accuracyj(?

Evaluation_layers/loss�`@
#
Evaluation_layers/accuracy_1j(?���gu       ��Ax	+�jmgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��(?E{�u       ��Ax	��nmgh�A�*g
!
Evaluation_layers/accuracy{5(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1{5(?��ޜu       ��Ax	�}mgh�A�*g
!
Evaluation_layers/accuracyZ�'?

Evaluation_layers/loss"�@
#
Evaluation_layers/accuracy_1Z�'?vo�u       ��Ax	�^�mgh�A�*g
!
Evaluation_layers/accuracy}9(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1}9(?B
��u       ��Ax	O�mgh�A�*g
!
Evaluation_layers/accuracyW�'?

Evaluation_layers/loss*�@
#
Evaluation_layers/accuracy_1W�'?u�8Gu       ��Ax	F;�mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss]@
#
Evaluation_layers/accuracy_1��(?$]��u       ��Ax	d�mgh�A�*g
!
Evaluation_layers/accuracy}9(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1}9(?�>\`u       ��Ax	6*�mgh�A�*g
!
Evaluation_layers/accuracy8�'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_18�'?�%u       ��Ax	���mgh�A�*g
!
Evaluation_layers/accuracy/�'?

Evaluation_layers/lossz�@
#
Evaluation_layers/accuracy_1/�'?�Q�u       ��Ax	��mgh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�#@
#
Evaluation_layers/accuracy_1��&?^C9iu       ��Ax	���mgh�A�*g
!
Evaluation_layers/accuracyv)(?

Evaluation_layers/loss`�@
#
Evaluation_layers/accuracy_1v)(?��u       ��Ax	_�mgh�A�*g
!
Evaluation_layers/accuracy0�'?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_10�'?Mh8u       ��Ax	&�mgh�A�*g
!
Evaluation_layers/accuracy]�'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1]�'?f���u       ��Ax	x4�mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��(?oUu       ��Ax	F��mgh�A�*g
!
Evaluation_layers/accuracy&�'?

Evaluation_layers/loss�r@
#
Evaluation_layers/accuracy_1&�'?��u       ��Ax	���mgh�A�*g
!
Evaluation_layers/accuracy�'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�'?�aXu       ��Ax	"�mgh�A�*g
!
Evaluation_layers/accuracy=(?

Evaluation_layers/lossW�@
#
Evaluation_layers/accuracy_1=(?b�u       ��Ax	�J�mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��(?�U>u       ��Ax	�u�mgh�A�*g
!
Evaluation_layers/accuracyd�%?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1d�%?P{A�u       ��Ax	ݵ�mgh�A�*g
!
Evaluation_layers/accuracy�U(?

Evaluation_layers/loss�P@
#
Evaluation_layers/accuracy_1�U(?RN�u       ��Ax	���mgh�A�*g
!
Evaluation_layers/accuracy�E(?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1�E(?{�: u       ��Ax	�s�mgh�A�*g
!
Evaluation_layers/accuracy9'?

Evaluation_layers/lossr�@
#
Evaluation_layers/accuracy_19'?z��u       ��Ax	L��mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossp@
#
Evaluation_layers/accuracy_1��(?�N�u       ��Ax	n��mgh�A�*g
!
Evaluation_layers/accuracy�Y(?

Evaluation_layers/lossfU@
#
Evaluation_layers/accuracy_1�Y(?0���u       ��Ax	9L�mgh�A�*g
!
Evaluation_layers/accuracyt%(?

Evaluation_layers/loss؉@
#
Evaluation_layers/accuracy_1t%(?j��u       ��Ax	���mgh�A�*g
!
Evaluation_layers/accuracy�'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�'?�f�u       ��Ax	I_�mgh�A�*g
!
Evaluation_layers/accuracym'?

Evaluation_layers/lossmj@
#
Evaluation_layers/accuracy_1m'?&x�u       ��Ax	�	�mgh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss�W@
#
Evaluation_layers/accuracy_1��(?z>��u       ��Ax	�sngh�A�*g
!
Evaluation_layers/accuracym'?

Evaluation_layers/loss5�@
#
Evaluation_layers/accuracy_1m'?���8u       ��Ax	��ngh�A�*g
!
Evaluation_layers/accuracyļ&?

Evaluation_layers/loss�7@
#
Evaluation_layers/accuracy_1ļ&?��u       ��Ax	�vngh�A�*g
!
Evaluation_layers/accuracy~9(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1~9(?_>�u       ��Ax	��ngh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��(?g���u       ��Ax	��ngh�A�*g
!
Evaluation_layers/accuracy y'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1 y'?`��)u       ��Ax	B�#ngh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/lossmu@
#
Evaluation_layers/accuracy_1��(?7��pu       ��Ax	m,(ngh�A�*g
!
Evaluation_layers/accuracyk(?

Evaluation_layers/lossߵ@
#
Evaluation_layers/accuracy_1k(?�Q _u       ��Ax	Ѽ,ngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/lossP@
#
Evaluation_layers/accuracy_1��&?�V)u       ��Ax	[�0ngh�A�*g
!
Evaluation_layers/accuracyS�'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1S�'?s�Nu       ��Ax	�4ngh�A�*g
!
Evaluation_layers/accuracy��(?

Evaluation_layers/loss}d@
#
Evaluation_layers/accuracy_1��(?�!�>u       ��Ax	y39ngh�A�*g
!
Evaluation_layers/accuracyx-(?

Evaluation_layers/lossk$@
#
Evaluation_layers/accuracy_1x-(?�b�u       ��Ax	(W=ngh�A�*g
!
Evaluation_layers/accuracy.�'?

Evaluation_layers/lossp�@
#
Evaluation_layers/accuracy_1.�'?6}B�u       ��Ax	>�Angh�A�*g
!
Evaluation_layers/accuracyE'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1E'?4��u       ��Ax	�1Fngh�A�*g
!
Evaluation_layers/accuracyr!(?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1r!(?zwr�u       ��Ax	SUngh�A�*g
!
Evaluation_layers/accuracy y'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1 y'?t��u       ��Ax	�Yngh�A�*g
!
Evaluation_layers/accuracy"}'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1"}'? ~u       ��Ax	F�]ngh�A�*g
!
Evaluation_layers/accuracy6�'?

Evaluation_layers/lossh@
#
Evaluation_layers/accuracy_16�'?�G�u       ��Ax	�bngh�A�*g
!
Evaluation_layers/accuracyi'?

Evaluation_layers/loss\@
#
Evaluation_layers/accuracy_1i'?��Bu       ��Ax	��fngh�A�*g
!
Evaluation_layers/accuracy1�'?

Evaluation_layers/lossK_@
#
Evaluation_layers/accuracy_11�'?8�u       ��Ax	��jngh�A�*g
!
Evaluation_layers/accuracyp(?

Evaluation_layers/lossa:@
#
Evaluation_layers/accuracy_1p(?��y�u       ��Ax	�nngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/lossf@
#
Evaluation_layers/accuracy_1��&?�[^<u       ��Ax	�rngh�A�*g
!
Evaluation_layers/accuracyJ�'?

Evaluation_layers/loss:�@
#
Evaluation_layers/accuracy_1J�'?��yu       ��Ax	<�vngh�A�*g
!
Evaluation_layers/accuracya'?

Evaluation_layers/loss΍@
#
Evaluation_layers/accuracy_1a'?�Ǟu       ��Ax	y�zngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��&?�F�u       ��Ax	)��ngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�
@
#
Evaluation_layers/accuracy_1��&?�!��u       ��Ax	�&�ngh�A�*g
!
Evaluation_layers/accuracy�i(?

Evaluation_layers/loss�V@
#
Evaluation_layers/accuracy_1�i(?{�S?u       ��Ax	��ngh�A�*g
!
Evaluation_layers/accuracy.�'?

Evaluation_layers/loss�E@
#
Evaluation_layers/accuracy_1.�'?e2u       ��Ax	�W�ngh�A�*g
!
Evaluation_layers/accuracy�`&?

Evaluation_layers/loss�A@
#
Evaluation_layers/accuracy_1�`&?k���u       ��Ax	���ngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/lossg�@
#
Evaluation_layers/accuracy_1��&?�݅�u       ��Ax	��ngh�A�*g
!
Evaluation_layers/accuracy$�'?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1$�'?GpƲu       ��Ax	x)�ngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��&?�7|[u       ��Ax	�5�ngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��&?�z�u       ��Ax	z�ngh�A�*g
!
Evaluation_layers/accuracym'?

Evaluation_layers/loss\@
#
Evaluation_layers/accuracy_1m'?�a}u       ��Ax	Z�ngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�4@
#
Evaluation_layers/accuracy_1��&?1���u       ��Ax	:��ngh�A�*g
!
Evaluation_layers/accuracya'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1a'?!��Bu       ��Ax	D��ngh�A�*g
!
Evaluation_layers/accuracy�X&?

Evaluation_layers/loss$�@
#
Evaluation_layers/accuracy_1�X&?ў[u       ��Ax	�q�ngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss �@
#
Evaluation_layers/accuracy_1��&?�]��u       ��Ax	��ngh�A�*g
!
Evaluation_layers/accuracy�0'?

Evaluation_layers/lossD@
#
Evaluation_layers/accuracy_1�0'?�%�u       ��Ax	3��ngh�A�*g
!
Evaluation_layers/accuracyu&?

Evaluation_layers/lossh�@
#
Evaluation_layers/accuracy_1u&?xE�u       ��Ax	���ngh�A�*g
!
Evaluation_layers/accuracy&�'?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1&�'?��	�u       ��Ax	.h�ngh�A�*g
!
Evaluation_layers/accuracyQ'?

Evaluation_layers/loss�^@
#
Evaluation_layers/accuracy_1Q'?�}yu       ��Ax	;��ngh�A�*g
!
Evaluation_layers/accuracy�x&?

Evaluation_layers/loss"@
#
Evaluation_layers/accuracy_1�x&?<���u       ��Ax	�.�ngh�A�*g
!
Evaluation_layers/accuracy-�%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1-�%?��V�u       ��Ax	�^�ngh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss#�@
#
Evaluation_layers/accuracy_1��&?�|G�u       ��Ax	���ngh�A�*g
!
Evaluation_layers/accuracy�0'?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�0'?�'��u       ��Ax	��ogh�A�*g
!
Evaluation_layers/accuracy,&?

Evaluation_layers/loss�$@
#
Evaluation_layers/accuracy_1,&?�B�u       ��Ax	
Xogh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��&?��u       ��Ax	c�ogh�A�*g
!
Evaluation_layers/accuracy�T&?

Evaluation_layers/loss�	@
#
Evaluation_layers/accuracy_1�T&?��$�u       ��Ax	��ogh�A�*g
!
Evaluation_layers/accuracy9�%?

Evaluation_layers/lossW�@
#
Evaluation_layers/accuracy_19�%?j�nu       ��Ax	�ogh�A�*g
!
Evaluation_layers/accuracy�L&?

Evaluation_layers/lossH@
#
Evaluation_layers/accuracy_1�L&?��u       ��Ax	�jogh�A�*g
!
Evaluation_layers/accuracy�Q(?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�Q(?�6��u       ��Ax	��ogh�A�*g
!
Evaluation_layers/accuracy�l&?

Evaluation_layers/lossd�@
#
Evaluation_layers/accuracy_1�l&??]'�u       ��Ax	��!ogh�A�*g
!
Evaluation_layers/accuracy:�%?

Evaluation_layers/loss�Y @
#
Evaluation_layers/accuracy_1:�%?m�Puu       ��Ax	C�%ogh�A�*g
!
Evaluation_layers/accuracyf�%?

Evaluation_layers/loss�E @
#
Evaluation_layers/accuracy_1f�%?�S$�u       ��Ax	د5ogh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��&?B u�u       ��Ax	)p:ogh�A�*g
!
Evaluation_layers/accuracy�4&?

Evaluation_layers/loss�W@
#
Evaluation_layers/accuracy_1�4&?]܉
u       ��Ax	�?ogh�A�*g
!
Evaluation_layers/accuracy@�%?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1@�%?���u       ��Ax	��Cogh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��&?J�Pu       ��Ax	�/Hogh�A�*g
!
Evaluation_layers/accuracyh�%?

Evaluation_layers/loss�! @
#
Evaluation_layers/accuracy_1h�%?�<ISu       ��Ax	��Logh�A�*g
!
Evaluation_layers/accuracyt&?

Evaluation_layers/loss)9 @
#
Evaluation_layers/accuracy_1t&?�.�u       ��Ax	+�Pogh�A�*g
!
Evaluation_layers/accuracys&?

Evaluation_layers/loss�: @
#
Evaluation_layers/accuracy_1s&?)�u       ��Ax	KUogh�A�*g
!
Evaluation_layers/accuracyç$?

Evaluation_layers/lossJ�"@
#
Evaluation_layers/accuracy_1ç$?��tu       ��Ax	aZogh�A�*g
!
Evaluation_layers/accuracyT�%?

Evaluation_layers/lossˆ @
#
Evaluation_layers/accuracy_1T�%?����u       ��Ax	9�^ogh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��&?���ju       ��Ax	�&nogh�A�*g
!
Evaluation_layers/accuracy6�%?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_16�%?8��u       ��Ax	tarogh�A�*g
!
Evaluation_layers/accuracyP�%?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1P�%?_.M~u       ��Ax	�svogh�A�*g
!
Evaluation_layers/accuracyw&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1w&?3��Lu       ��Ax	�|zogh�A�*g
!
Evaluation_layers/accuracy��&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��&?֧�Ku       ��Ax	̾~ogh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�\"@
#
Evaluation_layers/accuracy_1��$?gtSu       ��Ax	v��ogh�A�*g
!
Evaluation_layers/accuracy@�%?

Evaluation_layers/loss!@
#
Evaluation_layers/accuracy_1@�%?�FL�u       ��Ax	�E�ogh�A�*g
!
Evaluation_layers/accuracy�0&?

Evaluation_layers/lossn�@
#
Evaluation_layers/accuracy_1�0&?6N��u       ��Ax	�i�ogh�A�*g
!
Evaluation_layers/accuracyH�%?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1H�%?ut�u       ��Ax	�ۏogh�A�*g
!
Evaluation_layers/accuracyo&?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1o&?H-��u       ��Ax	�0�ogh�A�*g
!
Evaluation_layers/accuracyv&?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1v&?���u       ��Ax	���ogh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss#@
#
Evaluation_layers/accuracy_1��$?֕gu       ��Ax	�4�ogh�A�*g
!
Evaluation_layers/accuracy�T&?

Evaluation_layers/lossS @
#
Evaluation_layers/accuracy_1�T&?Sܰ;u       ��Ax	�{�ogh�A�*g
!
Evaluation_layers/accuracy&t%?

Evaluation_layers/loss�#@
#
Evaluation_layers/accuracy_1&t%?����u       ��Ax	���ogh�A�*g
!
Evaluation_layers/accuracy`%?

Evaluation_layers/loss�#@
#
Evaluation_layers/accuracy_1`%?�}�Iu       ��Ax	o��ogh�A�*g
!
Evaluation_layers/accuracy;�%?

Evaluation_layers/loss�"@
#
Evaluation_layers/accuracy_1;�%?�<�u       ��Ax	�ogh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss��#@
#
Evaluation_layers/accuracy_1�%?�d9u       ��Ax	���ogh�A�*g
!
Evaluation_layers/accuracy(x%?

Evaluation_layers/loss�n"@
#
Evaluation_layers/accuracy_1(x%?��i�u       ��Ax	o�ogh�A�*g
!
Evaluation_layers/accuracy(x%?

Evaluation_layers/loss��"@
#
Evaluation_layers/accuracy_1(x%?K�%�u       ��Ax	�k�ogh�A�*g
!
Evaluation_layers/accuracy`�%?

Evaluation_layers/loss^2"@
#
Evaluation_layers/accuracy_1`�%?N��)u       ��Ax	���ogh�A�*g
!
Evaluation_layers/accuracyd%?

Evaluation_layers/loss�W#@
#
Evaluation_layers/accuracy_1d%?i��cu       ��Ax	���ogh�A�*g
!
Evaluation_layers/accuracyʳ$?

Evaluation_layers/lossx%@
#
Evaluation_layers/accuracy_1ʳ$?�.N�u       ��Ax	R*�ogh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss	�$@
#
Evaluation_layers/accuracy_1�%?ױ#u       ��Ax	-��ogh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss��%@
#
Evaluation_layers/accuracy_1�%?6�u       ��Ax	���ogh�A�*g
!
Evaluation_layers/accuracyī$?

Evaluation_layers/loss�7&@
#
Evaluation_layers/accuracy_1ī$?�s�u       ��Ax	�	�ogh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�f'@
#
Evaluation_layers/accuracy_1��$?ʡ�u       ��Ax	ʡ�ogh�A�*g
!
Evaluation_layers/accuracy,�%?

Evaluation_layers/loss�%@
#
Evaluation_layers/accuracy_1,�%?����u       ��Ax	���ogh�A�*g
!
Evaluation_layers/accuracy�7$?

Evaluation_layers/loss��(@
#
Evaluation_layers/accuracy_1�7$?���Pu       ��Ax	�0�ogh�A�*g
!
Evaluation_layers/accuracy�#%?

Evaluation_layers/lossO&&@
#
Evaluation_layers/accuracy_1�#%?�a�u       ��Ax	9��ogh�A�*g
!
Evaluation_layers/accuracy8�%?

Evaluation_layers/losswL$@
#
Evaluation_layers/accuracy_18�%?��vu       ��Ax	J�pgh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/lossa�&@
#
Evaluation_layers/accuracy_1�%?|m��u       ��Ax	k�pgh�A�*g
!
Evaluation_layers/accuracy@%?

Evaluation_layers/loss��%@
#
Evaluation_layers/accuracy_1@%?���0u       ��Ax	pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�.'@
#
Evaluation_layers/accuracy_1��$?ŕ��u       ��Ax	}?pgh�A�*g
!
Evaluation_layers/accuracyI�%?

Evaluation_layers/lossR�$@
#
Evaluation_layers/accuracy_1I�%?{$�u       ��Ax	�#pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossL�'@
#
Evaluation_layers/accuracy_1��$?~q�u       ��Ax	8o#pgh�A�*g
!
Evaluation_layers/accuracy�+$?

Evaluation_layers/lossy|(@
#
Evaluation_layers/accuracy_1�+$?�yíu       ��Ax	�X(pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��'@
#
Evaluation_layers/accuracy_1��$?#�c/u       ��Ax	\ -pgh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/lossu*'@
#
Evaluation_layers/accuracy_1�%?�B��u       ��Ax	�o1pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��'@
#
Evaluation_layers/accuracy_1��$?A��zu       ��Ax	w�5pgh�A�*g
!
Evaluation_layers/accuracy0%?

Evaluation_layers/loss-�'@
#
Evaluation_layers/accuracy_10%?Ϛi�u       ��Ax	��9pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�)@
#
Evaluation_layers/accuracy_1��$?� u       ��Ax	z�Jpgh�A�*g
!
Evaluation_layers/accuracyp�#?

Evaluation_layers/loss�+@
#
Evaluation_layers/accuracy_1p�#?�u       ��Ax	X�Npgh�A�*g
!
Evaluation_layers/accuracyū$?

Evaluation_layers/loss�)@
#
Evaluation_layers/accuracy_1ū$?G�pu       ��Ax	7Spgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��(@
#
Evaluation_layers/accuracy_1��$?�ϸ�u       ��Ax	�yWpgh�A�*g
!
Evaluation_layers/accuracy�w$?

Evaluation_layers/loss��*@
#
Evaluation_layers/accuracy_1�w$?P�Y�u       ��Ax	��[pgh�A�*g
!
Evaluation_layers/accuracy�w$?

Evaluation_layers/loss/c*@
#
Evaluation_layers/accuracy_1�w$?c��u       ��Ax	 �_pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��)@
#
Evaluation_layers/accuracy_1��$?���u       ��Ax	n�cpgh�A�*g
!
Evaluation_layers/accuracyȳ$?

Evaluation_layers/loss~)@
#
Evaluation_layers/accuracy_1ȳ$?��?u       ��Ax	�chpgh�A�*g
!
Evaluation_layers/accuracy�S$?

Evaluation_layers/loss�s*@
#
Evaluation_layers/accuracy_1�S$?�~�>u       ��Ax	�mpgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�1)@
#
Evaluation_layers/accuracy_1��$?*�Tu       ��Ax	 �qpgh�A�*g
!
Evaluation_layers/accuracy£$?

Evaluation_layers/loss�v)@
#
Evaluation_layers/accuracy_1£$?�M�u       ��Ax	"�pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��)@
#
Evaluation_layers/accuracy_1��$?ǄBu       ��Ax	K��pgh�A�*g
!
Evaluation_layers/accuracyv$?

Evaluation_layers/lossL�+@
#
Evaluation_layers/accuracy_1v$?�H1u       ��Ax	�-�pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�_(@
#
Evaluation_layers/accuracy_1��$?��G�u       ��Ax	�Őpgh�A�*g
!
Evaluation_layers/accuracyX�#?

Evaluation_layers/lossM�+@
#
Evaluation_layers/accuracy_1X�#?aP��u       ��Ax	�=�pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossҧ)@
#
Evaluation_layers/accuracy_1��$?�rQ#u       ��Ax	4�pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�*@
#
Evaluation_layers/accuracy_1��$?��p�u       ��Ax	{��pgh�A�*g
!
Evaluation_layers/accuracye�#?

Evaluation_layers/lossj�+@
#
Evaluation_layers/accuracy_1e�#?�-�du       ��Ax	��pgh�A�*g
!
Evaluation_layers/accuracy�_$?

Evaluation_layers/loss��,@
#
Evaluation_layers/accuracy_1�_$?�7�hu       ��Ax	�o�pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��+@
#
Evaluation_layers/accuracy_1��$?O�"'u       ��Ax	���pgh�A�*g
!
Evaluation_layers/accuracy�+$?

Evaluation_layers/loss9-@
#
Evaluation_layers/accuracy_1�+$? ��u       ��Ax	�4�pgh�A�*g
!
Evaluation_layers/accuracy�7$?

Evaluation_layers/loss��+@
#
Evaluation_layers/accuracy_1�7$?��*u       ��Ax	��pgh�A�*g
!
Evaluation_layers/accuracyƯ$?

Evaluation_layers/loss�A,@
#
Evaluation_layers/accuracy_1Ư$?���u       ��Ax	#�pgh�A�*g
!
Evaluation_layers/accuracy�C$?

Evaluation_layers/lossqP-@
#
Evaluation_layers/accuracy_1�C$?�ߦ�u       ��Ax	�*�pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossk-@
#
Evaluation_layers/accuracy_1��$?�6�lu       ��Ax	 s�pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��+@
#
Evaluation_layers/accuracy_1��$?�;�cu       ��Ax	�S�pgh�A�*g
!
Evaluation_layers/accuracyf�#?

Evaluation_layers/lossK�.@
#
Evaluation_layers/accuracy_1f�#? �ɵu       ��Ax	s��pgh�A�*g
!
Evaluation_layers/accuracyy$?

Evaluation_layers/loss�.@
#
Evaluation_layers/accuracy_1y$?��u       ��Ax	�1�pgh�A�*g
!
Evaluation_layers/accuracyd%?

Evaluation_layers/loss
N+@
#
Evaluation_layers/accuracy_1d%?M(u       ��Ax	���pgh�A�*g
!
Evaluation_layers/accuracym�#?

Evaluation_layers/loss�-@
#
Evaluation_layers/accuracy_1m�#?W ��u       ��Ax	�^�pgh�A�*g
!
Evaluation_layers/accuracyx$?

Evaluation_layers/loss��-@
#
Evaluation_layers/accuracy_1x$?0�u       ��Ax	�,�pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�\,@
#
Evaluation_layers/accuracy_1��$?��ÿu       ��Ax	�x�pgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossk�+@
#
Evaluation_layers/accuracy_1��$?�_0�u       ��Ax	��pgh�A�*g
!
Evaluation_layers/accuracyu$?

Evaluation_layers/loss�&.@
#
Evaluation_layers/accuracy_1u$?�]�ru       ��Ax	x~qgh�A�*g
!
Evaluation_layers/accuracy�g$?

Evaluation_layers/loss��,@
#
Evaluation_layers/accuracy_1�g$?^Vhu       ��Ax	�qgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossSS,@
#
Evaluation_layers/accuracy_1��$?VL|�u       ��Ax	4�
qgh�A�*g
!
Evaluation_layers/accuracyh�#?

Evaluation_layers/loss�6.@
#
Evaluation_layers/accuracy_1h�#?au       ��Ax	��qgh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss+�+@
#
Evaluation_layers/accuracy_1�%?��Nu       ��Ax	�qgh�A�*g
!
Evaluation_layers/accuracy�#$?

Evaluation_layers/losst�.@
#
Evaluation_layers/accuracy_1�#$?.� �u       ��Ax	�qgh�A�*g
!
Evaluation_layers/accuracym�#?

Evaluation_layers/lossư.@
#
Evaluation_layers/accuracy_1m�#?�n`�u       ��Ax	!Fqgh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss1D,@
#
Evaluation_layers/accuracy_1�%?"��u       ��Ax	��,qgh�A�*g
!
Evaluation_layers/accuracy(%?

Evaluation_layers/loss�c,@
#
Evaluation_layers/accuracy_1(%?r��bu       ��Ax	�
1qgh�A�*g
!
Evaluation_layers/accuracy$?

Evaluation_layers/loss��.@
#
Evaluation_layers/accuracy_1$?�krdu       ��Ax	T�5qgh�A�*g
!
Evaluation_layers/accuracy5�#?

Evaluation_layers/loss&�/@
#
Evaluation_layers/accuracy_15�#?���u       ��Ax	�O:qgh�A�*g
!
Evaluation_layers/accuracyͻ$?

Evaluation_layers/loss�Z/@
#
Evaluation_layers/accuracy_1ͻ$?��tu       ��Ax	J�>qgh�A�*g
!
Evaluation_layers/accuracy�k$?

Evaluation_layers/loss��/@
#
Evaluation_layers/accuracy_1�k$?��iu       ��Ax	�~Cqgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossN.@
#
Evaluation_layers/accuracy_1��$?���u       ��Ax	1�Gqgh�A�*g
!
Evaluation_layers/accuracy�c$?

Evaluation_layers/loss�/@
#
Evaluation_layers/accuracy_1�c$?�h+cu       ��Ax	�NLqgh�A�*g
!
Evaluation_layers/accuracy�+$?

Evaluation_layers/loss��1@
#
Evaluation_layers/accuracy_1�+$?*�� u       ��Ax	�&Qqgh�A�*g
!
Evaluation_layers/accuracy5�#?

Evaluation_layers/loss�k2@
#
Evaluation_layers/accuracy_15�#?� 
�u       ��Ax	�Uqgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossƽ0@
#
Evaluation_layers/accuracy_1��$?�O(u       ��Ax	ɴeqgh�A�*g
!
Evaluation_layers/accuracy�_$?

Evaluation_layers/loss��0@
#
Evaluation_layers/accuracy_1�_$?F�u       ��Ax	�3jqgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�1@
#
Evaluation_layers/accuracy_1��$?#��u       ��Ax	�lnqgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�/@
#
Evaluation_layers/accuracy_1��$?�u�~u       ��Ax	|zrqgh�A�*g
!
Evaluation_layers/accuracyb�#?

Evaluation_layers/losss�2@
#
Evaluation_layers/accuracy_1b�#?|n��u       ��Ax	�vqgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�1@
#
Evaluation_layers/accuracy_1��$?��s�u       ��Ax	��zqgh�A�*g
!
Evaluation_layers/accuracy�o$?

Evaluation_layers/loss�1@
#
Evaluation_layers/accuracy_1�o$?��2u       ��Ax	|�qgh�A�*g
!
Evaluation_layers/accuracy�G$?

Evaluation_layers/loss 2@
#
Evaluation_layers/accuracy_1�G$?`9�[u       ��Ax	�ރqgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��1@
#
Evaluation_layers/accuracy_1��$?c���u       ��Ax		"�qgh�A�*g
!
Evaluation_layers/accuracy�S$?

Evaluation_layers/lossD�2@
#
Evaluation_layers/accuracy_1�S$? �L�u       ��Ax	gV�qgh�A�*g
!
Evaluation_layers/accuracy�%?

Evaluation_layers/loss�1@
#
Evaluation_layers/accuracy_1�%?�MA�u       ��Ax	J��qgh�A�*g
!
Evaluation_layers/accuracy`�#?

Evaluation_layers/loss��3@
#
Evaluation_layers/accuracy_1`�#?Is��u       ��Ax	Gʡqgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�q2@
#
Evaluation_layers/accuracy_1��$?�@7u       ��Ax	���qgh�A�*g
!
Evaluation_layers/accuracyʷ$?

Evaluation_layers/loss=�1@
#
Evaluation_layers/accuracy_1ʷ$?]��xu       ��Ax	?Ωqgh�A�*g
!
Evaluation_layers/accuracy�{$?

Evaluation_layers/loss�1@
#
Evaluation_layers/accuracy_1�{$?���u       ��Ax	���qgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��1@
#
Evaluation_layers/accuracy_1��$? ���u       ��Ax	o�qgh�A�*g
!
Evaluation_layers/accuracy§$?

Evaluation_layers/loss�S2@
#
Evaluation_layers/accuracy_1§$?��m�u       ��Ax	я�qgh�A�*g
!
Evaluation_layers/accuracyI�#?

Evaluation_layers/loss@4@
#
Evaluation_layers/accuracy_1I�#?"u�
u       ��Ax	k׺qgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��1@
#
Evaluation_layers/accuracy_1��$?�4:Ju       ��Ax	\2�qgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��2@
#
Evaluation_layers/accuracy_1��$?^u�u       ��Ax	��qgh�A�*g
!
Evaluation_layers/accuracy�g$?

Evaluation_layers/lossZ�2@
#
Evaluation_layers/accuracy_1�g$?J�u       ��Ax	��qgh�A�*g
!
Evaluation_layers/accuracyG#?

Evaluation_layers/loss:�4@
#
Evaluation_layers/accuracy_1G#?0pu       ��Ax	%K�qgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/lossC$3@
#
Evaluation_layers/accuracy_1��$?��l�u       ��Ax	���qgh�A�*g
!
Evaluation_layers/accuracy(%?

Evaluation_layers/loss
�2@
#
Evaluation_layers/accuracy_1(%?g�u       ��Ax	���qgh�A�*g
!
Evaluation_layers/accuracy�$?

Evaluation_layers/loss �4@
#
Evaluation_layers/accuracy_1�$?ε�u       ��Ax	mF�qgh�A�*g
!
Evaluation_layers/accuracy3#?

Evaluation_layers/loss�6@
#
Evaluation_layers/accuracy_13#?�r�u       ��Ax	�m�qgh�A�*g
!
Evaluation_layers/accuracy�[$?

Evaluation_layers/lossc�3@
#
Evaluation_layers/accuracy_1�[$?�s�=u       ��Ax	
��qgh�A�*g
!
Evaluation_layers/accuracyP�%?

Evaluation_layers/loss̾3@
#
Evaluation_layers/accuracy_1P�%?"�Lu       ��Ax	yO�qgh�A�*g
!
Evaluation_layers/accuracyL�#?

Evaluation_layers/loss�`7@
#
Evaluation_layers/accuracy_1L�#?���Nu       ��Ax	���qgh�A�*g
!
Evaluation_layers/accuracyQ�#?

Evaluation_layers/lossH�7@
#
Evaluation_layers/accuracy_1Q�#?a�""u       ��Ax	G��qgh�A�*g
!
Evaluation_layers/accuracy (%?

Evaluation_layers/loss	+4@
#
Evaluation_layers/accuracy_1 (%?�(\�u       ��Ax	��rgh�A�*g
!
Evaluation_layers/accuracy�/$?

Evaluation_layers/loss��6@
#
Evaluation_layers/accuracy_1�/$?�(�fu       ��Ax	��rgh�A�*g
!
Evaluation_layers/accuracy�s$?

Evaluation_layers/lossDY6@
#
Evaluation_layers/accuracy_1�s$?mu       ��Ax	��rgh�A�*g
!
Evaluation_layers/accuracyX�#?

Evaluation_layers/loss�7@
#
Evaluation_layers/accuracy_1X�#?4׮�u       ��Ax	8rgh�A�*g
!
Evaluation_layers/accuracyC�#?

Evaluation_layers/loss��7@
#
Evaluation_layers/accuracy_1C�#?3�@�u       ��Ax	�orgh�A�*g
!
Evaluation_layers/accuracy�$?

Evaluation_layers/loss�6@
#
Evaluation_layers/accuracy_1�$?/�zu       ��Ax	ר"rgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss
�5@
#
Evaluation_layers/accuracy_1��$?����u       ��Ax	�&rgh�A�*g
!
Evaluation_layers/accuracyp�#?

Evaluation_layers/loss�5@
#
Evaluation_layers/accuracy_1p�#?'��u       ��Ax	+rgh�A�*g
!
Evaluation_layers/accuracy,o#?

Evaluation_layers/loss��7@
#
Evaluation_layers/accuracy_1,o#?���u       ��Ax	�2/rgh�A�*g
!
Evaluation_layers/accuracyj�#?

Evaluation_layers/loss� 7@
#
Evaluation_layers/accuracy_1j�#?�0�_u       ��Ax	0�3rgh�A�*g
!
Evaluation_layers/accuracy�s$?

Evaluation_layers/lossV97@
#
Evaluation_layers/accuracy_1�s$?��?u       ��Ax	�aDrgh�A�*g
!
Evaluation_layers/accuracy #?

Evaluation_layers/lossN9@
#
Evaluation_layers/accuracy_1 #?��_cu       ��Ax	�Hrgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss��6@
#
Evaluation_layers/accuracy_1��$?��OUu       ��Ax	��Lrgh�A�*g
!
Evaluation_layers/accuracyf�#?

Evaluation_layers/loss4�6@
#
Evaluation_layers/accuracy_1f�#?,%�Mu       ��Ax	>UQrgh�A�*g
!
Evaluation_layers/accuracyb�#?

Evaluation_layers/loss��8@
#
Evaluation_layers/accuracy_1b�#?):iu       ��Ax	��Urgh�A�*g
!
Evaluation_layers/accuracy�#$?

Evaluation_layers/lossOy8@
#
Evaluation_layers/accuracy_1�#$?O�Ufu       ��Ax	w�Yrgh�A�*g
!
Evaluation_layers/accuracyc�#?

Evaluation_layers/loss��8@
#
Evaluation_layers/accuracy_1c�#?!E�u       ��Ax	r+^rgh�A�*g
!
Evaluation_layers/accuracy��$?

Evaluation_layers/loss�5@
#
Evaluation_layers/accuracy_1��$?6�*
u       ��Ax	��brgh�A�*g
!
Evaluation_layers/accuracyF�#?

Evaluation_layers/loss��7@
#
Evaluation_layers/accuracy_1F�#?z �u       ��Ax	�Agrgh�A�*g
!
Evaluation_layers/accuracy%c#?

Evaluation_layers/loss�
9@
#
Evaluation_layers/accuracy_1%c#?�C�=u       ��Ax	��krgh�A�*g
!
Evaluation_layers/accuracy�s$?

Evaluation_layers/loss�8@
#
Evaluation_layers/accuracy_1�s$?�kQ/u       ��Ax	cD{rgh�A�*g
!
Evaluation_layers/accuracy [#?

Evaluation_layers/loss�9@
#
Evaluation_layers/accuracy_1 [#?��x.u       ��Ax	9rgh�A�*g
!
Evaluation_layers/accuracy*k#?

Evaluation_layers/loss��8@
#
Evaluation_layers/accuracy_1*k#?%:�7u       ��Ax	0��rgh�A�*g
!
Evaluation_layers/accuracy\�#?

Evaluation_layers/loss&8@
#
Evaluation_layers/accuracy_1\�#?S���u       ��Ax	(�rgh�A�*g
!
Evaluation_layers/accuracyū$?

Evaluation_layers/loss$j7@
#
Evaluation_layers/accuracy_1ū$?�8��u       ��Ax	���rgh�A�*g
!
Evaluation_layers/accuracy"[#?

Evaluation_layers/loss�*9@
#
Evaluation_layers/accuracy_1"[#?���u       ��Ax	��rgh�A�*g
!
Evaluation_layers/accuracyf�#?

Evaluation_layers/lossHe9@
#
Evaluation_layers/accuracy_1f�#?Fs�,u       ��Ax	��rgh�A�*g
!
Evaluation_layers/accuracy�#$?

Evaluation_layers/loss��9@
#
Evaluation_layers/accuracy_1�#$?���u       ��Ax	�y�rgh�A�*g
!
Evaluation_layers/accuracy`�#?

Evaluation_layers/loss��:@
#
Evaluation_layers/accuracy_1`�#?�"�!u       ��Ax	nӝrgh�A�*g
!
Evaluation_layers/accuracyƞ"?

Evaluation_layers/loss/=@
#
Evaluation_layers/accuracy_1ƞ"?���u       ��Ax	���rgh�A�*g
!
Evaluation_layers/accuracy�&"?

Evaluation_layers/loss�H=@
#
Evaluation_layers/accuracy_1�&"?����u       ��Ax	u{�rgh�A�*g
!
Evaluation_layers/accuracy�W$?

Evaluation_layers/losso(;@
#
Evaluation_layers/accuracy_1�W$?W�pBu       ��Ax	s��rgh�A�*g
!
Evaluation_layers/accuracy�$?

Evaluation_layers/loss/:@
#
Evaluation_layers/accuracy_1�$?l��Ou       ��Ax	O�rgh�A�*g
!
Evaluation_layers/accuracy7#?

Evaluation_layers/loss�M;@
#
Evaluation_layers/accuracy_17#?$�z�u       ��Ax	�m�rgh�A�*g
!
Evaluation_layers/accuracy�/$?

Evaluation_layers/loss�99@
#
Evaluation_layers/accuracy_1�/$?�*u       ��Ax	|��rgh�A�*g
!
Evaluation_layers/accuracy-s#?

Evaluation_layers/loss��;@
#
Evaluation_layers/accuracy_1-s#?D��gu       ��Ax	��rgh�A�*g
!
Evaluation_layers/accuracy7�#?

Evaluation_layers/lossm	;@
#
Evaluation_layers/accuracy_17�#?�`9�u       ��Ax	H�rgh�A�*g
!
Evaluation_layers/accuracy�."?

Evaluation_layers/loss�0>@
#
Evaluation_layers/accuracy_1�."?�F[u       ��Ax	��rgh�A�*g
!
Evaluation_layers/accuracy|$?

Evaluation_layers/loss�K:@
#
Evaluation_layers/accuracy_1|$?�1�gu       ��Ax	��rgh�A�*g
!
Evaluation_layers/accuracy W#?

Evaluation_layers/lossaF<@
#
Evaluation_layers/accuracy_1 W#?W���u       ��Ax	-��rgh�A�*g
!
Evaluation_layers/accuracyJ�#?

Evaluation_layers/loss�U;@
#
Evaluation_layers/accuracy_1J�#?����u       ��Ax	N�rgh�A�*g
!
Evaluation_layers/accuracyD�#?

Evaluation_layers/loss�;@
#
Evaluation_layers/accuracy_1D�#?��7�u       ��Ax	S��rgh�A�*g
!
Evaluation_layers/accuracy�n"?

Evaluation_layers/loss;�=@
#
Evaluation_layers/accuracy_1�n"?�/`u       ��Ax	p�rgh�A�*g
!
Evaluation_layers/accuracy;#?

Evaluation_layers/loss�(=@
#
Evaluation_layers/accuracy_1;#?�o�u       ��Ax	��rgh�A�*g
!
Evaluation_layers/accuracy#?

Evaluation_layers/loss�W=@
#
Evaluation_layers/accuracy_1#?�=�Hu       ��Ax	%q�rgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss͂>@
#
Evaluation_layers/accuracy_1��"?�Gu       ��Ax	��sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss��=@
#
Evaluation_layers/accuracy_1��"?k�{�u       ��Ax	��sgh�A�*g
!
Evaluation_layers/accuracy־"?

Evaluation_layers/loss�1>@
#
Evaluation_layers/accuracy_1־"?�cBu       ��Ax	8�
sgh�A�*g
!
Evaluation_layers/accuracyM�#?

Evaluation_layers/loss��<@
#
Evaluation_layers/accuracy_1M�#?�&��u       ��Ax	�msgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�p?@
#
Evaluation_layers/accuracy_1��"?��yu       ��Ax	��sgh�A�*g
!
Evaluation_layers/accuracyV�#?

Evaluation_layers/loss��<@
#
Evaluation_layers/accuracy_1V�#?��wu       ��Ax	�5%sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss72>@
#
Evaluation_layers/accuracy_1��"?�u       ��Ax	��)sgh�A�*g
!
Evaluation_layers/accuracy?�#?

Evaluation_layers/loss�<@
#
Evaluation_layers/accuracy_1?�#?�f��u       ��Ax	�j.sgh�A�*g
!
Evaluation_layers/accuracy�#?

Evaluation_layers/lossHz=@
#
Evaluation_layers/accuracy_1�#?;���u       ��Ax	�53sgh�A�*g
!
Evaluation_layers/accuracy~
"?

Evaluation_layers/loss�j@@
#
Evaluation_layers/accuracy_1~
"?�m��u       ��Ax	Ez7sgh�A�*g
!
Evaluation_layers/accuracy.w#?

Evaluation_layers/loss��=@
#
Evaluation_layers/accuracy_1.w#?�90	u       ��Ax	��;sgh�A�*g
!
Evaluation_layers/accuracyG#?

Evaluation_layers/loss�Y?@
#
Evaluation_layers/accuracy_1G#?��Bu       ��Ax	_l@sgh�A�*g
!
Evaluation_layers/accuracyV�#?

Evaluation_layers/losse�=@
#
Evaluation_layers/accuracy_1V�#?���u       ��Ax	��Dsgh�A�*g
!
Evaluation_layers/accuracy�""?

Evaluation_layers/lossU@@
#
Evaluation_layers/accuracy_1�""?���u       ��Ax	�wHsgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�>@
#
Evaluation_layers/accuracy_1��"?�>��u       ��Ax	�gLsgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossZk?@
#
Evaluation_layers/accuracy_1��"?��u       ��Ax	\sgh�A�*g
!
Evaluation_layers/accuracy0w#?

Evaluation_layers/loss�{?@
#
Evaluation_layers/accuracy_10w#?;� u       ��Ax	�Y`sgh�A�*g
!
Evaluation_layers/accuracy�z"?

Evaluation_layers/loss�6A@
#
Evaluation_layers/accuracy_1�z"?�m-u       ��Ax	Uesgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossn�@@
#
Evaluation_layers/accuracy_1��"?�c�`u       ��Ax	Xdisgh�A�*g
!
Evaluation_layers/accuracy #?

Evaluation_layers/loss�8>@
#
Evaluation_layers/accuracy_1 #?$b�u       ��Ax	m�msgh�A�*g
!
Evaluation_layers/accuracy,s#?

Evaluation_layers/loss��=@
#
Evaluation_layers/accuracy_1,s#?�r��u       ��Ax	L�qsgh�A�*g
!
Evaluation_layers/accuracy7#?

Evaluation_layers/loss��>@
#
Evaluation_layers/accuracy_17#?�T��u       ��Ax	;_vsgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�@@
#
Evaluation_layers/accuracy_1��"?��<�u       ��Ax	gzsgh�A�*g
!
Evaluation_layers/accuracy�j"?

Evaluation_layers/loss�k?@
#
Evaluation_layers/accuracy_1�j"?�ٝu       ��Ax	G�~sgh�A�*g
!
Evaluation_layers/accuracy/#?

Evaluation_layers/lossf�>@
#
Evaluation_layers/accuracy_1/#?��tu       ��Ax	x#�sgh�A�*g
!
Evaluation_layers/accuracy;#?

Evaluation_layers/loss�>@
#
Evaluation_layers/accuracy_1;#?
7�u       ��Ax	���sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss~MA@
#
Evaluation_layers/accuracy_1��"?���~u       ��Ax	:"�sgh�A�*g
!
Evaluation_layers/accuracy�#?

Evaluation_layers/loss��@@
#
Evaluation_layers/accuracy_1�#?nDD�u       ��Ax	�sgh�A�*g
!
Evaluation_layers/accuracyÖ"?

Evaluation_layers/loss �@@
#
Evaluation_layers/accuracy_1Ö"?F�ou       ��Ax	��sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss
�A@
#
Evaluation_layers/accuracy_1��"?���Tu       ��Ax	�+�sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/losszA@
#
Evaluation_layers/accuracy_1��"?$��`u       ��Ax	xڪsgh�A�*g
!
Evaluation_layers/accuracy"[#?

Evaluation_layers/loss�@@
#
Evaluation_layers/accuracy_1"[#?)�u       ��Ax	9��sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossk'A@
#
Evaluation_layers/accuracy_1��"?�y�u       ��Ax	��sgh�A�*g
!
Evaluation_layers/accuracyʦ"?

Evaluation_layers/loss�B@
#
Evaluation_layers/accuracy_1ʦ"?
��u       ��Ax	t�sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�?@
#
Evaluation_layers/accuracy_1��"?�L0�u       ��Ax	��sgh�A�*g
!
Evaluation_layers/accuracy
+#?

Evaluation_layers/loss�A@
#
Evaluation_layers/accuracy_1
+#?��Eu       ��Ax	���sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�?@
#
Evaluation_layers/accuracy_1��"?�t�u       ��Ax	��sgh�A�*g
!
Evaluation_layers/accuracy?#?

Evaluation_layers/lossT�?@
#
Evaluation_layers/accuracy_1?#?0�-,u       ��Ax	�K�sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�YA@
#
Evaluation_layers/accuracy_1��"?!�u       ��Ax	��sgh�A�*g
!
Evaluation_layers/accuracy�^"?

Evaluation_layers/loss�A@
#
Evaluation_layers/accuracy_1�^"?qp�Tu       ��Ax	o��sgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossZ�@@
#
Evaluation_layers/accuracy_1��"?����u       ��Ax	��sgh�A�*g
!
Evaluation_layers/accuracyJ�#?

Evaluation_layers/lossA�>@
#
Evaluation_layers/accuracy_1J�#?B�:u       ��Ax	���sgh�A�*g
!
Evaluation_layers/accuracy$R!?

Evaluation_layers/loss�C@
#
Evaluation_layers/accuracy_1$R!?��|u       ��Ax	�(�sgh�A�*g
!
Evaluation_layers/accuracy4�#?

Evaluation_layers/loss��?@
#
Evaluation_layers/accuracy_14�#?�k:u       ��Ax	���sgh�A�*g
!
Evaluation_layers/accuracyҶ"?

Evaluation_layers/loss0�A@
#
Evaluation_layers/accuracy_1Ҷ"?��ndu       ��Ax	`��sgh�A�*g
!
Evaluation_layers/accuracy̪"?

Evaluation_layers/lossN6A@
#
Evaluation_layers/accuracy_1̪"?b���u       ��Ax	�Otgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�A@
#
Evaluation_layers/accuracy_1��"?b��u       ��Ax	�`tgh�A�*g
!
Evaluation_layers/accuracyƞ"?

Evaluation_layers/loss}�B@
#
Evaluation_layers/accuracy_1ƞ"?8?Lu       ��Ax	�wtgh�A�*g
!
Evaluation_layers/accuracy"?

Evaluation_layers/loss�A@
#
Evaluation_layers/accuracy_1"?�^�u       ��Ax	pVtgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossJB@
#
Evaluation_layers/accuracy_1��"?���u       ��Ax	�vtgh�A�*g
!
Evaluation_layers/accuracy�:"?

Evaluation_layers/loss��D@
#
Evaluation_layers/accuracy_1�:"?d��Tu       ��Ax	��tgh�A�*g
!
Evaluation_layers/accuracyS#?

Evaluation_layers/loss�y@@
#
Evaluation_layers/accuracy_1S#?�)ύu       ��Ax	�'tgh�A�*g
!
Evaluation_layers/accuracy3#?

Evaluation_layers/loss�?@
#
Evaluation_layers/accuracy_13#?�N2�u       ��Ax	�>#tgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss�B@
#
Evaluation_layers/accuracy_1��"?n�q+u       ��Ax	t'tgh�A�*g
!
Evaluation_layers/accuracyR�!?

Evaluation_layers/loss��D@
#
Evaluation_layers/accuracy_1R�!?Cݎ[u       ��Ax	!�+tgh�A�*g
!
Evaluation_layers/accuracy?#?

Evaluation_layers/loss��?@
#
Evaluation_layers/accuracy_1?#?k�-u       ��Ax	oI=tgh�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/lossr�C@
#
Evaluation_layers/accuracy_1�"?����u       ��Ax	��Atgh�A�*g
!
Evaluation_layers/accuracyP�#?

Evaluation_layers/lossM�B@
#
Evaluation_layers/accuracy_1P�#?x@<�u       ��Ax	Ftgh�A�*g
!
Evaluation_layers/accuracyP�#?

Evaluation_layers/loss�A@
#
Evaluation_layers/accuracy_1P�#?��Qu       ��Ax	rJtgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossv!C@
#
Evaluation_layers/accuracy_1��"?3��,u       ��Ax	��Ntgh�A�*g
!
Evaluation_layers/accuracya�#?

Evaluation_layers/loss�A@
#
Evaluation_layers/accuracy_1a�#?��U�u       ��Ax	�gStgh�A�*g
!
Evaluation_layers/accuracy�v"?

Evaluation_layers/loss��C@
#
Evaluation_layers/accuracy_1�v"?
QNu       ��Ax	zWtgh�A�*g
!
Evaluation_layers/accuracy#?

Evaluation_layers/loss8�D@
#
Evaluation_layers/accuracy_1#?�u�u       ��Ax	t[tgh�A�*g
!
Evaluation_layers/accuracyӶ"?

Evaluation_layers/loss��D@
#
Evaluation_layers/accuracy_1Ӷ"?�o:u       ��Ax	h�_tgh�A�*g
!
Evaluation_layers/accuracy7#?

Evaluation_layers/loss�\D@
#
Evaluation_layers/accuracy_17#?�~�^u       ��Ax	F�ctgh�A�*g
!
Evaluation_layers/accuracy#?

Evaluation_layers/lossH�D@
#
Evaluation_layers/accuracy_1#?X[]�u       ��Ax	��rtgh�A�*g
!
Evaluation_layers/accuracy#?

Evaluation_layers/lossD�B@
#
Evaluation_layers/accuracy_1#?+�%u       ��Ax	�4wtgh�A�*g
!
Evaluation_layers/accuracy�>"?

Evaluation_layers/lossF*C@
#
Evaluation_layers/accuracy_1�>"?K��<u       ��Ax	��{tgh�A�*g
!
Evaluation_layers/accuracyӺ"?

Evaluation_layers/loss\�C@
#
Evaluation_layers/accuracy_1Ӻ"?��mu       ��Ax	6)�tgh�A�*g
!
Evaluation_layers/accuracyή"?

Evaluation_layers/loss�C@
#
Evaluation_layers/accuracy_1ή"?�T��u       ��Ax	���tgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss��E@
#
Evaluation_layers/accuracy_1��"?g���u       ��Ax	ҙ�tgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss\oD@
#
Evaluation_layers/accuracy_1��"?D�.u       ��Ax	*��tgh�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss��C@
#
Evaluation_layers/accuracy_1��"?'�G%u       ��Ax	u��tgh�A�*g
!
Evaluation_layers/accuracy�z"?

Evaluation_layers/loss,jD@
#
Evaluation_layers/accuracy_1�z"?w�Au       ��Ax	���tgh�A�*g
!
Evaluation_layers/accuracy�N"?

Evaluation_layers/lossq+D@
#
Evaluation_layers/accuracy_1�N"?M�#-u       ��Ax	dC�tgh�A�*g
!
Evaluation_layers/accuracy�r"?

Evaluation_layers/loss�7E@
#
Evaluation_layers/accuracy_1�r"?�μ