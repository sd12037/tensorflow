       �K"	  @Σ^�Abrain.Event:2$��      �X�&	 �\Σ^�A"��
|
Input/PlaceholderPlaceholder* 
shape:��������� *
dtype0*+
_output_shapes
:��������� 
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
Flatten/ShapeShapeInput/Placeholder*
T0*
out_type0*
_output_shapes
:
]
Flatten/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
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
Flatten/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
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
Flatten/ReshapeReshapeInput/PlaceholderFlatten/concat*
Tshape0*(
_output_shapes
:����������*
T0
f
!classification_layers/PlaceholderPlaceholder*
shape:*
dtype0*
_output_shapes
:
�
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"�      *
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
seed2 *
T0*

seed *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�
�
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�
�
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0
�
-classification_layers/dense_last/dense/kernel
VariableV2*
shared_name *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
	container *
shape:	�*
dtype0*
_output_shapes
:	�
�
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes
:	�
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�
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
-classification_layers/dense_last/dense/MatMulMatMulFlatten/Reshape2classification_layers/dense_last/dense/kernel/read*
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
classification_layers/SoftmaxSoftmax.classification_layers/dense_last/dense/BiasAdd*'
_output_shapes
:���������*
T0
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

Tidx0
f
$Evaluation_layers/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Evaluation_layers/ArgMax_1ArgMaxTarget/Placeholder$Evaluation_layers/ArgMax_1/dimension*

Tidx0*
T0*#
_output_shapes
:���������
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
Evaluation_layers/accracy/ConstConst*
valueB: *
_output_shapes
:*
dtype0
�
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
�
Evaluation_layers/accuracyScalarSummaryEvaluation_layers/accuracy/tagsEvaluation_layers/accracy/Mean*
_output_shapes
: *
T0
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
-gradients/Evaluation_layers/Mean_grad/ReshapeReshapegradients/Fill3gradients/Evaluation_layers/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
+gradients/Evaluation_layers/Mean_grad/ShapeShapeEvaluation_layers/Neg*
out_type0*
_output_shapes
:*
T0
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
-gradients/Evaluation_layers/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
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
(gradients/Evaluation_layers/Neg_grad/NegNeg-gradients/Evaluation_layers/Mean_grad/truediv*
T0*#
_output_shapes
:���������
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
,gradients/Evaluation_layers/Sum_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
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
*gradients/Evaluation_layers/Sum_grad/rangeRange0gradients/Evaluation_layers/Sum_grad/range/start)gradients/Evaluation_layers/Sum_grad/Size0gradients/Evaluation_layers/Sum_grad/range/delta*
_output_shapes
:*

Tidx0
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
T0*
N*#
_output_shapes
:���������
p
.gradients/Evaluation_layers/Sum_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
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
,gradients/Evaluation_layers/mul_grad/ReshapeReshape(gradients/Evaluation_layers/mul_grad/Sum*gradients/Evaluation_layers/mul_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
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
.gradients/Evaluation_layers/mul_grad/Reshape_1Reshape*gradients/Evaluation_layers/mul_grad/Sum_1,gradients/Evaluation_layers/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
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
Dgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/Evaluation_layers/clip_by_value_grad/Shape6gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
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
T0*
Tshape0*'
_output_shapes
:���������
�
4gradients/Evaluation_layers/clip_by_value_grad/Sum_1Sum7gradients/Evaluation_layers/clip_by_value_grad/Select_1Fgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1Reshape4gradients/Evaluation_layers/clip_by_value_grad/Sum_16gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
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
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1*
_output_shapes
: *
T0
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
out_type0*
_output_shapes
:*
T0
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
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1Reshape<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
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
Qgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1H^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: 
�
0gradients/classification_layers/Softmax_grad/mulMulOgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependencyclassification_layers/Softmax*'
_output_shapes
:���������*
T0
�
Bgradients/classification_layers/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
0gradients/classification_layers/Softmax_grad/SumSum0gradients/classification_layers/Softmax_grad/mulBgradients/classification_layers/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:���������*
T0*
	keep_dims( *

Tidx0
�
:gradients/classification_layers/Softmax_grad/Reshape/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*
Tshape0*'
_output_shapes
:���������*
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
Xgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradO^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*\
_classR
PNloc:@gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
Cgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulMatMulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency2classification_layers/dense_last/dense/kernel/read*
transpose_b(*(
_output_shapes
:����������*
transpose_a( *
T0
�
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMulFlatten/ReshapeVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	�*
transpose_a(
�
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1*
_output_shapes
:	�*
T0
�
beta1_power/initial_valueConst*
valueB
 *fff?*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
dtype0*
_output_shapes
: 
�
beta1_power
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
shape: *
shared_name 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
beta1_power/readIdentitybeta1_power*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: 
�
beta2_power/initial_valueConst*
valueB
 *w�?*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
dtype0
�
beta2_power
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
shape: *
shared_name 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes
: 
�
beta2_power/readIdentitybeta2_power*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: 
�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB	�*    *
_output_shapes
:	�*
dtype0
�
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
shape:	�*
shared_name 
�
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0
�
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB	�*    *
_output_shapes
:	�*
dtype0
�
4classification_layers/dense_last/dense/kernel/Adam_1
VariableV2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
shape:	�*
dtype0*
shared_name *
	container 
�
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0
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
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:
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
7classification_layers/dense_last/dense/bias/Adam_1/readIdentity2classification_layers/dense_last/dense/bias/Adam_1*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
_output_shapes
:*
T0
W
Adam/learning_rateConst*
valueB
 *o�:*
_output_shapes
: *
dtype0
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
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
CAdam/update_classification_layers/dense_last/dense/kernel/ApplyAdam	ApplyAdam-classification_layers/dense_last/dense/kernel2classification_layers/dense_last/dense/kernel/Adam4classification_layers/dense_last/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0*
use_nesterov( *
use_locking( 
�
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
�
Adam/mulMulbeta1_power/read
Adam/beta1D^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
T0
�
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2D^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes
: 
�
AdamNoOpD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�
initNoOp5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign"=m�*g�      �Y�	��]Σ^�AJ��
��
9
Add
x"T
y"T
z"T"
Ttype:
2	
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
shared_namestring �*1.2.12v1.2.0-5-g435cdfc��
|
Input/PlaceholderPlaceholder*+
_output_shapes
:��������� * 
shape:��������� *
dtype0
u
Target/PlaceholderPlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
g
"controll_normalization/PlaceholderPlaceholder*
_output_shapes
:*
shape:*
dtype0

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
ExpandDimsFlatten/ProdFlatten/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
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
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"�      *
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
Qclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddevConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
Zclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalPclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shape*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0*
dtype0*
seed2 *

seed 
�
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0
�
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0
�
-classification_layers/dense_last/dense/kernel
VariableV2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
shape:	�*
dtype0*
shared_name *
	container 
�
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes
:	�
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
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
shape:*
_output_shapes
:*
shared_name *>
_class4
20loc:@classification_layers/dense_last/dense/bias*
dtype0*
	container 
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
-classification_layers/dense_last/dense/MatMulMatMulFlatten/Reshape2classification_layers/dense_last/dense/kernel/read*
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
Evaluation_layers/LogLogEvaluation_layers/clip_by_value*'
_output_shapes
:���������*
T0
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
Evaluation_layers/accracy/MeanMeanEvaluation_layers/accracy/CastEvaluation_layers/accracy/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
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
gradients/ConstConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
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
-gradients/Evaluation_layers/Mean_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
�
,gradients/Evaluation_layers/Mean_grad/Prod_1Prod-gradients/Evaluation_layers/Mean_grad/Shape_2-gradients/Evaluation_layers/Mean_grad/Const_1*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
q
/gradients/Evaluation_layers/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
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
0gradients/Evaluation_layers/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
r
0gradients/Evaluation_layers/Sum_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
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
2gradients/Evaluation_layers/Sum_grad/DynamicStitchDynamicStitch*gradients/Evaluation_layers/Sum_grad/range(gradients/Evaluation_layers/Sum_grad/mod*gradients/Evaluation_layers/Sum_grad/Shape)gradients/Evaluation_layers/Sum_grad/Fill*
T0*
N*#
_output_shapes
:���������
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
*gradients/Evaluation_layers/mul_grad/Sum_1Sum*gradients/Evaluation_layers/mul_grad/mul_1<gradients/Evaluation_layers/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
.gradients/Evaluation_layers/mul_grad/Reshape_1Reshape*gradients/Evaluation_layers/mul_grad/Sum_1,gradients/Evaluation_layers/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:���������*
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
2gradients/Evaluation_layers/clip_by_value_grad/SumSum5gradients/Evaluation_layers/clip_by_value_grad/SelectDgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
6gradients/Evaluation_layers/clip_by_value_grad/ReshapeReshape2gradients/Evaluation_layers/clip_by_value_grad/Sum4gradients/Evaluation_layers/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
4gradients/Evaluation_layers/clip_by_value_grad/Sum_1Sum7gradients/Evaluation_layers/clip_by_value_grad/Select_1Fgradients/Evaluation_layers/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1Reshape4gradients/Evaluation_layers/clip_by_value_grad/Sum_16gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
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
Igradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency_1Identity8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*K
_classA
?=loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape_1*
_output_shapes
: *
T0
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/ShapeShapeclassification_layers/Softmax*
out_type0*
_output_shapes
:*
T0
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2ShapeGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency*
out_type0*
_output_shapes
:*
T0
�
Bgradients/Evaluation_layers/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
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
Lgradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
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
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1Reshape<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
Tshape0*
_output_shapes
: *
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
Qgradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1H^gradients/Evaluation_layers/clip_by_value/Minimum_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: 
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
valueB"����   *
dtype0*
_output_shapes
:
�
4gradients/classification_layers/Softmax_grad/ReshapeReshape0gradients/classification_layers/Softmax_grad/Sum:gradients/classification_layers/Softmax_grad/Reshape/shape*
Tshape0*'
_output_shapes
:���������*
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
Vgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependencyIdentity2gradients/classification_layers/Softmax_grad/mul_1O^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/classification_layers/Softmax_grad/mul_1*'
_output_shapes
:���������
�
Xgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency_1IdentityIgradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGradO^gradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/group_deps*\
_classR
PNloc:@gradients/classification_layers/dense_last/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
Cgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulMatMulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency2classification_layers/dense_last/dense/kernel/read*
transpose_b(*(
_output_shapes
:����������*
transpose_a( *
T0
�
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMulFlatten/ReshapeVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
_output_shapes
:	�*
transpose_a(*
T0
�
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1*
_output_shapes
:	�*
T0
�
beta1_power/initial_valueConst*
valueB
 *fff?*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
dtype0
�
beta1_power
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
shape: *
shared_name 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes
: 
�
beta1_power/readIdentitybeta1_power*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: 
�
beta2_power/initial_valueConst*
valueB
 *w�?*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
dtype0
�
beta2_power
VariableV2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
beta2_power/readIdentitybeta2_power*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: 
�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB	�*    *
_output_shapes
:	�*
dtype0
�
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*
shape:	�*
_output_shapes
:	�*
shared_name *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
dtype0*
	container 
�
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
validate_shape(*
_output_shapes
:	�
�
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�
�
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB	�*    *
_output_shapes
:	�*
dtype0
�
4classification_layers/dense_last/dense/kernel/Adam_1
VariableV2*
shape:	�*
_output_shapes
:	�*
shared_name *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
dtype0*
	container 
�
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0*
validate_shape(*
use_locking(
�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0
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
valueB*    *
_output_shapes
:*
dtype0
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
use_locking(*
T0*>
_class4
20loc:@classification_layers/dense_last/dense/bias*
validate_shape(*
_output_shapes
:
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
 *o�:*
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
CAdam/update_classification_layers/dense_last/dense/kernel/ApplyAdam	ApplyAdam-classification_layers/dense_last/dense/kernel2classification_layers/dense_last/dense/kernel/Adam4classification_layers/dense_last/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
:	�*
T0*
use_nesterov( *
use_locking( 
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
�
Adam/mulMulbeta1_power/read
Adam/beta1D^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
T0
�
Adam/AssignAssignbeta1_powerAdam/mul*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking( 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2D^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
T0
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking( 
�
AdamNoOpD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�
initNoOp5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign""�
	variables��
�
/classification_layers/dense_last/dense/kernel:04classification_layers/dense_last/dense/kernel/Assign4classification_layers/dense_last/dense/kernel/read:0
�
-classification_layers/dense_last/dense/bias:02classification_layers/dense_last/dense/bias/Assign2classification_layers/dense_last/dense/bias/read:0
7
beta1_power:0beta1_power/Assignbeta1_power/read:0
7
beta2_power:0beta2_power/Assignbeta2_power/read:0
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
Evaluation_layers/accuracy_1:0"�
trainable_variables��
�
/classification_layers/dense_last/dense/kernel:04classification_layers/dense_last/dense/kernel/Assign4classification_layers/dense_last/dense/kernel/read:0
�
-classification_layers/dense_last/dense/bias:02classification_layers/dense_last/dense/bias/Assign2classification_layers/dense_last/dense/bias/read:0"
train_op

Adam���r       %:�	�GvΣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Te��t       _gs�	�|Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?g��gt       _gs�	���Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Sxt       _gs�	�ӆΣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?(�:t       _gs�	m�Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�%�?t       _gs�	�ёΣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?=~?�t       _gs�	��Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�I�9t       _gs�	�ԜΣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?&�B�t       _gs�	��Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�#t       _gs�	���Σ^�A	*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?����t       _gs�	��Σ^�A
*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?����t       _gs�	���Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��O�t       _gs�	0�Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?4���t       _gs�	Q�Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?ZT�At       _gs�	<��Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?N�t       _gs�	r��Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��~t       _gs�	�h�Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�ۥ�t       _gs�	���Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���jt       _gs�	Ʊ�Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���4t       _gs�	��Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�cRut       _gs�	w��Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?7n��t       _gs�	e�Σ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�?=t       _gs�	Oϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�v�t       _gs�	��
ϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��at       _gs�	��ϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��Vt       _gs�	Goϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?!0�t       _gs�	�:ϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�jDt       _gs�	��!ϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��t       _gs�	��'ϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?mQ�;t       _gs�	� .ϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���t       _gs�	��Cϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��t       _gs�	�Iϣ^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?&�C�t       _gs�	�YOϣ^�A *g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���dt       _gs�	*jUϣ^�A!*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��R�t       _gs�	Lz[ϣ^�A"*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�ػMt       _gs�	2raϣ^�A#*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?ń��t       _gs�	��fϣ^�A$*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Uz�\t       _gs�	m�lϣ^�A%*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?zv�t       _gs�	�9rϣ^�A&*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?P��Pt       _gs�	�xϣ^�A'*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�t�ht       _gs�	��ϣ^�A(*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?:H�t       _gs�	�R�ϣ^�A)*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?g�G�t       _gs�	8�ϣ^�A**g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?<x��t       _gs�	8��ϣ^�A+*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�%�t       _gs�	e;�ϣ^�A,*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��jt       _gs�	���ϣ^�A-*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��d�t       _gs�	}��ϣ^�A.*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?=]�t       _gs�	�%�ϣ^�A/*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?g$H�t       _gs�	�[�ϣ^�A0*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?iG�t       _gs�	��ϣ^�A1*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�}Ajt       _gs�	Ջ�ϣ^�A2*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��Wt       _gs�	�F�ϣ^�A3*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Xc1t       _gs�	w��ϣ^�A4*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�&N-t       _gs�	f[�ϣ^�A5*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Zj�t       _gs�	��ϣ^�A6*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?O\jt       _gs�	y��ϣ^�A7*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�H�Yt       _gs�	�У^�A8*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?e�t       _gs�	b}У^�A9*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��t       _gs�	E�У^�A:*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��ݤt       _gs�	O= У^�A;*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��t       _gs�	0�6У^�A<*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�gg�t       _gs�	��>У^�A=*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?#=�t       _gs�	[�FУ^�A>*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��pIt       _gs�	v�NУ^�A?*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Bt       _gs�	�wVУ^�A@*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?i��Rt       _gs�	+�^У^�AA*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?wt       _gs�	�fУ^�AB*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�C�t       _gs�	!�oУ^�AC*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��t       _gs�	Z7yУ^�AD*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�?&t       _gs�	f��У^�AE*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�,U�t       _gs�	��У^�AF*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?z>.t       _gs�	��У^�AG*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?u��(t       _gs�	-��У^�AH*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��t       _gs�	8߾У^�AI*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�ylDt       _gs�	Ŝ�У^�AJ*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?����t       _gs�	ѹ�У^�AK*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Z%t       _gs�	�M�У^�AL*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�8	�t       _gs�	�2�У^�AM*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?K2z�t       _gs�	���У^�AN*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?_�k�t       _gs�	��У^�AO*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?S�t       _gs�	��ѣ^�AP*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?AG<�t       _gs�	=6ѣ^�AQ*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Z�t       _gs�	�Fѣ^�AR*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���t       _gs�	zo$ѣ^�AS*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?,ӻ�t       _gs�	�+ѣ^�AT*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?.�t       _gs�	�4ѣ^�AU*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�z,�t       _gs�	��<ѣ^�AV*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Zn_t       _gs�	��Eѣ^�AW*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���Ht       _gs�	�lNѣ^�AX*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Ng�t       _gs�	�Vѣ^�AY*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�jv�t       _gs�	ksѣ^�AZ*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��$t       _gs�	gzѣ^�A[*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?S�}t       _gs�	���ѣ^�A\*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�ۆVt       _gs�	��ѣ^�A]*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�J��t       _gs�	�1�ѣ^�A^*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�P��t       _gs�	�ѣ^�A_*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���t       _gs�	n��ѣ^�A`*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��*t       _gs�	�l�ѣ^�Aa*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?;�:t       _gs�	�u�ѣ^�Ab*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���t       _gs�	eK�ѣ^�Ac*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��f�t       _gs�	�<�ѣ^�Ad*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���Ht       _gs�	l��ѣ^�Ae*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�ɘ�t       _gs�	���ѣ^�Af*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��t       _gs�	j��ѣ^�Ag*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�lt       _gs�	���ѣ^�Ah*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Y��t       _gs�	�]�ѣ^�Ai*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?,�X$t       _gs�	���ѣ^�Aj*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?`�A�t       _gs�	��ѣ^�Ak*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?v�%2t       _gs�	pң^�Al*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?GNt       _gs�	��	ң^�Am*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?!��t       _gs�	=xң^�An*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?e�K�t       _gs�	�. ң^�Ao*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�P�t       _gs�	��%ң^�Ap*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Tt       _gs�	Y�+ң^�Aq*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?l��t       _gs�	��2ң^�Ar*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?ˬ�t       _gs�	.A9ң^�As*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?9l
wt       _gs�	��?ң^�At*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�.�Ot       _gs�	��Eң^�Au*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�l;�t       _gs�	Kң^�Av*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�^C�t       _gs�	�UQң^�Aw*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?!ԧ�t       _gs�	{�aң^�Ax*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?d�6/t       _gs�	x�gң^�Ay*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��m�t       _gs�	'6mң^�Az*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?9ԙ�t       _gs�	�ksң^�A{*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�nHFt       _gs�	ځyң^�A|*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�d�t       _gs�	��ң^�A}*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?KM)�t       _gs�	Jn�ң^�A~*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��G�t       _gs�		 �ң^�A*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�$�u       ��Ax	+�ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?H3�Zu       ��Ax	��ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?(�u       ��Ax	�ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��W?u       ��Ax	دң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?U��,u       ��Ax	��ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?����u       ��Ax	-��ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?tV�u       ��Ax	�:�ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��gu       ��Ax	���ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�ju       ��Ax	?��ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��u       ��Ax	sk�ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Cutu       ��Ax	�1�ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��U�u       ��Ax	���ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��2u       ��Ax	J��ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?ٖ̈́u       ��Ax	3
�ң^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�3�@u       ��Ax	*�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�g�u       ��Ax	�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?_���u       ��Ax	�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���Yu       ��Ax	��ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?) Mu       ��Ax	@eӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?˹��u       ��Ax	Z�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?� ;$u       ��Ax	��#ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�2}u       ��Ax	��)ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?"&��u       ��Ax	m#=ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�0�1u       ��Ax	�,Cӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?'��u       ��Ax	�#Iӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�{��u       ��Ax	IeOӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�	�(u       ��Ax	7\Vӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?~��!u       ��Ax	s$]ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1??�`�u       ��Ax	 �bӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Lu       ��Ax	�Fhӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�~�u       ��Ax	�@nӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�/zWu       ��Ax	GNtӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��}�u       ��Ax	���ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?hw�u       ��Ax	�΋ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?:v�u       ��Ax	7�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?����u       ��Ax	]A�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?����u       ��Ax	Aq�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�|ku       ��Ax	��ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?2B|vu       ��Ax	���ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?+)�?u       ��Ax	6o�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1? r�;u       ��Ax	MI�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?k��lu       ��Ax	v,�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	$��ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	�H�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	t5�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�� �u       ��Ax	��ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1??6S}u       ��Ax	
�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��xu       ��Ax	�<�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?DNu       ��Ax	A<�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?y�'u       ��Ax	i��ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�E�ru       ��Ax	^�ӣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��+Gu       ��Ax	 �ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���$u       ��Ax	�Wԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?d�W(u       ��Ax	9�ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�?Z�u       ��Ax	�o%ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?3�|�u       ��Ax	U+ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Ë��u       ��Ax	O�0ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�a�u       ��Ax	��8ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?5f��u       ��Ax	p%?ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��YOu       ��Ax	�Dԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��z�u       ��Ax	��Jԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?1���u       ��Ax	lPԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��u       ��Ax	��_ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?۫�u       ��Ax	Oeԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Z�A�u       ��Ax	"kԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��u       ��Ax	A�pԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?CA8�u       ��Ax	E�vԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�z��u       ��Ax	,u|ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Ǣ�u       ��Ax	I��ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�:_u       ��Ax	��ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?V(i�u       ��Ax	B��ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Nv��u       ��Ax	ݖ�ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�	!u       ��Ax	�تԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�t��u       ��Ax	�ްԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��V�u       ��Ax	���ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?'̂u       ��Ax	�(�ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��5�u       ��Ax	z�ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�J��u       ��Ax	m��ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���!u       ��Ax	���ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?ri�'u       ��Ax	ԝ�ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�58u       ��Ax	��ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?)��u       ��Ax	A��ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?en�u       ��Ax	B.�ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?F�u       ��Ax	��ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��u       ��Ax	��ԣ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?o�Uu       ��Ax	��գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?@�:�u       ��Ax	o�գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�H�u       ��Ax	�}գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?C�u       ��Ax	p�գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Z�u       ��Ax	�'գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?$X�u       ��Ax	!�/գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�̘u       ��Ax	�k7գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?:��-u       ��Ax	iyLգ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	�ITգ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?e���u       ��Ax	{�]գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?>�nu       ��Ax	m�eգ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?<���u       ��Ax	��mգ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��%u       ��Ax	�uգ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Ȣk�u       ��Ax	 Q~գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?b��nu       ��Ax	R��գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?J���u       ��Ax	\�գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?{�۷u       ��Ax	���գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�F��u       ��Ax	4(�գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Wά�u       ��Ax	�I�գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?M��1u       ��Ax	�j�գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��hEu       ��Ax	Y��գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��£u       ��Ax	���գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���]u       ��Ax	`��գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�'q�u       ��Ax	c[�գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?40
u       ��Ax	pN�գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�^u       ��Ax	c��գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�́?u       ��Ax	M"�գ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?a��u       ��Ax	7B
֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?W��wu       ��Ax	U֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��>=u       ��Ax	�R֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?n,L-u       ��Ax	#֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Dp}u       ��Ax		U&֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?j]��u       ��Ax	�e-֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�yu       ��Ax	��4֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	e�;֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?� u       ��Ax	�nC֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��lku       ��Ax	��J֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?b�?u       ��Ax	�_֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�(��u       ��Ax	��g֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��u       ��Ax	^o֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�^u       ��Ax	��v֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?.�3u       ��Ax	��}֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax		:�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?O��u       ��Ax	��֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	�Д֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��<u       ��Ax	�Ǜ֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���{u       ��Ax	pߢ֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�\�u       ��Ax	n�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?
t�u       ��Ax	�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Y{�u       ��Ax	E2�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?'X'*u       ��Ax		O�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���.u       ��Ax	�g�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�`��u       ��Ax	�A�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�h:�u       ��Ax	T�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?RH��u       ��Ax	GP�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��l1u       ��Ax	�x�֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�.u       ��Ax	���֣^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?E�7u       ��Ax	��ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�hnXu       ��Ax	vף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?@�7u       ��Ax	�Tף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�+��u       ��Ax	�%ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	Q�ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?i���u       ��Ax	"$ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?,���u       ��Ax	��)ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1? U��u       ��Ax	Y�/ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?h1du       ��Ax	 U5ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?I�_u       ��Ax	P�:ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�)��u       ��Ax	�Kף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?,���u       ��Ax	�Rף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?K��u       ��Ax	.�Wף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?'��/u       ��Ax	=�^ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�du       ��Ax	�idף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?
g��u       ��Ax	�?jף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?[��u       ��Ax	�Zpף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��u       ��Ax	�"vף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�oG�u       ��Ax	�>|ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?Z4�u       ��Ax	�:�ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	�(�ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?$zQu       ��Ax	�|�ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?U7^u       ��Ax	��ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���;u       ��Ax	,5�ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?;���u       ��Ax	#��ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?᫸:u       ��Ax	Vűף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?C�Vu       ��Ax	k��ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?^��u       ��Ax	���ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�Ƴu       ��Ax	,6�ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?_��u       ��Ax	��ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���u       ��Ax	�ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?q�o�u       ��Ax	Ȣ�ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?&?2u       ��Ax	-��ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?pZ�u       ��Ax	��ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?qTDHu       ��Ax	��ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?]�EIu       ��Ax	�n�ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��QDu       ��Ax	5��ף^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��Auu       ��Ax	M�أ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�+�1u       ��Ax	�9أ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?b�۹u       ��Ax	��أ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?�C�Tu       ��Ax	�أ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?\P�tu       ��Ax	��$أ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?���\u       ��Ax	��*أ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��u       ��Ax	�1أ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?��!u       ��Ax	Ir7أ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?\���u       ��Ax	k�<أ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?,a��u       ��Ax	�-Bأ^�A�*g
!
Evaluation_layers/accuracy�1?

Evaluation_layers/loss�!�@
#
Evaluation_layers/accuracy_1�1?I���