       �K"	  @s_�Abrain.Event:2 	�      ���	��ps_�A"��
|
Input/PlaceholderPlaceholder*
dtype0* 
shape:��������� *+
_output_shapes
:��������� 
u
Target/PlaceholderPlaceholder*
dtype0*
shape:���������*'
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
Flatten/ShapeShapeInput/Placeholder*
T0*
_output_shapes
:*
out_type0
]
Flatten/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
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
Flatten/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB:
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
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*<
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
Mclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
dtype0*<
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
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
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
0classification_layers/dense0/dense/kernel/AssignAssign)classification_layers/dense0/dense/kernelFclassification_layers/dense0/dense/kernel/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
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
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
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
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*'
_output_shapes
:���������
*
data_formatNHWC*
T0
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
=classification_layers/dense0/batch_normalization/gamma/AssignAssign6classification_layers/dense0/batch_normalization/gammaGclassification_layers/dense0/batch_normalization/gamma/Initializer/ones*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
;classification_layers/dense0/batch_normalization/gamma/readIdentity6classification_layers/dense0/batch_normalization/gamma*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0
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
T0*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
�
Oclassification_layers/dense0/batch_normalization/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
�
=classification_layers/dense0/batch_normalization/moments/meanMean*classification_layers/dense0/dense/BiasAddOclassification_layers/dense0/batch_normalization/moments/mean/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:

�
Eclassification_layers/dense0/batch_normalization/moments/StopGradientStopGradient=classification_layers/dense0/batch_normalization/moments/mean*
_output_shapes

:
*
T0
�
Jclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSquaredDifference*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradient*
T0*'
_output_shapes
:���������

�
Sclassification_layers/dense0/batch_normalization/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
�
Aclassification_layers/dense0/batch_normalization/moments/varianceMeanJclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSclassification_layers/dense0/batch_normalization/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:

�
@classification_layers/dense0/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense0/batch_normalization/moments/mean*
T0*
_output_shapes
:
*
squeeze_dims
 
�
Bclassification_layers/dense0/batch_normalization/moments/Squeeze_1SqueezeAclassification_layers/dense0/batch_normalization/moments/variance*
T0*
_output_shapes
:
*
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
ExpandDims@classification_layers/dense0/batch_normalization/moments/Squeeze?classification_layers/dense0/batch_normalization/ExpandDims/dim*
T0*
_output_shapes

:
*

Tdim0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense0/batch_normalization/moving_mean/readAclassification_layers/dense0/batch_normalization/ExpandDims_1/dim*
T0*
_output_shapes

:
*

Tdim0
�
>classification_layers/dense0/batch_normalization/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
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

:
*
T0
�
8classification_layers/dense0/batch_normalization/SqueezeSqueeze7classification_layers/dense0/batch_normalization/Select*
T0*
_output_shapes
:
*
squeeze_dims
 
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
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
Aclassification_layers/dense0/batch_normalization/ExpandDims_3/dimConst*
_output_shapes
: *
dtype0*
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
Aclassification_layers/dense0/batch_normalization/ExpandDims_4/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_4
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*
T0*
_output_shapes
:*

Tdim0
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
dtype0*
_output_shapes
: *
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
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_5/inputAclassification_layers/dense0/batch_normalization/ExpandDims_5/dim*
_output_shapes
:*
T0*

Tdim0
�
@classification_layers/dense0/batch_normalization/Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
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
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
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
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/xConst*
dtype0*
_output_shapes
: *
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
@classification_layers/dense0/batch_normalization/batchnorm/add_1Add@classification_layers/dense0/batch_normalization/batchnorm/mul_1>classification_layers/dense0/batch_normalization/batchnorm/sub*'
_output_shapes
:���������
*
T0
�
!classification_layers/dense0/ReluRelu@classification_layers/dense0/batch_normalization/batchnorm/add_1*'
_output_shapes
:���������
*
T0
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
Aclassification_layers/dense0/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense0/dropout/Shape*
dtype0*

seed *
T0*'
_output_shapes
:���������
*
seed2 
�
7classification_layers/dense0/dropout/random_uniform/subSub7classification_layers/dense0/dropout/random_uniform/max7classification_layers/dense0/dropout/random_uniform/min*
T0*
_output_shapes
: 
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
(classification_layers/dense0/dropout/mulMul(classification_layers/dense0/dropout/div*classification_layers/dense0/dropout/Floor*
T0*'
_output_shapes
:���������

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
Oclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *    
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
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
dtype0*

seed *
T0*
seed2 
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
T0*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
-classification_layers/dense_last/dense/kernel
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
=classification_layers/dense_last/dense/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
valueB*    
�
+classification_layers/dense_last/dense/bias
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
2classification_layers/dense_last/dense/bias/AssignAssign+classification_layers/dense_last/dense/bias=classification_layers/dense_last/dense/bias/Initializer/zeros*
_output_shapes
:*
validate_shape(*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0*
use_locking(
�
0classification_layers/dense_last/dense/bias/readIdentity+classification_layers/dense_last/dense/bias*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0
�
-classification_layers/dense_last/dense/MatMulMatMul(classification_layers/dense0/dropout/mul2classification_layers/dense_last/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
�
.classification_layers/dense_last/dense/BiasAddBiasAdd-classification_layers/dense_last/dense/MatMul0classification_layers/dense_last/dense/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:���������
�
classification_layers/SoftmaxSoftmax.classification_layers/dense_last/dense/BiasAdd*'
_output_shapes
:���������*
T0
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
Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*#
_output_shapes
:���������*
output_type0	*
T0*

Tidx0
f
$Evaluation_layers/ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
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
Evaluation_layers/accracy/CastCastEvaluation_layers/Equal*

SrcT0
*#
_output_shapes
:���������*

DstT0
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
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
T
gradients/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
}
3gradients/Evaluation_layers/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
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
*gradients/Evaluation_layers/Mean_grad/TileTile-gradients/Evaluation_layers/Mean_grad/Reshape+gradients/Evaluation_layers/Mean_grad/Shape*#
_output_shapes
:���������*
T0*

Tmultiples0
�
-gradients/Evaluation_layers/Mean_grad/Shape_1ShapeEvaluation_layers/Neg*
_output_shapes
:*
out_type0*
T0
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
�
*gradients/Evaluation_layers/Mean_grad/ProdProd-gradients/Evaluation_layers/Mean_grad/Shape_1+gradients/Evaluation_layers/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
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
-gradients/Evaluation_layers/Mean_grad/MaximumMaximum,gradients/Evaluation_layers/Mean_grad/Prod_1/gradients/Evaluation_layers/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
.gradients/Evaluation_layers/Mean_grad/floordivFloorDiv*gradients/Evaluation_layers/Mean_grad/Prod-gradients/Evaluation_layers/Mean_grad/Maximum*
T0*
_output_shapes
: 
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
(gradients/Evaluation_layers/Neg_grad/NegNeg-gradients/Evaluation_layers/Mean_grad/truediv*#
_output_shapes
:���������*
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
,gradients/Evaluation_layers/Sum_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
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
.gradients/Evaluation_layers/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :
�
,gradients/Evaluation_layers/Sum_grad/MaximumMaximum2gradients/Evaluation_layers/Sum_grad/DynamicStitch.gradients/Evaluation_layers/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
-gradients/Evaluation_layers/Sum_grad/floordivFloorDiv*gradients/Evaluation_layers/Sum_grad/Shape,gradients/Evaluation_layers/Sum_grad/Maximum*
_output_shapes
:*
T0
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
,gradients/Evaluation_layers/mul_grad/Shape_1ShapeEvaluation_layers/Log*
T0*
_output_shapes
:*
out_type0
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
=gradients/Evaluation_layers/mul_grad/tuple/control_dependencyIdentity,gradients/Evaluation_layers/mul_grad/Reshape6^gradients/Evaluation_layers/mul_grad/tuple/group_deps*'
_output_shapes
:���������*?
_class5
31loc:@gradients/Evaluation_layers/mul_grad/Reshape*
T0
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
(gradients/Evaluation_layers/Log_grad/mulMul?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1/gradients/Evaluation_layers/Log_grad/Reciprocal*'
_output_shapes
:���������*
T0
�
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
�
6gradients/Evaluation_layers/clip_by_value_grad/Shape_2Shape(gradients/Evaluation_layers/Log_grad/mul*
T0*
_output_shapes
:*
out_type0

:gradients/Evaluation_layers/clip_by_value_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
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
8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1Reshape4gradients/Evaluation_layers/clip_by_value_grad/Sum_16gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
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
Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
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
?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1SelectAgradients/Evaluation_layers/clip_by_value/Minimum_grad/LogicalNotGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency<gradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros*'
_output_shapes
:���������*
T0
�
:gradients/Evaluation_layers/clip_by_value/Minimum_grad/SumSum=gradients/Evaluation_layers/clip_by_value/Minimum_grad/SelectLgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
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
Bgradients/classification_layers/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
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
2gradients/classification_layers/Softmax_grad/mul_1Mul0gradients/classification_layers/Softmax_grad/subclassification_layers/Softmax*'
_output_shapes
:���������*
T0
�
Igradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/classification_layers/Softmax_grad/mul_1*
_output_shapes
:*
data_formatNHWC*
T0
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
transpose_b( *
T0*
_output_shapes

:
*
transpose_a(
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
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:
*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1*
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
?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/mul_grad/Sum=gradients/classification_layers/dense0/dropout/mul_grad/Shape*
T0*
_output_shapes
:*
Tshape0
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
Agradients/classification_layers/dense0/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
_output_shapes
:*
Tshape0*
T0
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
Rgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1*
T0
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
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense0/dropout/div_grad/Neg!classification_layers/Placeholder*
T0*
_output_shapes
:
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
Pgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/div_grad/ReshapeI^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*'
_output_shapes
:���������
*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape*
T0
�
Rgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape_1*
T0
�
9gradients/classification_layers/dense0/Relu_grad/ReluGradReluGradPgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency!classification_layers/dense0/Relu*
T0*'
_output_shapes
:���������

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense0/batch_normalization/batchnorm/mul_1*
T0*
_output_shapes
:*
out_type0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
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
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependencyIdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshapea^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*'
_output_shapes
:���������
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape*
T0
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
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/SumSumSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/mulegradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
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
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape_1Const*
_output_shapes
:*
dtype0*
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
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
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
fgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependencyIdentityUgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*
_output_shapes
:
*h
_class^
\Zloc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape
�
hgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/tuple/group_deps*
T0*
_output_shapes
:
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Reshape_1
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
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
Mgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
�
Ogradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ReshapeReshapehgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependencyMgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/Shape*
_output_shapes

:
*
Tshape0*
T0
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
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

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
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
_output_shapes
:
*
T0
�
Pgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:

�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/ReshapeReshape_gradients/classification_layers/dense0/batch_normalization/Select_grad/tuple/control_dependencyPgradients/classification_layers/dense0/batch_normalization/ExpandDims_grad/Shape*
_output_shapes
:
*
Tshape0*
T0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

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
dtype0*
_output_shapes
:*
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
_output_shapes

:
*
dtype0*
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
agradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyIdentityOgradients/classification_layers/dense0/batch_normalization/Select_1_grad/SelectZ^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
_output_shapes

:
*b
_classX
VTloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select*
T0
�
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
_output_shapes

:
*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

�
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
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
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :
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
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
�
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
�
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/rangeRange\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/startUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Size\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/delta*

Tidx0*
_output_shapes
:
�
[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/FillFillXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill/value*
_output_shapes
:*
T0
�
^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/DynamicStitchDynamicStitchVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/rangeTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/modVgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill*#
_output_shapes
:���������*
N*
T0
�
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
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
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
_output_shapes
:*
out_type0
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
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ProdProdXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_2Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
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
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :
�
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1MaximumWgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Prod_1\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1/y*
T0*
_output_shapes
: 
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
ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*
dtype0*
_output_shapes
: *
valueB
 *   @
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*'
_output_shapes
:���������
*
T0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/subSub*classification_layers/dense0/dense/BiasAddEclassification_layers/dense0/batch_normalization/moments/StopGradientY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*'
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
rgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*'
_output_shapes
:���������
*t
_classj
hfloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape*
T0
�
tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*
_output_shapes

:
*p
_classf
dbloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SizeConst*
dtype0*
_output_shapes
: *
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
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/rangeRangeXgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/startQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SizeXgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/delta*
_output_shapes
:*

Tidx0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/FillFillTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Wgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill/value*
T0*
_output_shapes
:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/DynamicStitchDynamicStitchRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/rangePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/modRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill*
N*
T0*#
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
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ReshapeZgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/TileTileTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_2Shape*classification_layers/dense0/dense/BiasAdd*
T0*
_output_shapes
:*
out_type0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   
   
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ConstConst*
_output_shapes
:*
dtype0*
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
Sgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Prod_1ProdTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_3Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :
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
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
_output_shapes
:
*
data_formatNHWC*
T0
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
T0*(
_output_shapes
:����������*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul
�
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*
_output_shapes
:	�
*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
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
VariableV2*
shared_name *
shape: *
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
dtype0*
	container 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
beta1_power/readIdentitybeta1_power*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
�
beta2_power/initial_valueConst*
_output_shapes
: *
dtype0*
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
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_output_shapes
: *
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking(
�
beta2_power/readIdentitybeta2_power*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
@classification_layers/dense0/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	�
*
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB	�
*    
�
.classification_layers/dense0/dense/kernel/Adam
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
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
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
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*
_output_shapes
:
*
validate_shape(*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking(
�
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*
T0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
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
VariableV2*
	container *
shared_name *
dtype0*
shape:
*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
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
VariableV2*
	container *
shared_name *
dtype0*
shape:
*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense0/batch_normalization/beta/Adam_1Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
Aclassification_layers/dense0/batch_normalization/beta/Adam_1/readIdentity<classification_layers/dense0/batch_normalization/beta/Adam_1*
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
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
Bclassification_layers/dense0/batch_normalization/gamma/Adam_1/readIdentity=classification_layers/dense0/batch_normalization/gamma/Adam_1*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma*
T0
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
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
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
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
�
5classification_layers/dense_last/dense/bias/Adam/readIdentity0classification_layers/dense_last/dense/bias/Adam*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0
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
9classification_layers/dense_last/dense/bias/Adam_1/AssignAssign2classification_layers/dense_last/dense/bias/Adam_1Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
validate_shape(*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0*
use_locking(
�
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
 *o�:
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
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
Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
�
?Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense0/dense/kernel.classification_layers/dense0/dense/kernel/Adam0classification_layers/dense0/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:	�
*
use_nesterov( *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
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
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
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
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
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
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign=^classification_layers/dense0/batch_normalization/beta/Assign>^classification_layers/dense0/batch_normalization/gamma/AssignD^classification_layers/dense0/batch_normalization/moving_mean/AssignH^classification_layers/dense0/batch_normalization/moving_variance/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/AssignB^classification_layers/dense0/batch_normalization/beta/Adam/AssignD^classification_layers/dense0/batch_normalization/beta/Adam_1/AssignC^classification_layers/dense0/batch_normalization/gamma/Adam/AssignE^classification_layers/dense0/batch_normalization/gamma/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign"����%     ��i�	�sts_�AJ��
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
Input/PlaceholderPlaceholder*
dtype0* 
shape:��������� *+
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
dtype0
*
shape:
^
Flatten/ShapeShapeInput/Placeholder*
T0*
_output_shapes
:*
out_type0
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
Flatten/Slice_1SliceFlatten/ShapeFlatten/Slice_1/beginFlatten/Slice_1/size*
T0*
Index0*
_output_shapes
:
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
Flatten/concatConcatV2Flatten/SliceFlatten/ExpandDimsFlatten/concat/axis*
N*

Tidx0*
T0*
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
dtype0*
shape:*
_output_shapes
:
�
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*<
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
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
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
0classification_layers/dense0/dense/kernel/AssignAssign)classification_layers/dense0/dense/kernelFclassification_layers/dense0/dense/kernel/Initializer/truncated_normal*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
9classification_layers/dense0/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB
*    
�
'classification_layers/dense0/dense/bias
VariableV2*
_output_shapes
:
*
dtype0*
shape:
*
	container *:
_class0
.,loc:@classification_layers/dense0/dense/bias*
shared_name 
�
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias
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
transpose_b( *
T0*'
_output_shapes
:���������
*
transpose_a( 
�
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*'
_output_shapes
:���������
*
data_formatNHWC*
T0
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
VariableV2*
	container *
shared_name *
dtype0*
shape:
*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
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
T0*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance
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
Sclassification_layers/dense0/batch_normalization/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB: 
�
Aclassification_layers/dense0/batch_normalization/moments/varianceMeanJclassification_layers/dense0/batch_normalization/moments/SquaredDifferenceSclassification_layers/dense0/batch_normalization/moments/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:

�
@classification_layers/dense0/batch_normalization/moments/SqueezeSqueeze=classification_layers/dense0/batch_normalization/moments/mean*
T0*
_output_shapes
:
*
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
?classification_layers/dense0/batch_normalization/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
;classification_layers/dense0/batch_normalization/ExpandDims
ExpandDims@classification_layers/dense0/batch_normalization/moments/Squeeze?classification_layers/dense0/batch_normalization/ExpandDims/dim*
T0*
_output_shapes

:
*

Tdim0
�
Aclassification_layers/dense0/batch_normalization/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 
�
=classification_layers/dense0/batch_normalization/ExpandDims_1
ExpandDimsAclassification_layers/dense0/batch_normalization/moving_mean/readAclassification_layers/dense0/batch_normalization/ExpandDims_1/dim*
T0*
_output_shapes

:
*

Tdim0
�
>classification_layers/dense0/batch_normalization/Reshape/shapeConst*
dtype0*
_output_shapes
:*
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
Aclassification_layers/dense0/batch_normalization/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
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
ExpandDimsCclassification_layers/dense0/batch_normalization/ExpandDims_4/inputAclassification_layers/dense0/batch_normalization/ExpandDims_4/dim*
T0*
_output_shapes
:*

Tdim0
�
Cclassification_layers/dense0/batch_normalization/ExpandDims_5/inputConst*
dtype0*
_output_shapes
: *
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
Fclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
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
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean*
T0
�
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/mulMulFclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub_1Dclassification_layers/dense0/batch_normalization/AssignMovingAvg/sub*
T0*
_output_shapes
:
*O
_classE
CAloc:@classification_layers/dense0/batch_normalization/moving_mean
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
Hclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/sub/xConst*
dtype0*
_output_shapes
: *
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
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg_1	AssignSub@classification_layers/dense0/batch_normalization/moving_varianceFclassification_layers/dense0/batch_normalization/AssignMovingAvg_1/mul*
_output_shapes
:
*S
_classI
GEloc:@classification_layers/dense0/batch_normalization/moving_variance*
T0*
use_locking( 
�
@classification_layers/dense0/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
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
7classification_layers/dense0/dropout/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
|
7classification_layers/dense0/dropout/random_uniform/maxConst*
_output_shapes
: *
dtype0*
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
7classification_layers/dense0/dropout/random_uniform/subSub7classification_layers/dense0/dropout/random_uniform/max7classification_layers/dense0/dropout/random_uniform/min*
T0*
_output_shapes
: 
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
(classification_layers/dense0/dropout/divRealDiv!classification_layers/dense0/Relu!classification_layers/Placeholder*
T0*
_output_shapes
:
�
(classification_layers/dense0/dropout/mulMul(classification_layers/dense0/dropout/div*classification_layers/dense0/dropout/Floor*
T0*'
_output_shapes
:���������

�
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"
      
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
_output_shapes

:
*
dtype0*
seed2 *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*

seed 
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
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
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
2classification_layers/dense_last/dense/bias/AssignAssign+classification_layers/dense_last/dense/bias=classification_layers/dense_last/dense/bias/Initializer/zeros*
_output_shapes
:*
validate_shape(*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0*
use_locking(
�
0classification_layers/dense_last/dense/bias/readIdentity+classification_layers/dense_last/dense/bias*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
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
classification_layers/SoftmaxSoftmax.classification_layers/dense_last/dense/BiasAdd*'
_output_shapes
:���������*
T0
n
)Evaluation_layers/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
'Evaluation_layers/clip_by_value/MinimumMinimumclassification_layers/Softmax)Evaluation_layers/clip_by_value/Minimum/y*'
_output_shapes
:���������*
T0
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
Evaluation_layers/NegNegEvaluation_layers/Sum*
T0*#
_output_shapes
:���������
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
Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*
output_type0	*

Tidx0*
T0*#
_output_shapes
:���������
f
$Evaluation_layers/ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
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
Evaluation_layers/accracy/CastCastEvaluation_layers/Equal*

SrcT0
*#
_output_shapes
:���������*

DstT0
i
Evaluation_layers/accracy/ConstConst*
_output_shapes
:*
dtype0*
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
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
T
gradients/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
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
-gradients/Evaluation_layers/Mean_grad/ReshapeReshapegradients/Fill3gradients/Evaluation_layers/Mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
�
+gradients/Evaluation_layers/Mean_grad/ShapeShapeEvaluation_layers/Neg*
_output_shapes
:*
out_type0*
T0
�
*gradients/Evaluation_layers/Mean_grad/TileTile-gradients/Evaluation_layers/Mean_grad/Reshape+gradients/Evaluation_layers/Mean_grad/Shape*#
_output_shapes
:���������*
T0*

Tmultiples0
�
-gradients/Evaluation_layers/Mean_grad/Shape_1ShapeEvaluation_layers/Neg*
_output_shapes
:*
out_type0*
T0
p
-gradients/Evaluation_layers/Mean_grad/Shape_2Const*
_output_shapes
: *
dtype0*
valueB 
u
+gradients/Evaluation_layers/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
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
*gradients/Evaluation_layers/Sum_grad/ShapeShapeEvaluation_layers/mul*
_output_shapes
:*
out_type0*
T0
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
,gradients/Evaluation_layers/Sum_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
r
0gradients/Evaluation_layers/Sum_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
r
0gradients/Evaluation_layers/Sum_grad/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
�
*gradients/Evaluation_layers/Sum_grad/rangeRange0gradients/Evaluation_layers/Sum_grad/range/start)gradients/Evaluation_layers/Sum_grad/Size0gradients/Evaluation_layers/Sum_grad/range/delta*
_output_shapes
:*

Tidx0
q
/gradients/Evaluation_layers/Sum_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
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
-gradients/Evaluation_layers/Sum_grad/floordivFloorDiv*gradients/Evaluation_layers/Sum_grad/Shape,gradients/Evaluation_layers/Sum_grad/Maximum*
_output_shapes
:*
T0
�
,gradients/Evaluation_layers/Sum_grad/ReshapeReshape(gradients/Evaluation_layers/Neg_grad/Neg2gradients/Evaluation_layers/Sum_grad/DynamicStitch*
T0*
_output_shapes
:*
Tshape0
�
)gradients/Evaluation_layers/Sum_grad/TileTile,gradients/Evaluation_layers/Sum_grad/Reshape-gradients/Evaluation_layers/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:���������
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
,gradients/Evaluation_layers/mul_grad/ReshapeReshape(gradients/Evaluation_layers/mul_grad/Sum*gradients/Evaluation_layers/mul_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
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
?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1Identity.gradients/Evaluation_layers/mul_grad/Reshape_16^gradients/Evaluation_layers/mul_grad/tuple/group_deps*'
_output_shapes
:���������*A
_class7
53loc:@gradients/Evaluation_layers/mul_grad/Reshape_1*
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
4gradients/Evaluation_layers/clip_by_value_grad/ShapeShape'Evaluation_layers/clip_by_value/Minimum*
T0*
_output_shapes
:*
out_type0
y
6gradients/Evaluation_layers/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
6gradients/Evaluation_layers/clip_by_value_grad/Shape_2Shape(gradients/Evaluation_layers/Log_grad/mul*
_output_shapes
:*
out_type0*
T0

:gradients/Evaluation_layers/clip_by_value_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
4gradients/Evaluation_layers/clip_by_value_grad/zerosFill6gradients/Evaluation_layers/clip_by_value_grad/Shape_2:gradients/Evaluation_layers/clip_by_value_grad/zeros/Const*
T0*'
_output_shapes
:���������
�
;gradients/Evaluation_layers/clip_by_value_grad/GreaterEqualGreaterEqual'Evaluation_layers/clip_by_value/Minimum!Evaluation_layers/clip_by_value/y*
T0*'
_output_shapes
:���������
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
6gradients/Evaluation_layers/clip_by_value_grad/ReshapeReshape2gradients/Evaluation_layers/clip_by_value_grad/Sum4gradients/Evaluation_layers/clip_by_value_grad/Shape*
T0*'
_output_shapes
:���������*
Tshape0
�
4gradients/Evaluation_layers/clip_by_value_grad/Sum_1Sum7gradients/Evaluation_layers/clip_by_value_grad/Select_1Fgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1Reshape4gradients/Evaluation_layers/clip_by_value_grad/Sum_16gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0
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
Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*
_output_shapes
: *
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
Qgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1H^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*
T0*
_output_shapes
: *S
_classI
GEloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1
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
Igradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradBiasAddGrad2gradients/classification_layers/Softmax_grad/mul_1*
data_formatNHWC*
T0*
_output_shapes
:
�
Ngradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_depsNoOp3^gradients/classification_layers/Softmax_grad/mul_1J^gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
�
Vgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/classification_layers/Softmax_grad/mul_1O^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������*E
_class;
97loc:@gradients/classification_layers/Softmax_grad/mul_1*
T0
�
Xgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradO^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*\
_classR
PNloc:@gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad
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
;gradients/classification_layers/dense0/dropout/mul_grad/mulMulUgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency*classification_layers/dense0/dropout/Floor*
T0*
_output_shapes
:
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
=gradients/classification_layers/dense0/dropout/div_grad/ShapeShape!classification_layers/dense0/Relu*
T0*
_output_shapes
:*
out_type0
�
?gradients/classification_layers/dense0/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*#
_output_shapes
:���������*
out_type0*
T0
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
Agradients/classification_layers/dense0/dropout/div_grad/RealDiv_1RealDiv;gradients/classification_layers/dense0/dropout/div_grad/Neg!classification_layers/Placeholder*
T0*
_output_shapes
:
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
T0*
_output_shapes
:*
Tshape0
�
Hgradients/classification_layers/dense0/dropout/div_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/div_grad/ReshapeB^gradients/classification_layers/dense0/dropout/div_grad/Reshape_1
�
Pgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/div_grad/ReshapeI^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*'
_output_shapes
:���������
*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape*
T0
�
Rgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/div_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/div_grad/tuple/group_deps*
T0*
_output_shapes
:*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/div_grad/Reshape_1
�
9gradients/classification_layers/dense0/Relu_grad/ReluGradReluGradPgradients/classification_layers/dense0/dropout/div_grad/tuple/control_dependency!classification_layers/dense0/Relu*
T0*'
_output_shapes
:���������

�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/ShapeShape@classification_layers/dense0/batch_normalization/batchnorm/mul_1*
T0*
_output_shapes
:*
out_type0
�
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:

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
jgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/group_deps*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/Reshape_1*
T0
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
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1cgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/ReshapeReshapeQgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/SumSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1Sumjgradients/classification_layers/dense0/batch_normalization/batchnorm/add_1_grad/tuple/control_dependency_1egradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/NegNegSgradients/classification_layers/dense0/batch_normalization/batchnorm/sub_grad/Sum_1*
T0*
_output_shapes
:
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
Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

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
jgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/control_dependency_1IdentityYgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1a^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/tuple/group_deps*
T0*
_output_shapes
:
*l
_classb
`^loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_2_grad/Reshape_1
�
Mgradients/classification_layers/dense0/batch_normalization/Squeeze_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"   
   
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
Sgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

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
Wgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1ReshapeSgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Sum_1Ugradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Shape_1*
_output_shapes
:
*
Tshape0*
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
hgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/group_deps*
_output_shapes
:
*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/Reshape_1*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/Select_grad/zeros_likeConst*
_output_shapes

:
*
dtype0*
valueB
*    
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
Ygradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGrad	RsqrtGrad@classification_layers/dense0/batch_normalization/batchnorm/Rsqrtfgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_grad/tuple/control_dependency*
_output_shapes
:
*
T0
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
Qgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/SumSumYgradients/classification_layers/dense0/batch_normalization/batchnorm/Rsqrt_grad/RsqrtGradcgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
hgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/control_dependency_1IdentityWgradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1_^gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/tuple/group_deps*
_output_shapes
: *j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/add_grad/Reshape_1*
T0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*
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
_output_shapes

:
*
dtype0*
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
cgradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependency_1IdentityQgradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1Z^gradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/group_deps*
_output_shapes

:
*d
_classZ
XVloc:@gradients/classification_layers/dense0/batch_normalization/Select_1_grad/Select_1*
T0
�
Rgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:

�
Tgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeReshapeagradients/classification_layers/dense0/batch_normalization/Select_1_grad/tuple/control_dependencyRgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/Shape*
T0*
_output_shapes
:
*
Tshape0
�
Wgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   
   
�
Ygradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/ReshapeReshapeTgradients/classification_layers/dense0/batch_normalization/ExpandDims_2_grad/ReshapeWgradients/classification_layers/dense0/batch_normalization/moments/Squeeze_1_grad/Shape*
_output_shapes

:
*
Tshape0*
T0
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ShapeShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
_output_shapes
:*
out_type0
�
Ugradients/classification_layers/dense0/batch_normalization/moments/variance_grad/SizeConst*
_output_shapes
: *
dtype0*
value	B :
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/addAddSclassification_layers/dense0/batch_normalization/moments/variance/reduction_indicesUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Size*
_output_shapes
:*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/modFloorModTgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/addUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Size*
T0*
_output_shapes
:
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
�
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
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
[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :
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
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_2ShapeJclassification_layers/dense0/batch_normalization/moments/SquaredDifference*
T0*
_output_shapes
:*
out_type0
�
Xgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   
   
�
Vgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ConstConst*
dtype0*
_output_shapes
:*
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
\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *
value	B :
�
Zgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1MaximumWgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Prod_1\gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1/y*
_output_shapes
: *
T0
�
[gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/floordiv_1FloorDivUgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/ProdZgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/Maximum_1*
T0*
_output_shapes
: 
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
_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"   
   
�
ogradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shapeagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarConstY^gradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*
dtype0*
_output_shapes
: *
valueB
 *   @
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/mulMul`gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/scalarXgradients/classification_layers/dense0/batch_normalization/moments/variance_grad/truediv*
T0*'
_output_shapes
:���������

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
cgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1Reshape_gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Sum_1agradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Shape_1*
T0*
_output_shapes

:
*
Tshape0
�
]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/NegNegcgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape_1*
T0*
_output_shapes

:

�
jgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_depsNoOpb^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape^^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg
�
rgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyIdentityagradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshapek^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*'
_output_shapes
:���������
*t
_classj
hfloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Reshape*
T0
�
tgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependency_1Identity]gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Negk^gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/group_deps*
T0*
_output_shapes

:
*p
_classf
dbloc:@gradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/Neg
�
Rgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeShape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
�
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/addAddOclassification_layers/dense0/batch_normalization/moments/mean/reduction_indicesQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Size*
T0*
_output_shapes
:
�
Pgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/modFloorModPgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/addQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Size*
T0*
_output_shapes
:
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/range/deltaConst*
_output_shapes
: *
dtype0*
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
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/FillFillTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_1Wgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill/value*
T0*
_output_shapes
:
�
Zgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/DynamicStitchDynamicStitchRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/rangePgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/modRgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ShapeQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Fill*#
_output_shapes
:���������*
N*
T0
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
T0*
_output_shapes
:*
Tshape0
�
Qgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/TileTileTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/ReshapeUgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/floordiv*0
_output_shapes
:������������������*
T0*

Tmultiples0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_2Shape*classification_layers/dense0/dense/BiasAdd*
_output_shapes
:*
out_type0*
T0
�
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_3Const*
dtype0*
_output_shapes
:*
valueB"   
   
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
Sgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Prod_1ProdTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Shape_3Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :
�
Vgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1MaximumSgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Prod_1Xgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Maximum_1/y*
_output_shapes
: *
T0
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
Tgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/truedivRealDivQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/TileQgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/Cast*'
_output_shapes
:���������
*
T0
�
gradients/AddN_1AddNhgradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/tuple/control_dependencyrgradients/classification_layers/dense0/batch_normalization/moments/SquaredDifference_grad/tuple/control_dependencyTgradients/classification_layers/dense0/batch_normalization/moments/mean_grad/truediv*'
_output_shapes
:���������
*
N*j
_class`
^\loc:@gradients/classification_layers/dense0/batch_normalization/batchnorm/mul_1_grad/Reshape*
T0
�
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
data_formatNHWC*
T0*
_output_shapes
:

�
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1F^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_1K^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*'
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
transpose_b( *
T0*
_output_shapes
:	�
*
transpose_a(
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
VariableV2*
_output_shapes
: *
dtype0*
shape: *
	container *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
shared_name 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
beta1_power/readIdentitybeta1_power*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
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
VariableV2*
_output_shapes
: *
dtype0*
shape: *
	container *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
shared_name 
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
beta2_power/readIdentitybeta2_power*
T0*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
@classification_layers/dense0/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	�
*
dtype0*<
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
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:	�
*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
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
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*
_output_shapes
:
*
validate_shape(*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking(
�
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*
_output_shapes
:
*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
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
?classification_layers/dense0/batch_normalization/beta/Adam/readIdentity:classification_layers/dense0/batch_normalization/beta/Adam*
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
�
Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
valueB
*    
�
<classification_layers/dense0/batch_normalization/beta/Adam_1
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
Cclassification_layers/dense0/batch_normalization/beta/Adam_1/AssignAssign<classification_layers/dense0/batch_normalization/beta/Adam_1Nclassification_layers/dense0/batch_normalization/beta/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:
*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta
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
T0*
_output_shapes
:
*I
_class?
=;loc:@classification_layers/dense0/batch_normalization/gamma
�
Oclassification_layers/dense0/batch_normalization/gamma/Adam_1/Initializer/zerosConst*
_output_shapes
:
*
dtype0*I
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
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
_output_shapes

:
*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
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
42loc:@classification_layers/dense_last/dense/kernel*
shared_name *
_output_shapes

:
*
shape
:

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
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*
_output_shapes
:*
validate_shape(*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0*
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
9classification_layers/dense_last/dense/bias/Adam_1/AssignAssign2classification_layers/dense_last/dense/bias/Adam_1Dclassification_layers/dense_last/dense/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
validate_shape(*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
T0*
use_locking(
�
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
Adam/epsilonConst*
_output_shapes
: *
dtype0*
valueB
 *w�+2
�
?Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam	ApplyAdam)classification_layers/dense0/dense/kernel.classification_layers/dense0/dense/kernel/Adam0classification_layers/dense0/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonSgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1*
_output_shapes
:	�
*
use_nesterov( *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
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
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamL^Adam/update_classification_layers/dense0/batch_normalization/beta/ApplyAdamM^Adam/update_classification_layers/dense0/batch_normalization/gamma/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
_output_shapes
: *H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0
�
Adam/AssignAssignbeta1_powerAdam/mul*
_output_shapes
: *
validate_shape(*H
_class>
<:loc:@classification_layers/dense0/batch_normalization/beta*
T0*
use_locking( 
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
4classification_layers/dense_last/dense/bias/Adam_1:09classification_layers/dense_last/dense/bias/Adam_1/Assign9classification_layers/dense_last/dense/bias/Adam_1/read:0"
train_op

Adam"�

update_ops�
�
Bclassification_layers/dense0/batch_normalization/AssignMovingAvg:0
Dclassification_layers/dense0/batch_normalization/AssignMovingAvg_1:0"g
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
-classification_layers/dense_last/dense/bias:02classification_layers/dense_last/dense/bias/Assign2classification_layers/dense_last/dense/bias/read:0)E( r       %:�	hƑs_�A*g
!
Evaluation_layers/accuracy ?

Evaluation_layers/lossZ��@
#
Evaluation_layers/accuracy_1 ?�F\:t       _gs�	��s_�A*g
!
Evaluation_layers/accuracy���>

Evaluation_layers/loss�O�@
#
Evaluation_layers/accuracy_1���>�vt       _gs�	��s_�A*g
!
Evaluation_layers/accuracy���>

Evaluation_layers/loss�8�@
#
Evaluation_layers/accuracy_1���>|lG�t       _gs�	��s_�A*g
!
Evaluation_layers/accuracy̓�>

Evaluation_layers/lossD��@
#
Evaluation_layers/accuracy_1̓�>7��;t       _gs�	R�s_�A*g
!
Evaluation_layers/accuracy�{�>

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�{�>�y��t       _gs�	�T�s_�A*g
!
Evaluation_layers/accuracy�{�>

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�{�>/�t       _gs�	b�s_�A*g
!
Evaluation_layers/accuracyӣ�>

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1ӣ�>.Et       _gs�	�V�s_�A*g
!
Evaluation_layers/accuracy
 ?

Evaluation_layers/loss�ĵ@
#
Evaluation_layers/accuracy_1
 ?��_t       _gs�	�>�s_�A*g
!
Evaluation_layers/accuracy ?

Evaluation_layers/loss�`�@
#
Evaluation_layers/accuracy_1 ?���t       _gs�	���s_�A	*g
!
Evaluation_layers/accuracy" ?

Evaluation_layers/loss�t�@
#
Evaluation_layers/accuracy_1" ?A��t       _gs�	 �s_�A
*g
!
Evaluation_layers/accuracy> ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1> ?��^�t       _gs�	�!�s_�A*g
!
Evaluation_layers/accuracy: ?

Evaluation_layers/loss;�@
#
Evaluation_layers/accuracy_1: ?$R;t       _gs�	�&�s_�A*g
!
Evaluation_layers/accuracy6 ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_16 ?GL`�t       _gs�	Q�s_�A*g
!
Evaluation_layers/accuracy" ?

Evaluation_layers/loss�7�@
#
Evaluation_layers/accuracy_1" ?��N�t       _gs�	>��s_�A*g
!
Evaluation_layers/accuracy. ?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1. ?R��t       _gs�	�T�s_�A*g
!
Evaluation_layers/accuracy> ?

Evaluation_layers/lossd9�@
#
Evaluation_layers/accuracy_1> ?�{	
t       _gs�	���s_�A*g
!
Evaluation_layers/accuracy B ?

Evaluation_layers/loss�s�@
#
Evaluation_layers/accuracy_1 B ?UW�,t       _gs�	��s_�A*g
!
Evaluation_layers/accuracy$J ?

Evaluation_layers/lossJ��@
#
Evaluation_layers/accuracy_1$J ?�2!�t       _gs�	�=
s_�A*g
!
Evaluation_layers/accuracy0b ?

Evaluation_layers/lossw5�@
#
Evaluation_layers/accuracy_10b ?�K��t       _gs�	l�s_�A*g
!
Evaluation_layers/accuracy1f ?

Evaluation_layers/loss�ǒ@
#
Evaluation_layers/accuracy_11f ?�%��t       _gs�	��s_�A*g
!
Evaluation_layers/accuracy1f ?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_11f ?�OZ�t       _gs�	��%s_�A*g
!
Evaluation_layers/accuracy,Z ?

Evaluation_layers/loss�Î@
#
Evaluation_layers/accuracy_1,Z ?�]<t       _gs�	�m+s_�A*g
!
Evaluation_layers/accuracy.^ ?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1.^ ?j�]�t       _gs�	bh1s_�A*g
!
Evaluation_layers/accuracy;z ?

Evaluation_layers/loss'�@
#
Evaluation_layers/accuracy_1;z ?kSCt       _gs�	V�7s_�A*g
!
Evaluation_layers/accuracyA� ?

Evaluation_layers/loss3�@
#
Evaluation_layers/accuracy_1A� ?B\�zt       _gs�	��>s_�A*g
!
Evaluation_layers/accuracyR� ?

Evaluation_layers/loss�4�@
#
Evaluation_layers/accuracy_1R� ?�4t       _gs�	��Ds_�A*g
!
Evaluation_layers/accuracy^� ?

Evaluation_layers/lossF�@
#
Evaluation_layers/accuracy_1^� ?D*W�t       _gs�	7kKs_�A*g
!
Evaluation_layers/accuracyd� ?

Evaluation_layers/lossJ��@
#
Evaluation_layers/accuracy_1d� ?����t       _gs�	n�Qs_�A*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossɾ�@
#
Evaluation_layers/accuracy_1�?�2�$t       _gs�	�|Ws_�A*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�?	=��t       _gs�	��ks_�A*g
!
Evaluation_layers/accuracy�.?

Evaluation_layers/loss-�{@
#
Evaluation_layers/accuracy_1�.?j�	lt       _gs�	�rs_�A*g
!
Evaluation_layers/accuracy�Z?

Evaluation_layers/lossv�w@
#
Evaluation_layers/accuracy_1�Z?Xk0�t       _gs�	��ys_�A *g
!
Evaluation_layers/accuracyŖ?

Evaluation_layers/loss��s@
#
Evaluation_layers/accuracy_1Ŗ?�"t       _gs�	��s_�A!*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�p@
#
Evaluation_layers/accuracy_1��?=��qt       _gs�	�2�s_�A"*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�9l@
#
Evaluation_layers/accuracy_1��?���\t       _gs�	�9�s_�A#*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�g@
#
Evaluation_layers/accuracy_1��?�:�t       _gs�	Lh�s_�A$*g
!
Evaluation_layers/accuracy?

Evaluation_layers/loss�!c@
#
Evaluation_layers/accuracy_1?��A�t       _gs�	6S�s_�A%*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossuT_@
#
Evaluation_layers/accuracy_1��?!n>t       _gs�	���s_�A&*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss,Z\@
#
Evaluation_layers/accuracy_1�?ئp`t       _gs�	�s_�A'*g
!
Evaluation_layers/accuracy?

Evaluation_layers/loss��Y@
#
Evaluation_layers/accuracy_1?%kPt       _gs�	���s_�A(*g
!
Evaluation_layers/accuracy/?

Evaluation_layers/lossm%V@
#
Evaluation_layers/accuracy_1/?JQ�t       _gs�	���s_�A)*g
!
Evaluation_layers/accuracy3?

Evaluation_layers/loss�TR@
#
Evaluation_layers/accuracy_13?o�Ct       _gs�	B��s_�A**g
!
Evaluation_layers/accuracy(c?

Evaluation_layers/loss�YP@
#
Evaluation_layers/accuracy_1(c?m�FLt       _gs�	��s_�A+*g
!
Evaluation_layers/accuracy4{?

Evaluation_layers/loss(M@
#
Evaluation_layers/accuracy_14{?[t0 t       _gs�	���s_�A,*g
!
Evaluation_layers/accuracyA�?

Evaluation_layers/loss�J@
#
Evaluation_layers/accuracy_1A�?�t       _gs�	;��s_�A-*g
!
Evaluation_layers/accuracyI�?

Evaluation_layers/loss,�F@
#
Evaluation_layers/accuracy_1I�?
z�:t       _gs�	(��s_�A.*g
!
Evaluation_layers/accuracy^�?

Evaluation_layers/lossV�D@
#
Evaluation_layers/accuracy_1^�?����t       _gs�	B�s_�A/*g
!
Evaluation_layers/accuracyh�?

Evaluation_layers/lossQGB@
#
Evaluation_layers/accuracy_1h�?w��t       _gs�	��s_�A0*g
!
Evaluation_layers/accuracy^�?

Evaluation_layers/loss];?@
#
Evaluation_layers/accuracy_1^�?�.\�t       _gs�	���s_�A1*g
!
Evaluation_layers/accuracyx?

Evaluation_layers/loss�b=@
#
Evaluation_layers/accuracy_1x?�xt       _gs�	6�s_�A2*g
!
Evaluation_layers/accuracyz?

Evaluation_layers/loss1�9@
#
Evaluation_layers/accuracy_1z?��[t       _gs�	�9s_�A3*g
!
Evaluation_layers/accuracyz?

Evaluation_layers/lossw�4@
#
Evaluation_layers/accuracy_1z?��0t       _gs�	�~$s_�A4*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss!�2@
#
Evaluation_layers/accuracy_1�?����t       _gs�	^{+s_�A5*g
!
Evaluation_layers/accuracy�[?

Evaluation_layers/loss��/@
#
Evaluation_layers/accuracy_1�[?�
�Dt       _gs�	��2s_�A6*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�&+@
#
Evaluation_layers/accuracy_1��?�E��t       _gs�	I�9s_�A7*g
!
Evaluation_layers/accuracyϻ?

Evaluation_layers/loss�)@
#
Evaluation_layers/accuracy_1ϻ?�V��t       _gs�	�KAs_�A8*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�$@
#
Evaluation_layers/accuracy_1��?)���t       _gs�	<Hs_�A9*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��!@
#
Evaluation_layers/accuracy_1�?�뾩t       _gs�	7�Os_�A:*g
!
Evaluation_layers/accuracyH?

Evaluation_layers/loss?�@
#
Evaluation_layers/accuracy_1H?oK��t       _gs�	x�Vs_�A;*g
!
Evaluation_layers/accuracy>�?

Evaluation_layers/loss�x@
#
Evaluation_layers/accuracy_1>�?GӬt       _gs�	��hs_�A<*g
!
Evaluation_layers/accuracyd�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1d�?P͘�t       _gs�	��ns_�A=*g
!
Evaluation_layers/accuracy�,?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�,?VO�*t       _gs�	;hts_�A>*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss*�@
#
Evaluation_layers/accuracy_1��?J���t       _gs�	�zs_�A?*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��?�2��t       _gs�	��s_�A@*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss�*@
#
Evaluation_layers/accuracy_1� ?(M!"t       _gs�	�z�s_�AA*g
!
Evaluation_layers/accuracyS�?

Evaluation_layers/loss��	@
#
Evaluation_layers/accuracy_1S�?��u=t       _gs�	x$�s_�AB*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss-�@
#
Evaluation_layers/accuracy_1��?n�b[t       _gs�	7Ɛs_�AC*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��?ޢ�t       _gs�	�[�s_�AD*g
!
Evaluation_layers/accuracyN?

Evaluation_layers/loss�`@
#
Evaluation_layers/accuracy_1N?���ot       _gs�	���s_�AE*g
!
Evaluation_layers/accuracy:�?

Evaluation_layers/lossM��?
#
Evaluation_layers/accuracy_1:�?gQ�"t       _gs�	�ޭs_�AF*g
!
Evaluation_layers/accuracy�V	?

Evaluation_layers/loss6��?
#
Evaluation_layers/accuracy_1�V	?y���t       _gs�	���s_�AG*g
!
Evaluation_layers/accuracy�
?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�
??�Y4t       _gs�	{�s_�AH*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossxr�?
#
Evaluation_layers/accuracy_1��?(�R5t       _gs�	am�s_�AI*g
!
Evaluation_layers/accuracy�'?

Evaluation_layers/loss�;�?
#
Evaluation_layers/accuracy_1�'?�co)t       _gs�	;u�s_�AJ*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�6�?
#
Evaluation_layers/accuracy_1�?�,�t       _gs�	�5�s_�AK*g
!
Evaluation_layers/accuracy%�?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1%�?�)�t       _gs�	��s_�AL*g
!
Evaluation_layers/accuracyL ?

Evaluation_layers/loss!�?
#
Evaluation_layers/accuracy_1L ?�s9Rt       _gs�	p��s_�AM*g
!
Evaluation_layers/accuracyuT?

Evaluation_layers/lossA�?
#
Evaluation_layers/accuracy_1uT?���t       _gs�	k9�s_�AN*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossl��?
#
Evaluation_layers/accuracy_1��?X[�^t       _gs�	���s_�AO*g
!
Evaluation_layers/accuracywX?

Evaluation_layers/loss]�?
#
Evaluation_layers/accuracy_1wX?7�4�t       _gs�	���s_�AP*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��?z��t       _gs�	0l�s_�AQ*g
!
Evaluation_layers/accuracyg8?

Evaluation_layers/loss�l�?
#
Evaluation_layers/accuracy_1g8?u��Bt       _gs�	��s_�AR*g
!
Evaluation_layers/accuracy{`?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1{`?A�t       _gs�	�s_�AS*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�,�?
#
Evaluation_layers/accuracy_1��?VEt       _gs�	^T
s_�AT*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��?�%}t       _gs�	�s_�AU*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��?:{1�t       _gs�	��s_�AV*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��?�_�2t       _gs�	dks_�AW*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss�(�?
#
Evaluation_layers/accuracy_1� ?}�	t       _gs�	�!s_�AX*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss9��?
#
Evaluation_layers/accuracy_1� ?��,tt       _gs�	��&s_�AY*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossW��?
#
Evaluation_layers/accuracy_1��?���t       _gs�	fz;s_�AZ*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�_�?
#
Evaluation_layers/accuracy_1��?�4��t       _gs�	p(As_�A[*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossp�?
#
Evaluation_layers/accuracy_1��?M��t       _gs�	��Fs_�A\*g
!
Evaluation_layers/accuracyh?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1h?��t       _gs�	�uLs_�A]*g
!
Evaluation_layers/accuracyc0?

Evaluation_layers/lossLA�?
#
Evaluation_layers/accuracy_1c0?�Xm�t       _gs�	�Rs_�A^*g
!
Evaluation_layers/accuracyR?

Evaluation_layers/lossK��?
#
Evaluation_layers/accuracy_1R?4��it       _gs�	��Ws_�A_*g
!
Evaluation_layers/accuracya,?

Evaluation_layers/lossK�?
#
Evaluation_layers/accuracy_1a,?u��t       _gs�	G�^s_�A`*g
!
Evaluation_layers/accuracy5�?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_15�?�A�t       _gs�	��es_�Aa*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossҨ�?
#
Evaluation_layers/accuracy_1��?�Er%t       _gs�	��ls_�Ab*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossJ%�?
#
Evaluation_layers/accuracy_1��?]�et       _gs�	~�ss_�Ac*g
!
Evaluation_layers/accuracy=�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1=�?�$L<t       _gs�	�O�s_�Ad*g
!
Evaluation_layers/accuracyb=?

Evaluation_layers/lossAJ�?
#
Evaluation_layers/accuracy_1b=?�/��t       _gs�	3l�s_�Ae*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�l�?
#
Evaluation_layers/accuracy_1��?�4`�t       _gs�	�X�s_�Af*g
!
Evaluation_layers/accuracyP*?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1P*?�bE�t       _gs�	WR�s_�Ag*g
!
Evaluation_layers/accuracy�b?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�b?U<�t       _gs�	���s_�Ah*g
!
Evaluation_layers/accuracy	�?

Evaluation_layers/lossT��?
#
Evaluation_layers/accuracy_1	�?�H�t       _gs�	�s_�Ai*g
!
Evaluation_layers/accuracyr?

Evaluation_layers/lossF��?
#
Evaluation_layers/accuracy_1r?Z:'wt       _gs�	�βs_�Aj*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/loss+��?
#
Evaluation_layers/accuracy_1�+?���%t       _gs�	���s_�Ak*g
!
Evaluation_layers/accuracy�K?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1�K?~�V�t       _gs�	��s_�Al*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�Y�?
#
Evaluation_layers/accuracy_1�?�ҡ�t       _gs�	ǜ�s_�Am*g
!
Evaluation_layers/accuracyh|?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1h|?ύ=Ft       _gs�	ͭ�s_�An*g
!
Evaluation_layers/accuracy�@?

Evaluation_layers/lossmE�?
#
Evaluation_layers/accuracy_1�@?嶨�t       _gs�	y��s_�Ao*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�U�?
#
Evaluation_layers/accuracy_1�?z�j$t       _gs�	���s_�Ap*g
!
Evaluation_layers/accuracyYm?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1Ym?���t       _gs�	���s_�Aq*g
!
Evaluation_layers/accuracy߁?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1߁?�dt       _gs�	P��s_�Ar*g
!
Evaluation_layers/accuracyHZ?

Evaluation_layers/loss)f�?
#
Evaluation_layers/accuracy_1HZ?���>t       _gs�	t� s_�As*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��?�g�t       _gs�	 �s_�At*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��?����t       _gs�	��s_�Au*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/losss��?
#
Evaluation_layers/accuracy_1�?�]D�t       _gs�	\�s_�Av*g
!
Evaluation_layers/accuracy�S?

Evaluation_layers/loss1߿?
#
Evaluation_layers/accuracy_1�S?�W�t       _gs�	a�s_�Aw*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�پ?
#
Evaluation_layers/accuracy_1�?��~Ot       _gs�	�c1s_�Ax*g
!
Evaluation_layers/accuracyZ�?

Evaluation_layers/loss7̿?
#
Evaluation_layers/accuracy_1Z�?N�[�t       _gs�	_b8s_�Ay*g
!
Evaluation_layers/accuracy1L?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_11L?�K9�t       _gs�	�x?s_�Az*g
!
Evaluation_layers/accuracy1L?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_11L?�@��t       _gs�	�Fs_�A{*g
!
Evaluation_layers/accuracya�?

Evaluation_layers/loss}�?
#
Evaluation_layers/accuracy_1a�?]�Jt       _gs�	֬Ms_�A|*g
!
Evaluation_layers/accuracyc�?

Evaluation_layers/lossC[�?
#
Evaluation_layers/accuracy_1c�?�I��t       _gs�	!�Ts_�A}*g
!
Evaluation_layers/accuracym�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1m�?�'<t       _gs�	%[s_�A~*g
!
Evaluation_layers/accuracy�T?

Evaluation_layers/lossp�?
#
Evaluation_layers/accuracy_1�T?�&��t       _gs�	7as_�A*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1� ?���u       ��Ax	?�fs_�A�*g
!
Evaluation_layers/accuracy�<?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�<?�'WZu       ��Ax	mls_�A�*g
!
Evaluation_layers/accuracy\�?

Evaluation_layers/loss.w�?
#
Evaluation_layers/accuracy_1\�?��z�u       ��Ax	d�~s_�A�*g
!
Evaluation_layers/accuracys�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1s�?b"uu       ��Ax	bZ�s_�A�*g
!
Evaluation_layers/accuracy�$?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�$?��u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracyZ�?

Evaluation_layers/loss�|�?
#
Evaluation_layers/accuracy_1Z�?�-�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?��pu       ��Ax	>j�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��?����u       ��Ax	i�s_�A�*g
!
Evaluation_layers/accuracyʈ?

Evaluation_layers/losss�?
#
Evaluation_layers/accuracy_1ʈ?�1;u       ��Ax	ﶠs_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1��?����u       ��Ax	`R�s_�A�*g
!
Evaluation_layers/accuracyƀ?

Evaluation_layers/loss4�?
#
Evaluation_layers/accuracy_1ƀ?I;xu       ��Ax	<�s_�A�*g
!
Evaluation_layers/accuracy-?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1-?$=T�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss7c�?
#
Evaluation_layers/accuracy_1�?���u       ��Ax	"��s_�A�*g
!
Evaluation_layers/accuracy�h?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�h?c��u       ��Ax	-��s_�A�*g
!
Evaluation_layers/accuracyƀ?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1ƀ?����u       ��Ax	�6�s_�A�*g
!
Evaluation_layers/accuracy�d?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�d?��u       ��Ax	z��s_�A�*g
!
Evaluation_layers/accuracyؤ?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1ؤ?�hOu       ��Ax	7��s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss;��?
#
Evaluation_layers/accuracy_1��?b���u       ��Ax	�0�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss	�?
#
Evaluation_layers/accuracy_1��?��/�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy֠?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1֠?u�mu       ��Ax	�y�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss%.�?
#
Evaluation_layers/accuracy_1��?'Էu       ��Ax	�H�s_�A�*g
!
Evaluation_layers/accuracyʈ?

Evaluation_layers/lossfZ�?
#
Evaluation_layers/accuracy_1ʈ?�V9�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossP��?
#
Evaluation_layers/accuracy_1�?bZ��u       ��Ax	{8	s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss|��?
#
Evaluation_layers/accuracy_1��?W=�u       ��Ax	x�s_�A�*g
!
Evaluation_layers/accuracy�\?

Evaluation_layers/lossI�?
#
Evaluation_layers/accuracy_1�\?�4�_u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�0?

Evaluation_layers/loss	7�?
#
Evaluation_layers/accuracy_1�0?>z�u       ��Ax	}/s_�A�*g
!
Evaluation_layers/accuracy�p?

Evaluation_layers/lossl��?
#
Evaluation_layers/accuracy_1�p?ZyX%u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�T?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�T?H׹u       ��Ax	%s_�A�*g
!
Evaluation_layers/accuracy�0?

Evaluation_layers/loss�C�?
#
Evaluation_layers/accuracy_1�0?T�v�u       ��Ax	�@+s_�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss�*�?
#
Evaluation_layers/accuracy_1� ?1L)�u       ��Ax	��0s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossV��?
#
Evaluation_layers/accuracy_1��?�H#	u       ��Ax	A�6s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss ��?
#
Evaluation_layers/accuracy_1��?�m?u       ��Ax	�<<s_�A�*g
!
Evaluation_layers/accuracy�0?

Evaluation_layers/loss�#�?
#
Evaluation_layers/accuracy_1�0?��u       ��Ax	�=Os_�A�*g
!
Evaluation_layers/accuracy�\?

Evaluation_layers/lossA��?
#
Evaluation_layers/accuracy_1�\?a��u       ��Ax	v�Us_�A�*g
!
Evaluation_layers/accuracy�P?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�P?T0:u       ��Ax	�%]s_�A�*g
!
Evaluation_layers/accuracy�|?

Evaluation_layers/lossLR�?
#
Evaluation_layers/accuracy_1�|?��/u       ��Ax	~<es_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossD�?
#
Evaluation_layers/accuracy_1�?̡Du       ��Ax	��ls_�A�*g
!
Evaluation_layers/accuracyȄ?

Evaluation_layers/loss-��?
#
Evaluation_layers/accuracy_1Ȅ?�|u       ��Ax	�cts_�A�*g
!
Evaluation_layers/accuracyN�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1N�?h"bu       ��Ax	h�{s_�A�*g
!
Evaluation_layers/accuracyw�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1w�?��EYu       ��Ax	тs_�A�*g
!
Evaluation_layers/accuracy�$?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�$?���Mu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1� ?��(u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracyȄ?

Evaluation_layers/lossɆ�?
#
Evaluation_layers/accuracy_1Ȅ?W�lou       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�A�?
#
Evaluation_layers/accuracy_1�?D��u       ��Ax	k˭s_�A�*g
!
Evaluation_layers/accuracy?

Evaluation_layers/lossT4�?
#
Evaluation_layers/accuracy_1?�:��u       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss�<�?
#
Evaluation_layers/accuracy_1� ?�ǯu       ��Ax	_ֻs_�A�*g
!
Evaluation_layers/accuracy�|?

Evaluation_layers/lossg`�?
#
Evaluation_layers/accuracy_1�|?8��u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy=d?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1=d?�ybu       ��Ax	 ��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?QI0u       ��Ax	]��s_�A�*g
!
Evaluation_layers/accuracy�@?

Evaluation_layers/loss�5�?
#
Evaluation_layers/accuracy_1�@?�"��u       ��Ax	*��s_�A�*g
!
Evaluation_layers/accuracyƀ?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1ƀ?���u       ��Ax	)��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?/�n�u       ��Ax	t��s_�A�*g
!
Evaluation_layers/accuracy�8?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�8?�d�u       ��Ax	+��s_�A�*g
!
Evaluation_layers/accuracy�T?

Evaluation_layers/lossB��?
#
Evaluation_layers/accuracy_1�T?@�h�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�|?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�|?�37u       ��Ax	x�	s_�A�*g
!
Evaluation_layers/accuracy�d?

Evaluation_layers/loss- �?
#
Evaluation_layers/accuracy_1�d?S�u       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracy�4?

Evaluation_layers/loss�Z�?
#
Evaluation_layers/accuracy_1�4?�ثu       ��Ax	b�s_�A�*g
!
Evaluation_layers/accuracy�`?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�`?���u       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1��?V΃Au       ��Ax	��%s_�A�*g
!
Evaluation_layers/accuracy�L?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�L?�$��u       ��Ax	��,s_�A�*g
!
Evaluation_layers/accuracyް?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1ް?�_�~u       ��Ax	0�3s_�A�*g
!
Evaluation_layers/accuracyД?

Evaluation_layers/loss�e�?
#
Evaluation_layers/accuracy_1Д?�cETu       ��Ax	#u:s_�A�*g
!
Evaluation_layers/accuracyȄ?

Evaluation_layers/lossAQ�?
#
Evaluation_layers/accuracy_1Ȅ?����u       ��Ax	E�Ps_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss"��?
#
Evaluation_layers/accuracy_1�?,��u       ��Ax	4bWs_�A�*g
!
Evaluation_layers/accuracyܬ?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1ܬ?
?�u       ��Ax	�]s_�A�*g
!
Evaluation_layers/accuracy�8?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1�8?��Ju       ��Ax	u>cs_�A�*g
!
Evaluation_layers/accuracyԜ?

Evaluation_layers/lossCs�?
#
Evaluation_layers/accuracy_1Ԝ?��%$u       ��Ax	�hs_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossq3�?
#
Evaluation_layers/accuracy_1��?��u       ��Ax	K�ns_�A�*g
!
Evaluation_layers/accuracy$A?

Evaluation_layers/loss�g�?
#
Evaluation_layers/accuracy_1$A?4�u       ��Ax	��ts_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss?��?
#
Evaluation_layers/accuracy_1��?�="�u       ��Ax	D"zs_�A�*g
!
Evaluation_layers/accuracy�h?

Evaluation_layers/loss�C�?
#
Evaluation_layers/accuracy_1�h?��IDu       ��Ax	"�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1��?��u       ��Ax	B��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss6a�?
#
Evaluation_layers/accuracy_1�?�Q5u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���?
#
Evaluation_layers/accuracy_1�?���!u       ��Ax	进s_�A�*g
!
Evaluation_layers/accuracy�\?

Evaluation_layers/loss�C�?
#
Evaluation_layers/accuracy_1�\? �mu       ��Ax	z�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossv� @
#
Evaluation_layers/accuracy_1��?ܥ�u       ��Ax	�*�s_�A�*g
!
Evaluation_layers/accuracy�8?

Evaluation_layers/loss�� @
#
Evaluation_layers/accuracy_1�8?;UOIu       ��Ax	B̬s_�A�*g
!
Evaluation_layers/accuracyԜ?

Evaluation_layers/loss+�@
#
Evaluation_layers/accuracy_1Ԝ?[�H\u       ��Ax	�t�s_�A�*g
!
Evaluation_layers/accuracyΐ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1ΐ?1�W�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy%?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1%?Ly-u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracyJ�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1J�?m�U�u       ��Ax	�b�s_�A�*g
!
Evaluation_layers/accuracy�9 ?

Evaluation_layers/loss�$@
#
Evaluation_layers/accuracy_1�9 ?�3ou       ��Ax	Y	�s_�A�*g
!
Evaluation_layers/accuracy�} ?

Evaluation_layers/lossF�@
#
Evaluation_layers/accuracy_1�} ?v�^u       ��Ax	f��s_�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/lossK�@
#
Evaluation_layers/accuracy_1� ?k���u       ��Ax	&J�s_�A�*g
!
Evaluation_layers/accuracyu�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1u�?�odu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�u ?

Evaluation_layers/loss2�@
#
Evaluation_layers/accuracy_1�u ?	�	�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/lossC`@
#
Evaluation_layers/accuracy_1�� ?e��zu       ��Ax	�}�s_�A�*g
!
Evaluation_layers/accuracy-f!?

Evaluation_layers/lossl�@
#
Evaluation_layers/accuracy_1-f!?���u       ��Ax	 3�s_�A�*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1!?p`?�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracyE�!?

Evaluation_layers/lossOl@
#
Evaluation_layers/accuracy_1E�!?M/��u       ��Ax	K�s_�A�*g
!
Evaluation_layers/accuracyA�!?

Evaluation_layers/loss �@
#
Evaluation_layers/accuracy_1A�!?�(%Tu       ��Ax	z)s_�A�*g
!
Evaluation_layers/accuracyC�!?

Evaluation_layers/loss17@
#
Evaluation_layers/accuracy_1C�!?�~�8u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�*"?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�*"?Y��pu       ��Ax	&�s_�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/lossH@
#
Evaluation_layers/accuracy_1�"?0�u       ��Ax	7�$s_�A�*g
!
Evaluation_layers/accuracy�R"?

Evaluation_layers/loss:@
#
Evaluation_layers/accuracy_1�R"?�*��u       ��Ax	O*s_�A�*g
!
Evaluation_layers/accuracyf�!?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1f�!?��u       ��Ax	��/s_�A�*g
!
Evaluation_layers/accuracyͮ"?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1ͮ"?�Gu       ��Ax	0�5s_�A�*g
!
Evaluation_layers/accuracyW#?

Evaluation_layers/lossu@
#
Evaluation_layers/accuracy_1W#?@O!�u       ��Ax	�O;s_�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossuP@
#
Evaluation_layers/accuracy_1��"?j��[u       ��Ax	�As_�A�*g
!
Evaluation_layers/accuracy�
#?

Evaluation_layers/lossqY@
#
Evaluation_layers/accuracy_1�
#?�ȉhu       ��Ax	��Fs_�A�*g
!
Evaluation_layers/accuracy&g#?

Evaluation_layers/lossA�@
#
Evaluation_layers/accuracy_1&g#?���u       ��Ax	�OLs_�A�*g
!
Evaluation_layers/accuracyE�#?

Evaluation_layers/lossz�@
#
Evaluation_layers/accuracy_1E�#?8�"�u       ��Ax	�Qs_�A�*g
!
Evaluation_layers/accuracyj�#?

Evaluation_layers/loss
�@
#
Evaluation_layers/accuracy_1j�#?<'�>u       ��Ax	Mfs_�A�*g
!
Evaluation_layers/accuracy?�#?

Evaluation_layers/loss�R
@
#
Evaluation_layers/accuracy_1?�#?����u       ��Ax	�9ms_�A�*g
!
Evaluation_layers/accuracy�#?

Evaluation_layers/lossaq@
#
Evaluation_layers/accuracy_1�#?�xR(u       ��Ax	\Vts_�A�*g
!
Evaluation_layers/accuracy�r"?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�r"?�bu       ��Ax	5{s_�A�*g
!
Evaluation_layers/accuracy�Z"?

Evaluation_layers/loss�j@
#
Evaluation_layers/accuracy_1�Z"? kxu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�~"?

Evaluation_layers/loss�L@
#
Evaluation_layers/accuracy_1�~"?>%�u       ��Ax	) �s_�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss[@
#
Evaluation_layers/accuracy_1��"?�F�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��"?�XKu       ��Ax	Cu�s_�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/lossC�@
#
Evaluation_layers/accuracy_1��"?��Uu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��"? /�{u       ��Ax	�o�s_�A�*g
!
Evaluation_layers/accuracy��"?

Evaluation_layers/loss1;@
#
Evaluation_layers/accuracy_1��"?�.b�u       ��Ax	Ao�s_�A�*g
!
Evaluation_layers/accuracy�r"?

Evaluation_layers/loss"�@
#
Evaluation_layers/accuracy_1�r"?6��u       ��Ax	�[�s_�A�*g
!
Evaluation_layers/accuracy�""?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�""?�w�Eu       ��Ax	�^�s_�A�*g
!
Evaluation_layers/accuracy�z"?

Evaluation_layers/lossu1@
#
Evaluation_layers/accuracy_1�z"?�:Bu       ��Ax	�I�s_�A�*g
!
Evaluation_layers/accuracyǢ"?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1Ǣ"?��bmu       ��Ax	�E�s_�A�*g
!
Evaluation_layers/accuracyy"?

Evaluation_layers/lossT�@
#
Evaluation_layers/accuracy_1y"?<ӓ�u       ��Ax	Z�s_�A�*g
!
Evaluation_layers/accuracy�2"?

Evaluation_layers/lossI�@
#
Evaluation_layers/accuracy_1�2"?�ý%u       ��Ax	&u�s_�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/loss�1@
#
Evaluation_layers/accuracy_1�"?,��Ku       ��Ax	z�s_�A�*g
!
Evaluation_layers/accuracyV�!?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1V�!?��lu       ��Ax	�w�s_�A�*g
!
Evaluation_layers/accuracyI�!?

Evaluation_layers/lossڎ@
#
Evaluation_layers/accuracy_1I�!?(n��u       ��Ax	]��s_�A�*g
!
Evaluation_layers/accuracy7z!?

Evaluation_layers/loss�k@
#
Evaluation_layers/accuracy_17z!?�w�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�."?

Evaluation_layers/loss4�@
#
Evaluation_layers/accuracy_1�."?)u       ��Ax	xs_�A�*g
!
Evaluation_layers/accuracy�� ?

Evaluation_layers/lossja@
#
Evaluation_layers/accuracy_1�� ?E�$�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy,b!?

Evaluation_layers/loss'i@
#
Evaluation_layers/accuracy_1,b!?!�,u       ��Ax	�Z&s_�A�*g
!
Evaluation_layers/accuracy$R!?

Evaluation_layers/loss�C@
#
Evaluation_layers/accuracy_1$R!?�4�]u       ��Ax	�u-s_�A�*g
!
Evaluation_layers/accuracy�e ?

Evaluation_layers/loss��"@
#
Evaluation_layers/accuracy_1�e ?�ɋvu       ��Ax	^|4s_�A�*g
!
Evaluation_layers/accuracyص ?

Evaluation_layers/lossx4#@
#
Evaluation_layers/accuracy_1ص ?���bu       ��Ax	�x;s_�A�*g
!
Evaluation_layers/accuracyХ ?

Evaluation_layers/loss��"@
#
Evaluation_layers/accuracy_1Х ?ǢEu       ��Ax	oBs_�A�*g
!
Evaluation_layers/accuracyҩ ?

Evaluation_layers/lossڿ$@
#
Evaluation_layers/accuracy_1ҩ ?�Ճ%u       ��Ax	Y�Is_�A�*g
!
Evaluation_layers/accuracyܽ ?

Evaluation_layers/loss�#@
#
Evaluation_layers/accuracy_1ܽ ?�,ru       ��Ax	��Ps_�A�*g
!
Evaluation_layers/accuracy�Q ?

Evaluation_layers/lossϼ%@
#
Evaluation_layers/accuracy_1�Q ?z�V!u       ��Ax	�Aes_�A�*g
!
Evaluation_layers/accuracyص ?

Evaluation_layers/loss<U&@
#
Evaluation_layers/accuracy_1ص ?��1Gu       ��Ax	�^ks_�A�*g
!
Evaluation_layers/accuracy
!?

Evaluation_layers/loss��$@
#
Evaluation_layers/accuracy_1
!?��h�u       ��Ax	��qs_�A�*g
!
Evaluation_layers/accuracyʙ ?

Evaluation_layers/loss�j(@
#
Evaluation_layers/accuracy_1ʙ ?���u       ��Ax	��ws_�A�*g
!
Evaluation_layers/accuracy�] ?

Evaluation_layers/lossC(@
#
Evaluation_layers/accuracy_1�] ?�9qu       ��Ax	B�}s_�A�*g
!
Evaluation_layers/accuracy̝ ?

Evaluation_layers/loss�)@
#
Evaluation_layers/accuracy_1̝ ?�,��u       ��Ax	2�s_�A�*g
!
Evaluation_layers/accuracy�5 ?

Evaluation_layers/loss�V+@
#
Evaluation_layers/accuracy_1�5 ?��u       ��Ax	�@�s_�A�*g
!
Evaluation_layers/accuracy�1 ?

Evaluation_layers/lossM+@
#
Evaluation_layers/accuracy_1�1 ?�fJu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�i ?

Evaluation_layers/loss��+@
#
Evaluation_layers/accuracy_1�i ?Zk�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�5 ?

Evaluation_layers/loss�-@
#
Evaluation_layers/accuracy_1�5 ?��MHu       ��Ax	U��s_�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss�-@
#
Evaluation_layers/accuracy_1� ?��0[u       ��Ax	F�s_�A�*g
!
Evaluation_layers/accuracy� ?

Evaluation_layers/loss�F.@
#
Evaluation_layers/accuracy_1� ?�߉pu       ��Ax	Nܴs_�A�*g
!
Evaluation_layers/accuracy�1 ?

Evaluation_layers/loss��-@
#
Evaluation_layers/accuracy_1�1 ?���u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�M ?

Evaluation_layers/loss&y.@
#
Evaluation_layers/accuracy_1�M ?��Zu       ��Ax	0�s_�A�*g
!
Evaluation_layers/accuracy�1 ?

Evaluation_layers/loss_�.@
#
Evaluation_layers/accuracy_1�1 ?��@�u       ��Ax	F��s_�A�*g
!
Evaluation_layers/accuracym�?

Evaluation_layers/loss�1@
#
Evaluation_layers/accuracy_1m�?3��u       ��Ax	�y�s_�A�*g
!
Evaluation_layers/accuracyg�?

Evaluation_layers/loss�b0@
#
Evaluation_layers/accuracy_1g�?[)�u       ��Ax	Q�s_�A�*g
!
Evaluation_layers/accuracy)M?

Evaluation_layers/loss�1@
#
Evaluation_layers/accuracy_1)M?��ncu       ��Ax	a��s_�A�*g
!
Evaluation_layers/accuracyk�?

Evaluation_layers/loss�3@
#
Evaluation_layers/accuracy_1k�?SaO�u       ��Ax	�c�s_�A�*g
!
Evaluation_layers/accuracyb�?

Evaluation_layers/loss��4@
#
Evaluation_layers/accuracy_1b�?�ݐMu       ��Ax	Le�s_�A�*g
!
Evaluation_layers/accuracy'I?

Evaluation_layers/loss5@
#
Evaluation_layers/accuracy_1'I?r���u       ��Ax	:��s_�A�*g
!
Evaluation_layers/accuracyH�?

Evaluation_layers/loss��6@
#
Evaluation_layers/accuracy_1H�?}�6�u       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracy1]?

Evaluation_layers/loss�8@
#
Evaluation_layers/accuracy_11]?�/�u       ��Ax	� s_�A�*g
!
Evaluation_layers/accuracy7i?

Evaluation_layers/loss�=9@
#
Evaluation_layers/accuracy_17i?���Fu       ��Ax	�Us_�A�*g
!
Evaluation_layers/accuracyN�?

Evaluation_layers/loss��8@
#
Evaluation_layers/accuracy_1N�?�-�qu       ��Ax	p s_�A�*g
!
Evaluation_layers/accuracy'I?

Evaluation_layers/loss��8@
#
Evaluation_layers/accuracy_1'I?�t�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy
?

Evaluation_layers/loss>\9@
#
Evaluation_layers/accuracy_1
?e�J\u       ��Ax	w>s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��;@
#
Evaluation_layers/accuracy_1��?���u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracyH�?

Evaluation_layers/losse�:@
#
Evaluation_layers/accuracy_1H�?��iu       ��Ax	��"s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossz9<@
#
Evaluation_layers/accuracy_1�?
�H�u       ��Ax	�\(s_�A�*g
!
Evaluation_layers/accuracy%?

Evaluation_layers/loss2>@
#
Evaluation_layers/accuracy_1%?w�+u       ��Ax	�6:s_�A�*g
!
Evaluation_layers/accuracy-?

Evaluation_layers/lossdq@@
#
Evaluation_layers/accuracy_1-?E��u       ��Ax	s�?s_�A�*g
!
Evaluation_layers/accuracy?

Evaluation_layers/loss+�A@
#
Evaluation_layers/accuracy_1?(Mu       ��Ax	t�Es_�A�*g
!
Evaluation_layers/accuracy?

Evaluation_layers/loss��B@
#
Evaluation_layers/accuracy_1?=�9Ju       ��Ax	�{Ks_�A�*g
!
Evaluation_layers/accuracy5e?

Evaluation_layers/lossB@
#
Evaluation_layers/accuracy_15e?�dYFu       ��Ax	v%Qs_�A�*g
!
Evaluation_layers/accuracy?

Evaluation_layers/lossx&B@
#
Evaluation_layers/accuracy_1?NR�Lu       ��Ax	��Vs_�A�*g
!
Evaluation_layers/accuracy5e?

Evaluation_layers/loss`B@
#
Evaluation_layers/accuracy_15e?o<�u       ��Ax	Qv]s_�A�*g
!
Evaluation_layers/accuracy?

Evaluation_layers/lossu�C@
#
Evaluation_layers/accuracy_1?&Nu       ��Ax	O�ds_�A�*g
!
Evaluation_layers/accuracy!?

Evaluation_layers/loss��E@
#
Evaluation_layers/accuracy_1!?Y{a�u       ��Ax	�ls_�A�*g
!
Evaluation_layers/accuracyZ�?

Evaluation_layers/lossU�D@
#
Evaluation_layers/accuracy_1Z�?I��u       ��Ax	�ss_�A�*g
!
Evaluation_layers/accuracy?y?

Evaluation_layers/loss��H@
#
Evaluation_layers/accuracy_1?y?�8u       ��Ax	ٳ�s_�A�*g
!
Evaluation_layers/accuracy/Y?

Evaluation_layers/lossvJ@
#
Evaluation_layers/accuracy_1/Y?�jʝu       ��Ax	Q�s_�A�*g
!
Evaluation_layers/accuracy^�?

Evaluation_layers/lossYH@
#
Evaluation_layers/accuracy_1^�?�v-�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy?y?

Evaluation_layers/loss�|J@
#
Evaluation_layers/accuracy_1?y?9q��u       ��Ax	Rޠs_�A�*g
!
Evaluation_layers/accuracyd�?

Evaluation_layers/loss�/I@
#
Evaluation_layers/accuracy_1d�?�z
&u       ��Ax	/էs_�A�*g
!
Evaluation_layers/accuracyT�?

Evaluation_layers/lossM5M@
#
Evaluation_layers/accuracy_1T�?�Ί�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracyE�?

Evaluation_layers/loss��L@
#
Evaluation_layers/accuracy_1E�?}��.u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracyu�?

Evaluation_layers/lossݜK@
#
Evaluation_layers/accuracy_1u�?�C}�u       ��Ax	1�s_�A�*g
!
Evaluation_layers/accuracy=u?

Evaluation_layers/loss��O@
#
Evaluation_layers/accuracy_1=u?���Vu       ��Ax	 ��s_�A�*g
!
Evaluation_layers/accuracyP�?

Evaluation_layers/loss�1N@
#
Evaluation_layers/accuracy_1P�?
J�2u       ��Ax	9�s_�A�*g
!
Evaluation_layers/accuracyL�?

Evaluation_layers/loss�N@
#
Evaluation_layers/accuracy_1L�?D�v	u       ��Ax	X�s_�A�*g
!
Evaluation_layers/accuracy7i?

Evaluation_layers/loss�P@
#
Evaluation_layers/accuracy_17i?鉰�u       ��Ax	�
�s_�A�*g
!
Evaluation_layers/accuracy?y?

Evaluation_layers/loss��O@
#
Evaluation_layers/accuracy_1?y?xd�8u       ��Ax	�6�s_�A�*g
!
Evaluation_layers/accuracy9m?

Evaluation_layers/loss�3O@
#
Evaluation_layers/accuracy_19m?��bu       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracy1]?

Evaluation_layers/losssS@
#
Evaluation_layers/accuracy_11]?��8u       ��Ax	4�s_�A�*g
!
Evaluation_layers/accuracy?y?

Evaluation_layers/loss�Q@
#
Evaluation_layers/accuracy_1?y?k,FOu       ��Ax	Z�s_�A�*g
!
Evaluation_layers/accuracy'I?

Evaluation_layers/loss�S@
#
Evaluation_layers/accuracy_1'I?���ou       ��Ax	#�
s_�A�*g
!
Evaluation_layers/accuracyE�?

Evaluation_layers/loss:�S@
#
Evaluation_layers/accuracy_1E�?Q
u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy+Q?

Evaluation_layers/lossa�T@
#
Evaluation_layers/accuracy_1+Q?�6�u       ��Ax	
�s_�A�*g
!
Evaluation_layers/accuracy1]?

Evaluation_layers/loss<XT@
#
Evaluation_layers/accuracy_11]?ڂ��u       ��Ax	�
 s_�A�*g
!
Evaluation_layers/accuracyJ�?

Evaluation_layers/loss  V@
#
Evaluation_layers/accuracy_1J�?�>Ru       ��Ax	��6s_�A�*g
!
Evaluation_layers/accuracy?y?

Evaluation_layers/loss8QV@
#
Evaluation_layers/accuracy_1?y?�(Su       ��Ax	gI>s_�A�*g
!
Evaluation_layers/accuracy;q?

Evaluation_layers/loss��V@
#
Evaluation_layers/accuracy_1;q?���u       ��Ax	�^Es_�A�*g
!
Evaluation_layers/accuracy+Q?

Evaluation_layers/lossS�W@
#
Evaluation_layers/accuracy_1+Q?��Iu       ��Ax	�Ls_�A�*g
!
Evaluation_layers/accuracyE�?

Evaluation_layers/loss�;X@
#
Evaluation_layers/accuracy_1E�?���u       ��Ax	+�Ss_�A�*g
!
Evaluation_layers/accuracyC�?

Evaluation_layers/loss�;Y@
#
Evaluation_layers/accuracy_1C�?�{��u       ��Ax	��Zs_�A�*g
!
Evaluation_layers/accuracy9m?

Evaluation_layers/loss6�Z@
#
Evaluation_layers/accuracy_19m?V��u       ��Ax	�`s_�A�*g
!
Evaluation_layers/accuracy;q?

Evaluation_layers/losszS[@
#
Evaluation_layers/accuracy_1;q?���wu       ��Ax	_6fs_�A�*g
!
Evaluation_layers/accuracy$A?

Evaluation_layers/loss1]@
#
Evaluation_layers/accuracy_1$A?�p��u       ��Ax	�ks_�A�*g
!
Evaluation_layers/accuracyJ�?

Evaluation_layers/loss{Z@
#
Evaluation_layers/accuracy_1J�?�ܬ�u       ��Ax	��qs_�A�*g
!
Evaluation_layers/accuracy)?

Evaluation_layers/loss:#^@
#
Evaluation_layers/accuracy_1)?��Vu       ��Ax	�d�s_�A�*g
!
Evaluation_layers/accuracy;q?

Evaluation_layers/loss�0]@
#
Evaluation_layers/accuracy_1;q?V��u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy?y?

Evaluation_layers/loss#^@
#
Evaluation_layers/accuracy_1?y?&��	u       ��Ax	�V�s_�A�*g
!
Evaluation_layers/accuracy+Q?

Evaluation_layers/loss�w]@
#
Evaluation_layers/accuracy_1+Q?5C��u       ��Ax	p��s_�A�*g
!
Evaluation_layers/accuracy+Q?

Evaluation_layers/loss��^@
#
Evaluation_layers/accuracy_1+Q?vu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy)M?

Evaluation_layers/loss_@
#
Evaluation_layers/accuracy_1)M?��u       ��Ax	L^�s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/losss�a@
#
Evaluation_layers/accuracy_1�?����u       ��Ax	K�s_�A�*g
!
Evaluation_layers/accuracy)M?

Evaluation_layers/loss��_@
#
Evaluation_layers/accuracy_1)M?/=RBu       ��Ax	ͳ�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss*c@
#
Evaluation_layers/accuracy_1��?q"�fu       ��Ax	US�s_�A�*g
!
Evaluation_layers/accuracy?

Evaluation_layers/lossLa@
#
Evaluation_layers/accuracy_1?��u       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossc�a@
#
Evaluation_layers/accuracy_1��?���2u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracyҘ?

Evaluation_layers/lossa�d@
#
Evaluation_layers/accuracy_1Ҙ?x��ou       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossbd@
#
Evaluation_layers/accuracy_1��?��w�u       ��Ax	*�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss8e@
#
Evaluation_layers/accuracy_1��?��Iu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�ed@
#
Evaluation_layers/accuracy_1��?祬.u       ��Ax	�q�s_�A�*g
!
Evaluation_layers/accuracy�x?

Evaluation_layers/loss8g@
#
Evaluation_layers/accuracy_1�x?Pیu       ��Ax	z �s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�|f@
#
Evaluation_layers/accuracy_1�?	B5qu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracyް?

Evaluation_layers/loss!Of@
#
Evaluation_layers/accuracy_1ް?��u       ��Ax	ps�s_�A�*g
!
Evaluation_layers/accuracy�X?

Evaluation_layers/loss�h@
#
Evaluation_layers/accuracy_1�X?	�(�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�<?

Evaluation_layers/lossX�h@
#
Evaluation_layers/accuracy_1�<?9�[xu       ��Ax	�P�s_�A�*g
!
Evaluation_layers/accuracy�|?

Evaluation_layers/lossmi@
#
Evaluation_layers/accuracy_1�|?4�Uu       ��Ax	w�s_�A�*g
!
Evaluation_layers/accuracy�`?

Evaluation_layers/loss�hi@
#
Evaluation_layers/accuracy_1�`?fU�u       ��Ax	M=s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�/j@
#
Evaluation_layers/accuracy_1��?n:��u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracyΐ?

Evaluation_layers/lossK�l@
#
Evaluation_layers/accuracy_1ΐ?ݩk'u       ��Ax	�"s_�A�*g
!
Evaluation_layers/accuracy�X?

Evaluation_layers/loss�n@
#
Evaluation_layers/accuracy_1�X?��'u       ��Ax	@(s_�A�*g
!
Evaluation_layers/accuracy�4?

Evaluation_layers/loss�q@
#
Evaluation_layers/accuracy_1�4?�?Y�u       ��Ax	e�-s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��p@
#
Evaluation_layers/accuracy_1�?~��u       ��Ax	�3s_�A�*g
!
Evaluation_layers/accuracy�$?

Evaluation_layers/loss�q@
#
Evaluation_layers/accuracy_1�$?���@u       ��Ax	>9s_�A�*g
!
Evaluation_layers/accuracy�(?

Evaluation_layers/lossQ|q@
#
Evaluation_layers/accuracy_1�(?IO�Yu       ��Ax	��>s_�A�*g
!
Evaluation_layers/accuracyq�?

Evaluation_layers/loss�u@
#
Evaluation_layers/accuracy_1q�?��u       ��Ax	x�Ds_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�s@
#
Evaluation_layers/accuracy_1��?Xꅷu       ��Ax	��Vs_�A�*g
!
Evaluation_layers/accuracyy�?

Evaluation_layers/lossҖt@
#
Evaluation_layers/accuracy_1y�?�k#[u       ��Ax	y�\s_�A�*g
!
Evaluation_layers/accuracyk�?

Evaluation_layers/loss��u@
#
Evaluation_layers/accuracy_1k�?만�u       ��Ax	��cs_�A�*g
!
Evaluation_layers/accuracyP�?

Evaluation_layers/loss#�x@
#
Evaluation_layers/accuracy_1P�?��u       ��Ax	��js_�A�*g
!
Evaluation_layers/accuracyc�?

Evaluation_layers/loss�v@
#
Evaluation_layers/accuracy_1c�?AGu       ��Ax	��qs_�A�*g
!
Evaluation_layers/accuracyJ�?

Evaluation_layers/loss�fx@
#
Evaluation_layers/accuracy_1J�?[�Fu       ��Ax	C�xs_�A�*g
!
Evaluation_layers/accuracyP�?

Evaluation_layers/lossk�w@
#
Evaluation_layers/accuracy_1P�?�9wu       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy;`?

Evaluation_layers/loss��x@
#
Evaluation_layers/accuracy_1;`?�@�_u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy1L?

Evaluation_layers/loss�z@
#
Evaluation_layers/accuracy_11L?���Xu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy
�?

Evaluation_layers/lossH|@
#
Evaluation_layers/accuracy_1
�?�a��u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy?

Evaluation_layers/lossp�z@
#
Evaluation_layers/accuracy_1?��g<u       ��Ax	 �s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�F}@
#
Evaluation_layers/accuracy_1��?�*=�u       ��Ax	o�s_�A�*g
!
Evaluation_layers/accuracy?

Evaluation_layers/lossWt{@
#
Evaluation_layers/accuracy_1?���u       ��Ax	�ոs_�A�*g
!
Evaluation_layers/accuracyߣ?

Evaluation_layers/lossy1~@
#
Evaluation_layers/accuracy_1ߣ?I��|u       ��Ax	�ɿs_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��}@
#
Evaluation_layers/accuracy_1��?[��su       ��Ax	 ��s_�A�*g
!
Evaluation_layers/accuracy�S?

Evaluation_layers/loss��}@
#
Evaluation_layers/accuracy_1�S?���u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�O?

Evaluation_layers/loss�~@
#
Evaluation_layers/accuracy_1�O?�i�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�O?

Evaluation_layers/loss@I@
#
Evaluation_layers/accuracy_1�O?���u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�G?

Evaluation_layers/loss�+�@
#
Evaluation_layers/accuracy_1�G?|�8#u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�;?

Evaluation_layers/loss(��@
#
Evaluation_layers/accuracy_1�;?�`u       ��Ax	4}�s_�A�*g
!
Evaluation_layers/accuracy�+?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�+? ��u       ��Ax	@��s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��?��F�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy~�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1~�?]� Ru       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�?��4yu       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�?��u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�J�@
#
Evaluation_layers/accuracy_1�?!Öiu       ��Ax	��"s_�A�*g
!
Evaluation_layers/accuracyq�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1q�?�(WDu       ��Ax	�)s_�A�*g
!
Evaluation_layers/accuracya�?

Evaluation_layers/loss\
�@
#
Evaluation_layers/accuracy_1a�?ە�lu       ��Ax	��0s_�A�*g
!
Evaluation_layers/accuracyq�?

Evaluation_layers/loss>ф@
#
Evaluation_layers/accuracy_1q�?����u       ��Ax	@�7s_�A�*g
!
Evaluation_layers/accuracyk�?

Evaluation_layers/lossӄ@
#
Evaluation_layers/accuracy_1k�?�ۃ�u       ��Ax	�u>s_�A�*g
!
Evaluation_layers/accuracym�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1m�?#��u       ��Ax	�kTs_�A�*g
!
Evaluation_layers/accuracyg�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1g�?�rT�u       ��Ax	KQ[s_�A�*g
!
Evaluation_layers/accuracyV�?

Evaluation_layers/lossX3�@
#
Evaluation_layers/accuracy_1V�?Z��u       ��Ax	t;as_�A�*g
!
Evaluation_layers/accuracyHk?

Evaluation_layers/lossTІ@
#
Evaluation_layers/accuracy_1Hk?+ȗ�u       ��Ax	��fs_�A�*g
!
Evaluation_layers/accuracy_�?

Evaluation_layers/loss�V�@
#
Evaluation_layers/accuracy_1_�?�0�u       ��Ax	8�ls_�A�*g
!
Evaluation_layers/accuracyJo?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1Jo? `�<u       ��Ax	�rs_�A�*g
!
Evaluation_layers/accuracyV�?

Evaluation_layers/loss�-�@
#
Evaluation_layers/accuracy_1V�?�zբu       ��Ax	�Oxs_�A�*g
!
Evaluation_layers/accuracyJo?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1Jo?�2ju       ��Ax	a�}s_�A�*g
!
Evaluation_layers/accuracy@[?

Evaluation_layers/loss�Q�@
#
Evaluation_layers/accuracy_1@[?���du       ��Ax	ˣ�s_�A�*g
!
Evaluation_layers/accuracyDc?

Evaluation_layers/lossL��@
#
Evaluation_layers/accuracy_1Dc?P�xu       ��Ax	\C�s_�A�*g
!
Evaluation_layers/accuracy-3?

Evaluation_layers/lossra�@
#
Evaluation_layers/accuracy_1-3?�ߎ+u       ��Ax	�Q�s_�A�*g
!
Evaluation_layers/accuracy+/?

Evaluation_layers/loss1��@
#
Evaluation_layers/accuracy_1+/?�@��u       ��Ax	_�s_�A�*g
!
Evaluation_layers/accuracy?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1?n���u       ��Ax	1��s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossm��@
#
Evaluation_layers/accuracy_1��?��T"u       ��Ax	n�s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss%��@
#
Evaluation_layers/accuracy_1�?����u       ��Ax	p�s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss`��@
#
Evaluation_layers/accuracy_1�?���u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossz��@
#
Evaluation_layers/accuracy_1��?�݂�u       ��Ax	7]�s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�=�@
#
Evaluation_layers/accuracy_1�?(,*u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss|��@
#
Evaluation_layers/accuracy_1�?{�Iu       ��Ax	m��s_�A�*g
!
Evaluation_layers/accuracy�Z?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�Z?Fv;u       ��Ax	v?�s_�A�*g
!
Evaluation_layers/accuracy�r?

Evaluation_layers/loss<}�@
#
Evaluation_layers/accuracy_1�r?�c0�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracyׂ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1ׂ?�B4u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracyۊ?

Evaluation_layers/lossQ��@
#
Evaluation_layers/accuracy_1ۊ?��:u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�^?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�^?��~u       ��Ax	{��s_�A�*g
!
Evaluation_layers/accuracy�n?

Evaluation_layers/lossC��@
#
Evaluation_layers/accuracy_1�n?�Du       ��Ax	
��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�?K	�u       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracyۊ?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1ۊ?1��\u       ��Ax	�
s_�A�*g
!
Evaluation_layers/accuracyۊ?

Evaluation_layers/loss`��@
#
Evaluation_layers/accuracy_1ۊ?(E�u       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracyݎ?

Evaluation_layers/lossv�@
#
Evaluation_layers/accuracy_1ݎ?�K��u       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracy�V?

Evaluation_layers/lossɠ�@
#
Evaluation_layers/accuracy_1�V?�uu       ��Ax	I�s_�A�*g
!
Evaluation_layers/accuracy�j?

Evaluation_layers/loss�*�@
#
Evaluation_layers/accuracy_1�j?�!&�u       ��Ax	��(s_�A�*g
!
Evaluation_layers/accuracy�n?

Evaluation_layers/loss�ۑ@
#
Evaluation_layers/accuracy_1�n?A�i�u       ��Ax	��.s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�r�@
#
Evaluation_layers/accuracy_1�?�>3�u       ��Ax	�;4s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossr��@
#
Evaluation_layers/accuracy_1�?��
u       ��Ax	�:s_�A�*g
!
Evaluation_layers/accuracy�r?

Evaluation_layers/loss�ݓ@
#
Evaluation_layers/accuracy_1�r?�[��u       ��Ax	��?s_�A�*g
!
Evaluation_layers/accuracyݎ?

Evaluation_layers/loss9^�@
#
Evaluation_layers/accuracy_1ݎ?�9>�u       ��Ax	�^Es_�A�*g
!
Evaluation_layers/accuracyߒ?

Evaluation_layers/lossܺ�@
#
Evaluation_layers/accuracy_1ߒ?1�?u       ��Ax	� Ks_�A�*g
!
Evaluation_layers/accuracy�v?

Evaluation_layers/lossA�@
#
Evaluation_layers/accuracy_1�v?���u       ��Ax	��Ps_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss7�@
#
Evaluation_layers/accuracy_1�?� +�u       ��Ax	�FVs_�A�*g
!
Evaluation_layers/accuracy�z?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�z?A�z�u       ��Ax	�V\s_�A�*g
!
Evaluation_layers/accuracyݎ?

Evaluation_layers/loss�:�@
#
Evaluation_layers/accuracy_1ݎ?:A��u       ��Ax	�rs_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�?���Xu       ��Ax	 �ys_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss$f�@
#
Evaluation_layers/accuracy_1�?��"�u       ��Ax	7��s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossc��@
#
Evaluation_layers/accuracy_1�?\��u       ��Ax	Q��s_�A�*g
!
Evaluation_layers/accuracyߒ?

Evaluation_layers/lossE��@
#
Evaluation_layers/accuracy_1ߒ?|��u       ��Ax	`��s_�A�*g
!
Evaluation_layers/accuracyݎ?

Evaluation_layers/loss�K�@
#
Evaluation_layers/accuracy_1ݎ?Wb�u       ��Ax	P��s_�A�*g
!
Evaluation_layers/accuracyݎ?

Evaluation_layers/loss�ʘ@
#
Evaluation_layers/accuracy_1ݎ?��`�u       ��Ax	d��s_�A�*g
!
Evaluation_layers/accuracyۊ?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1ۊ?�=qu       ��Ax	Փ�s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�?a�Ou       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�?)Ћu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracyݎ?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1ݎ?����u       ��Ax	g3�s_�A�*g
!
Evaluation_layers/accuracy�r?

Evaluation_layers/loss�u�@
#
Evaluation_layers/accuracy_1�r?L���u       ��Ax	�s_�A�*g
!
Evaluation_layers/accuracy�z?

Evaluation_layers/lossu&�@
#
Evaluation_layers/accuracy_1�z?WO�Hu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�j?

Evaluation_layers/loss�.�@
#
Evaluation_layers/accuracy_1�j?�R�u       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�v?

Evaluation_layers/lossYf�@
#
Evaluation_layers/accuracy_1�v? y!�u       ��Ax	�V�s_�A�*g
!
Evaluation_layers/accuracy�j?

Evaluation_layers/loss5��@
#
Evaluation_layers/accuracy_1�j?j��9u       ��Ax	[S�s_�A�*g
!
Evaluation_layers/accuracy�^?

Evaluation_layers/loss�m�@
#
Evaluation_layers/accuracy_1�^?�P~�u       ��Ax	,��s_�A�*g
!
Evaluation_layers/accuracy�V?

Evaluation_layers/lossU{�@
#
Evaluation_layers/accuracy_1�V?�QU�u       ��Ax	e�s_�A�*g
!
Evaluation_layers/accuracy�Z?

Evaluation_layers/lossf֟@
#
Evaluation_layers/accuracy_1�Z?�7�Fu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�R?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�R?GY��u       ��Ax	Nns_�A�*g
!
Evaluation_layers/accuracy�>?

Evaluation_layers/lossX�@
#
Evaluation_layers/accuracy_1�>?3h%�u       ��Ax	B�$s_�A�*g
!
Evaluation_layers/accuracy�.?

Evaluation_layers/lossݐ�@
#
Evaluation_layers/accuracy_1�.?�/f�u       ��Ax	��,s_�A�*g
!
Evaluation_layers/accuracy�N?

Evaluation_layers/loss/q�@
#
Evaluation_layers/accuracy_1�N?Do�Mu       ��Ax	��4s_�A�*g
!
Evaluation_layers/accuracy�B?

Evaluation_layers/loss�j�@
#
Evaluation_layers/accuracy_1�B?S�2Du       ��Ax	>�<s_�A�*g
!
Evaluation_layers/accuracy�^?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�^?��%u       ��Ax	R�Ds_�A�*g
!
Evaluation_layers/accuracy�B?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�B?!A��u       ��Ax	g"Ls_�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/loss>��@
#
Evaluation_layers/accuracy_1�"?l�<u       ��Ax	�Ss_�A�*g
!
Evaluation_layers/accuracy�Z?

Evaluation_layers/loss@
#
Evaluation_layers/accuracy_1�Z?**�u       ��Ax	��Ys_�A�*g
!
Evaluation_layers/accuracy�B?

Evaluation_layers/loss[ڣ@
#
Evaluation_layers/accuracy_1�B?��u       ��Ax	�`s_�A�*g
!
Evaluation_layers/accuracy�2?

Evaluation_layers/loss/!�@
#
Evaluation_layers/accuracy_1�2?{��u       ��Ax	��es_�A�*g
!
Evaluation_layers/accuracy�R?

Evaluation_layers/loss�פ@
#
Evaluation_layers/accuracy_1�R?���lu       ��Ax	Thvs_�A�*g
!
Evaluation_layers/accuracy�.?

Evaluation_layers/loss� �@
#
Evaluation_layers/accuracy_1�.?�=��u       ��Ax	�"|s_�A�*g
!
Evaluation_layers/accuracy�F?

Evaluation_layers/loss@��@
#
Evaluation_layers/accuracy_1�F?V��ru       ��Ax	�΁s_�A�*g
!
Evaluation_layers/accuracy�B?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�B?ׂ�zu       ��Ax	�r�s_�A�*g
!
Evaluation_layers/accuracy�2?

Evaluation_layers/loss[E�@
#
Evaluation_layers/accuracy_1�2?|�)�u       ��Ax	�1�s_�A�*g
!
Evaluation_layers/accuracy�>?

Evaluation_layers/loss�7�@
#
Evaluation_layers/accuracy_1�>?��u       ��Ax	sɒs_�A�*g
!
Evaluation_layers/accuracy�2?

Evaluation_layers/loss/˥@
#
Evaluation_layers/accuracy_1�2?�C��u       ��Ax	�i�s_�A�*g
!
Evaluation_layers/accuracy�:?

Evaluation_layers/lossFɥ@
#
Evaluation_layers/accuracy_1�:?]�Gou       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�R?

Evaluation_layers/loss]��@
#
Evaluation_layers/accuracy_1�R?>��}u       ��Ax	uϣs_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss,�@
#
Evaluation_layers/accuracy_1�?F�<�u       ��Ax	�s�s_�A�*g
!
Evaluation_layers/accuracy�*?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�*?'�Odu       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�
?

Evaluation_layers/lossr�@
#
Evaluation_layers/accuracy_1�
?m)2	u       ��Ax	�!�s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�K�@
#
Evaluation_layers/accuracy_1�?��7Mu       ��Ax	���s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossL��@
#
Evaluation_layers/accuracy_1�?�#�u       ��Ax	�o�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss2�@
#
Evaluation_layers/accuracy_1��?CuA=u       ��Ax	�,�s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss>Ƨ@
#
Evaluation_layers/accuracy_1�?08�cu       ��Ax	��s_�A�*g
!
Evaluation_layers/accuracy�
?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�
?�*aTu       ��Ax	>��s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�h�@
#
Evaluation_layers/accuracy_1��?�Wܚu       ��Ax	0��s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss6�@
#
Evaluation_layers/accuracy_1��?�~KSu       ��Ax	/��s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossL&�@
#
Evaluation_layers/accuracy_1��?���u       ��Ax	�+�s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1��?	�΀u       ��Ax	�  s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�+�@
#
Evaluation_layers/accuracy_1��?��r�u       ��Ax	r� s_�A�*g
!
Evaluation_layers/accuracyx�?

Evaluation_layers/lossx2�@
#
Evaluation_layers/accuracy_1x�?0Pwu       ��Ax	�r s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss!�@
#
Evaluation_layers/accuracy_1��?өW*u       ��Ax	�f s_�A�*g
!
Evaluation_layers/accuracy|�?

Evaluation_layers/lossϪ@
#
Evaluation_layers/accuracy_1|�?�u�u       ��Ax	�k s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��?�o�u       ��Ax	�
 s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�(�@
#
Evaluation_layers/accuracy_1��?S7g{u       ��Ax	��" s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��?����u       ��Ax	a( s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss`g�@
#
Evaluation_layers/accuracy_1�?�B�u       ��Ax	. s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�?V(�u       ��Ax	��3 s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1��?���u       ��Ax	|�D s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss&٫@
#
Evaluation_layers/accuracy_1�?�3�Cu       ��Ax	o�J s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss,z�@
#
Evaluation_layers/accuracy_1�?{��u       ��Ax	�"P s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�@�@
#
Evaluation_layers/accuracy_1�?���u       ��Ax	��U s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss똫@
#
Evaluation_layers/accuracy_1��?
�ju       ��Ax	{�[ s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss5v�@
#
Evaluation_layers/accuracy_1�?Cj7u       ��Ax	Bqc s_�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/loss%��@
#
Evaluation_layers/accuracy_1�"?�d%?u       ��Ax	yk s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�?��Ʒu       ��Ax	Vs s_�A�*g
!
Evaluation_layers/accuracy�
?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�
?� �?u       ��Ax	is{ s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/losswb�@
#
Evaluation_layers/accuracy_1�?���eu       ��Ax	E�� s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�I�@
#
Evaluation_layers/accuracy_1��?iǊ>u       ��Ax	�D� s_�A�*g
!
Evaluation_layers/accuracy�
?

Evaluation_layers/loss�^�@
#
Evaluation_layers/accuracy_1�
?M� pu       ��Ax	�5� s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�Q�@
#
Evaluation_layers/accuracy_1�?���u       ��Ax	96� s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�[�@
#
Evaluation_layers/accuracy_1�?Z�!Gu       ��Ax	6�� s_�A�*g
!
Evaluation_layers/accuracy�2?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�2?�Z��u       ��Ax	N޻ s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�"�@
#
Evaluation_layers/accuracy_1�?�l��u       ��Ax	��� s_�A�*g
!
Evaluation_layers/accuracy�Z?

Evaluation_layers/lossmݭ@
#
Evaluation_layers/accuracy_1�Z?�Du       ��Ax	� � s_�A�*g
!
Evaluation_layers/accuracy�F?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�F?���Mu       ��Ax	j� s_�A�*g
!
Evaluation_layers/accuracy�6?

Evaluation_layers/lossy�@
#
Evaluation_layers/accuracy_1�6?���u       ��Ax	�I� s_�A�*g
!
Evaluation_layers/accuracy�R?

Evaluation_layers/loss�X�@
#
Evaluation_layers/accuracy_1�R?]!�~u       ��Ax	hS� s_�A�*g
!
Evaluation_layers/accuracy�F?

Evaluation_layers/loss^��@
#
Evaluation_layers/accuracy_1�F?�C�'u       ��Ax	Ѹ� s_�A�*g
!
Evaluation_layers/accuracy�B?

Evaluation_layers/loss�֯@
#
Evaluation_layers/accuracy_1�B?5\ �u       ��Ax	��� s_�A�*g
!
Evaluation_layers/accuracy�B?

Evaluation_layers/loss4r�@
#
Evaluation_layers/accuracy_1�B?�C3u       ��Ax	B�!s_�A�*g
!
Evaluation_layers/accuracy�B?

Evaluation_layers/loss�J�@
#
Evaluation_layers/accuracy_1�B?���|u       ��Ax	��
!s_�A�*g
!
Evaluation_layers/accuracy�N?

Evaluation_layers/loss�	�@
#
Evaluation_layers/accuracy_1�N?Tq��u       ��Ax	��!s_�A�*g
!
Evaluation_layers/accuracy�R?

Evaluation_layers/lossȰ@
#
Evaluation_layers/accuracy_1�R?� ��u       ��Ax	I�!s_�A�*g
!
Evaluation_layers/accuracy�J?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�J?p��-u       ��Ax	O�!s_�A�*g
!
Evaluation_layers/accuracy�Z?

Evaluation_layers/lossP�@
#
Evaluation_layers/accuracy_1�Z?Ϳ��u       ��Ax	��&!s_�A�*g
!
Evaluation_layers/accuracy�F?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�F?Jø�u       ��Ax	�M.!s_�A�*g
!
Evaluation_layers/accuracy�J?

Evaluation_layers/lossJر@
#
Evaluation_layers/accuracy_1�J?��Cu       ��Ax	JK5!s_�A�*g
!
Evaluation_layers/accuracy�B?

Evaluation_layers/loss�/�@
#
Evaluation_layers/accuracy_1�B?���u       ��Ax	�K!s_�A�*g
!
Evaluation_layers/accuracy�^?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�^?���u       ��Ax	@�R!s_�A�*g
!
Evaluation_layers/accuracy�&?

Evaluation_layers/loss׸�@
#
Evaluation_layers/accuracy_1�&?y�@�u       ��Ax	ԟY!s_�A�*g
!
Evaluation_layers/accuracy�*?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�*?�Qu       ��Ax	Z^`!s_�A�*g
!
Evaluation_layers/accuracy�6?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�6?�zq�u       ��Ax	�tf!s_�A�*g
!
Evaluation_layers/accuracy�Z?

Evaluation_layers/loss&�@
#
Evaluation_layers/accuracy_1�Z?��%u       ��Ax	�l!s_�A�*g
!
Evaluation_layers/accuracy�2?

Evaluation_layers/loss�;�@
#
Evaluation_layers/accuracy_1�2?R�h�u       ��Ax	K�r!s_�A�*g
!
Evaluation_layers/accuracy�6?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�6?����u       ��Ax	�x!s_�A�*g
!
Evaluation_layers/accuracy�*?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�*?)
qDu       ��Ax	e�~!s_�A�*g
!
Evaluation_layers/accuracy�&?

Evaluation_layers/lossч�@
#
Evaluation_layers/accuracy_1�&?~	SNu       ��Ax	n�!s_�A�*g
!
Evaluation_layers/accuracy�.?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�.?>eI!u       ��Ax	#�!s_�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/lossV�@
#
Evaluation_layers/accuracy_1�"?�S �u       ��Ax	��!s_�A�*g
!
Evaluation_layers/accuracy�B?

Evaluation_layers/loss�W�@
#
Evaluation_layers/accuracy_1�B?��y@u       ��Ax	�M�!s_�A�*g
!
Evaluation_layers/accuracy�*?

Evaluation_layers/loss�Ӵ@
#
Evaluation_layers/accuracy_1�*?L�lu       ��Ax	���!s_�A�*g
!
Evaluation_layers/accuracy�&?

Evaluation_layers/loss*9�@
#
Evaluation_layers/accuracy_1�&?.>"Ru       ��Ax	L>�!s_�A�*g
!
Evaluation_layers/accuracy�"?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�"?��z�u       ��Ax	��!s_�A�*g
!
Evaluation_layers/accuracy�2?

Evaluation_layers/loss^k�@
#
Evaluation_layers/accuracy_1�2?M�u       ��Ax	��!s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss@a�@
#
Evaluation_layers/accuracy_1�?�F�2u       ��Ax	_I�!s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�?�+�}u       ��Ax	���!s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�?�1��u       ��Ax	G��!s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�?7Ju       ��Ax	�!s_�A�*g
!
Evaluation_layers/accuracy�*?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�*?  RJu       ��Ax	P��!s_�A�*g
!
Evaluation_layers/accuracy�&?

Evaluation_layers/loss~��@
#
Evaluation_layers/accuracy_1�&?����u       ��Ax	
o�!s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�?�ćbu       ��Ax	5�!s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss2s�@
#
Evaluation_layers/accuracy_1�?�z��u       ��Ax	G��!s_�A�*g
!
Evaluation_layers/accuracy�
?

Evaluation_layers/lossH�@
#
Evaluation_layers/accuracy_1�
?g��u       ��Ax	��!s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�ҷ@
#
Evaluation_layers/accuracy_1�?�š�u       ��Ax	q�!s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss1��@
#
Evaluation_layers/accuracy_1�?ExM<u       ��Ax	�"s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossn̷@
#
Evaluation_layers/accuracy_1�?G]��u       ��Ax	�a"s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/lossy�@
#
Evaluation_layers/accuracy_1�?��(ku       ��Ax	"s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss<�@
#
Evaluation_layers/accuracy_1�?ޝvu       ��Ax	��"s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss;��@
#
Evaluation_layers/accuracy_1�?s�*�u       ��Ax	̇$"s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1�?�q,(u       ��Ax	�F*"s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�$�@
#
Evaluation_layers/accuracy_1�?ų5�u       ��Ax	�/"s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss(˸@
#
Evaluation_layers/accuracy_1�?��u       ��Ax	F�5"s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�i�@
#
Evaluation_layers/accuracy_1��?��u       ��Ax	cd;"s_�A�*g
!
Evaluation_layers/accuracy�
?

Evaluation_layers/loss�O�@
#
Evaluation_layers/accuracy_1�
?nu�u       ��Ax	,A"s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��?�f	#u       ��Ax	@�F"s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�e�@
#
Evaluation_layers/accuracy_1��?n�]u       ��Ax	�RL"s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1��?�i ,u       ��Ax	��Q"s_�A�*g
!
Evaluation_layers/accuracy~�?

Evaluation_layers/lossW��@
#
Evaluation_layers/accuracy_1~�?��3u       ��Ax	��d"s_�A�*g
!
Evaluation_layers/accuracyv�?

Evaluation_layers/loss]Ϻ@
#
Evaluation_layers/accuracy_1v�?�|�u       ��Ax	��k"s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1��?�킃u       ��Ax	�r"s_�A�*g
!
Evaluation_layers/accuracy~�?

Evaluation_layers/loss�޺@
#
Evaluation_layers/accuracy_1~�?Ȝ�au       ��Ax	�{"s_�A�*g
!
Evaluation_layers/accuracy~�?

Evaluation_layers/lossŤ�@
#
Evaluation_layers/accuracy_1~�?=_ u       ��Ax	;��"s_�A�*g
!
Evaluation_layers/accuracy~�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1~�?!�1u       ��Ax	]��"s_�A�*g
!
Evaluation_layers/accuracy~�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1~�?�i��u       ��Ax	|�"s_�A�*g
!
Evaluation_layers/accuracyz�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1z�?!��u       ��Ax	���"s_�A�*g
!
Evaluation_layers/accuracyx�?

Evaluation_layers/loss�ͺ@
#
Evaluation_layers/accuracy_1x�?�_��u       ��Ax	���"s_�A�*g
!
Evaluation_layers/accuracyv�?

Evaluation_layers/loss�b�@
#
Evaluation_layers/accuracy_1v�?�	�u       ��Ax	oۧ"s_�A�*g
!
Evaluation_layers/accuracy|�?

Evaluation_layers/loss	*�@
#
Evaluation_layers/accuracy_1|�?OL�u       ��Ax	�Ӽ"s_�A�*g
!
Evaluation_layers/accuracyz�?

Evaluation_layers/lossn3�@
#
Evaluation_layers/accuracy_1z�?u�'+u       ��Ax	��"s_�A�*g
!
Evaluation_layers/accuracyr�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1r�?�O��u       ��Ax	ü�"s_�A�*g
!
Evaluation_layers/accuracyt�?

Evaluation_layers/loss�]�@
#
Evaluation_layers/accuracy_1t�?�Q�u       ��Ax	���"s_�A�*g
!
Evaluation_layers/accuracyr�?

Evaluation_layers/loss9�@
#
Evaluation_layers/accuracy_1r�?yFz4u       ��Ax	��"s_�A�*g
!
Evaluation_layers/accuracyr�?

Evaluation_layers/loss[z�@
#
Evaluation_layers/accuracy_1r�?&8�uu       ��Ax	U��"s_�A�*g
!
Evaluation_layers/accuracyx�?

Evaluation_layers/lossh��@
#
Evaluation_layers/accuracy_1x�?���u       ��Ax	��"s_�A�*g
!
Evaluation_layers/accuracym�?

Evaluation_layers/loss39�@
#
Evaluation_layers/accuracy_1m�?Y>�Gu       ��Ax	�B�"s_�A�*g
!
Evaluation_layers/accuracym�?

Evaluation_layers/loss:{�@
#
Evaluation_layers/accuracy_1m�?:M��u       ��Ax	02�"s_�A�*g
!
Evaluation_layers/accuracym�?

Evaluation_layers/loss�#�@
#
Evaluation_layers/accuracy_1m�?�]�u       ��Ax	��"s_�A�*g
!
Evaluation_layers/accuracyr�?

Evaluation_layers/loss)%�@
#
Evaluation_layers/accuracy_1r�?��u       ��Ax	2#s_�A�*g
!
Evaluation_layers/accuracyz�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1z�?�v��u       ��Ax	1#s_�A�*g
!
Evaluation_layers/accuracyt�?

Evaluation_layers/lossr�@
#
Evaluation_layers/accuracy_1t�?(�u       ��Ax	��#s_�A�*g
!
Evaluation_layers/accuracyv�?

Evaluation_layers/loss�	�@
#
Evaluation_layers/accuracy_1v�?P���u       ��Ax	��%#s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1��?[}�u       ��Ax	�,#s_�A�*g
!
Evaluation_layers/accuracy~�?

Evaluation_layers/loss�D�@
#
Evaluation_layers/accuracy_1~�?�2�u       ��Ax	a�3#s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�u�@
#
Evaluation_layers/accuracy_1��?�J�u       ��Ax	��:#s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/lossy�@
#
Evaluation_layers/accuracy_1��?(��u       ��Ax	`pB#s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1��?D�`�u       ��Ax	\RI#s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss���@
#
Evaluation_layers/accuracy_1��?U6�u       ��Ax	�TP#s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss;0�@
#
Evaluation_layers/accuracy_1��?��u       ��Ax	K�e#s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/losshƽ@
#
Evaluation_layers/accuracy_1��?��Y�u       ��Ax	؈k#s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss-C�@
#
Evaluation_layers/accuracy_1�?j�Nu       ��Ax	93q#s_�A�*g
!
Evaluation_layers/accuracy��?

Evaluation_layers/loss�J�@
#
Evaluation_layers/accuracy_1��?&r�(u       ��Ax	��v#s_�A�*g
!
Evaluation_layers/accuracy�
?

Evaluation_layers/lossH;@
#
Evaluation_layers/accuracy_1�
?.yK�u       ��Ax	h�|#s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�@
#
Evaluation_layers/accuracy_1�?�[�@u       ��Ax	�/�#s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�?�m۩u       ��Ax	��#s_�A�*g
!
Evaluation_layers/accuracy�?

Evaluation_layers/loss�Y�@
#
Evaluation_layers/accuracy_1�?�}Yfu       ��Ax	:��#s_�A�*g
!
Evaluation_layers/accuracy�&?

Evaluation_layers/loss��@
#
Evaluation_layers/accuracy_1�&?ѽoMu       ��Ax	N4�#s_�A�*g
!
Evaluation_layers/accuracy�*?

Evaluation_layers/loss�Ѿ@
#
Evaluation_layers/accuracy_1�*?�Q�Wu       ��Ax	r�#s_�A�*g
!
Evaluation_layers/accuracy�&?

Evaluation_layers/lossu�@
#
Evaluation_layers/accuracy_1�&?�u�