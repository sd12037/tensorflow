       �K"	  ���^�Abrain.Event:2�\O��      D�	��Տ�^�A"��
t
Input/PlaceholderPlaceholder*
dtype0*
shape:���������*'
_output_shapes
:���������
u
Target/PlaceholderPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
f
!classification_layers/PlaceholderPlaceholder*
_output_shapes
:*
dtype0*
shape:
�
Lclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB"      
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
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*

seed *
T0*
seed2 
�
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*
T0*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
)classification_layers/dense0/dense/kernel
VariableV2*
shared_name *
shape
:*
_output_shapes

:*<
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

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
9classification_layers/dense0/dense/bias/Initializer/zerosConst*
_output_shapes
:*
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB*    
�
'classification_layers/dense0/dense/bias
VariableV2*
_output_shapes
:*
dtype0*
shape:*
	container *:
_class0
.,loc:@classification_layers/dense0/dense/bias*
shared_name 
�
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*
_output_shapes
:*
validate_shape(*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking(
�
,classification_layers/dense0/dense/bias/readIdentity'classification_layers/dense0/dense/bias*
T0*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
)classification_layers/dense0/dense/MatMulMatMulInput/Placeholder.classification_layers/dense0/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
�
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*'
_output_shapes
:���������*
data_formatNHWC*
T0
�
!classification_layers/dense0/ReluRelu*classification_layers/dense0/dense/BiasAdd*'
_output_shapes
:���������*
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
7classification_layers/dense0/dropout/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Aclassification_layers/dense0/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense0/dropout/Shape*
dtype0*

seed *
T0*'
_output_shapes
:���������*
seed2 
�
7classification_layers/dense0/dropout/random_uniform/subSub7classification_layers/dense0/dropout/random_uniform/max7classification_layers/dense0/dropout/random_uniform/min*
_output_shapes
: *
T0
�
7classification_layers/dense0/dropout/random_uniform/mulMulAclassification_layers/dense0/dropout/random_uniform/RandomUniform7classification_layers/dense0/dropout/random_uniform/sub*'
_output_shapes
:���������*
T0
�
3classification_layers/dense0/dropout/random_uniformAdd7classification_layers/dense0/dropout/random_uniform/mul7classification_layers/dense0/dropout/random_uniform/min*
T0*'
_output_shapes
:���������
�
(classification_layers/dense0/dropout/addAdd!classification_layers/Placeholder3classification_layers/dense0/dropout/random_uniform*
_output_shapes
:*
T0
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
(classification_layers/dense0/dropout/mulMul(classification_layers/dense0/dropout/div*classification_layers/dense0/dropout/Floor*
T0*'
_output_shapes
:���������
�
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"      
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
_output_shapes

:*
dtype0*
seed2 *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*

seed 
�
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes

:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
�
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*
T0*
_output_shapes

:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
-classification_layers/dense_last/dense/kernel
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
shared_name *
_output_shapes

:*
shape
:
�
4classification_layers/dense_last/dense/kernel/AssignAssign-classification_layers/dense_last/dense/kernelJclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal*
_output_shapes

:*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
_output_shapes

:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
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
	container *
shared_name *
dtype0*
shape:*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
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
transpose_b( *'
_output_shapes
:���������*
transpose_a( *
T0
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
'Evaluation_layers/Sum/reduction_indicesConst*
dtype0*
_output_shapes
:*
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
Evaluation_layers/ArgMaxArgMaxclassification_layers/Softmax"Evaluation_layers/ArgMax/dimension*#
_output_shapes
:���������*
T0*

Tidx0
f
$Evaluation_layers/ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
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
!Evaluation_layers/accuracy_1/tagsConst*
dtype0*
_output_shapes
: *-
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
*gradients/Evaluation_layers/Mean_grad/ProdProd-gradients/Evaluation_layers/Mean_grad/Shape_1+gradients/Evaluation_layers/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
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
?gradients/Evaluation_layers/mul_grad/tuple/control_dependency_1Identity.gradients/Evaluation_layers/mul_grad/Reshape_16^gradients/Evaluation_layers/mul_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*A
_class7
53loc:@gradients/Evaluation_layers/mul_grad/Reshape_1
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
Ggradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependencyIdentity6gradients/Evaluation_layers/clip_by_value_grad/Reshape@^gradients/Evaluation_layers/clip_by_value_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*I
_class?
=;loc:@gradients/Evaluation_layers/clip_by_value_grad/Reshape
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
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2ShapeGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency*
T0*
_output_shapes
:*
out_type0
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
:���������*
transpose_a( *
T0
�
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense0/dropout/mulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
�
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
T0*'
_output_shapes
:���������*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul
�
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:*X
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
?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1Shape*classification_layers/dense0/dropout/Floor*
T0*#
_output_shapes
:���������*
out_type0
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
:���������*
Tshape0
�
;gradients/classification_layers/dense0/dropout/div_grad/NegNeg!classification_layers/dense0/Relu*'
_output_shapes
:���������*
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
=gradients/classification_layers/dense0/dropout/div_grad/Sum_1Sum;gradients/classification_layers/dense0/dropout/div_grad/mulOgradients/classification_layers/dense0/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
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
:���������*R
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
:���������
�
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGrad9gradients/classification_layers/dense0/Relu_grad/ReluGrad*
_output_shapes
:*
data_formatNHWC*
T0
�
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp:^gradients/classification_layers/dense0/Relu_grad/ReluGradF^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentity9gradients/classification_layers/dense0/Relu_grad/ReluGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������*L
_classB
@>loc:@gradients/classification_layers/dense0/Relu_grad/ReluGrad*
T0
�
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense0/dense/kernel/read*
transpose_b(*'
_output_shapes
:���������*
transpose_a( *
T0
�
Agradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1MatMulInput/PlaceholderRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
�
Igradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
�
Qgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul*
T0
�
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1*
T0
�
beta1_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
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
beta1_power/readIdentitybeta1_power*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
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
	container *
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
shared_name *
_output_shapes
: *
shape: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_output_shapes
: *
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking(
�
beta2_power/readIdentitybeta2_power*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
@classification_layers/dense0/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes

:*
dtype0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB*    
�
.classification_layers/dense0/dense/kernel/Adam
VariableV2*
shared_name *
shape
:*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
	container 
�
5classification_layers/dense0/dense/kernel/Adam/AssignAssign.classification_layers/dense0/dense/kernel/Adam@classification_layers/dense0/dense/kernel/Adam/Initializer/zeros*
_output_shapes

:*
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking(
�
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*
T0*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB*    
�
0classification_layers/dense0/dense/kernel/Adam_1
VariableV2*
shared_name *
shape
:*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
dtype0*
	container 
�
7classification_layers/dense0/dense/kernel/Adam_1/AssignAssign0classification_layers/dense0/dense/kernel/Adam_1Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
5classification_layers/dense0/dense/kernel/Adam_1/readIdentity0classification_layers/dense0/dense/kernel/Adam_1*
T0*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
>classification_layers/dense0/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB*    
�
,classification_layers/dense0/dense/bias/Adam
VariableV2*
shared_name *
shape:*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
dtype0*
	container 
�
3classification_layers/dense0/dense/bias/Adam/AssignAssign,classification_layers/dense0/dense/bias/Adam>classification_layers/dense0/dense/bias/Adam/Initializer/zeros*
_output_shapes
:*
validate_shape(*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking(
�
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0
�
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*
dtype0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB*    
�
.classification_layers/dense0/dense/bias/Adam_1
VariableV2*
	container *
shared_name *
dtype0*
shape:*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
validate_shape(*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking(
�
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0
�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes

:*
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB*    
�
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*
_output_shapes

:*
dtype0*
shape
:*
	container *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
shared_name 
�
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*
_output_shapes

:*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
�
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
T0*
_output_shapes

:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*
_output_shapes

:*
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB*    
�
4classification_layers/dense_last/dense/kernel/Adam_1
VariableV2*
_output_shapes

:*
dtype0*
shape
:*
	container *@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
shared_name 
�
;classification_layers/dense_last/dense/kernel/Adam_1/AssignAssign4classification_layers/dense_last/dense/kernel/Adam_1Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

:*
validate_shape(*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0*
use_locking(
�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*
_output_shapes

:*@
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
7classification_layers/dense_last/dense/bias/Adam/AssignAssign0classification_layers/dense_last/dense/bias/AdamBclassification_layers/dense_last/dense/bias/Adam/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
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

:*
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
:*
use_nesterov( *:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0*
use_locking( 
�
CAdam/update_classification_layers/dense_last/dense/kernel/ApplyAdam	ApplyAdam-classification_layers/dense_last/dense/kernel2classification_layers/dense_last/dense/kernel/Adam4classification_layers/dense_last/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonWgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1*
_output_shapes

:*
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
�
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
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
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*
_output_shapes
: *<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_output_shapes
: *
validate_shape(*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0*
use_locking( 
�
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign"4�Y	��      ��)	�Q׏�^�AJ��
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
shared_namestring �*1.2.12v1.2.0-5-g435cdfc��
t
Input/PlaceholderPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
u
Target/PlaceholderPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
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
valueB"      
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

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
Jclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulMulVclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/TruncatedNormalMclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
T0
�
Fclassification_layers/dense0/dense/kernel/Initializer/truncated_normalAddJclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mulKclassification_layers/dense0/dense/kernel/Initializer/truncated_normal/mean*
T0*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
)classification_layers/dense0/dense/kernel
VariableV2*
shared_name *
shape
:*
_output_shapes

:*<
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

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
.classification_layers/dense0/dense/kernel/readIdentity)classification_layers/dense0/dense/kernel*
T0*
_output_shapes

:*<
_class2
0.loc:@classification_layers/dense0/dense/kernel
�
9classification_layers/dense0/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB*    
�
'classification_layers/dense0/dense/bias
VariableV2*
	container *
shared_name *
dtype0*
shape:*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
.classification_layers/dense0/dense/bias/AssignAssign'classification_layers/dense0/dense/bias9classification_layers/dense0/dense/bias/Initializer/zeros*
use_locking(*
validate_shape(*
T0*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias
�
,classification_layers/dense0/dense/bias/readIdentity'classification_layers/dense0/dense/bias*
_output_shapes
:*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
T0
�
)classification_layers/dense0/dense/MatMulMatMulInput/Placeholder.classification_layers/dense0/dense/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
�
*classification_layers/dense0/dense/BiasAddBiasAdd)classification_layers/dense0/dense/MatMul,classification_layers/dense0/dense/bias/read*'
_output_shapes
:���������*
data_formatNHWC*
T0
�
!classification_layers/dense0/ReluRelu*classification_layers/dense0/dense/BiasAdd*'
_output_shapes
:���������*
T0
�
*classification_layers/dense0/dropout/ShapeShape!classification_layers/dense0/Relu*
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
 *  �?
�
Aclassification_layers/dense0/dropout/random_uniform/RandomUniformRandomUniform*classification_layers/dense0/dropout/Shape*'
_output_shapes
:���������*
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
:���������*
T0
�
3classification_layers/dense0/dropout/random_uniformAdd7classification_layers/dense0/dropout/random_uniform/mul7classification_layers/dense0/dropout/random_uniform/min*
T0*'
_output_shapes
:���������
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
:���������*
T0
�
Pclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB"      
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
seed2 *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*

seed *
_output_shapes

:*
T0
�
Nclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulMulZclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/TruncatedNormalQclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/stddev*
_output_shapes

:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
T0
�
Jclassification_layers/dense_last/dense/kernel/Initializer/truncated_normalAddNclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mulOclassification_layers/dense_last/dense/kernel/Initializer/truncated_normal/mean*
T0*
_output_shapes

:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
-classification_layers/dense_last/dense/kernel
VariableV2*
shared_name *
shape
:*
_output_shapes

:*@
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

:*@
_class6
42loc:@classification_layers/dense_last/dense/kernel
�
2classification_layers/dense_last/dense/kernel/readIdentity-classification_layers/dense_last/dense/kernel*
T0*
_output_shapes

:*@
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
VariableV2*
	container *
shared_name *
dtype0*
shape:*
_output_shapes
:*>
_class4
20loc:@classification_layers/dense_last/dense/bias
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
Evaluation_layers/mulMulTarget/PlaceholderEvaluation_layers/Log*
T0*'
_output_shapes
:���������
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
$Evaluation_layers/ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
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
 *  �?
Y
gradients/FillFillgradients/Shapegradients/Const*
_output_shapes
: *
T0
}
3gradients/Evaluation_layers/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
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
*gradients/Evaluation_layers/Mean_grad/TileTile-gradients/Evaluation_layers/Mean_grad/Reshape+gradients/Evaluation_layers/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
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
�
*gradients/Evaluation_layers/Mean_grad/ProdProd-gradients/Evaluation_layers/Mean_grad/Shape_1+gradients/Evaluation_layers/Mean_grad/Const*
_output_shapes
: *
T0*
	keep_dims( *

Tidx0
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
2gradients/Evaluation_layers/Sum_grad/DynamicStitchDynamicStitch*gradients/Evaluation_layers/Sum_grad/range(gradients/Evaluation_layers/Sum_grad/mod*gradients/Evaluation_layers/Sum_grad/Shape)gradients/Evaluation_layers/Sum_grad/Fill*#
_output_shapes
:���������*
T0*
N
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
=gradients/Evaluation_layers/mul_grad/tuple/control_dependencyIdentity,gradients/Evaluation_layers/mul_grad/Reshape6^gradients/Evaluation_layers/mul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Evaluation_layers/mul_grad/Reshape*'
_output_shapes
:���������
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
8gradients/Evaluation_layers/clip_by_value_grad/Reshape_1Reshape4gradients/Evaluation_layers/clip_by_value_grad/Sum_16gradients/Evaluation_layers/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
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
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_2ShapeGgradients/Evaluation_layers/clip_by_value_grad/tuple/control_dependency*
out_type0*
_output_shapes
:*
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
>gradients/Evaluation_layers/clip_by_value/Minimum_grad/ReshapeReshape:gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1Sum?gradients/Evaluation_layers/clip_by_value/Minimum_grad/Select_1Ngradients/Evaluation_layers/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
�
@gradients/Evaluation_layers/clip_by_value/Minimum_grad/Reshape_1Reshape<gradients/Evaluation_layers/clip_by_value/Minimum_grad/Sum_1>gradients/Evaluation_layers/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
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
:���������*
transpose_a( 
�
Egradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1MatMul(classification_layers/dense0/dropout/mulVgradients/classification_layers/dense_last/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
�
Mgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_depsNoOpD^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMulF^gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1
�
Ugradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependencyIdentityCgradients/classification_layers/dense_last/dense/MatMul_grad/MatMulN^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*V
_classL
JHloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul*'
_output_shapes
:���������*
T0
�
Wgradients/classification_layers/dense_last/dense/MatMul_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1N^gradients/classification_layers/dense_last/dense/MatMul_grad/tuple/group_deps*X
_classN
LJloc:@gradients/classification_layers/dense_last/dense/MatMul_grad/MatMul_1*
_output_shapes

:*
T0
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
?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/mul_grad/Sum=gradients/classification_layers/dense0/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
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
Agradients/classification_layers/dense0/dropout/mul_grad/Reshape_1Reshape=gradients/classification_layers/dense0/dropout/mul_grad/Sum_1?gradients/classification_layers/dense0/dropout/mul_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0
�
Hgradients/classification_layers/dense0/dropout/mul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dropout/mul_grad/ReshapeB^gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1
�
Pgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dropout/mul_grad/ReshapeI^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*R
_classH
FDloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape*
_output_shapes
:*
T0
�
Rgradients/classification_layers/dense0/dropout/mul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dropout/mul_grad/Reshape_1I^gradients/classification_layers/dense0/dropout/mul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/classification_layers/dense0/dropout/mul_grad/Reshape_1*
_output_shapes
:
�
=gradients/classification_layers/dense0/dropout/div_grad/ShapeShape!classification_layers/dense0/Relu*
out_type0*
_output_shapes
:*
T0
�
?gradients/classification_layers/dense0/dropout/div_grad/Shape_1Shape!classification_layers/Placeholder*
out_type0*#
_output_shapes
:���������*
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
?gradients/classification_layers/dense0/dropout/div_grad/ReshapeReshape;gradients/classification_layers/dense0/dropout/div_grad/Sum=gradients/classification_layers/dense0/dropout/div_grad/Shape*
Tshape0*'
_output_shapes
:���������*
T0
�
;gradients/classification_layers/dense0/dropout/div_grad/NegNeg!classification_layers/dense0/Relu*
T0*'
_output_shapes
:���������
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
:���������
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
:���������
�
Egradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradBiasAddGrad9gradients/classification_layers/dense0/Relu_grad/ReluGrad*
_output_shapes
:*
T0*
data_formatNHWC
�
Jgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_depsNoOp:^gradients/classification_layers/dense0/Relu_grad/ReluGradF^gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad
�
Rgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependencyIdentity9gradients/classification_layers/dense0/Relu_grad/ReluGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*L
_classB
@>loc:@gradients/classification_layers/dense0/Relu_grad/ReluGrad*'
_output_shapes
:���������*
T0
�
Tgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1IdentityEgradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGradK^gradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/group_deps*X
_classN
LJloc:@gradients/classification_layers/dense0/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
�
?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulMatMulRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency.classification_layers/dense0/dense/kernel/read*
transpose_b(*'
_output_shapes
:���������*
transpose_a( *
T0
�
Agradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1MatMulInput/PlaceholderRgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
�
Igradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_depsNoOp@^gradients/classification_layers/dense0/dense/MatMul_grad/MatMulB^gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1
�
Qgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependencyIdentity?gradients/classification_layers/dense0/dense/MatMul_grad/MatMulJ^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul*'
_output_shapes
:���������
�
Sgradients/classification_layers/dense0/dense/MatMul_grad/tuple/control_dependency_1IdentityAgradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1J^gradients/classification_layers/dense0/dense/MatMul_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/classification_layers/dense0/dense/MatMul_grad/MatMul_1*
_output_shapes

:*
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
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
validate_shape(*
_output_shapes
: 
�
beta1_power/readIdentitybeta1_power*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
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
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
�
beta2_power/readIdentitybeta2_power*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: 
�
@classification_layers/dense0/dense/kernel/Adam/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
.classification_layers/dense0/dense/kernel/Adam
VariableV2*
shape
:*
_output_shapes

:*
shared_name *<
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

:
�
3classification_layers/dense0/dense/kernel/Adam/readIdentity.classification_layers/dense0/dense/kernel/Adam*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes

:
�
Bclassification_layers/dense0/dense/kernel/Adam_1/Initializer/zerosConst*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
valueB*    *
_output_shapes

:*
dtype0
�
0classification_layers/dense0/dense/kernel/Adam_1
VariableV2*
shape
:*
_output_shapes

:*
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

:
�
5classification_layers/dense0/dense/kernel/Adam_1/readIdentity0classification_layers/dense0/dense/kernel/Adam_1*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes

:*
T0
�
>classification_layers/dense0/dense/bias/Adam/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB*    *
_output_shapes
:*
dtype0
�
,classification_layers/dense0/dense/bias/Adam
VariableV2*
shape:*
_output_shapes
:*
shared_name *:
_class0
.,loc:@classification_layers/dense0/dense/bias*
dtype0*
	container 
�
3classification_layers/dense0/dense/bias/Adam/AssignAssign,classification_layers/dense0/dense/bias/Adam>classification_layers/dense0/dense/bias/Adam/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
1classification_layers/dense0/dense/bias/Adam/readIdentity,classification_layers/dense0/dense/bias/Adam*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:*
T0
�
@classification_layers/dense0/dense/bias/Adam_1/Initializer/zerosConst*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
.classification_layers/dense0/dense/bias/Adam_1
VariableV2*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:*
shape:*
dtype0*
shared_name *
	container 
�
5classification_layers/dense0/dense/bias/Adam_1/AssignAssign.classification_layers/dense0/dense/bias/Adam_1@classification_layers/dense0/dense/bias/Adam_1/Initializer/zeros*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:*
T0*
validate_shape(*
use_locking(
�
3classification_layers/dense0/dense/bias/Adam_1/readIdentity.classification_layers/dense0/dense/bias/Adam_1*
T0*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:
�
Dclassification_layers/dense_last/dense/kernel/Adam/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
2classification_layers/dense_last/dense/kernel/Adam
VariableV2*
	container *
dtype0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:*
shape
:*
shared_name 
�
9classification_layers/dense_last/dense/kernel/Adam/AssignAssign2classification_layers/dense_last/dense/kernel/AdamDclassification_layers/dense_last/dense/kernel/Adam/Initializer/zeros*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:*
T0*
validate_shape(*
use_locking(
�
7classification_layers/dense_last/dense/kernel/Adam/readIdentity2classification_layers/dense_last/dense/kernel/Adam*
T0*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:
�
Fclassification_layers/dense_last/dense/kernel/Adam_1/Initializer/zerosConst*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
4classification_layers/dense_last/dense/kernel/Adam_1
VariableV2*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:*
shape
:*
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

:
�
9classification_layers/dense_last/dense/kernel/Adam_1/readIdentity4classification_layers/dense_last/dense/kernel/Adam_1*@
_class6
42loc:@classification_layers/dense_last/dense/kernel*
_output_shapes

:*
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
 *o�:*
dtype0*
_output_shapes
: 
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
Adam/epsilonConst*
valueB
 *w�+2*
_output_shapes
: *
dtype0
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

:
�
=Adam/update_classification_layers/dense0/dense/bias/ApplyAdam	ApplyAdam'classification_layers/dense0/dense/bias,classification_layers/dense0/dense/bias/Adam.classification_layers/dense0/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonTgradients/classification_layers/dense0/dense/BiasAdd_grad/tuple/control_dependency_1*:
_class0
.,loc:@classification_layers/dense0/dense/bias*
_output_shapes
:*
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

:
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
�
Adam/mulMulbeta1_power/read
Adam/beta1@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0
�
Adam/AssignAssignbeta1_powerAdam/mul*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: *
T0*
validate_shape(*
use_locking( 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam*
T0*<
_class2
0.loc:@classification_layers/dense0/dense/kernel*
_output_shapes
: 
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
�
AdamNoOp@^Adam/update_classification_layers/dense0/dense/kernel/ApplyAdam>^Adam/update_classification_layers/dense0/dense/bias/ApplyAdamD^Adam/update_classification_layers/dense_last/dense/kernel/ApplyAdamB^Adam/update_classification_layers/dense_last/dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
�
initNoOp1^classification_layers/dense0/dense/kernel/Assign/^classification_layers/dense0/dense/bias/Assign5^classification_layers/dense_last/dense/kernel/Assign3^classification_layers/dense_last/dense/bias/Assign^beta1_power/Assign^beta2_power/Assign6^classification_layers/dense0/dense/kernel/Adam/Assign8^classification_layers/dense0/dense/kernel/Adam_1/Assign4^classification_layers/dense0/dense/bias/Adam/Assign6^classification_layers/dense0/dense/bias/Adam_1/Assign:^classification_layers/dense_last/dense/kernel/Adam/Assign<^classification_layers/dense_last/dense/kernel/Adam_1/Assign8^classification_layers/dense_last/dense/bias/Adam/Assign:^classification_layers/dense_last/dense/bias/Adam_1/Assign""�
	variables��
�
+classification_layers/dense0/dense/kernel:00classification_layers/dense0/dense/kernel/Assign0classification_layers/dense0/dense/kernel/read:0
�
)classification_layers/dense0/dense/bias:0.classification_layers/dense0/dense/bias/Assign.classification_layers/dense0/dense/bias/read:0
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
Evaluation_layers/accuracy_1:0"�
trainable_variables��
�
+classification_layers/dense0/dense/kernel:00classification_layers/dense0/dense/kernel/Assign0classification_layers/dense0/dense/kernel/read:0
�
)classification_layers/dense0/dense/bias:0.classification_layers/dense0/dense/bias/Assign.classification_layers/dense0/dense/bias/read:0
�
/classification_layers/dense_last/dense/kernel:04classification_layers/dense_last/dense/kernel/Assign4classification_layers/dense_last/dense/kernel/read:0
�
-classification_layers/dense_last/dense/bias:02classification_layers/dense_last/dense/bias/Assign2classification_layers/dense_last/dense/bias/read:0"
train_op

Adam��	�r       %:�	����^�A*g
!
Evaluation_layers/accuracy �?

Evaluation_layers/loss(�R?
#
Evaluation_layers/accuracy_1 �?޷�t       _gs�	4I��^�A*g
!
Evaluation_layers/accuracy &?

Evaluation_layers/loss��,?
#
Evaluation_layers/accuracy_1 &?���t       _gs�	��	��^�A*g
!
Evaluation_layers/accuracy 0?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1 0?=�Rht       _gs�	 ��^�A*g
!
Evaluation_layers/accuracy �6?

Evaluation_layers/loss�S?
#
Evaluation_layers/accuracy_1 �6?�j1�t       _gs�	�w��^�A*g
!
Evaluation_layers/accuracy ;?

Evaluation_layers/lossX�?
#
Evaluation_layers/accuracy_1 ;?���t       _gs�	u�!��^�A*g
!
Evaluation_layers/accuracy |<?

Evaluation_layers/loss��
?
#
Evaluation_layers/accuracy_1 |<?l��t       _gs�	]�)��^�A*g
!
Evaluation_layers/accuracy H=?

Evaluation_layers/loss�z?
#
Evaluation_layers/accuracy_1 H=?�x�t       _gs�	
3��^�A*g
!
Evaluation_layers/accuracy �=?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1 �=?(Z:t       _gs�	o�;��^�A*g
!
Evaluation_layers/accuracy >?

Evaluation_layers/loss�p?
#
Evaluation_layers/accuracy_1 >?4��t       _gs�	��D��^�A	*g
!
Evaluation_layers/accuracy ??

Evaluation_layers/loss"�?
#
Evaluation_layers/accuracy_1 ??Z��t       _gs�		�_��^�A
*g
!
Evaluation_layers/accuracy �??

Evaluation_layers/loss�D?
#
Evaluation_layers/accuracy_1 �??&w��t       _gs�	Ui��^�A*g
!
Evaluation_layers/accuracy �??

Evaluation_layers/lossz@?
#
Evaluation_layers/accuracy_1 �??󪟎t       _gs�	5fq��^�A*g
!
Evaluation_layers/accuracy �@?

Evaluation_layers/lossE�?
#
Evaluation_layers/accuracy_1 �@?��!t       _gs�	jy��^�A*g
!
Evaluation_layers/accuracy �@?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1 �@?��!�t       _gs�	t����^�A*g
!
Evaluation_layers/accuracy �@?

Evaluation_layers/loss>??
#
Evaluation_layers/accuracy_1 �@?2�^�t       _gs�	L����^�A*g
!
Evaluation_layers/accuracy 4A?

Evaluation_layers/loss-�?
#
Evaluation_layers/accuracy_1 4A?�ډt       _gs�	Kv���^�A*g
!
Evaluation_layers/accuracy <A?

Evaluation_layers/lossơ?
#
Evaluation_layers/accuracy_1 <A?�Vҧt       _gs�	8l���^�A*g
!
Evaluation_layers/accuracy TA?

Evaluation_layers/loss�O?
#
Evaluation_layers/accuracy_1 TA?���t       _gs�	pD���^�A*g
!
Evaluation_layers/accuracy lA?

Evaluation_layers/lossN6?
#
Evaluation_layers/accuracy_1 lA?�^�t       _gs�	+Ȫ��^�A*g
!
Evaluation_layers/accuracy |A?

Evaluation_layers/loss��?
#
Evaluation_layers/accuracy_1 |A?�]�At       _gs�	(�Ɛ�^�A*g
!
Evaluation_layers/accuracy <B?

Evaluation_layers/loss.�?
#
Evaluation_layers/accuracy_1 <B?-L��t       _gs�	�ϐ�^�A*g
!
Evaluation_layers/accuracy �A?

Evaluation_layers/loss�m?
#
Evaluation_layers/accuracy_1 �A?�C��t       _gs�	_�א�^�A*g
!
Evaluation_layers/accuracy �A?

Evaluation_layers/loss #?
#
Evaluation_layers/accuracy_1 �A?Cd��t       _gs�	^m���^�A*g
!
Evaluation_layers/accuracy  B?

Evaluation_layers/loss`�?
#
Evaluation_layers/accuracy_1  B??�VDt       _gs�	�萟^�A*g
!
Evaluation_layers/accuracy pB?

Evaluation_layers/lossɈ?
#
Evaluation_layers/accuracy_1 pB?��=t       _gs�	Ea^�A*g
!
Evaluation_layers/accuracy TB?

Evaluation_layers/loss�f?
#
Evaluation_layers/accuracy_1 TB?[�}t       _gs�	����^�A*g
!
Evaluation_layers/accuracy �B?

Evaluation_layers/loss�?
#
Evaluation_layers/accuracy_1 �B?�N�t       _gs�	Č���^�A*g
!
Evaluation_layers/accuracy �B?

Evaluation_layers/loss$� ?
#
Evaluation_layers/accuracy_1 �B?1��;t       _gs�	.@��^�A*g
!
Evaluation_layers/accuracy �B?

Evaluation_layers/loss�� ?
#
Evaluation_layers/accuracy_1 �B?9aA�t       _gs�	�#��^�A*g
!
Evaluation_layers/accuracy C?

Evaluation_layers/lossLm ?
#
Evaluation_layers/accuracy_1 C?��obt       _gs�	� ��^�A*g
!
Evaluation_layers/accuracy C?

Evaluation_layers/loss�) ?
#
Evaluation_layers/accuracy_1 C?N�]rt       _gs�	��'��^�A*g
!
Evaluation_layers/accuracy �B?

Evaluation_layers/loss^ ?
#
Evaluation_layers/accuracy_1 �B?R�bt       _gs�	��.��^�A *g
!
Evaluation_layers/accuracy �B?

Evaluation_layers/loss~��>
#
Evaluation_layers/accuracy_1 �B?��t       _gs�	ϸ5��^�A!*g
!
Evaluation_layers/accuracy C?

Evaluation_layers/losspR�>
#
Evaluation_layers/accuracy_1 C?��|t       _gs�	%=��^�A"*g
!
Evaluation_layers/accuracy C?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 C?��7�t       _gs�	]�C��^�A#*g
!
Evaluation_layers/accuracy 8C?

Evaluation_layers/losső�>
#
Evaluation_layers/accuracy_1 8C?�%�>t       _gs�	�|J��^�A$*g
!
Evaluation_layers/accuracy 8C?

Evaluation_layers/lossX�>
#
Evaluation_layers/accuracy_1 8C?{+t       _gs�	+=Q��^�A%*g
!
Evaluation_layers/accuracy 0C?

Evaluation_layers/loss"��>
#
Evaluation_layers/accuracy_1 0C?hHh�t       _gs�	ACX��^�A&*g
!
Evaluation_layers/accuracy C?

Evaluation_layers/loss�[�>
#
Evaluation_layers/accuracy_1 C?`?�~t       _gs�	l_��^�A'*g
!
Evaluation_layers/accuracy 4C?

Evaluation_layers/loss�d�>
#
Evaluation_layers/accuracy_1 4C?��Mlt       _gs�	S�t��^�A(*g
!
Evaluation_layers/accuracy HC?

Evaluation_layers/loss0��>
#
Evaluation_layers/accuracy_1 HC?��"t       _gs�	�H{��^�A)*g
!
Evaluation_layers/accuracy �C?

Evaluation_layers/loss�w�>
#
Evaluation_layers/accuracy_1 �C?��+�t       _gs�	�g���^�A**g
!
Evaluation_layers/accuracy  C?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1  C?=��it       _gs�	�����^�A+*g
!
Evaluation_layers/accuracy �C?

Evaluation_layers/loss<�>
#
Evaluation_layers/accuracy_1 �C?�=�Ft       _gs�	�ݐ��^�A,*g
!
Evaluation_layers/accuracy ,C?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 ,C?����t       _gs�	�@���^�A-*g
!
Evaluation_layers/accuracy �C?

Evaluation_layers/loss�x�>
#
Evaluation_layers/accuracy_1 �C?��t       _gs�	K۞��^�A.*g
!
Evaluation_layers/accuracy LD?

Evaluation_layers/loss&�>
#
Evaluation_layers/accuracy_1 LD?�ʉ�t       _gs�	�����^�A/*g
!
Evaluation_layers/accuracy �C?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �C?%A�t       _gs�	b���^�A0*g
!
Evaluation_layers/accuracy �C?

Evaluation_layers/loss�^�>
#
Evaluation_layers/accuracy_1 �C?O��t       _gs�	೑�^�A1*g
!
Evaluation_layers/accuracy LD?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 LD?�M�Vt       _gs�	IXȑ�^�A2*g
!
Evaluation_layers/accuracy pD?

Evaluation_layers/lossbp�>
#
Evaluation_layers/accuracy_1 pD?��t       _gs�	u�ϑ�^�A3*g
!
Evaluation_layers/accuracy �D?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �D?U%3�t       _gs�	��֑�^�A4*g
!
Evaluation_layers/accuracy �D?

Evaluation_layers/lossB�>
#
Evaluation_layers/accuracy_1 �D?q�kt       _gs�	��ޑ�^�A5*g
!
Evaluation_layers/accuracy dD?

Evaluation_layers/losspX�>
#
Evaluation_layers/accuracy_1 dD?��j�t       _gs�	�摟^�A6*g
!
Evaluation_layers/accuracy @D?

Evaluation_layers/loss�)�>
#
Evaluation_layers/accuracy_1 @D?�S��t       _gs�	��둟^�A7*g
!
Evaluation_layers/accuracy �D?

Evaluation_layers/loss?��>
#
Evaluation_layers/accuracy_1 �D?bPC�t       _gs�	�`�^�A8*g
!
Evaluation_layers/accuracy  E?

Evaluation_layers/loss�Y�>
#
Evaluation_layers/accuracy_1  E?��ot       _gs�	
����^�A9*g
!
Evaluation_layers/accuracy �D?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �D?���t       _gs�	����^�A:*g
!
Evaluation_layers/accuracy �D?

Evaluation_layers/lossj��>
#
Evaluation_layers/accuracy_1 �D? ��t       _gs�	�� ��^�A;*g
!
Evaluation_layers/accuracy E?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 E?�ӂ�t       _gs�	�^��^�A<*g
!
Evaluation_layers/accuracy �D?

Evaluation_layers/loss^D�>
#
Evaluation_layers/accuracy_1 �D?�N��t       _gs�	���^�A=*g
!
Evaluation_layers/accuracy lE?

Evaluation_layers/loss�I�>
#
Evaluation_layers/accuracy_1 lE?]vLt       _gs�	��$��^�A>*g
!
Evaluation_layers/accuracy |E?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 |E?�" /t       _gs�	(�*��^�A?*g
!
Evaluation_layers/accuracy �E?

Evaluation_layers/loss�T�>
#
Evaluation_layers/accuracy_1 �E?H���t       _gs�	W1��^�A@*g
!
Evaluation_layers/accuracy DE?

Evaluation_layers/loss.Z�>
#
Evaluation_layers/accuracy_1 DE?H��t       _gs�	ɣ6��^�AA*g
!
Evaluation_layers/accuracy �E?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �E?��Z,t       _gs�	�M<��^�AB*g
!
Evaluation_layers/accuracy 8F?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 8F?K�AUt       _gs�	d�A��^�AC*g
!
Evaluation_layers/accuracy �E?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �E?+�P�t       _gs�	8dG��^�AD*g
!
Evaluation_layers/accuracy `F?

Evaluation_layers/loss ��>
#
Evaluation_layers/accuracy_1 `F?��t       _gs�	�9M��^�AE*g
!
Evaluation_layers/accuracy �E?

Evaluation_layers/loss\��>
#
Evaluation_layers/accuracy_1 �E?q��t       _gs�	�	\��^�AF*g
!
Evaluation_layers/accuracy �E?

Evaluation_layers/loss.�>
#
Evaluation_layers/accuracy_1 �E?�X�St       _gs�	�"b��^�AG*g
!
Evaluation_layers/accuracy �E?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �E?���t       _gs�	��g��^�AH*g
!
Evaluation_layers/accuracy F?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 F?|�t       _gs�	W�m��^�AI*g
!
Evaluation_layers/accuracy �E?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �E?W�t       _gs�	�Os��^�AJ*g
!
Evaluation_layers/accuracy <F?

Evaluation_layers/lossE��>
#
Evaluation_layers/accuracy_1 <F?�\e�t       _gs�	��x��^�AK*g
!
Evaluation_layers/accuracy (F?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 (F?UәHt       _gs�	�h~��^�AL*g
!
Evaluation_layers/accuracy �F?

Evaluation_layers/lossN��>
#
Evaluation_layers/accuracy_1 �F?��69t       _gs�	�惒�^�AM*g
!
Evaluation_layers/accuracy �F?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �F?mO�t       _gs�	b����^�AN*g
!
Evaluation_layers/accuracy |F?

Evaluation_layers/loss�5�>
#
Evaluation_layers/accuracy_1 |F?{�8�t       _gs�	����^�AO*g
!
Evaluation_layers/accuracy  G?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1  G?^ׄ�t       _gs�	gӜ��^�AP*g
!
Evaluation_layers/accuracy 0G?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0G?z��|t       _gs�	;����^�AQ*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �G?�x�t       _gs�	K���^�AR*g
!
Evaluation_layers/accuracy 0G?

Evaluation_layers/loss�[�>
#
Evaluation_layers/accuracy_1 0G?C�P�t       _gs�	NR���^�AS*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �G?)��t       _gs�	s!���^�AT*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �G?8�t       _gs�	��^�AU*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss4��>
#
Evaluation_layers/accuracy_1 �G?�21t       _gs�	�����^�AV*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss�t�>
#
Evaluation_layers/accuracy_1 �G?{'͋t       _gs�	�oÒ�^�AW*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss.��>
#
Evaluation_layers/accuracy_1 �G?4�bt       _gs�	�4ɒ�^�AX*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/lossa.�>
#
Evaluation_layers/accuracy_1 �G?a�P�t       _gs�	�ϒ�^�AY*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �G?�4�jt       _gs�	��㒟^�AZ*g
!
Evaluation_layers/accuracy �H?

Evaluation_layers/losszf�>
#
Evaluation_layers/accuracy_1 �H?8K �t       _gs�		钟^�A[*g
!
Evaluation_layers/accuracy hH?

Evaluation_layers/loss�	�>
#
Evaluation_layers/accuracy_1 hH?�Ht       _gs�	�6^�A\*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �G?�k/�t       _gs�	m�^�A]*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �G?7�īt       _gs�	;����^�A^*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss�t�>
#
Evaluation_layers/accuracy_1 �G?��l�t       _gs�	P����^�A_*g
!
Evaluation_layers/accuracy �G?

Evaluation_layers/loss
��>
#
Evaluation_layers/accuracy_1 �G?��t       _gs�	;���^�A`*g
!
Evaluation_layers/accuracy \H?

Evaluation_layers/loss\�>
#
Evaluation_layers/accuracy_1 \H?����t       _gs�	����^�Aa*g
!
Evaluation_layers/accuracy �H?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �H?ℰ9t       _gs�	�B��^�Ab*g
!
Evaluation_layers/accuracy �H?

Evaluation_layers/lossU��>
#
Evaluation_layers/accuracy_1 �H?�X��t       _gs�	P��^�Ac*g
!
Evaluation_layers/accuracy @H?

Evaluation_layers/loss�(�>
#
Evaluation_layers/accuracy_1 @H?"ܬt       _gs�	�%��^�Ad*g
!
Evaluation_layers/accuracy �H?

Evaluation_layers/loss?�>
#
Evaluation_layers/accuracy_1 �H?K\_t       _gs�	��*��^�Ae*g
!
Evaluation_layers/accuracy tI?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 tI?�+�t       _gs�	f�/��^�Af*g
!
Evaluation_layers/accuracy I?

Evaluation_layers/loss]��>
#
Evaluation_layers/accuracy_1 I?Y�/t       _gs�	X�4��^�Ag*g
!
Evaluation_layers/accuracy <J?

Evaluation_layers/loss|�>
#
Evaluation_layers/accuracy_1 <J?˳1Lt       _gs�	��9��^�Ah*g
!
Evaluation_layers/accuracy HJ?

Evaluation_layers/loss8r�>
#
Evaluation_layers/accuracy_1 HJ?���t       _gs�	n�>��^�Ai*g
!
Evaluation_layers/accuracy I?

Evaluation_layers/loss/L�>
#
Evaluation_layers/accuracy_1 I?�+/�t       _gs�	1mC��^�Aj*g
!
Evaluation_layers/accuracy �H?

Evaluation_layers/lossb�>
#
Evaluation_layers/accuracy_1 �H?�=��t       _gs�	�H��^�Ak*g
!
Evaluation_layers/accuracy �H?

Evaluation_layers/losstp�>
#
Evaluation_layers/accuracy_1 �H?�bߪt       _gs�	SM��^�Al*g
!
Evaluation_layers/accuracy xI?

Evaluation_layers/loss�~�>
#
Evaluation_layers/accuracy_1 xI?��7t       _gs�	�R��^�Am*g
!
Evaluation_layers/accuracy �J?

Evaluation_layers/loss~r�>
#
Evaluation_layers/accuracy_1 �J?�"t       _gs�	^e��^�An*g
!
Evaluation_layers/accuracy 4J?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 4J?�7F�t       _gs�	��i��^�Ao*g
!
Evaluation_layers/accuracy tJ?

Evaluation_layers/loss�/�>
#
Evaluation_layers/accuracy_1 tJ?�{t       _gs�	7o��^�Ap*g
!
Evaluation_layers/accuracy �I?

Evaluation_layers/lossW��>
#
Evaluation_layers/accuracy_1 �I?]��}t       _gs�	:ut��^�Aq*g
!
Evaluation_layers/accuracy �I?

Evaluation_layers/losso�>
#
Evaluation_layers/accuracy_1 �I?6�It       _gs�	*�y��^�Ar*g
!
Evaluation_layers/accuracy �I?

Evaluation_layers/loss�Q�>
#
Evaluation_layers/accuracy_1 �I?�F-�t       _gs�	��~��^�As*g
!
Evaluation_layers/accuracy 0I?

Evaluation_layers/loss ��>
#
Evaluation_layers/accuracy_1 0I?yT�t       _gs�	�Ń��^�At*g
!
Evaluation_layers/accuracy lJ?

Evaluation_layers/lossL=�>
#
Evaluation_layers/accuracy_1 lJ?W;�at       _gs�	`����^�Au*g
!
Evaluation_layers/accuracy DI?

Evaluation_layers/loss� �>
#
Evaluation_layers/accuracy_1 DI?x]�Gt       _gs�	�:���^�Av*g
!
Evaluation_layers/accuracy PK?

Evaluation_layers/loss*��>
#
Evaluation_layers/accuracy_1 PK?p�\Gt       _gs�	�v���^�Aw*g
!
Evaluation_layers/accuracy �J?

Evaluation_layers/loss4��>
#
Evaluation_layers/accuracy_1 �J?����t       _gs�	W���^�Ax*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �K?6��t       _gs�	�ѩ��^�Ay*g
!
Evaluation_layers/accuracy <K?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 <K?��xt       _gs�	�u���^�Az*g
!
Evaluation_layers/accuracy �J?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �J?�Jrt       _gs�	�峓�^�A{*g
!
Evaluation_layers/accuracy LJ?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 LJ?����t       _gs�	����^�A|*g
!
Evaluation_layers/accuracy �J?

Evaluation_layers/loss)�>
#
Evaluation_layers/accuracy_1 �J?���ot       _gs�	�8���^�A}*g
!
Evaluation_layers/accuracy �J?

Evaluation_layers/lossy��>
#
Evaluation_layers/accuracy_1 �J?㮈t       _gs�	޾Ó�^�A~*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/losspO�>
#
Evaluation_layers/accuracy_1 �K?r�3t       _gs�	�~ȓ�^�A*g
!
Evaluation_layers/accuracy (K?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 (K?��$�u       ��Ax	8%͓�^�A�*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/loss^f�>
#
Evaluation_layers/accuracy_1 �K?v>w�u       ��Ax	��ѓ�^�A�*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/loss�e�>
#
Evaluation_layers/accuracy_1 �K?-��u       ��Ax	��䓟^�A�*g
!
Evaluation_layers/accuracy pK?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 pK?���u       ��Ax	��ꓟ^�A�*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/loss�c�>
#
Evaluation_layers/accuracy_1 �K?��>u       ��Ax	�3�^�A�*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/lossVC�>
#
Evaluation_layers/accuracy_1 �K?��6fu       ��Ax	�k���^�A�*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �K?��u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy dL?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 dL?�9Z�u       ��Ax	�� ��^�A�*g
!
Evaluation_layers/accuracy K?

Evaluation_layers/loss�m�>
#
Evaluation_layers/accuracy_1 K?��u       ��Ax	$���^�A�*g
!
Evaluation_layers/accuracy pL?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 pL?5cIXu       ��Ax	u��^�A�*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �K?{Z$u       ��Ax	�$��^�A�*g
!
Evaluation_layers/accuracy �L?

Evaluation_layers/lossL��>
#
Evaluation_layers/accuracy_1 �L?2��Lu       ��Ax	7���^�A�*g
!
Evaluation_layers/accuracy TL?

Evaluation_layers/lossm@�>
#
Evaluation_layers/accuracy_1 TL?N�Eu       ��Ax	��&��^�A�*g
!
Evaluation_layers/accuracy `L?

Evaluation_layers/lossD^�>
#
Evaluation_layers/accuracy_1 `L?�Iu       ��Ax	i�,��^�A�*g
!
Evaluation_layers/accuracy �L?

Evaluation_layers/loss�_�>
#
Evaluation_layers/accuracy_1 �L?����u       ��Ax	�\2��^�A�*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �K?��Tu       ��Ax	0�7��^�A�*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/lossճ�>
#
Evaluation_layers/accuracy_1 �K?q�Mu       ��Ax	Q�=��^�A�*g
!
Evaluation_layers/accuracy �K?

Evaluation_layers/lossdr�>
#
Evaluation_layers/accuracy_1 �K?�:��u       ��Ax	��B��^�A�*g
!
Evaluation_layers/accuracy 0L?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 0L?�'u       ��Ax	�H��^�A�*g
!
Evaluation_layers/accuracy 4L?

Evaluation_layers/lossd�>
#
Evaluation_layers/accuracy_1 4L?�Ɏu       ��Ax	<M��^�A�*g
!
Evaluation_layers/accuracy HM?

Evaluation_layers/loss7<�>
#
Evaluation_layers/accuracy_1 HM?����u       ��Ax	�R��^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss�/�>
#
Evaluation_layers/accuracy_1 �M?�=��u       ��Ax	�X��^�A�*g
!
Evaluation_layers/accuracy �L?

Evaluation_layers/loss�v�>
#
Evaluation_layers/accuracy_1 �L?K���u       ��Ax	Uhi��^�A�*g
!
Evaluation_layers/accuracy 4M?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 4M?2�K�u       ��Ax	��n��^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �M?H���u       ��Ax	t�t��^�A�*g
!
Evaluation_layers/accuracy �L?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �L?j3�u       ��Ax	ùz��^�A�*g
!
Evaluation_layers/accuracy TM?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 TM?	���u       ��Ax	Xm���^�A�*g
!
Evaluation_layers/accuracy  L?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1  L?n�C�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy hM?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 hM?�R�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy N?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 N?Θ�
u       ��Ax	�񑔟^�A�*g
!
Evaluation_layers/accuracy �L?

Evaluation_layers/lossn��>
#
Evaluation_layers/accuracy_1 �L?��\ou       ��Ax	ⲗ��^�A�*g
!
Evaluation_layers/accuracy |M?

Evaluation_layers/loss~�>
#
Evaluation_layers/accuracy_1 |M?�!��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss\��>
#
Evaluation_layers/accuracy_1 �M?���u       ��Ax	U���^�A�*g
!
Evaluation_layers/accuracy pM?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 pM?'SPu       ��Ax	򷔟^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss�U�>
#
Evaluation_layers/accuracy_1 �M?� ;hu       ��Ax	q����^�A�*g
!
Evaluation_layers/accuracy N?

Evaluation_layers/lossx��>
#
Evaluation_layers/accuracy_1 N?�$�Hu       ��Ax	�VÔ�^�A�*g
!
Evaluation_layers/accuracy (N?

Evaluation_layers/lossX�>
#
Evaluation_layers/accuracy_1 (N?\U�u       ��Ax	Jɔ�^�A�*g
!
Evaluation_layers/accuracy lM?

Evaluation_layers/loss%�>
#
Evaluation_layers/accuracy_1 lM?Eu)u       ��Ax	��Δ�^�A�*g
!
Evaluation_layers/accuracy @N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 @N?����u       ��Ax	�7Ԕ�^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss$J�>
#
Evaluation_layers/accuracy_1 �M?�b��u       ��Ax	ڔ�^�A�*g
!
Evaluation_layers/accuracy ,N?

Evaluation_layers/loss"m�>
#
Evaluation_layers/accuracy_1 ,N?�07u       ��Ax	�-ߔ�^�A�*g
!
Evaluation_layers/accuracy HM?

Evaluation_layers/lossƅ�>
#
Evaluation_layers/accuracy_1 HM?Z ��u       ��Ax	;�䔟^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss�v�>
#
Evaluation_layers/accuracy_1 �M?�1du       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/lossͱ�>
#
Evaluation_layers/accuracy_1 �M?7B�u       ��Ax	eC��^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �M?S\u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy ,N?

Evaluation_layers/loss.��>
#
Evaluation_layers/accuracy_1 ,N?a��u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy dN?

Evaluation_layers/loss5�>
#
Evaluation_layers/accuracy_1 dN?[قu       ��Ax	WL��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �N?���u       ��Ax	-$��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �N?J�su       ��Ax	y�+��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �N?�)Xru       ��Ax	��3��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss�O�>
#
Evaluation_layers/accuracy_1 �N?�=(�u       ��Ax	�~;��^�A�*g
!
Evaluation_layers/accuracy pO?

Evaluation_layers/lossS��>
#
Evaluation_layers/accuracy_1 pO?����u       ��Ax	#?C��^�A�*g
!
Evaluation_layers/accuracy \O?

Evaluation_layers/loss�L�>
#
Evaluation_layers/accuracy_1 \O?!��u       ��Ax	�mZ��^�A�*g
!
Evaluation_layers/accuracy <O?

Evaluation_layers/loss�;�>
#
Evaluation_layers/accuracy_1 <O?��u       ��Ax	��b��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss*7�>
#
Evaluation_layers/accuracy_1 �N?D�+�u       ��Ax	��k��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss*��>
#
Evaluation_layers/accuracy_1 �N?؊ u       ��Ax	�js��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �N?�b�u       ��Ax	�{��^�A�*g
!
Evaluation_layers/accuracy PO?

Evaluation_layers/loss\/�>
#
Evaluation_layers/accuracy_1 PO?�U��u       ��Ax	�'���^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss&P�>
#
Evaluation_layers/accuracy_1 �M?oA��u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/lossJ��>
#
Evaluation_layers/accuracy_1 �N?b�au       ��Ax	C9���^�A�*g
!
Evaluation_layers/accuracy O?

Evaluation_layers/loss�M�>
#
Evaluation_layers/accuracy_1 O?�E��u       ��Ax	Y����^�A�*g
!
Evaluation_layers/accuracy O?

Evaluation_layers/loss�3�>
#
Evaluation_layers/accuracy_1 O?C��u       ��Ax	)ޣ��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?��zPu       ��Ax	�I���^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �N?g�X�u       ��Ax	�fǕ�^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss�>�>
#
Evaluation_layers/accuracy_1 �M?j>:u       ��Ax	�`ϕ�^�A�*g
!
Evaluation_layers/accuracy TN?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 TN?��Gbu       ��Ax	�Kו�^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/lossF�>
#
Evaluation_layers/accuracy_1 �M?\��u       ��Ax	 2���^�A�*g
!
Evaluation_layers/accuracy 0O?

Evaluation_layers/loss؜�>
#
Evaluation_layers/accuracy_1 0O?��<u       ��Ax	�\蕟^�A�*g
!
Evaluation_layers/accuracy  P?

Evaluation_layers/loss�x�>
#
Evaluation_layers/accuracy_1  P?���u       ��Ax	H�^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �N?�4U?u       ��Ax	I����^�A�*g
!
Evaluation_layers/accuracy O?

Evaluation_layers/loss+	�>
#
Evaluation_layers/accuracy_1 O?�t�u       ��Ax	�/���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossub�>
#
Evaluation_layers/accuracy_1 �O?���u       ��Ax	]��^�A�*g
!
Evaluation_layers/accuracy (O?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 (O?���iu       ��Ax	�4��^�A�*g
!
Evaluation_layers/accuracy  O?

Evaluation_layers/lossL�>
#
Evaluation_layers/accuracy_1  O?ns�cu       ��Ax	�=&��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�y�>
#
Evaluation_layers/accuracy_1 �O?�7u       ��Ax	^`-��^�A�*g
!
Evaluation_layers/accuracy LO?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 LO?��bu       ��Ax	�`4��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossfv�>
#
Evaluation_layers/accuracy_1 �O?^7u       ��Ax	�T;��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?�,Ru       ��Ax	/0B��^�A�*g
!
Evaluation_layers/accuracy `O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 `O?LH�u       ��Ax	�aI��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?��u       ��Ax	dYP��^�A�*g
!
Evaluation_layers/accuracy lO?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 lO?�jGu       ��Ax	WeW��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�D�>
#
Evaluation_layers/accuracy_1 �O?$G9u       ��Ax	o]^��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?�� �u       ��Ax	z t��^�A�*g
!
Evaluation_layers/accuracy O?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 O?��E�u       ��Ax	�z��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossj[�>
#
Evaluation_layers/accuracy_1 �O?⪱eu       ��Ax	�Ё��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss@%�>
#
Evaluation_layers/accuracy_1 �O?��,�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �N?[�Āu       ��Ax	�㏖�^�A�*g
!
Evaluation_layers/accuracy pO?

Evaluation_layers/loss|^�>
#
Evaluation_layers/accuracy_1 pO?s�L*u       ��Ax	�Ŗ��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 �O?t���u       ��Ax	�W���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�T�>
#
Evaluation_layers/accuracy_1 �O?ʹ��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy ,P?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 ,P?j�M�u       ��Ax	Œ���^�A�*g
!
Evaluation_layers/accuracy hO?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 hO?�� Fu       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss|��>
#
Evaluation_layers/accuracy_1 �O?��'fu       ��Ax	۸Ζ�^�A�*g
!
Evaluation_layers/accuracy dO?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 dO?V��u       ��Ax	@�Ֆ�^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�M�>
#
Evaluation_layers/accuracy_1 �O?��q*u       ��Ax	�
ݖ�^�A�*g
!
Evaluation_layers/accuracy tO?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 tO?m�Mu       ��Ax	��㖟^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossc��>
#
Evaluation_layers/accuracy_1 �O?su       ��Ax	��閟^�A�*g
!
Evaluation_layers/accuracy pO?

Evaluation_layers/loss�\�>
#
Evaluation_layers/accuracy_1 pO?E�P>u       ��Ax	��^�A�*g
!
Evaluation_layers/accuracy P?

Evaluation_layers/loss4��>
#
Evaluation_layers/accuracy_1 P?����u       ��Ax	A����^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss`'�>
#
Evaluation_layers/accuracy_1 �O?LS�u       ��Ax	8L���^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �P?]d>�u       ��Ax	�b���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�-�>
#
Evaluation_layers/accuracy_1 �O?�(�u       ��Ax	�?��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss0r�>
#
Evaluation_layers/accuracy_1 �O?�%�u       ��Ax	X#��^�A�*g
!
Evaluation_layers/accuracy XO?

Evaluation_layers/lossv1�>
#
Evaluation_layers/accuracy_1 XO?��[u       ��Ax	L���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�#�>
#
Evaluation_layers/accuracy_1 �O?�]yu       ��Ax	��%��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/lossc��>
#
Evaluation_layers/accuracy_1 �N?G�ֽu       ��Ax	s�*��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss&��>
#
Evaluation_layers/accuracy_1 �O?�q�lu       ��Ax	mh0��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �N?�;m�u       ��Ax	�'6��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�?�>
#
Evaluation_layers/accuracy_1 �O?�8G�u       ��Ax	p�;��^�A�*g
!
Evaluation_layers/accuracy  O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  O?�u       ��Ax	�&A��^�A�*g
!
Evaluation_layers/accuracy P?

Evaluation_layers/loss� �>
#
Evaluation_layers/accuracy_1 P?�H=�u       ��Ax	\�F��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�!�>
#
Evaluation_layers/accuracy_1 �O?�K��u       ��Ax	�#L��^�A�*g
!
Evaluation_layers/accuracy O?

Evaluation_layers/lossn��>
#
Evaluation_layers/accuracy_1 O?Pˇu       ��Ax	�[��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossJ��>
#
Evaluation_layers/accuracy_1 �O?����u       ��Ax	�4a��^�A�*g
!
Evaluation_layers/accuracy pO?

Evaluation_layers/loss?I�>
#
Evaluation_layers/accuracy_1 pO?��|u       ��Ax	k�f��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss2�>
#
Evaluation_layers/accuracy_1 �O?����u       ��Ax	el��^�A�*g
!
Evaluation_layers/accuracy dO?

Evaluation_layers/lossV�>
#
Evaluation_layers/accuracy_1 dO?¬@�u       ��Ax	r��^�A�*g
!
Evaluation_layers/accuracy HO?

Evaluation_layers/loss 5�>
#
Evaluation_layers/accuracy_1 HO?<�|u       ��Ax	p;x��^�A�*g
!
Evaluation_layers/accuracy �M?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �M?njWu       ��Ax	�*~��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossBI�>
#
Evaluation_layers/accuracy_1 �O?q���u       ��Ax	d����^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossW�>
#
Evaluation_layers/accuracy_1 �O?bH��u       ��Ax	n����^�A�*g
!
Evaluation_layers/accuracy $P?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 $P?�βzu       ��Ax	tL���^�A�*g
!
Evaluation_layers/accuracy P?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 P?���}u       ��Ax	AP���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�N�>
#
Evaluation_layers/accuracy_1 �O?=Zmu       ��Ax	P*���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss� �>
#
Evaluation_layers/accuracy_1 �O?�vc_u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?i��u       ��Ax	3׵��^�A�*g
!
Evaluation_layers/accuracy 4O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 4O?��u       ��Ax	e����^�A�*g
!
Evaluation_layers/accuracy `O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 `O?�C�5u       ��Ax	�w���^�A�*g
!
Evaluation_layers/accuracy 0O?

Evaluation_layers/loss!a�>
#
Evaluation_layers/accuracy_1 0O?s�-�u       ��Ax	qǗ�^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss<f�>
#
Evaluation_layers/accuracy_1 �O?�S$u       ��Ax	��̗�^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossx,�>
#
Evaluation_layers/accuracy_1 �O?��J�u       ��Ax	ѱҗ�^�A�*g
!
Evaluation_layers/accuracy hO?

Evaluation_layers/lossW�>
#
Evaluation_layers/accuracy_1 hO?�C�u       ��Ax	��ח�^�A�*g
!
Evaluation_layers/accuracy P?

Evaluation_layers/losszp�>
#
Evaluation_layers/accuracy_1 P?��N u       ��Ax	J�旟^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �O?jH��u       ��Ax	_S뗟^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?l:*�u       ��Ax	"��^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/lossծ�>
#
Evaluation_layers/accuracy_1 �P?O���u       ��Ax	Sd���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �O?03 �u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �O?���u       ��Ax	f ��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?F�%u       ��Ax	�/��^�A�*g
!
Evaluation_layers/accuracy �N?

Evaluation_layers/lossBL�>
#
Evaluation_layers/accuracy_1 �N?TgTu       ��Ax	Se
��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�6�>
#
Evaluation_layers/accuracy_1 �O?�B�-u       ��Ax	u��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossE�>
#
Evaluation_layers/accuracy_1 �O?�f��u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?]0f�u       ��Ax	{I'��^�A�*g
!
Evaluation_layers/accuracy xP?

Evaluation_layers/loss�l�>
#
Evaluation_layers/accuracy_1 xP?��}�u       ��Ax	G,��^�A�*g
!
Evaluation_layers/accuracy P?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 P?��u"u       ��Ax	v�1��^�A�*g
!
Evaluation_layers/accuracy tO?

Evaluation_layers/lossH�>
#
Evaluation_layers/accuracy_1 tO?�'��u       ��Ax	T�6��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �O?��Þu       ��Ax	W<��^�A�*g
!
Evaluation_layers/accuracy |O?

Evaluation_layers/losss��>
#
Evaluation_layers/accuracy_1 |O?*��Mu       ��Ax	�A��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�U�>
#
Evaluation_layers/accuracy_1 �O?˚��u       ��Ax	(9F��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�m�>
#
Evaluation_layers/accuracy_1 �O?0��u       ��Ax	ùK��^�A�*g
!
Evaluation_layers/accuracy dO?

Evaluation_layers/loss4�>
#
Evaluation_layers/accuracy_1 dO?�wOVu       ��Ax	��P��^�A�*g
!
Evaluation_layers/accuracy PP?

Evaluation_layers/loss�q�>
#
Evaluation_layers/accuracy_1 PP?gT�u       ��Ax	�V��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/lossRm�>
#
Evaluation_layers/accuracy_1 �O?x}��u       ��Ax	�Yh��^�A�*g
!
Evaluation_layers/accuracy 0N?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0N?��u       ��Ax	6�m��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 �O?�+u       ��Ax	��r��^�A�*g
!
Evaluation_layers/accuracy `O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 `O?.O�bu       ��Ax	3�w��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�R�>
#
Evaluation_layers/accuracy_1 �O?����u       ��Ax	W�|��^�A�*g
!
Evaluation_layers/accuracy P?

Evaluation_layers/lossd��>
#
Evaluation_layers/accuracy_1 P?�,��u       ��Ax	�h���^�A�*g
!
Evaluation_layers/accuracy @P?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 @P?n�u       ��Ax	Vu���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss�d�>
#
Evaluation_layers/accuracy_1 �O?����u       ��Ax	Z���^�A�*g
!
Evaluation_layers/accuracy P?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 P?�f�Vu       ��Ax	�H���^�A�*g
!
Evaluation_layers/accuracy 0P?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0P?+���u       ��Ax	Xh���^�A�*g
!
Evaluation_layers/accuracy pP?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 pP?���6u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?F�<u       ��Ax	ီ��^�A�*g
!
Evaluation_layers/accuracy pO?

Evaluation_layers/loss8��>
#
Evaluation_layers/accuracy_1 pO?��)u       ��Ax	�ĳ��^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �P?r�Z�u       ��Ax	�	���^�A�*g
!
Evaluation_layers/accuracy 0P?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 0P?�	x�u       ��Ax	�(���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss	��>
#
Evaluation_layers/accuracy_1 �O?D�rcu       ��Ax	fEØ�^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?o���u       ��Ax	�wȘ�^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/lossZ:�>
#
Evaluation_layers/accuracy_1 �P?�K�u       ��Ax	Y�͘�^�A�*g
!
Evaluation_layers/accuracy P?

Evaluation_layers/loss�9�>
#
Evaluation_layers/accuracy_1 P?�A�u       ��Ax	R�Ҙ�^�A�*g
!
Evaluation_layers/accuracy `O?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 `O?,� �u       ��Ax	+6ט�^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss(��>
#
Evaluation_layers/accuracy_1 �O?r�n�u       ��Ax	�y䘟^�A�*g
!
Evaluation_layers/accuracy  Q?

Evaluation_layers/loss'}�>
#
Evaluation_layers/accuracy_1  Q?��=Nu       ��Ax	�ꘟ^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �O?�p�u       ��Ax	G�^�A�*g
!
Evaluation_layers/accuracy dP?

Evaluation_layers/loss�]�>
#
Evaluation_layers/accuracy_1 dP?Xp��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�$�>
#
Evaluation_layers/accuracy_1 �Q?T�6zu       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/lossS6�>
#
Evaluation_layers/accuracy_1 �P?�p�u       ��Ax	(���^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �O?��_�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?F:u       ��Ax	��
��^�A�*g
!
Evaluation_layers/accuracy P?

Evaluation_layers/loss�O�>
#
Evaluation_layers/accuracy_1 P?4�u       ��Ax	+���^�A�*g
!
Evaluation_layers/accuracy Q?

Evaluation_layers/loss�,�>
#
Evaluation_layers/accuracy_1 Q?�ʊu       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 �P?�B�u       ��Ax	! $��^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss`��>
#
Evaluation_layers/accuracy_1 pR?7i��u       ��Ax	�*��^�A�*g
!
Evaluation_layers/accuracy hQ?

Evaluation_layers/loss$Z�>
#
Evaluation_layers/accuracy_1 hQ?*�;�u       ��Ax	(�/��^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/lossس�>
#
Evaluation_layers/accuracy_1 �P?�x�?u       ��Ax	�5��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss!Y�>
#
Evaluation_layers/accuracy_1 �Q?��5iu       ��Ax	kI;��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss ��>
#
Evaluation_layers/accuracy_1 �Q?>��u       ��Ax	�@��^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss^��>
#
Evaluation_layers/accuracy_1 �P?���Bu       ��Ax	?�F��^�A�*g
!
Evaluation_layers/accuracy tP?

Evaluation_layers/loss(�>
#
Evaluation_layers/accuracy_1 tP?��u       ��Ax	m�K��^�A�*g
!
Evaluation_layers/accuracy �O?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �O?�}�u       ��Ax	��Q��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossN
�>
#
Evaluation_layers/accuracy_1 �Q?�3�u       ��Ax	�W��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?rT�u       ��Ax	��l��^�A�*g
!
Evaluation_layers/accuracy pP?

Evaluation_layers/loss|��>
#
Evaluation_layers/accuracy_1 pP?*+�u       ��Ax	�r��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?{��\u       ��Ax	��w��^�A�*g
!
Evaluation_layers/accuracy xQ?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 xQ?�$\{u       ��Ax	o}��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossj�>
#
Evaluation_layers/accuracy_1 �Q?����u       ��Ax		C���^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �P?�fDu       ��Ax	V����^�A�*g
!
Evaluation_layers/accuracy `R?

Evaluation_layers/loss�]�>
#
Evaluation_layers/accuracy_1 `R?J׊u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?�iu       ��Ax	K~���^�A�*g
!
Evaluation_layers/accuracy DR?

Evaluation_layers/loss�|�>
#
Evaluation_layers/accuracy_1 DR?{��u       ��Ax	�Y���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?�|LGu       ��Ax	?#���^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �P?[v�pu       ��Ax	�J���^�A�*g
!
Evaluation_layers/accuracy Q?

Evaluation_layers/losså�>
#
Evaluation_layers/accuracy_1 Q?]K\�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 �P?s;@u       ��Ax	>�ƙ�^�A�*g
!
Evaluation_layers/accuracy lR?

Evaluation_layers/loss ��>
#
Evaluation_layers/accuracy_1 lR?�Bu       ��Ax	=�̙�^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss\\�>
#
Evaluation_layers/accuracy_1 �Q?�<>}u       ��Ax	W�ҙ�^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�$�>
#
Evaluation_layers/accuracy_1 �Q?	qu       ��Ax	r�ؙ�^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/lossC��>
#
Evaluation_layers/accuracy_1 �P?����u       ��Ax	eޙ�^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?�m2�u       ��Ax	X
䙟^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?S_o^u       ��Ax	\�뙟^�A�*g
!
Evaluation_layers/accuracy 4Q?

Evaluation_layers/loss�m�>
#
Evaluation_layers/accuracy_1 4Q?K���u       ��Ax	F��^�A�*g
!
Evaluation_layers/accuracy ,R?

Evaluation_layers/lossZ��>
#
Evaluation_layers/accuracy_1 ,R?S5��u       ��Ax	��
��^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss ��>
#
Evaluation_layers/accuracy_1 �P?�AAu       ��Ax	�
��^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 R?"�u       ��Ax	��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossz��>
#
Evaluation_layers/accuracy_1 �Q?��u       ��Ax	�$��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?{x`iu       ��Ax	A�-��^�A�*g
!
Evaluation_layers/accuracy tR?

Evaluation_layers/loss?��>
#
Evaluation_layers/accuracy_1 tR?�f��u       ��Ax	�i5��^�A�*g
!
Evaluation_layers/accuracy xR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 xR?�7b�u       ��Ax	YR=��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?	ԓ*u       ��Ax	8F��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?��Ώu       ��Ax	O�M��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�:�>
#
Evaluation_layers/accuracy_1 �Q?/Iu       ��Ax	)�U��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossx��>
#
Evaluation_layers/accuracy_1 �Q?�C~�u       ��Ax	9�l��^�A�*g
!
Evaluation_layers/accuracy 0R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0R?�8I�u       ��Ax	^u��^�A�*g
!
Evaluation_layers/accuracy $R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 $R?��Nu       ��Ax	��|��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?���Ju       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy tQ?

Evaluation_layers/lossm_�>
#
Evaluation_layers/accuracy_1 tQ?G���u       ��Ax	�6���^�A�*g
!
Evaluation_layers/accuracy $R?

Evaluation_layers/loss>��>
#
Evaluation_layers/accuracy_1 $R?��Uu       ��Ax	�ږ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossڧ�>
#
Evaluation_layers/accuracy_1 �R?�۽�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy 0R?

Evaluation_layers/loss�q�>
#
Evaluation_layers/accuracy_1 0R?R���u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?ؚP�u       ��Ax	�!���^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/lossƈ�>
#
Evaluation_layers/accuracy_1 (R?zQ2du       ��Ax	�𸚟^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?Ǡ�u       ��Ax	��К�^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss"#�>
#
Evaluation_layers/accuracy_1 �Q?�]M�u       ��Ax	lٚ�^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/loss\�>
#
Evaluation_layers/accuracy_1 (R?�|+�u       ��Ax	�᚟^�A�*g
!
Evaluation_layers/accuracy $R?

Evaluation_layers/lossH3�>
#
Evaluation_layers/accuracy_1 $R?���Uu       ��Ax	��隟^�A�*g
!
Evaluation_layers/accuracy LQ?

Evaluation_layers/loss�Q�>
#
Evaluation_layers/accuracy_1 LQ?I*>mu       ��Ax	�>�^�A�*g
!
Evaluation_layers/accuracy DQ?

Evaluation_layers/loss'��>
#
Evaluation_layers/accuracy_1 DQ?�0�>u       ��Ax	�^���^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/loss*��>
#
Evaluation_layers/accuracy_1 <R?��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/losseN�>
#
Evaluation_layers/accuracy_1 �R?����u       ��Ax	x���^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/lossR��>
#
Evaluation_layers/accuracy_1 R?Ƭs�u       ��Ax	I��^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss+�>
#
Evaluation_layers/accuracy_1 R?7�Kju       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/loss�%�>
#
Evaluation_layers/accuracy_1 <R?����u       ��Ax	�1'��^�A�*g
!
Evaluation_layers/accuracy 0R?

Evaluation_layers/loss.�>
#
Evaluation_layers/accuracy_1 0R?T�'_u       ��Ax	n�.��^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 (R?+�[`u       ��Ax	�5��^�A�*g
!
Evaluation_layers/accuracy @R?

Evaluation_layers/lossO��>
#
Evaluation_layers/accuracy_1 @R?��æu       ��Ax	��<��^�A�*g
!
Evaluation_layers/accuracy `R?

Evaluation_layers/lossMx�>
#
Evaluation_layers/accuracy_1 `R?h6�Iu       ��Ax	[UD��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossS��>
#
Evaluation_layers/accuracy_1 �Q?�ku       ��Ax	�KL��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss&Q�>
#
Evaluation_layers/accuracy_1 �Q?*C�u       ��Ax	�S��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss@A�>
#
Evaluation_layers/accuracy_1 �Q?pD��u       ��Ax	��Z��^�A�*g
!
Evaluation_layers/accuracy HR?

Evaluation_layers/loss"F�>
#
Evaluation_layers/accuracy_1 HR?-ku       ��Ax	��a��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss! �>
#
Evaluation_layers/accuracy_1 �R?fY��u       ��Ax	R�h��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?j1�Yu       ��Ax	Һ|��^�A�*g
!
Evaluation_layers/accuracy $R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 $R?���u       ��Ax	�`���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossN��>
#
Evaluation_layers/accuracy_1 �Q?Ƕ�u       ��Ax	�ي��^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 R?XR�ru       ��Ax	h���^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss'F�>
#
Evaluation_layers/accuracy_1 R?��<�u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss?��>
#
Evaluation_layers/accuracy_1 hR?�s?�u       ��Ax	Eݠ��^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �P?�QrEu       ��Ax	�率�^�A�*g
!
Evaluation_layers/accuracy `R?

Evaluation_layers/loss�=�>
#
Evaluation_layers/accuracy_1 `R?��U{u       ��Ax	/c���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?t�xu       ��Ax	�q���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?T��)u       ��Ax	�'���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?v�rtu       ��Ax	�қ�^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss_�>
#
Evaluation_layers/accuracy_1 �Q?��׉u       ��Ax	L?ٛ�^�A�*g
!
Evaluation_layers/accuracy `R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 `R?j�u       ��Ax	�7���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?er��u       ��Ax	u盟^�A�*g
!
Evaluation_layers/accuracy lR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 lR?�X<du       ��Ax	�훟^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�r�>
#
Evaluation_layers/accuracy_1 �Q?�e�u       ��Ax	_��^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/loss|L�>
#
Evaluation_layers/accuracy_1 |R?=�ZIu       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy ,R?

Evaluation_layers/lossԼ�>
#
Evaluation_layers/accuracy_1 ,R?�l��u       ��Ax	F���^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 R?��pIu       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/loss{��>
#
Evaluation_layers/accuracy_1  R?�Qu       ��Ax	F���^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/loss*��>
#
Evaluation_layers/accuracy_1  R?]��Lu       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossn�>
#
Evaluation_layers/accuracy_1 �Q?䛋Wu       ��Ax	@���^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss�d�>
#
Evaluation_layers/accuracy_1 pR?�Nvu       ��Ax	�R%��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossʌ�>
#
Evaluation_layers/accuracy_1 �R?��u       ��Ax	��*��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossLO�>
#
Evaluation_layers/accuracy_1 �Q?RСu       ��Ax	�!1��^�A�*g
!
Evaluation_layers/accuracy �P?

Evaluation_layers/loss�3�>
#
Evaluation_layers/accuracy_1 �P?Л)u       ��Ax	u!7��^�A�*g
!
Evaluation_layers/accuracy @R?

Evaluation_layers/loss�c�>
#
Evaluation_layers/accuracy_1 @R?Y}�u       ��Ax	��<��^�A�*g
!
Evaluation_layers/accuracy dR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 dR?���Zu       ��Ax	R�B��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�o�>
#
Evaluation_layers/accuracy_1 �R?͎�ru       ��Ax	��H��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss~��>
#
Evaluation_layers/accuracy_1 �R?'u��u       ��Ax	)+N��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/losso��>
#
Evaluation_layers/accuracy_1 �R?���%u       ��Ax	�^��^�A�*g
!
Evaluation_layers/accuracy 0R?

Evaluation_layers/loss�b�>
#
Evaluation_layers/accuracy_1 0R?��-u       ��Ax	��d��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?�$�u       ��Ax	�i��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossD�>
#
Evaluation_layers/accuracy_1 �R?@8��u       ��Ax	Ъo��^�A�*g
!
Evaluation_layers/accuracy @R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 @R?rݦ�u       ��Ax	ԇu��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossL7�>
#
Evaluation_layers/accuracy_1 �R?G�m�u       ��Ax	�T{��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss;��>
#
Evaluation_layers/accuracy_1 �Q?.�9u       ��Ax	g6���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss8��>
#
Evaluation_layers/accuracy_1 �R?���Hu       ��Ax	<;���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�P��u       ��Ax	8܌��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?P�u       ��Ax	Y����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�D�>
#
Evaluation_layers/accuracy_1 �Q?M@��u       ��Ax	.6���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss?�>
#
Evaluation_layers/accuracy_1 �Q?���u       ��Ax	�䨜�^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/loss�r�>
#
Evaluation_layers/accuracy_1 <R?q}�>u       ��Ax	&���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss6R�>
#
Evaluation_layers/accuracy_1 �Q?�:�u       ��Ax	�Ƴ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss5�>
#
Evaluation_layers/accuracy_1 �R?GPcu       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy \R?

Evaluation_layers/loss�[�>
#
Evaluation_layers/accuracy_1 \R?約u       ��Ax	�5���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�u��u       ��Ax	�tÜ�^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss ��>
#
Evaluation_layers/accuracy_1 R?)O�u       ��Ax	��Ȝ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss\P�>
#
Evaluation_layers/accuracy_1 �R?��T/u       ��Ax	v�Μ�^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss~d�>
#
Evaluation_layers/accuracy_1 pR?��?u       ��Ax	��Ԝ�^�A�*g
!
Evaluation_layers/accuracy \R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 \R?LO�u       ��Ax	�6霟^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/lossV6�>
#
Evaluation_layers/accuracy_1 hR?��u       ��Ax	�,^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?�W��u       ��Ax	�F�^�A�*g
!
Evaluation_layers/accuracy 0R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0R?_3nDu       ��Ax	(���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss
%�>
#
Evaluation_layers/accuracy_1 �R?UM�Xu       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossL��>
#
Evaluation_layers/accuracy_1 �Q?;\��u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossY��>
#
Evaluation_layers/accuracy_1 �Q?M(�"u       ��Ax	��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss@�>
#
Evaluation_layers/accuracy_1 �R?_֋u       ��Ax	�
��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss|�>
#
Evaluation_layers/accuracy_1 �R?²�eu       ��Ax	�L��^�A�*g
!
Evaluation_layers/accuracy |Q?

Evaluation_layers/lossd��>
#
Evaluation_layers/accuracy_1 |Q?��'u       ��Ax	�@��^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 |R?4&�u       ��Ax	�O&��^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 R?�	bu       ��Ax	&+��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�d�>
#
Evaluation_layers/accuracy_1 �R?;��Ju       ��Ax	�M0��^�A�*g
!
Evaluation_layers/accuracy 8R?

Evaluation_layers/loss*�>
#
Evaluation_layers/accuracy_1 8R?��ou       ��Ax	5v5��^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/loss�7�>
#
Evaluation_layers/accuracy_1 (R?���du       ��Ax	��:��^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/lossZ��>
#
Evaluation_layers/accuracy_1 pR?6RVu       ��Ax	��?��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss^�>
#
Evaluation_layers/accuracy_1 �R?Bz�[u       ��Ax	��D��^�A�*g
!
Evaluation_layers/accuracy dR?

Evaluation_layers/loss�.�>
#
Evaluation_layers/accuracy_1 dR?�Fu       ��Ax	��I��^�A�*g
!
Evaluation_layers/accuracy 0R?

Evaluation_layers/lossdz�>
#
Evaluation_layers/accuracy_1 0R?�h�Ku       ��Ax	0O��^�A�*g
!
Evaluation_layers/accuracy 0R?

Evaluation_layers/loss�	�>
#
Evaluation_layers/accuracy_1 0R?l;+�u       ��Ax	PT��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�W�>
#
Evaluation_layers/accuracy_1 �R?u.u       ��Ax	 'g��^�A�*g
!
Evaluation_layers/accuracy 0Q?

Evaluation_layers/lossR��>
#
Evaluation_layers/accuracy_1 0Q?P�H�u       ��Ax	��k��^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  R?5_�u       ��Ax	��p��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?fG��u       ��Ax	Kv��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	*�z��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossJs�>
#
Evaluation_layers/accuracy_1 �R?r��u       ��Ax	va��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?�)gu       ��Ax	g����^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 <R?~qru       ��Ax	Z^���^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss�G�>
#
Evaluation_layers/accuracy_1 R?W�\�u       ��Ax	td���^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss�B�>
#
Evaluation_layers/accuracy_1 hR?�U�u       ��Ax	|���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss0��>
#
Evaluation_layers/accuracy_1 �R?��7u       ��Ax	W����^�A�*g
!
Evaluation_layers/accuracy lR?

Evaluation_layers/loss�&�>
#
Evaluation_layers/accuracy_1 lR?��u       ��Ax	�.���^�A�*g
!
Evaluation_layers/accuracy XR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 XR?�o7u       ��Ax	�į��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss$�>
#
Evaluation_layers/accuracy_1 �R?�0�{u       ��Ax	)���^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/lossE(�>
#
Evaluation_layers/accuracy_1 |R?9�Hu       ��Ax	R����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossR��>
#
Evaluation_layers/accuracy_1 �R?�v�zu       ��Ax	צ���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossr��>
#
Evaluation_layers/accuracy_1 �R?2��u       ��Ax	w_�^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss'�>
#
Evaluation_layers/accuracy_1 R?3*�vu       ��Ax	�hǝ�^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?�tu       ��Ax	o�̝�^�A�*g
!
Evaluation_layers/accuracy 4R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 4R?�(Mku       ��Ax	|ҝ�^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/loss2��>
#
Evaluation_layers/accuracy_1 <R?�8�u       ��Ax	�䝟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossw��>
#
Evaluation_layers/accuracy_1 �R?��T�u       ��Ax	ϸ靟^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�O�>
#
Evaluation_layers/accuracy_1 S?��U�u       ��Ax	��^�A�*g
!
Evaluation_layers/accuracy XR?

Evaluation_layers/lossn��>
#
Evaluation_layers/accuracy_1 XR?�?-�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossH��>
#
Evaluation_layers/accuracy_1 �R?R���u       ��Ax	`f���^�A�*g
!
Evaluation_layers/accuracy `R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 `R?���u       ��Ax	D ��^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss;��>
#
Evaluation_layers/accuracy_1 pR?�l�u       ��Ax	P���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossՅ�>
#
Evaluation_layers/accuracy_1 �R?�u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy xR?

Evaluation_layers/loss6��>
#
Evaluation_layers/accuracy_1 xR?ă�u       ��Ax	�3��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossR�>
#
Evaluation_layers/accuracy_1 �R?�r�u       ��Ax	:���^�A�*g
!
Evaluation_layers/accuracy @Q?

Evaluation_layers/losszR�>
#
Evaluation_layers/accuracy_1 @Q?�>�u       ��Ax	�k*��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossZ�>
#
Evaluation_layers/accuracy_1 �R?��!u       ��Ax	N_0��^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  R?Zg;�u       ��Ax	9�5��^�A�*g
!
Evaluation_layers/accuracy Q?

Evaluation_layers/loss�b�>
#
Evaluation_layers/accuracy_1 Q?��
u       ��Ax	;��^�A�*g
!
Evaluation_layers/accuracy HR?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 HR?úAu       ��Ax	XW@��^�A�*g
!
Evaluation_layers/accuracy tR?

Evaluation_layers/lossP��>
#
Evaluation_layers/accuracy_1 tR?��/Cu       ��Ax	��E��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�?�>
#
Evaluation_layers/accuracy_1 �R?L�S.u       ��Ax	�#K��^�A�*g
!
Evaluation_layers/accuracy 4R?

Evaluation_layers/lossWX�>
#
Evaluation_layers/accuracy_1 4R?�r�cu       ��Ax	WmP��^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  R?4qvu       ��Ax	|�U��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?Z��u       ��Ax	�j[��^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/lossT�>
#
Evaluation_layers/accuracy_1 $S?zA��u       ��Ax	M�j��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossp��>
#
Evaluation_layers/accuracy_1 �R?����u       ��Ax	݁p��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss.\�>
#
Evaluation_layers/accuracy_1 �R?�R�u       ��Ax	�v��^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 R?,�+]u       ��Ax	��{��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�p�>
#
Evaluation_layers/accuracy_1 �R?��du       ��Ax	\���^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/loss8��>
#
Evaluation_layers/accuracy_1 |R?�Ə�u       ��Ax	Ј��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?h(��u       ��Ax	�3���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�0�>
#
Evaluation_layers/accuracy_1 �R?ҴN%u       ��Ax	M֕��^�A�*g
!
Evaluation_layers/accuracy HR?

Evaluation_layers/loss3��>
#
Evaluation_layers/accuracy_1 HR?IS(�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�_�>
#
Evaluation_layers/accuracy_1 �R?�kgu       ��Ax	�m���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossP��>
#
Evaluation_layers/accuracy_1 �R?�/Ou       ��Ax	б��^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss�?�>
#
Evaluation_layers/accuracy_1 R?o�0�u       ��Ax	ݦ���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?{�./u       ��Ax	 k���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�f�>
#
Evaluation_layers/accuracy_1 �R?Hh?�u       ��Ax	yWÞ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossgU�>
#
Evaluation_layers/accuracy_1 �R?>�}u       ��Ax	(ɞ�^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q? �Vu       ��Ax	��Ξ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss*��>
#
Evaluation_layers/accuracy_1 �R?�IdBu       ��Ax	�bԞ�^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?ےV5u       ��Ax	{�ٞ�^�A�*g
!
Evaluation_layers/accuracy DR?

Evaluation_layers/loss�m�>
#
Evaluation_layers/accuracy_1 DR?޵քu       ��Ax	*[ߞ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?
�Lu       ��Ax	V垟^�A�*g
!
Evaluation_layers/accuracy xQ?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 xQ?m �u       ��Ax	J� ��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�	�>
#
Evaluation_layers/accuracy_1 �Q?���u       ��Ax	�>	��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss`��>
#
Evaluation_layers/accuracy_1 �Q?�e9u       ��Ax	��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?kA>�u       ��Ax	:���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?��1u       ��Ax	Rq!��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�U�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	�')��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossV��>
#
Evaluation_layers/accuracy_1 �R?���'u       ��Ax	f�0��^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/loss�0�>
#
Evaluation_layers/accuracy_1  R?���Yu       ��Ax	�?9��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss^��>
#
Evaluation_layers/accuracy_1 �R?��d~u       ��Ax	��A��^�A�*g
!
Evaluation_layers/accuracy `R?

Evaluation_layers/lossʨ�>
#
Evaluation_layers/accuracy_1 `R?�'�u       ��Ax	�,J��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?��6u       ��Ax	!�h��^�A�*g
!
Evaluation_layers/accuracy DR?

Evaluation_layers/loss"��>
#
Evaluation_layers/accuracy_1 DR?R%�u       ��Ax	��q��^�A�*g
!
Evaluation_layers/accuracy HR?

Evaluation_layers/lossh��>
#
Evaluation_layers/accuracy_1 HR?���u       ��Ax	wnz��^�A�*g
!
Evaluation_layers/accuracy @R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 @R?e6�Eu       ��Ax	�b���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossЌ�>
#
Evaluation_layers/accuracy_1 �R??��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss"��>
#
Evaluation_layers/accuracy_1 �R?��{[u       ��Ax	�k���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossl��>
#
Evaluation_layers/accuracy_1 �R?Q�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossf��>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	)���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss5Q�>
#
Evaluation_layers/accuracy_1 �R?ol�u       ��Ax	&|���^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/lossO��>
#
Evaluation_layers/accuracy_1  S?m_؋u       ��Ax	\���^�A�*g
!
Evaluation_layers/accuracy tR?

Evaluation_layers/loss�e�>
#
Evaluation_layers/accuracy_1 tR?Pr�u       ��Ax	:ʟ�^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/lossXO�>
#
Evaluation_layers/accuracy_1 �S?c�Uu       ��Ax	��џ�^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 pR?S��u       ��Ax	�ٟ�^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/loss.O�>
#
Evaluation_layers/accuracy_1 |R?W��Ou       ��Ax	�_⟟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?��pu       ��Ax	rT꟟^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 <R?T�\�u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�]�>
#
Evaluation_layers/accuracy_1 �R?Đ�]u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy xR?

Evaluation_layers/loss�-�>
#
Evaluation_layers/accuracy_1 xR?4�b*u       ��Ax	\��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss	8�>
#
Evaluation_layers/accuracy_1 �R?�Ōu       ��Ax	F5��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�1�>
#
Evaluation_layers/accuracy_1 S?Uݦ&u       ��Ax	�>��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?R<SIu       ��Ax	�h#��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�J�>
#
Evaluation_layers/accuracy_1 �R?�ǇOu       ��Ax	��*��^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/lossd��>
#
Evaluation_layers/accuracy_1 |R?�f�u       ��Ax	M�1��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss^��>
#
Evaluation_layers/accuracy_1 �R?aͅ�u       ��Ax	�8��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossT��>
#
Evaluation_layers/accuracy_1 �R?��.u       ��Ax	�[@��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�v�>
#
Evaluation_layers/accuracy_1 �R?�n�u       ��Ax	ЩG��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?<�qu       ��Ax	��N��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?��p�u       ��Ax	DV��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	5�\��^�A�*g
!
Evaluation_layers/accuracy dR?

Evaluation_layers/loss=/�>
#
Evaluation_layers/accuracy_1 dR?�_�du       ��Ax	�@c��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossTk�>
#
Evaluation_layers/accuracy_1 �R?80Ĳu       ��Ax	Ax��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�?�>
#
Evaluation_layers/accuracy_1 �R?#k��u       ��Ax	�z��^�A�*g
!
Evaluation_layers/accuracy XR?

Evaluation_layers/loss\q�>
#
Evaluation_layers/accuracy_1 XR?b�Gu       ��Ax	�熠�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossd�>
#
Evaluation_layers/accuracy_1 �R?��$u       ��Ax	a���^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss�j�>
#
Evaluation_layers/accuracy_1 hR?S��u       ��Ax	]����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossr��>
#
Evaluation_layers/accuracy_1 �R?�=|u       ��Ax	K,���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossB^�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	�B���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossvg�>
#
Evaluation_layers/accuracy_1 S?�9� u       ��Ax	=���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossqJ�>
#
Evaluation_layers/accuracy_1 �R?�4�u       ��Ax	Џ���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�h�>
#
Evaluation_layers/accuracy_1 �Q?7��u       ��Ax	"���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossP��>
#
Evaluation_layers/accuracy_1 �Q?wF��u       ��Ax	�HԠ�^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss�$�>
#
Evaluation_layers/accuracy_1 hR?�e�u       ��Ax	I۠�^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/lossT��>
#
Evaluation_layers/accuracy_1  S?���Uu       ��Ax	:L⠟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?���^u       ��Ax	�頟^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/loss(��>
#
Evaluation_layers/accuracy_1 |R?:KDu       ��Ax	yn^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?�Vgu       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy TR?

Evaluation_layers/loss.�>
#
Evaluation_layers/accuracy_1 TR?���%u       ��Ax	ؽ���^�A�*g
!
Evaluation_layers/accuracy `R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 `R?���Ou       ��Ax	�a���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss~��>
#
Evaluation_layers/accuracy_1 �Q?,+��u       ��Ax	V���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossr'�>
#
Evaluation_layers/accuracy_1 �R?ū��u       ��Ax	�	
��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�;�>
#
Evaluation_layers/accuracy_1 �R?��5�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossD��>
#
Evaluation_layers/accuracy_1 �R?㥐u       ��Ax	/	��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?Z�Ju       ��Ax	�.#��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss@��>
#
Evaluation_layers/accuracy_1 �Q?�h�u       ��Ax	X6(��^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/loss?��>
#
Evaluation_layers/accuracy_1 (R?��u       ��Ax	'�-��^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/lossB\�>
#
Evaluation_layers/accuracy_1 |R?�25cu       ��Ax	qI3��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?��m�u       ��Ax	}�8��^�A�*g
!
Evaluation_layers/accuracy LS?

Evaluation_layers/loss�?�>
#
Evaluation_layers/accuracy_1 LS?S�#Bu       ��Ax	7�>��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�z�>
#
Evaluation_layers/accuracy_1 �Q?Ʊ-wu       ��Ax	4zD��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�H�>
#
Evaluation_layers/accuracy_1 �R?i݈u       ��Ax	_�I��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossH$�>
#
Evaluation_layers/accuracy_1 �R?R�m/u       ��Ax	�%Y��^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 <R?�s��u       ��Ax	�^^��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss<@�>
#
Evaluation_layers/accuracy_1 �R?��!�u       ��Ax	}�c��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?���u       ��Ax	ui��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss�8�>
#
Evaluation_layers/accuracy_1  S?�{V)u       ��Ax	=On��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossy�>
#
Evaluation_layers/accuracy_1 �R?j0M�u       ��Ax	��s��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�/o"u       ��Ax	y y��^�A�*g
!
Evaluation_layers/accuracy `Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 `Q?�:�u       ��Ax	eb~��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss8�>
#
Evaluation_layers/accuracy_1 S?��Tu       ��Ax	iȃ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossA��>
#
Evaluation_layers/accuracy_1 �R?NT�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 �R?,YV�u       ��Ax	�ޗ��^�A�*g
!
Evaluation_layers/accuracy TR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 TR?O�CVu       ��Ax	Q띡�^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�y�>
#
Evaluation_layers/accuracy_1 S?����u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss̌�>
#
Evaluation_layers/accuracy_1  S?��u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy dQ?

Evaluation_layers/lossR�>
#
Evaluation_layers/accuracy_1 dQ?���u       ��Ax	Bޮ��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�W�>
#
Evaluation_layers/accuracy_1 S?���u       ��Ax	�c���^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss�w�>
#
Evaluation_layers/accuracy_1 hR?ߚa�u       ��Ax	{ֹ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�%�>
#
Evaluation_layers/accuracy_1 �R?�!�%u       ��Ax	M����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossփ�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	Hš�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R? �`�u       ��Ax	�;ˡ�^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossl�>
#
Evaluation_layers/accuracy_1 �Q?��5:u       ��Ax	��ۡ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?_&��u       ��Ax	$Uᡟ^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/loss3��>
#
Evaluation_layers/accuracy_1 (R?�{әu       ��Ax	�硟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�P�>
#
Evaluation_layers/accuracy_1 �R?�(<Au       ��Ax	�Y졟^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?�mU�u       ��Ax	�i�^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/losst��>
#
Evaluation_layers/accuracy_1 pR?��u       ��Ax	H����^�A�*g
!
Evaluation_layers/accuracy ,R?

Evaluation_layers/loss3��>
#
Evaluation_layers/accuracy_1 ,R?}zM�u       ��Ax	F����^�A�*g
!
Evaluation_layers/accuracy DR?

Evaluation_layers/loss�`�>
#
Evaluation_layers/accuracy_1 DR?�ZDu       ��Ax	L� ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss.��>
#
Evaluation_layers/accuracy_1 �R?aE�u       ��Ax	d���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossB��>
#
Evaluation_layers/accuracy_1 �R?e̽u       ��Ax	��
��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss<4�>
#
Evaluation_layers/accuracy_1 �R?�>�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?#��u       ��Ax	�"��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss
=�>
#
Evaluation_layers/accuracy_1 �R?i�0u       ��Ax	�;(��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�7�tu       ��Ax	�h-��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss"��>
#
Evaluation_layers/accuracy_1 �R?E�u       ��Ax	�E2��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossN�>
#
Evaluation_layers/accuracy_1 �R?���mu       ��Ax	�[7��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?����u       ��Ax	�S<��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss,��>
#
Evaluation_layers/accuracy_1 �Q?�=�u       ��Ax	�wA��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�+�>
#
Evaluation_layers/accuracy_1 �Q?%�/�u       ��Ax	^�F��^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/lossi;�>
#
Evaluation_layers/accuracy_1  R?D�Ju       ��Ax	{�K��^�A�*g
!
Evaluation_layers/accuracy xR?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 xR?fw��u       ��Ax	�:Y��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss_��>
#
Evaluation_layers/accuracy_1 �R?��Ku       ��Ax	�R^��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossd��>
#
Evaluation_layers/accuracy_1 �R?G���u       ��Ax	y5c��^�A�*g
!
Evaluation_layers/accuracy lR?

Evaluation_layers/loss\k�>
#
Evaluation_layers/accuracy_1 lR?�i�u       ��Ax	](h��^�A�*g
!
Evaluation_layers/accuracy 0R?

Evaluation_layers/lossB�>
#
Evaluation_layers/accuracy_1 0R?{V�5u       ��Ax	gSm��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss$��>
#
Evaluation_layers/accuracy_1 �R?�(-Cu       ��Ax	�jr��^�A�*g
!
Evaluation_layers/accuracy \R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 \R?�y�u       ��Ax	Z�w��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	��|��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossL��>
#
Evaluation_layers/accuracy_1 �R?'֓�u       ��Ax	�Ł��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�.�>
#
Evaluation_layers/accuracy_1 �R?CE$u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/lossO�>
#
Evaluation_layers/accuracy_1 |R?	�u       ��Ax	p����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�H�>
#
Evaluation_layers/accuracy_1 �R?g9"u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss2��>
#
Evaluation_layers/accuracy_1 S?����u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?� qu       ��Ax	�ȧ��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/lossH<�>
#
Evaluation_layers/accuracy_1  S?k�`u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�b�>
#
Evaluation_layers/accuracy_1 �R?��J�u       ��Ax	F3���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?r%�
u       ��Ax	�[���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?CR��u       ��Ax	�i���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?��Yru       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss%��>
#
Evaluation_layers/accuracy_1 �R?�t��u       ��Ax	cǢ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�"�>
#
Evaluation_layers/accuracy_1 �R?q�!u       ��Ax	�բ�^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossN��>
#
Evaluation_layers/accuracy_1 S?�2d4u       ��Ax	3ڢ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossDK�>
#
Evaluation_layers/accuracy_1 �R?�|Ǌu       ��Ax	�Bߢ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	ȥ䢟^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�X�>
#
Evaluation_layers/accuracy_1 �Q?j���u       ��Ax	L�颟^�A�*g
!
Evaluation_layers/accuracy tR?

Evaluation_layers/lossη�>
#
Evaluation_layers/accuracy_1 tR?qϘ u       ��Ax	Bn^�A�*g
!
Evaluation_layers/accuracy PS?

Evaluation_layers/loss�V�>
#
Evaluation_layers/accuracy_1 PS?�Y�@u       ��Ax		����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?_6�Vu       ��Ax	/T���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossF7�>
#
Evaluation_layers/accuracy_1 �R?�c�u       ��Ax	?����^�A�*g
!
Evaluation_layers/accuracy <S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 <S?2��ku       ��Ax	ba��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy xR?

Evaluation_layers/loss&��>
#
Evaluation_layers/accuracy_1 xR?�t�su       ��Ax	1f��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss9(�>
#
Evaluation_layers/accuracy_1 �R?��V�u       ��Ax	�!��^�A�*g
!
Evaluation_layers/accuracy lS?

Evaluation_layers/lossb��>
#
Evaluation_layers/accuracy_1 lS?�	Qu       ��Ax	�x&��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�!�>
#
Evaluation_layers/accuracy_1 �R?y�[7u       ��Ax	T�+��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�Z��u       ��Ax	�u1��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossb��>
#
Evaluation_layers/accuracy_1 �R?	��{u       ��Ax	h=7��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�T�>
#
Evaluation_layers/accuracy_1 �R?�	�u       ��Ax	 
=��^�A�*g
!
Evaluation_layers/accuracy lR?

Evaluation_layers/loss`��>
#
Evaluation_layers/accuracy_1 lR?-g"u       ��Ax	��B��^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss�M�>
#
Evaluation_layers/accuracy_1 R?�iMou       ��Ax	a�H��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�c�>
#
Evaluation_layers/accuracy_1 �R?�-u       ��Ax	Q']��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�w�>
#
Evaluation_layers/accuracy_1 �R?�zequ       ��Ax	�b��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossX��>
#
Evaluation_layers/accuracy_1 �R?�
9}u       ��Ax	#�g��^�A�*g
!
Evaluation_layers/accuracy HS?

Evaluation_layers/loss�w�>
#
Evaluation_layers/accuracy_1 HS?5�u       ��Ax	GCm��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�h�>
#
Evaluation_layers/accuracy_1 �R?X!��u       ��Ax	\er��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�5�>
#
Evaluation_layers/accuracy_1 �R?�^eu       ��Ax	��w��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossX��>
#
Evaluation_layers/accuracy_1 �R?�K�]u       ��Ax	��|��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossD0�>
#
Evaluation_layers/accuracy_1 �R?��$u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossxf�>
#
Evaluation_layers/accuracy_1 �R?ֲG�u       ��Ax	Go���^�A�*g
!
Evaluation_layers/accuracy lR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 lR?݂�u       ��Ax	�H���^�A�*g
!
Evaluation_layers/accuracy dR?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 dR?�\ �u       ��Ax	EP���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�mb>u       ��Ax	}4���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossb7�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	�خ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�a�>
#
Evaluation_layers/accuracy_1 �R?�뵂u       ��Ax	�?���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossuy�>
#
Evaluation_layers/accuracy_1 �R?q0?yu       ��Ax	;����^�A�*g
!
Evaluation_layers/accuracy XS?

Evaluation_layers/loss|��>
#
Evaluation_layers/accuracy_1 XS?��GBu       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?I5��u       ��Ax	��ģ�^�A�*g
!
Evaluation_layers/accuracy tS?

Evaluation_layers/loss�!�>
#
Evaluation_layers/accuracy_1 tS?����u       ��Ax	-ʣ�^�A�*g
!
Evaluation_layers/accuracy ,S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 ,S?b�p�u       ��Ax	��ϣ�^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/loss�D�>
#
Evaluation_layers/accuracy_1 TS?��I�u       ��Ax	��գ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?о�u       ��Ax	y룟^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?����u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�y�>
#
Evaluation_layers/accuracy_1 �R?#7ju       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?"��u       ��Ax	�x��^�A�*g
!
Evaluation_layers/accuracy <S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 <S?���u       ��Ax	n,��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss\��>
#
Evaluation_layers/accuracy_1 �R?]�e�u       ��Ax	?���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossm��>
#
Evaluation_layers/accuracy_1 �R?*��yu       ��Ax	K]��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossX"�>
#
Evaluation_layers/accuracy_1 �R?�
�3u       ��Ax	� %��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss1�>
#
Evaluation_layers/accuracy_1 S?�z��u       ��Ax	h�-��^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 R?���du       ��Ax	�56��^�A�*g
!
Evaluation_layers/accuracy 8S?

Evaluation_layers/loss0��>
#
Evaluation_layers/accuracy_1 8S?��ͯu       ��Ax	�cT��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossO��>
#
Evaluation_layers/accuracy_1 �R?��u       ��Ax	Z]��^�A�*g
!
Evaluation_layers/accuracy ,S?

Evaluation_layers/lossRx�>
#
Evaluation_layers/accuracy_1 ,S?Y�jMu       ��Ax	��d��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossz��>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	Jzm��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss̋�>
#
Evaluation_layers/accuracy_1 S?�8Z�u       ��Ax	�Rv��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss|��>
#
Evaluation_layers/accuracy_1 �R? �l�u       ��Ax	��~��^�A�*g
!
Evaluation_layers/accuracy @S?

Evaluation_layers/loss�O�>
#
Evaluation_layers/accuracy_1 @S?W���u       ��Ax	�؆��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�;�>
#
Evaluation_layers/accuracy_1 �R?��8u       ��Ax	�ގ��^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/loss�'�>
#
Evaluation_layers/accuracy_1 $S?q�W�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�ϙu       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?T���u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossX��>
#
Evaluation_layers/accuracy_1 �R?��S�u       ��Ax	H�ä�^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossm��>
#
Evaluation_layers/accuracy_1 S?I��@u       ��Ax	�9̤�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossg��>
#
Evaluation_layers/accuracy_1 �R?1eȾu       ��Ax	��Ԥ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossv��>
#
Evaluation_layers/accuracy_1 �R?I//<u       ��Ax	llݤ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?��du       ��Ax	P�够^�A�*g
!
Evaluation_layers/accuracy lS?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 lS?�pP�u       ��Ax	��줟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/losshs�>
#
Evaluation_layers/accuracy_1 �R?!	�u       ��Ax	�\���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss4�>
#
Evaluation_layers/accuracy_1 �R?"�/�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1  S?��g�u       ��Ax	�%��^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/lossS�>
#
Evaluation_layers/accuracy_1 TS?$t.u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	��$��^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/lossN��>
#
Evaluation_layers/accuracy_1 �S?�y�pu       ��Ax	jU,��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss&*�>
#
Evaluation_layers/accuracy_1 S?FX'�u       ��Ax	�3��^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/lossչ�>
#
Evaluation_layers/accuracy_1 |R?���hu       ��Ax	�p:��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossn|�>
#
Evaluation_layers/accuracy_1 �R?����u       ��Ax	��A��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss:0�>
#
Evaluation_layers/accuracy_1 �R?�#+�u       ��Ax	T>I��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?���u       ��Ax	�P��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?DJiu       ��Ax	V�W��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/lossSs�>
#
Evaluation_layers/accuracy_1  S?���u       ��Ax	�^��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?{�pu       ��Ax	%�y��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/lossX��>
#
Evaluation_layers/accuracy_1  S?DV�[u       ��Ax	�v���^�A�*g
!
Evaluation_layers/accuracy \S?

Evaluation_layers/loss|"�>
#
Evaluation_layers/accuracy_1 \S?�6u�u       ��Ax	�݈��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?ȁd�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?n�]u       ��Ax	1���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?cX�u       ��Ax	 韥�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss:5�>
#
Evaluation_layers/accuracy_1 �R?Q�u       ��Ax	�㦥�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�H�>
#
Evaluation_layers/accuracy_1 �R?s<o�u       ��Ax	�t���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�?�>
#
Evaluation_layers/accuracy_1 �R?{�t�u       ��Ax	-B���^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 pR?Xiuu       ��Ax	(����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossE�>
#
Evaluation_layers/accuracy_1 S?ç��u       ��Ax	�:֥�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?B�=u       ��Ax	\�ܥ�^�A�*g
!
Evaluation_layers/accuracy HR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 HR?��j	u       ��Ax	�p䥟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	ڕ륟^�A�*g
!
Evaluation_layers/accuracy hS?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 hS?,��u       ��Ax	Ŋ�^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1  R?���Lu       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossc��>
#
Evaluation_layers/accuracy_1 �R?��u       ��Ax	K����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?r0u       ��Ax	(��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�;�>
#
Evaluation_layers/accuracy_1 �R?�?�bu       ��Ax	$���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossH^�>
#
Evaluation_layers/accuracy_1 �R?�vV
u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss_��>
#
Evaluation_layers/accuracy_1 �R?`�u       ��Ax	V�!��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss00�>
#
Evaluation_layers/accuracy_1 S?����u       ��Ax	kM'��^�A�*g
!
Evaluation_layers/accuracy DS?

Evaluation_layers/loss-�>
#
Evaluation_layers/accuracy_1 DS?��-�u       ��Ax	i�,��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�z�>
#
Evaluation_layers/accuracy_1 �R?К��u       ��Ax	��2��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�B�>
#
Evaluation_layers/accuracy_1 S?u~�u       ��Ax	&w8��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossM*�>
#
Evaluation_layers/accuracy_1 �R?�:�@u       ��Ax	�=��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�B.?u       ��Ax	.�C��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/lossp�>
#
Evaluation_layers/accuracy_1  S?v"�Hu       ��Ax	�I��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�M�>
#
Evaluation_layers/accuracy_1 S?�o�xu       ��Ax	�LN��^�A�*g
!
Evaluation_layers/accuracy <S?

Evaluation_layers/lossJ��>
#
Evaluation_layers/accuracy_1 <S?M���u       ��Ax	V�S��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss8�>
#
Evaluation_layers/accuracy_1 S?M�CHu       ��Ax	+e��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossf�>
#
Evaluation_layers/accuracy_1 �R?V8�u       ��Ax	��j��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss8�>
#
Evaluation_layers/accuracy_1 �R?�[-4u       ��Ax	�hp��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss �>
#
Evaluation_layers/accuracy_1  S?���Tu       ��Ax	j�u��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1  S?����u       ��Ax	��{��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?�a�u       ��Ax	4���^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/loss�!�>
#
Evaluation_layers/accuracy_1 TS?���uu       ��Ax	Qw���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�*�>
#
Evaluation_layers/accuracy_1 S?K�u�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossrL�>
#
Evaluation_layers/accuracy_1 �R?���Du       ��Ax	qđ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�6�>
#
Evaluation_layers/accuracy_1 �R?F7g^u       ��Ax	�o���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss+x�>
#
Evaluation_layers/accuracy_1 �R?Pިmu       ��Ax	�᫦�^�A�*g
!
Evaluation_layers/accuracy HS?

Evaluation_layers/lossV��>
#
Evaluation_layers/accuracy_1 HS?�/.	u       ��Ax	KZ���^�A�*g
!
Evaluation_layers/accuracy (S?

Evaluation_layers/loss"��>
#
Evaluation_layers/accuracy_1 (S?F=u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss[��>
#
Evaluation_layers/accuracy_1 �R?݋P8u       ��Ax	D����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?�%�7u       ��Ax	ʆæ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss"��>
#
Evaluation_layers/accuracy_1 �R?p��u       ��Ax	�0ɦ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss|�>
#
Evaluation_layers/accuracy_1 �R?�P��u       ��Ax	��Φ�^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss z�>
#
Evaluation_layers/accuracy_1  S?��Mu       ��Ax	AԦ�^�A�*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/loss�z�>
#
Evaluation_layers/accuracy_1 4S?���pu       ��Ax	�gڦ�^�A�*g
!
Evaluation_layers/accuracy (S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 (S?��o�u       ��Ax	�ߦ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossd��>
#
Evaluation_layers/accuracy_1 �R?�ظu       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss^�>
#
Evaluation_layers/accuracy_1 �R?w	P�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0S?���u       ��Ax	bd���^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/loss�R�>
#
Evaluation_layers/accuracy_1 $S?.�|u       ��Ax	Mz��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�z�>
#
Evaluation_layers/accuracy_1 �R?[���u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/lossZ�>
#
Evaluation_layers/accuracy_1 0S?�n��u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/losstE�>
#
Evaluation_layers/accuracy_1 <R?=�$!u       ��Ax	�q��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss3F�>
#
Evaluation_layers/accuracy_1 �R?B�du       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�2�>
#
Evaluation_layers/accuracy_1 �R?n��3u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?�mcBu       ��Ax	�[ ��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss2v�>
#
Evaluation_layers/accuracy_1 �Q?�f+�u       ��Ax	/��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss:��>
#
Evaluation_layers/accuracy_1 �R?��c*u       ��Ax	p�4��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?��U�u       ��Ax	(�9��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R? 'bu       ��Ax	�?��^�A�*g
!
Evaluation_layers/accuracy |S?

Evaluation_layers/loss`��>
#
Evaluation_layers/accuracy_1 |S?'���u       ��Ax	>�D��^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss�$�>
#
Evaluation_layers/accuracy_1 �S?�\<u       ��Ax	��I��^�A�*g
!
Evaluation_layers/accuracy \R?

Evaluation_layers/lossǳ�>
#
Evaluation_layers/accuracy_1 \R?[l�u       ��Ax	l�N��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?��u       ��Ax	3�S��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossY��>
#
Evaluation_layers/accuracy_1 S?��&�u       ��Ax	b�X��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossgs�>
#
Evaluation_layers/accuracy_1 �R?V�$u       ��Ax	�]��^�A�*g
!
Evaluation_layers/accuracy dS?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 dS?XJ��u       ��Ax	�xl��^�A�*g
!
Evaluation_layers/accuracy LS?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 LS?E�X4u       ��Ax	F0q��^�A�*g
!
Evaluation_layers/accuracy 4R?

Evaluation_layers/lossh6�>
#
Evaluation_layers/accuracy_1 4R?'��u       ��Ax	��u��^�A�*g
!
Evaluation_layers/accuracy `R?

Evaluation_layers/lossty�>
#
Evaluation_layers/accuracy_1 `R?k���u       ��Ax	~�z��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossn�>
#
Evaluation_layers/accuracy_1 �R?��%u       ��Ax	�D��^�A�*g
!
Evaluation_layers/accuracy 4R?

Evaluation_layers/loss�!�>
#
Evaluation_layers/accuracy_1 4R?hVE�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?	:�u       ��Ax	o����^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/lossMt�>
#
Evaluation_layers/accuracy_1  S?J�z�u       ��Ax	<:���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/losscd�>
#
Evaluation_layers/accuracy_1 �R? ��tu       ��Ax	�ܑ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossK/�>
#
Evaluation_layers/accuracy_1 �R?<�u       ��Ax	-䖧�^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1  S?S2��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss ��>
#
Evaluation_layers/accuracy_1 �R?$`\�u       ��Ax	�۫��^�A�*g
!
Evaluation_layers/accuracy LR?

Evaluation_layers/loss;��>
#
Evaluation_layers/accuracy_1 LR?�o�u       ��Ax	H���^�A�*g
!
Evaluation_layers/accuracy 8R?

Evaluation_layers/loss�&�>
#
Evaluation_layers/accuracy_1 8R?�J,u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy HR?

Evaluation_layers/loss�j�>
#
Evaluation_layers/accuracy_1 HR?���u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy 8R?

Evaluation_layers/loss�y�>
#
Evaluation_layers/accuracy_1 8R?�}�$u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy lS?

Evaluation_layers/lossT�>
#
Evaluation_layers/accuracy_1 lS?xu       ��Ax	0.ŧ�^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?��:u       ��Ax	Aʧ�^�A�*g
!
Evaluation_layers/accuracy PS?

Evaluation_layers/lossD �>
#
Evaluation_layers/accuracy_1 PS?���Gu       ��Ax	�ϧ�^�A�*g
!
Evaluation_layers/accuracy @R?

Evaluation_layers/lossP.�>
#
Evaluation_layers/accuracy_1 @R?w٥/u       ��Ax	ԧ�^�A�*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/loss_��>
#
Evaluation_layers/accuracy_1 4S?�ι�u       ��Ax	��槟^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?��4�u       ��Ax	G�맟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�4�>
#
Evaluation_layers/accuracy_1 �R?KSg)u       ��Ax	��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss(��>
#
Evaluation_layers/accuracy_1 S?j�-�u       ��Ax	C,���^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/lossB��>
#
Evaluation_layers/accuracy_1 hR?�p
�u       ��Ax	.����^�A�*g
!
Evaluation_layers/accuracy 4R?

Evaluation_layers/loss�c�>
#
Evaluation_layers/accuracy_1 4R?�m)u       ��Ax	�K��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossg��>
#
Evaluation_layers/accuracy_1 �R?5���u       ��Ax	6p��^�A�*g
!
Evaluation_layers/accuracy DS?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 DS?���u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�W�>
#
Evaluation_layers/accuracy_1 �R?[?;:u       ��Ax	/��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossj��>
#
Evaluation_layers/accuracy_1 �R?0|Y�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?k�@�u       ��Ax	��-��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?xƾ�u       ��Ax	��3��^�A�*g
!
Evaluation_layers/accuracy PR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 PR?�9�wu       ��Ax	�9��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�U�>
#
Evaluation_layers/accuracy_1 S?qU�u       ��Ax	>�>��^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/loss�-�>
#
Evaluation_layers/accuracy_1 $S?Ú u       ��Ax	oID��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss#�>
#
Evaluation_layers/accuracy_1 �R?�X�Ku       ��Ax	�I��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss7��>
#
Evaluation_layers/accuracy_1 �R?� u       ��Ax	�dO��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss`��>
#
Evaluation_layers/accuracy_1  S?�״u       ��Ax	R�T��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossdv�>
#
Evaluation_layers/accuracy_1 �R?܁�iu       ��Ax	�YZ��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�'�>
#
Evaluation_layers/accuracy_1 S?Cڬuu       ��Ax	7�_��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?�;�uu       ��Ax	��o��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  S?�*�u       ��Ax	�1v��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�H�>
#
Evaluation_layers/accuracy_1 �R?�+�Du       ��Ax	ս{��^�A�*g
!
Evaluation_layers/accuracy LS?

Evaluation_layers/loss�T�>
#
Evaluation_layers/accuracy_1 LS?��i�u       ��Ax	`V���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�=�>
#
Evaluation_layers/accuracy_1 �R?�;QKu       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss40�>
#
Evaluation_layers/accuracy_1 �R?��u       ��Ax	b�^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  S?{���u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy dS?

Evaluation_layers/lossى�>
#
Evaluation_layers/accuracy_1 dS?��iu       ��Ax	6W���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossb��>
#
Evaluation_layers/accuracy_1 �R?L�+�u       ��Ax	�֜��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?���ku       ��Ax	vW���^�A�*g
!
Evaluation_layers/accuracy LS?

Evaluation_layers/loss`��>
#
Evaluation_layers/accuracy_1 LS?��myu       ��Ax	Fӱ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss0��>
#
Evaluation_layers/accuracy_1 �R?o2F�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy PS?

Evaluation_layers/loss|�>
#
Evaluation_layers/accuracy_1 PS?I�gu       ��Ax	`q���^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/loss`v�>
#
Evaluation_layers/accuracy_1 TS?�-[u       ��Ax	62è�^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?v��u       ��Ax	�Ȩ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss �>
#
Evaluation_layers/accuracy_1 �R?\IY@u       ��Ax	�WΨ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossr5�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	qԨ�^�A�*g
!
Evaluation_layers/accuracy XR?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 XR?wJ�u       ��Ax	9c٨�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�k�>
#
Evaluation_layers/accuracy_1 �R?旵1u       ��Ax	�ި�^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss#�>
#
Evaluation_layers/accuracy_1  S?k_�nu       ��Ax	�䨟^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss>��>
#
Evaluation_layers/accuracy_1 S?o��@u       ��Ax	uB���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?3�q$u       ��Ax	-���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�s�>
#
Evaluation_layers/accuracy_1 S?��ou       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0S?E�=�u       ��Ax	AO��^�A�*g
!
Evaluation_layers/accuracy @S?

Evaluation_layers/lossH��>
#
Evaluation_layers/accuracy_1 @S?��u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?7�bGu       ��Ax	ğ%��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�*�>
#
Evaluation_layers/accuracy_1 �R?4���u       ��Ax	�'.��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?���Ju       ��Ax	7�6��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/losst@�>
#
Evaluation_layers/accuracy_1 �R?q1u       ��Ax	E�>��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�h�>
#
Evaluation_layers/accuracy_1 �R?s��u       ��Ax	6F��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�s�>
#
Evaluation_layers/accuracy_1 �R?���Xu       ��Ax	��]��^�A�*g
!
Evaluation_layers/accuracy LR?

Evaluation_layers/loss�*�>
#
Evaluation_layers/accuracy_1 LR?"6u       ��Ax	�e��^�A�*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/lossTR�>
#
Evaluation_layers/accuracy_1 0S?�M�u       ��Ax	�!n��^�A�*g
!
Evaluation_layers/accuracy PR?

Evaluation_layers/loss�6�>
#
Evaluation_layers/accuracy_1 PR?�:K�u       ��Ax	*kv��^�A�*g
!
Evaluation_layers/accuracy @S?

Evaluation_layers/loss\��>
#
Evaluation_layers/accuracy_1 @S?"xu       ��Ax	=��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/lossz�>
#
Evaluation_layers/accuracy_1  S?���u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossn��>
#
Evaluation_layers/accuracy_1 S?]��u       ��Ax	B����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?�t[u       ��Ax	�~���^�A�*g
!
Evaluation_layers/accuracy HR?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 HR?�V�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?�.]u       ��Ax	Me���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss`S�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	\a���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss� �>
#
Evaluation_layers/accuracy_1 �R?W
nu       ��Ax	�2ǩ�^�A�*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/loss-��>
#
Evaluation_layers/accuracy_1 4S?q{Eru       ��Ax	��Ω�^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 pR?i��u       ��Ax	WBש�^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?��pu       ��Ax	�1ߩ�^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 (R?��d�u       ��Ax	��機^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/lossmV�>
#
Evaluation_layers/accuracy_1 $S?�vBu       ��Ax	62^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss$�>
#
Evaluation_layers/accuracy_1 �R?]�u       ��Ax	`����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?���u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�s�>
#
Evaluation_layers/accuracy_1 �R?��u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/lossJJ�>
#
Evaluation_layers/accuracy_1 TS?89u       ��Ax	F���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 �R?�c/u       ��Ax	?&��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss۝�>
#
Evaluation_layers/accuracy_1 S?y��-u       ��Ax	�<-��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossh*�>
#
Evaluation_layers/accuracy_1 �R?��YZu       ��Ax	Vl4��^�A�*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/loss�b�>
#
Evaluation_layers/accuracy_1 4S?��u       ��Ax	��;��^�A�*g
!
Evaluation_layers/accuracy LS?

Evaluation_layers/loss.��>
#
Evaluation_layers/accuracy_1 LS?{Ku       ��Ax	Y�B��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossB��>
#
Evaluation_layers/accuracy_1 S?I�,u       ��Ax	QOI��^�A�*g
!
Evaluation_layers/accuracy dS?

Evaluation_layers/loss|��>
#
Evaluation_layers/accuracy_1 dS?M��u       ��Ax	ATP��^�A�*g
!
Evaluation_layers/accuracy HR?

Evaluation_layers/lossRg�>
#
Evaluation_layers/accuracy_1 HR?�O�Eu       ��Ax	)W��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?ֲ�u       ��Ax	Ӌ^��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss(8�>
#
Evaluation_layers/accuracy_1 �R?*�-u       ��Ax	2$s��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�,M�u       ��Ax	@�y��^�A�*g
!
Evaluation_layers/accuracy HS?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 HS?�W^�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy 8R?

Evaluation_layers/loss�v�>
#
Evaluation_layers/accuracy_1 8R?)�Gu       ��Ax	1ˇ��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?xľu       ��Ax	�#���^�A�*g
!
Evaluation_layers/accuracy @S?

Evaluation_layers/lossv�>
#
Evaluation_layers/accuracy_1 @S?%��u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossU[�>
#
Evaluation_layers/accuracy_1 �R?M ��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/loss�1�>
#
Evaluation_layers/accuracy_1  R?�p�u       ��Ax	
ף��^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 (R?�<�vu       ��Ax	=F���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss3��>
#
Evaluation_layers/accuracy_1 �R?>��u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss(�>
#
Evaluation_layers/accuracy_1 �R?�E�u       ��Ax	�˪�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?ɄVu       ��Ax	�8Ҫ�^�A�*g
!
Evaluation_layers/accuracy pS?

Evaluation_layers/lossm�>
#
Evaluation_layers/accuracy_1 pS?��u       ��Ax	�@٪�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossB��>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	�ટ^�A�*g
!
Evaluation_layers/accuracy LR?

Evaluation_layers/loss:C�>
#
Evaluation_layers/accuracy_1 LR?RoEu       ��Ax	<窟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?���'u       ��Ax	W���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?FJ2u       ��Ax	�z�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 �R?��w�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy \R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 \R?�R��u       ��Ax	s����^�A�*g
!
Evaluation_layers/accuracy 8S?

Evaluation_layers/loss�U�>
#
Evaluation_layers/accuracy_1 8S?���u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy \S?

Evaluation_layers/loss�'�>
#
Evaluation_layers/accuracy_1 \S?K�c�u       ��Ax	�R��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossp=�>
#
Evaluation_layers/accuracy_1 S?/#bMu       ��Ax	�}��^�A�*g
!
Evaluation_layers/accuracy tR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 tR?�E��u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 hR?:�ru       ��Ax	�#��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R? '�u       ��Ax	o(��^�A�*g
!
Evaluation_layers/accuracy PS?

Evaluation_layers/loss(%�>
#
Evaluation_layers/accuracy_1 PS?���u       ��Ax	��-��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1  S?��Ku       ��Ax	d�3��^�A�*g
!
Evaluation_layers/accuracy DR?

Evaluation_layers/loss'!�>
#
Evaluation_layers/accuracy_1 DR?I͏8u       ��Ax	�99��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossy�>
#
Evaluation_layers/accuracy_1 �Q?dQf�u       ��Ax	ș>��^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/lossL��>
#
Evaluation_layers/accuracy_1 <R?�/�u       ��Ax	y�C��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  S?S��u       ��Ax	ˠX��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?��u       ��Ax	E^��^�A�*g
!
Evaluation_layers/accuracy tS?

Evaluation_layers/lossИ�>
#
Evaluation_layers/accuracy_1 tS?����u       ��Ax	 %d��^�A�*g
!
Evaluation_layers/accuracy 0R?

Evaluation_layers/loss�l�>
#
Evaluation_layers/accuracy_1 0R?���u       ��Ax	��i��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss{��>
#
Evaluation_layers/accuracy_1 S?/���u       ��Ax	��o��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/losst��>
#
Evaluation_layers/accuracy_1 �Q?���u       ��Ax	�Ku��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�g�>
#
Evaluation_layers/accuracy_1 �R?s��u       ��Ax	�{��^�A�*g
!
Evaluation_layers/accuracy LS?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 LS?ʹehu       ��Ax	
i���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�-�>
#
Evaluation_layers/accuracy_1 �R?����u       ��Ax	̛���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?3f�u       ��Ax	�_���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossʹ�>
#
Evaluation_layers/accuracy_1 �R?�W�&u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�$u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?쒽du       ��Ax	;����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss#�>
#
Evaluation_layers/accuracy_1 �R?뢙�u       ��Ax	�#���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossf��>
#
Evaluation_layers/accuracy_1 �R?r�*Gu       ��Ax	KW���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?>�Vu       ��Ax	�*���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss)��>
#
Evaluation_layers/accuracy_1 �R?��S�u       ��Ax	�󻫟^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss&��>
#
Evaluation_layers/accuracy_1 R?RJj>u       ��Ax	Dt���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss+�>
#
Evaluation_layers/accuracy_1 �R?Ǎm�u       ��Ax	�1ǫ�^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 hR?C�I\u       ��Ax	l�̫�^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss�b�>
#
Evaluation_layers/accuracy_1 pR?�/�gu       ��Ax	��᫟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?ܯ�u       ��Ax	�V竟^�A�*g
!
Evaluation_layers/accuracy \S?

Evaluation_layers/loss:��>
#
Evaluation_layers/accuracy_1 \S?�ZC0u       ��Ax	��쫟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossb��>
#
Evaluation_layers/accuracy_1 �R?��kCu       ��Ax	 ����^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?z/iyu       ��Ax	m���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�~&�u       ��Ax	B� ��^�A�*g
!
Evaluation_layers/accuracy HR?

Evaluation_layers/lossT��>
#
Evaluation_layers/accuracy_1 HR?�i�|u       ��Ax	N���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?�TRyu       ��Ax	�
��^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss�k�>
#
Evaluation_layers/accuracy_1 hR?���u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss\,�>
#
Evaluation_layers/accuracy_1 �Q?�@(Xu       ��Ax	M�!��^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/lossN�>
#
Evaluation_layers/accuracy_1 $S?�Yj�u       ��Ax	�&��^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 TS?ǯ�u       ��Ax	��+��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?g�cu       ��Ax	�0��^�A�*g
!
Evaluation_layers/accuracy xR?

Evaluation_layers/loss�4�>
#
Evaluation_layers/accuracy_1 xR?����u       ��Ax	��5��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossή�>
#
Evaluation_layers/accuracy_1 �R?W\�ju       ��Ax	��:��^�A�*g
!
Evaluation_layers/accuracy \R?

Evaluation_layers/lossAD�>
#
Evaluation_layers/accuracy_1 \R?�w~u       ��Ax	��?��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?4ڠu       ��Ax	!�D��^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �S?�B�u       ��Ax	��I��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossh��>
#
Evaluation_layers/accuracy_1 �R?�_��u       ��Ax	��N��^�A�*g
!
Evaluation_layers/accuracy 8S?

Evaluation_layers/loss�1�>
#
Evaluation_layers/accuracy_1 8S?ϣ��u       ��Ax	!a��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�y�>
#
Evaluation_layers/accuracy_1 �R?f.�<u       ��Ax	rf��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�l�>
#
Evaluation_layers/accuracy_1 �R?�U�u       ��Ax	k��^�A�*g
!
Evaluation_layers/accuracy dR?

Evaluation_layers/lossh�>
#
Evaluation_layers/accuracy_1 dR?�5� u       ��Ax	�:p��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�,Z�u       ��Ax	
bu��^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/lossF��>
#
Evaluation_layers/accuracy_1 �S?�/cu       ��Ax	xxz��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  S?O3�u       ��Ax	#���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?re�:u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?I�)&u       ��Ax	É��^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 hR?�U��u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss ��>
#
Evaluation_layers/accuracy_1 �R?Bu       ��Ax	f3���^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/lossUQ�>
#
Evaluation_layers/accuracy_1 R?�6��u       ��Ax	�M���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?h7�u       ��Ax	�|���^�A�*g
!
Evaluation_layers/accuracy XR?

Evaluation_layers/loss1��>
#
Evaluation_layers/accuracy_1 XR?�L'au       ��Ax	sd���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�v�>
#
Evaluation_layers/accuracy_1 S?W�u       ��Ax	#+���^�A�*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/loss�"�>
#
Evaluation_layers/accuracy_1 0S?k��-u       ��Ax	7���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�u�u       ��Ax	lf���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss:��>
#
Evaluation_layers/accuracy_1 �R?�*�u       ��Ax	�ì�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss6�>
#
Evaluation_layers/accuracy_1 �R?]��u       ��Ax	H�Ȭ�^�A�*g
!
Evaluation_layers/accuracy \S?

Evaluation_layers/lossx�>
#
Evaluation_layers/accuracy_1 \S?��P�u       ��Ax	"�ͬ�^�A�*g
!
Evaluation_layers/accuracy 8S?

Evaluation_layers/loss�-�>
#
Evaluation_layers/accuracy_1 8S?{��u       ��Ax	(�߬�^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossN8�>
#
Evaluation_layers/accuracy_1 S?@�2!u       ��Ax	̖䬟^�A�*g
!
Evaluation_layers/accuracy PS?

Evaluation_layers/lossh��>
#
Evaluation_layers/accuracy_1 PS?��Ҧu       ��Ax	�鬟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/losse��>
#
Evaluation_layers/accuracy_1 �R?�|�u       ��Ax	Zײַ^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/lossqr�>
#
Evaluation_layers/accuracy_1 TS?�܁u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy PS?

Evaluation_layers/loss$p�>
#
Evaluation_layers/accuracy_1 PS?�,�Pu       ��Ax	 ����^�A�*g
!
Evaluation_layers/accuracy  R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  R?����u       ��Ax	8\ ��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss;��>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	�@��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?a��u       ��Ax	8:��^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1  S?Z�+u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossX|�>
#
Evaluation_layers/accuracy_1 �R?w���u       ��Ax	nQ#��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss(��>
#
Evaluation_layers/accuracy_1 S?4b.�u       ��Ax	p�(��^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 <R?~��u       ��Ax	G�.��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?_���u       ��Ax	�f4��^�A�*g
!
Evaluation_layers/accuracy <S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 <S?_N��u       ��Ax	|:��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?-�� u       ��Ax	�?��^�A�*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/lossr�>
#
Evaluation_layers/accuracy_1 4S?n�Otu       ��Ax	 mE��^�A�*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/loss*�>
#
Evaluation_layers/accuracy_1 4S?A��u       ��Ax	�*K��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?�0[u       ��Ax	1P��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss6�>
#
Evaluation_layers/accuracy_1 �R?U4�u       ��Ax	�V��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�p��u       ��Ax	.j��^�A�*g
!
Evaluation_layers/accuracy tS?

Evaluation_layers/loss�5�>
#
Evaluation_layers/accuracy_1 tS?��N�u       ��Ax	�2p��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �Q?���u       ��Ax	�u��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss|V�>
#
Evaluation_layers/accuracy_1 �R?[i�Xu       ��Ax	l�z��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossf��>
#
Evaluation_layers/accuracy_1 �R?E�gu       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?Ae�Iu       ��Ax	�	���^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/lossWC�>
#
Evaluation_layers/accuracy_1 $S?��*mu       ��Ax	C~���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?c��u       ��Ax	e0���^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 $S?} u       ��Ax	K����^�A�*g
!
Evaluation_layers/accuracy ,S?

Evaluation_layers/loss�o�>
#
Evaluation_layers/accuracy_1 ,S?�3�Vu       ��Ax	,r���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?��u       ��Ax	�1���^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss"8�>
#
Evaluation_layers/accuracy_1 �S?2���u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy hS?

Evaluation_layers/loss�S�>
#
Evaluation_layers/accuracy_1 hS?H"j�u       ��Ax	꽭�^�A�*g
!
Evaluation_layers/accuracy dS?

Evaluation_layers/loss`�>
#
Evaluation_layers/accuracy_1 dS?}��u       ��Ax	'�í�^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 R?�"�;u       ��Ax	{~ɭ�^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss�>�>
#
Evaluation_layers/accuracy_1 pR?>)!�u       ��Ax	�Uϭ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossa�>
#
Evaluation_layers/accuracy_1 �R?����u       ��Ax	�խ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss}�>
#
Evaluation_layers/accuracy_1 �R?s�u       ��Ax	Ԉڭ�^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss�&�>
#
Evaluation_layers/accuracy_1  S?���u       ��Ax	/9ୟ^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossJK�>
#
Evaluation_layers/accuracy_1 �R?v�u       ��Ax	@�孟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�g�>
#
Evaluation_layers/accuracy_1 �R?��9u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy (S?

Evaluation_layers/lossxb�>
#
Evaluation_layers/accuracy_1 (S?�s�u       ��Ax	�� ��^�A�*g
!
Evaluation_layers/accuracy (S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 (S?-dPu       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0S?�!Wu       ��Ax	,���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss|�>
#
Evaluation_layers/accuracy_1 �R?C�u       ��Ax	5���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss(��>
#
Evaluation_layers/accuracy_1 �R?��mbu       ��Ax	!�"��^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �S?�`]�u       ��Ax	@�+��^�A�*g
!
Evaluation_layers/accuracy xR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 xR?����u       ��Ax	�84��^�A�*g
!
Evaluation_layers/accuracy DS?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 DS?x��8u       ��Ax	~�<��^�A�*g
!
Evaluation_layers/accuracy DS?

Evaluation_layers/loss�T�>
#
Evaluation_layers/accuracy_1 DS?�:�u       ��Ax	�E��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?Jc�u       ��Ax	�a��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossg��>
#
Evaluation_layers/accuracy_1 �R?-8#u       ��Ax	�i��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�&|ku       ��Ax	d�q��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�*�>
#
Evaluation_layers/accuracy_1 �R?�tt u       ��Ax	�Yz��^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/loss.��>
#
Evaluation_layers/accuracy_1 TS?R3mu       ��Ax	.0���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss~�>
#
Evaluation_layers/accuracy_1 �R?��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 |R?�=n�u       ��Ax	�a���^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/lossP��>
#
Evaluation_layers/accuracy_1 (R?��Mu       ��Ax	�ՙ��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?Qb�u       ��Ax	9m���^�A�*g
!
Evaluation_layers/accuracy ,S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 ,S?�Su       ��Ax	/���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss$L�>
#
Evaluation_layers/accuracy_1 �R?���[u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�)�>
#
Evaluation_layers/accuracy_1 S?짒�u       ��Ax	��Ȯ�^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �S?W5\&u       ��Ax	�CѮ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�X�>
#
Evaluation_layers/accuracy_1 �R?:cTu       ��Ax	��ٮ�^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss2�>
#
Evaluation_layers/accuracy_1 R?f�>�u       ��Ax	�B⮟^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss�U�>
#
Evaluation_layers/accuracy_1 �S?�gABu       ��Ax	6ꮟ^�A�*g
!
Evaluation_layers/accuracy (S?

Evaluation_layers/lossoX�>
#
Evaluation_layers/accuracy_1 (S?QE�Pu       ��Ax	s��^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/loss\"�>
#
Evaluation_layers/accuracy_1 $S?��f�u       ��Ax	ʈ���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss@��>
#
Evaluation_layers/accuracy_1 �R?��u       ��Ax	�@���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossb��>
#
Evaluation_layers/accuracy_1 S?Fx�u       ��Ax	|��^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 $S? ��Uu       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossK�>
#
Evaluation_layers/accuracy_1 �R?��k�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossH��>
#
Evaluation_layers/accuracy_1 S?����u       ��Ax	10'��^�A�*g
!
Evaluation_layers/accuracy PS?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 PS?RU�7u       ��Ax	��.��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossJ��>
#
Evaluation_layers/accuracy_1 S?"H�u       ��Ax	q26��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossZF�>
#
Evaluation_layers/accuracy_1 �R?��-u       ��Ax	q�=��^�A�*g
!
Evaluation_layers/accuracy HS?

Evaluation_layers/lossj�>
#
Evaluation_layers/accuracy_1 HS?)��u       ��Ax	�hE��^�A�*g
!
Evaluation_layers/accuracy HS?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 HS?y�(�u       ��Ax	sM��^�A�*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/lossY�>
#
Evaluation_layers/accuracy_1 �Q?܁hju       ��Ax	pNT��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss�U�>
#
Evaluation_layers/accuracy_1 S?�(�u       ��Ax	��Z��^�A�*g
!
Evaluation_layers/accuracy lS?

Evaluation_layers/lossV�>
#
Evaluation_layers/accuracy_1 lS?�o5�u       ��Ax	!xm��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossX��>
#
Evaluation_layers/accuracy_1 �R?y ��u       ��Ax	�Yt��^�A�*g
!
Evaluation_layers/accuracy dS?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 dS?�}Qu       ��Ax	�%{��^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/lossdl�>
#
Evaluation_layers/accuracy_1 pR?��j�u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy \R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 \R?��u       ��Ax	ڑ��^�A�*g
!
Evaluation_layers/accuracy \R?

Evaluation_layers/loss{1�>
#
Evaluation_layers/accuracy_1 \R?�U_pu       ��Ax	�H���^�A�*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 4S?4�6u       ��Ax	�٠��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss4��>
#
Evaluation_layers/accuracy_1 S?��y�u       ��Ax	�H���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�o�>
#
Evaluation_layers/accuracy_1 �R?�B?du       ��Ax	3����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 �R?6
du       ��Ax	��ǯ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossO�>
#
Evaluation_layers/accuracy_1 �R?����u       ��Ax	��ͯ�^�A�*g
!
Evaluation_layers/accuracy $S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 $S?��u       ��Ax	}�ԯ�^�A�*g
!
Evaluation_layers/accuracy tS?

Evaluation_layers/lossʷ�>
#
Evaluation_layers/accuracy_1 tS?a� �u       ��Ax	��ۯ�^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss{�>
#
Evaluation_layers/accuracy_1 S?{w�Yu       ��Ax	��⯟^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/losszu�>
#
Evaluation_layers/accuracy_1  S?�·au       ��Ax	W�鯟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?����u       ��Ax	x��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?e��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy xR?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 xR?�~-Yu       ��Ax	�3���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?QV�Ku       ��Ax	d��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�Y�>
#
Evaluation_layers/accuracy_1 �R?o�r�u       ��Ax	 8��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?ex�u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossm��>
#
Evaluation_layers/accuracy_1 �R?��:�u       ��Ax	���^�A�*g
!
Evaluation_layers/accuracy @S?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 @S?����u       ��Ax	%!��^�A�*g
!
Evaluation_layers/accuracy <R?

Evaluation_layers/loss4��>
#
Evaluation_layers/accuracy_1 <R?�W�u       ��Ax	��&��^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/losssc�>
#
Evaluation_layers/accuracy_1 �S?�b#u       ��Ax	�,��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossP��>
#
Evaluation_layers/accuracy_1 S?#Q�u       ��Ax	hQ2��^�A�*g
!
Evaluation_layers/accuracy <S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 <S?I��u       ��Ax	�;8��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�D�>
#
Evaluation_layers/accuracy_1 �R?�o�u       ��Ax	�c>��^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/loss~��>
#
Evaluation_layers/accuracy_1 TS?���u       ��Ax	�wD��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�(�>
#
Evaluation_layers/accuracy_1 �R?7��u       ��Ax	 �X��^�A�*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 4S?��Xhu       ��Ax	[�^��^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossn+�>
#
Evaluation_layers/accuracy_1 S?��)eu       ��Ax	�d��^�A�*g
!
Evaluation_layers/accuracy <S?

Evaluation_layers/lossu2�>
#
Evaluation_layers/accuracy_1 <S?ޢ�u       ��Ax	�i��^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss�m�>
#
Evaluation_layers/accuracy_1 �S?�9t&u       ��Ax	Jmo��^�A�*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/loss�i�>
#
Evaluation_layers/accuracy_1 0S?_�nLu       ��Ax	��t��^�A�*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0S?����u       ��Ax	"z��^�A�*g
!
Evaluation_layers/accuracy hS?

Evaluation_layers/loss0��>
#
Evaluation_layers/accuracy_1 hS?��?�u       ��Ax	9h��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss<��>
#
Evaluation_layers/accuracy_1 �R?�u       ��Ax	uꄰ�^�A�*g
!
Evaluation_layers/accuracy lR?

Evaluation_layers/lossV�>
#
Evaluation_layers/accuracy_1 lR?M�mu       ��Ax	1D���^�A�*g
!
Evaluation_layers/accuracy XR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 XR?�mxu       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossV|�>
#
Evaluation_layers/accuracy_1 �R?[���u       ��Ax	~B���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?��3Du       ��Ax	ep���^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/loss�U�>
#
Evaluation_layers/accuracy_1  S?���u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy (R?

Evaluation_layers/loss5p�>
#
Evaluation_layers/accuracy_1 (R?+��-u       ��Ax	�T���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?��"u       ��Ax	� ���^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss.Q�>
#
Evaluation_layers/accuracy_1 R?�|ܹu       ��Ax	�述�^�A�*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 R?�c=u       ��Ax	�Ű�^�A�*g
!
Evaluation_layers/accuracy hS?

Evaluation_layers/lossT�>
#
Evaluation_layers/accuracy_1 hS?��i�u       ��Ax	��ʰ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?��Gu       ��Ax	��ٰ�^�A�*g
!
Evaluation_layers/accuracy DS?

Evaluation_layers/loss@	�>
#
Evaluation_layers/accuracy_1 DS?���u       ��Ax	��߰�^�A�*g
!
Evaluation_layers/accuracy XS?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 XS?���vu       ��Ax	Kg尟^�A�*g
!
Evaluation_layers/accuracy |S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 |S?�ݹVu       ��Ax	�P밟^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�9�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	�u�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss[|�>
#
Evaluation_layers/accuracy_1 �R?.��u       ��Ax	�����^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?��'u       ��Ax	(����^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss{�>
#
Evaluation_layers/accuracy_1 �S?�݌ u       ��Ax	-����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?wA޾u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy hR?

Evaluation_layers/loss�N�>
#
Evaluation_layers/accuracy_1 hR?!�<9u       ��Ax	R
��^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/lossE��>
#
Evaluation_layers/accuracy_1 TS?¬�u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss2��>
#
Evaluation_layers/accuracy_1 �R?�j�u       ��Ax	�;"��^�A�*g
!
Evaluation_layers/accuracy @S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 @S?���u       ��Ax	��&��^�A�*g
!
Evaluation_layers/accuracy DS?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 DS?-�
�u       ��Ax	?�+��^�A�*g
!
Evaluation_layers/accuracy <S?

Evaluation_layers/loss9��>
#
Evaluation_layers/accuracy_1 <S?z�u       ��Ax	�70��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�$�>
#
Evaluation_layers/accuracy_1 �R?�OF�u       ��Ax	5��^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss�7�>
#
Evaluation_layers/accuracy_1 �S?���Yu       ��Ax	��9��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?{\��u       ��Ax	�{>��^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss�?�>
#
Evaluation_layers/accuracy_1 �S?�X�Nu       ��Ax	T2C��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 �R?Xl��u       ��Ax	 SH��^�A�*g
!
Evaluation_layers/accuracy dS?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 dS?@�g�u       ��Ax	�5[��^�A�*g
!
Evaluation_layers/accuracy 8S?

Evaluation_layers/lossu��>
#
Evaluation_layers/accuracy_1 8S?��u       ��Ax	�g`��^�A�*g
!
Evaluation_layers/accuracy LR?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 LR?�̥�u       ��Ax	��e��^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 TS?��a�u       ��Ax	��j��^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 |R?q�u       ��Ax	Ep��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossx7�>
#
Evaluation_layers/accuracy_1 �R?�!Pgu       ��Ax	�4u��^�A�*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/loss�I�>
#
Evaluation_layers/accuracy_1 TS?��u       ��Ax	iz��^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossҹ�>
#
Evaluation_layers/accuracy_1 �R?w:��u       ��Ax	b9��^�A�*g
!
Evaluation_layers/accuracy hS?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 hS?��v�u       ��Ax	3A���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?+N�u       ��Ax	�C���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�w�>
#
Evaluation_layers/accuracy_1 �R?t���u       ��Ax	�4���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�G�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	b���^�A�*g
!
Evaluation_layers/accuracy  S?

Evaluation_layers/lossZ��>
#
Evaluation_layers/accuracy_1  S?-�Eu       ��Ax	1m���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�m�>
#
Evaluation_layers/accuracy_1 �R?S�\tu       ��Ax	߁���^�A�*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/lossw��>
#
Evaluation_layers/accuracy_1 �S?Q��u       ��Ax	V���^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossX��>
#
Evaluation_layers/accuracy_1 �R?�A4]u       ��Ax	�R���^�A�*g
!
Evaluation_layers/accuracy |R?

Evaluation_layers/lossn�>
#
Evaluation_layers/accuracy_1 |R?��gu       ��Ax	b����^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossf��>
#
Evaluation_layers/accuracy_1 �R?�@�9u       ��Ax	� ���^�A�*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 S?>�"*u       ��Ax	����^�A�*g
!
Evaluation_layers/accuracy pR?

Evaluation_layers/loss�m�>
#
Evaluation_layers/accuracy_1 pR?�.�u       ��Ax	�Zı�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss2�>
#
Evaluation_layers/accuracy_1 �R?W<��u       ��Ax	��ѱ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?�D�+u       ��Ax	��ֱ�^�A�*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�n�>
#
Evaluation_layers/accuracy_1 �R?����u       ��Ax	~�۱�^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossob�>
#
Evaluation_layers/accuracy_1 �R?�2�u       ��Ax	n�౟^�A�	*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss�k�>
#
Evaluation_layers/accuracy_1 �Q?\ˍXu       ��Ax	k�屟^�A�	*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 S?����u       ��Ax	��걟^�A�	*g
!
Evaluation_layers/accuracy PS?

Evaluation_layers/lossUG�>
#
Evaluation_layers/accuracy_1 PS?��~u       ��Ax		e�^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossVA�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	�z���^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossw��>
#
Evaluation_layers/accuracy_1 �R?�Xh�u       ��Ax	}���^�A�	*g
!
Evaluation_layers/accuracy LS?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 LS?���Qu       ��Ax	OX ��^�A�	*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossNy�>
#
Evaluation_layers/accuracy_1 S?PSju       ��Ax	*���^�A�	*g
!
Evaluation_layers/accuracy tR?

Evaluation_layers/loss�!�>
#
Evaluation_layers/accuracy_1 tR?�y#uu       ��Ax	5H��^�A�	*g
!
Evaluation_layers/accuracy @S?

Evaluation_layers/lossa��>
#
Evaluation_layers/accuracy_1 @S?j��u       ��Ax	͑!��^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�H�>
#
Evaluation_layers/accuracy_1 �R?8tj�u       ��Ax	�U'��^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossη�>
#
Evaluation_layers/accuracy_1 �R?o���u       ��Ax	�-��^�A�	*g
!
Evaluation_layers/accuracy �S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �S?�;��u       ��Ax	��2��^�A�	*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/lossL��>
#
Evaluation_layers/accuracy_1 S?e���u       ��Ax	P8��^�A�	*g
!
Evaluation_layers/accuracy xS?

Evaluation_layers/lossx��>
#
Evaluation_layers/accuracy_1 xS?�:�u       ��Ax	�=��^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossH+�>
#
Evaluation_layers/accuracy_1 �R?I�Ξu       ��Ax	o�C��^�A�	*g
!
Evaluation_layers/accuracy R?

Evaluation_layers/lossNz�>
#
Evaluation_layers/accuracy_1 R?���Uu       ��Ax	�!I��^�A�	*g
!
Evaluation_layers/accuracy �Q?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �Q?AkTu       ��Ax	��W��^�A�	*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 0S?�W�u       ��Ax	�]��^�A�	*g
!
Evaluation_layers/accuracy 0S?

Evaluation_layers/lossR��>
#
Evaluation_layers/accuracy_1 0S?�4��u       ��Ax	��b��^�A�	*g
!
Evaluation_layers/accuracy TS?

Evaluation_layers/loss|�>
#
Evaluation_layers/accuracy_1 TS?���u       ��Ax	d�h��^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossjk�>
#
Evaluation_layers/accuracy_1 �R?h�2Nu       ��Ax	��n��^�A�	*g
!
Evaluation_layers/accuracy S?

Evaluation_layers/loss}%�>
#
Evaluation_layers/accuracy_1 S?�0��u       ��Ax	��t��^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossǓ�>
#
Evaluation_layers/accuracy_1 �R?���u       ��Ax	�z��^�A�	*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/lossp�>
#
Evaluation_layers/accuracy_1 4S?Z���u       ��Ax	_����^�A�	*g
!
Evaluation_layers/accuracy hS?

Evaluation_layers/loss1e�>
#
Evaluation_layers/accuracy_1 hS?���u       ��Ax	<k���^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss���>
#
Evaluation_layers/accuracy_1 �R?8#uau       ��Ax	�͋��^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossX��>
#
Evaluation_layers/accuracy_1 �R?�ԡ=u       ��Ax	�՚��^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/lossz�>
#
Evaluation_layers/accuracy_1 �R?�Tu       ��Ax	�����^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss�>
#
Evaluation_layers/accuracy_1 �R?ɲ|u       ��Ax	AΦ��^�A�	*g
!
Evaluation_layers/accuracy �R?

Evaluation_layers/loss9�>
#
Evaluation_layers/accuracy_1 �R?��u       ��Ax	ꆬ��^�A�	*g
!
Evaluation_layers/accuracy 4S?

Evaluation_layers/loss��>
#
Evaluation_layers/accuracy_1 4S?	�y�