.class public final Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/WidgetContainer;
.source "SourceFile"


# instance fields
.field public horizontalWrapMax:Ljava/lang/ref/WeakReference;

.field public horizontalWrapMin:Ljava/lang/ref/WeakReference;

.field public final mBasicMeasureSolver:Landroidx/core/view/MenuHostHelper;

.field public final mDependencyGraph:Landroidx/media3/common/util/ListenerSet;

.field public mHeightMeasuredTooSmall:Z

.field public mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mHorizontalChainsSize:I

.field public mIsRtl:Z

.field public final mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field public mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field public mOptimizationLevel:I

.field public mPaddingLeft:I

.field public mPaddingTop:I

.field public final mSystem:Landroidx/constraintlayout/core/LinearSystem;

.field public mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mVerticalChainsSize:I

.field public mWidthMeasuredTooSmall:Z

.field public pass:I

.field public verticalWrapMax:Ljava/lang/ref/WeakReference;

.field public verticalWrapMin:Ljava/lang/ref/WeakReference;

.field public final widgetsToAdd:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>()V

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/core/view/MenuHostHelper;

    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/media3/common/util/ListenerSet;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    new-instance v2, Landroidx/constraintlayout/core/LinearSystem;

    invoke-direct {v2}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v2, 0x4

    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    const/16 v2, 0x101

    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    return-void
.end method

.method public static measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_14

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v0, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v1, v0, v2

    iput v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    iput-boolean v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    if-ne v4, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    if-eqz v3, :cond_5

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    const/4 v6, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_7

    if-nez v5, :cond_7

    iput v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    if-eqz v3, :cond_6

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v0, :cond_6

    iput v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    :cond_6
    move v0, v2

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v7, :cond_9

    if-nez v4, :cond_9

    iput v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    if-eqz v0, :cond_8

    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v3, :cond_8

    iput v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    :cond_8
    move v3, v2

    :cond_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v7

    if-eqz v7, :cond_a

    iput v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    move v0, v2

    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v7

    if-eqz v7, :cond_b

    iput v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    move v3, v2

    :cond_b
    const/4 v7, 0x4

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    if-eqz v5, :cond_e

    aget v5, v8, v2

    if-ne v5, v7, :cond_c

    iput v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    goto :goto_5

    :cond_c
    if-nez v3, :cond_e

    iget v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    if-ne v3, v1, :cond_d

    iget v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    goto :goto_4

    :cond_d
    iput v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    :goto_4
    iput v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    iget v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    :cond_e
    :goto_5
    if-eqz v4, :cond_12

    aget v3, v8, v1

    if-ne v3, v7, :cond_f

    iput v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    goto :goto_8

    :cond_f
    if-nez v0, :cond_12

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    if-ne v0, v1, :cond_10

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    goto :goto_6

    :cond_10
    iput v6, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    :goto_6
    iput v1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    int-to-float v0, v0

    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_7

    :cond_11
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v0, v0

    mul-float/2addr v3, v0

    float-to-int v0, v3

    :goto_7
    iput v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    :cond_12
    :goto_8
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget-boolean p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez p1, :cond_13

    goto :goto_9

    :cond_13
    move v1, v2

    :goto_9
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    return-void

    :cond_14
    :goto_a
    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    iput v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    return-void
.end method


# virtual methods
.method public final addChain(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/2addr p1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v2, v1

    if-lt p1, v2, :cond_0

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    const/4 v4, 0x0

    invoke-direct {v2, p2, v4, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    add-int/2addr p1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    array-length v2, v1

    if-lt p1, v2, :cond_2

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/core/widgets/ChainHead;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    iget-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    invoke-direct {v2, p2, v0, v3}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    aput-object v2, p1, v1

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eqz v4, :cond_8

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_8

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v7, :cond_7

    check-cast v6, Landroidx/constraintlayout/core/widgets/Barrier;

    move v7, v2

    :goto_2
    iget v8, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v7, v8, :cond_7

    iget-object v8, v6, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v8, v8, v7

    iget-boolean v9, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v9, :cond_2

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_4

    :cond_2
    iget v9, v6, Landroidx/constraintlayout/core/widgets/Barrier;->mBarrierType:I

    if-eqz v9, :cond_5

    if-ne v9, v5, :cond_3

    goto :goto_3

    :cond_3
    if-eq v9, v3, :cond_4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    :cond_4
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v5, v8, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v5, v8, v2

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    move v6, v2

    :goto_5
    if-ge v6, v1, :cond_d

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/Flow;

    if-nez v8, :cond_a

    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    move v8, v2

    goto :goto_7

    :cond_a
    :goto_6
    move v8, v5

    :goto_7
    if-eqz v8, :cond_c

    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/Flow;

    if-eqz v8, :cond_b

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    :cond_c
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    :goto_9
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_13

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v8, Landroidx/constraintlayout/core/widgets/Flow;

    move v9, v2

    :goto_a
    iget v10, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v9, v10, :cond_10

    iget-object v10, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v10, v10, v9

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    move v9, v5

    goto :goto_b

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_10
    move v9, v2

    :goto_b
    if-eqz v9, :cond_e

    invoke-virtual {v8, p1, v0}, Landroidx/constraintlayout/core/widgets/Flow;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-ne v6, v7, :cond_d

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v7, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_c

    :cond_12
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    goto :goto_9

    :cond_13
    sget-boolean v4, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    if-eqz v4, :cond_19

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v6, v2

    :goto_d
    if-ge v6, v1, :cond_17

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/Flow;

    if-nez v8, :cond_15

    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v8, :cond_14

    goto :goto_e

    :cond_14
    move v8, v2

    goto :goto_f

    :cond_15
    :goto_e
    move v8, v5

    :goto_f
    if-nez v8, :cond_16

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_18

    move v10, v2

    goto :goto_10

    :cond_18
    move v10, v5

    :goto_10
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v4

    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {p0, p1, v3}, Landroidx/media3/ui/HtmlUtils;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto :goto_11

    :cond_19
    move v4, v2

    :goto_12
    if-ge v4, v1, :cond_21

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v7, :cond_1d

    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v8, v7, v2

    aget v7, v7, v5

    if-ne v8, v3, :cond_1a

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour$enumunboxing$(I)V

    :cond_1a
    if-ne v7, v3, :cond_1b

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour$enumunboxing$(I)V

    :cond_1b
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    if-ne v8, v3, :cond_1c

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour$enumunboxing$(I)V

    :cond_1c
    if-ne v7, v3, :cond_20

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour$enumunboxing$(I)V

    goto :goto_15

    :cond_1d
    invoke-static {p0, p1, v6}, Landroidx/media3/ui/HtmlUtils;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Flow;

    if-nez v7, :cond_1f

    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v7, :cond_1e

    goto :goto_13

    :cond_1e
    move v7, v2

    goto :goto_14

    :cond_1f
    :goto_13
    move v7, v5

    :goto_14
    if-nez v7, :cond_20

    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    :cond_20
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_21
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_22

    invoke-static {p0, p1, v1, v2}, Lcom/adobe/xmp/XMPUtils;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :cond_22
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez v0, :cond_23

    invoke-static {p0, p1, v1, v5}, Lcom/adobe/xmp/XMPUtils;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :cond_23
    return-void
.end method

.method public final directMeasureWithOrientation(IZ)Z
    .locals 12

    const/4 v0, 0x1

    and-int/2addr p2, v0

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/media3/common/util/ListenerSet;

    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->clock:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour$enumunboxing$(I)I

    move-result v3

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour$enumunboxing$(I)I

    move-result v4

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v5

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v6

    iget-object v7, p0, Landroidx/media3/common/util/ListenerSet;->iterationFinishedEvent:Ljava/lang/Object;

    if-eqz p2, :cond_4

    const/4 v8, 0x2

    if-eq v3, v8, :cond_0

    if-ne v4, v8, :cond_4

    :cond_0
    move-object v9, v7

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-ne v11, p1, :cond_1

    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v10

    if-nez v10, :cond_1

    move p2, v2

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    if-ne v3, v8, :cond_4

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour$enumunboxing$(I)V

    invoke-virtual {p0, v1, v2}, Landroidx/media3/common/util/ListenerSet;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    if-ne v4, v8, :cond_4

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour$enumunboxing$(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    :goto_0
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    :cond_4
    iget-object p2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v8, 0x4

    if-nez p1, :cond_6

    aget p2, p2, v2

    if-eq p2, v0, :cond_5

    if-ne p2, v8, :cond_7

    :cond_5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p2

    add-int/2addr p2, v5

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    sub-int/2addr p2, v5

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_2

    :cond_6
    aget p2, p2, v0

    if-eq p2, v0, :cond_8

    if-ne p2, v8, :cond_7

    goto :goto_1

    :cond_7
    move p2, v2

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p2

    add-int/2addr p2, v6

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    sub-int/2addr p2, v6

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    :goto_2
    move p2, v0

    :goto_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->measureWidgets()V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v6, p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v6, v1, :cond_a

    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v6, p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-ne v6, v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v6, :cond_c

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v5, :cond_c

    :goto_6
    move v0, v2

    :cond_11
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour$enumunboxing$(I)V

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour$enumunboxing$(I)V

    return v0
.end method

.method public final getSceneString(Ljava/lang/StringBuilder;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  actualWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  actualHeight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;)V

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final layout()V
    .locals 30

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    aget v8, v5, v2

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->pass:I

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v9, :cond_1d

    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    invoke-static {v9, v6}, Landroidx/media3/ui/HtmlUtils;->enabled(II)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    aget v14, v5, v2

    aget v15, v5, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_0
    if-ge v2, v10, :cond_0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetFinalResolution()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    if-ne v14, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalHorizontal(II)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    iput v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    :goto_1
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_2
    const/high16 v19, 0x3f000000    # 0.5f

    if-ge v6, v10, :cond_7

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v13

    move-object/from16 v13, v20

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v20, v4

    instance-of v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v4, :cond_5

    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    move-object/from16 v22, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    iget v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    goto :goto_3

    :cond_2
    iget v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq v4, v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    iget v5, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    sub-int/2addr v4, v5

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float v4, v4, v19

    float-to-int v4, v4

    :goto_3
    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    const/4 v4, 0x1

    iput-boolean v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    :cond_4
    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v22, v5

    instance-of v4, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v4, :cond_6

    check-cast v13, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v4

    if-nez v4, :cond_6

    const/16 v18, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v20

    move-object/from16 v13, v21

    move-object/from16 v5, v22

    goto :goto_2

    :cond_7
    move/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v13

    if-eqz v14, :cond_9

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v10, :cond_9

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v6, :cond_8

    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    const/4 v13, 0x1

    if-ne v6, v13, :cond_8

    const/4 v6, 0x0

    invoke-static {v6, v5, v9, v2}, Landroidx/room/util/DBUtil;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    invoke-static {v6, v1, v9, v2}, Landroidx/room/util/DBUtil;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    if-eqz v18, :cond_b

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v10, :cond_b

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_a

    check-cast v5, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    invoke-static {v6, v5, v9, v2}, Landroidx/room/util/DBUtil;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x1

    if-ne v15, v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFinalVertical(II)V

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    iput v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    :goto_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_9
    if-ge v4, v10, :cond_12

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v14, v13, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v14, :cond_10

    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v14, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v14, :cond_11

    iget v5, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    const/4 v14, -0x1

    if-eq v5, v14, :cond_d

    goto :goto_a

    :cond_d
    iget v5, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    if-eq v5, v14, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    iget v14, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    sub-int/2addr v5, v14

    goto :goto_a

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v5

    if-eqz v5, :cond_f

    iget v5, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v5, v14

    add-float v5, v5, v19

    float-to-int v5, v5

    :goto_a
    iget-object v14, v13, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    goto :goto_b

    :cond_f
    const/4 v14, 0x1

    :goto_b
    move v5, v14

    goto :goto_c

    :cond_10
    const/4 v14, 0x1

    instance-of v15, v13, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v15, :cond_11

    check-cast v13, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v13

    if-ne v13, v14, :cond_11

    const/4 v6, 0x1

    :cond_11
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_12
    if-eqz v5, :cond_14

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v10, :cond_14

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v13, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v13, :cond_13

    check-cast v5, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v13, v5, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v13, :cond_13

    const/4 v13, 0x1

    invoke-static {v13, v5, v9}, Landroidx/room/util/DBUtil;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    invoke-static {v4, v1, v9}, Landroidx/room/util/DBUtil;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    if-eqz v6, :cond_16

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v10, :cond_16

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v6, :cond_15

    check-cast v5, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_15

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Barrier;->allSolved()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {v13, v5, v9}, Landroidx/room/util/DBUtil;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_16
    const/4 v4, 0x0

    :goto_f
    if-ge v4, v10, :cond_1a

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-static {v5}, Landroidx/room/util/DBUtil;->canMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Landroidx/room/util/DBUtil;->measure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-static {v5, v9, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v6, :cond_18

    move-object v6, v5

    check-cast v6, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v6, v6, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v6, :cond_17

    const/4 v6, 0x0

    goto :goto_10

    :cond_17
    const/4 v6, 0x0

    invoke-static {v6, v5, v9, v2}, Landroidx/room/util/DBUtil;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    goto :goto_11

    :cond_18
    const/4 v6, 0x0

    invoke-static {v6, v5, v9, v2}, Landroidx/room/util/DBUtil;->horizontalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Z)V

    :goto_10
    invoke-static {v6, v5, v9}, Landroidx/room/util/DBUtil;->verticalSolvingPass(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;)V

    :cond_19
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1a
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v3, :cond_1e

    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v5

    if-eqz v5, :cond_1c

    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v5, :cond_1c

    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v5, :cond_1c

    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Flow;

    if-nez v5, :cond_1c

    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    if-nez v5, :cond_1c

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour$enumunboxing$(I)I

    move-result v6

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour$enumunboxing$(I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v6, v10, :cond_1b

    iget v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v6, v5, :cond_1b

    if-ne v9, v10, :cond_1b

    iget v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v6, v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_13

    :cond_1b
    const/4 v5, 0x0

    :goto_13
    if-nez v5, :cond_1c

    new-instance v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-static {v4, v6, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1d
    move/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v13

    :cond_1e
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    const/4 v4, 0x2

    if-le v3, v4, :cond_58

    if-eq v8, v4, :cond_1f

    if-ne v7, v4, :cond_58

    :cond_1f
    iget v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v9, 0x400

    invoke-static {v6, v9}, Landroidx/media3/ui/HtmlUtils;->enabled(II)Z

    move-result v6

    if-eqz v6, :cond_58

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_14
    if-ge v11, v10, :cond_22

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v14, 0x0

    aget v15, v22, v14

    const/16 v17, 0x1

    aget v4, v22, v17

    iget-object v5, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    move-object/from16 v23, v12

    aget v12, v5, v14

    aget v5, v5, v17

    invoke-static {v15, v4, v12, v5}, Landroidx/media3/ui/HtmlUtils;->validInGroup(IIII)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_15

    :cond_20
    instance-of v4, v13, Landroidx/constraintlayout/core/widgets/Flow;

    if-eqz v4, :cond_21

    :goto_15
    move/from16 v26, v0

    move/from16 v25, v3

    move/from16 v24, v7

    move/from16 v27, v8

    const/4 v0, 0x0

    move-object v8, v2

    goto/16 :goto_32

    :cond_21
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, v23

    const/4 v4, 0x2

    goto :goto_14

    :cond_22
    move-object/from16 v23, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_16
    if-ge v4, v10, :cond_32

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v25, v3

    move-object/from16 v3, v24

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move/from16 v24, v7

    const/16 v16, 0x0

    aget v7, v22, v16

    move/from16 v26, v0

    const/16 v17, 0x1

    aget v0, v22, v17

    move/from16 v27, v8

    iget-object v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    move-object/from16 v28, v2

    aget v2, v8, v16

    aget v8, v8, v17

    invoke-static {v7, v0, v2, v8}, Landroidx/media3/ui/HtmlUtils;->validInGroup(IIII)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-static {v3, v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    :cond_23
    instance-of v0, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v0, :cond_27

    move-object v2, v3

    check-cast v2, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v7, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    if-nez v7, :cond_25

    if-nez v12, :cond_24

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v7

    :cond_24
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    iget v7, v2, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_27

    if-nez v5, :cond_26

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    instance-of v2, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-eqz v2, :cond_2d

    instance-of v2, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v2, :cond_2a

    move-object v2, v3

    check-cast v2, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v7

    if-nez v7, :cond_29

    if-nez v11, :cond_28

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v7

    :cond_28
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/Barrier;->getOrientation()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2d

    if-nez v13, :cond_2c

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_17

    :cond_2a
    move-object v2, v3

    check-cast v2, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-nez v11, :cond_2b

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_2b
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v13, :cond_2c

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_17
    move-object v13, v7

    :cond_2c
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_2f

    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_2f

    if-nez v0, :cond_2f

    instance-of v2, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v2, :cond_2f

    if-nez v14, :cond_2e

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_31

    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_31

    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_31

    if-nez v0, :cond_31

    instance-of v0, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v0, :cond_31

    if-nez v15, :cond_30

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_30
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v24

    move/from16 v3, v25

    move/from16 v0, v26

    move/from16 v8, v27

    move-object/from16 v2, v28

    goto/16 :goto_16

    :cond_32
    move/from16 v26, v0

    move-object/from16 v28, v2

    move/from16 v25, v3

    move/from16 v24, v7

    move/from16 v27, v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/Guideline;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_18

    :cond_33
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v11, :cond_34

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    invoke-static {v3, v5, v0, v4}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_19

    :cond_34
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_1a

    :cond_35
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_1b

    :cond_36
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6, v0, v5}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_1c

    :cond_37
    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v14, :cond_38

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v4, v6, v0, v5}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_1d

    :cond_38
    if-eqz v12, :cond_39

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/Guideline;

    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v5}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_1e

    :cond_39
    const/4 v6, 0x1

    if-eqz v13, :cond_3a

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/HelperWidget;

    invoke-static {v4, v6, v0, v5}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v0}, Landroidx/constraintlayout/core/widgets/HelperWidget;->addDependents(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->cleanup(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1f

    :cond_3a
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v3, :cond_3b

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v5}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_20

    :cond_3b
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v5}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_21

    :cond_3c
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v0, v5}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_22

    :cond_3d
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mDependents:Ljava/util/HashSet;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_23

    :cond_3e
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v15, :cond_3f

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-static {v3, v5, v0, v4}, Landroidx/media3/ui/HtmlUtils;->findDependents(Landroidx/constraintlayout/core/widgets/ConstraintWidget;ILjava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    goto :goto_24

    :cond_3f
    const/4 v2, 0x0

    :goto_25
    if-ge v2, v10, :cond_46

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v6, 0x0

    aget v7, v4, v6

    const/4 v6, 0x3

    if-ne v7, v6, :cond_40

    aget v4, v4, v5

    if-ne v4, v6, :cond_40

    const/4 v4, 0x1

    goto :goto_26

    :cond_40
    const/4 v4, 0x0

    :goto_26
    if-eqz v4, :cond_45

    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_27
    if-ge v7, v5, :cond_42

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v11, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    if-ne v4, v11, :cond_41

    goto :goto_28

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_42
    const/4 v8, 0x0

    :goto_28
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v4, :cond_44

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v11, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    if-ne v3, v11, :cond_43

    goto :goto_2a

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_44
    const/4 v7, 0x0

    :goto_2a
    if-eqz v8, :cond_45

    if-eqz v7, :cond_45

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v7}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    const/4 v3, 0x2

    iput v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    goto :goto_25

    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_47

    move-object/from16 v8, v28

    goto/16 :goto_30

    :cond_47
    const/4 v2, 0x0

    aget v4, v22, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4b

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    const/4 v6, 0x0

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    if-ne v8, v3, :cond_48

    move-object/from16 v8, v28

    goto :goto_2c

    :cond_48
    move-object/from16 v8, v28

    invoke-virtual {v7, v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    move-result v9

    if-le v9, v5, :cond_49

    move-object v6, v7

    move v5, v9

    :cond_49
    :goto_2c
    move-object/from16 v28, v8

    const/4 v2, 0x0

    goto :goto_2b

    :cond_4a
    move-object/from16 v8, v28

    if-eqz v6, :cond_4c

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour$enumunboxing$(I)V

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_2d

    :cond_4b
    move-object/from16 v8, v28

    :cond_4c
    const/4 v6, 0x0

    :goto_2d
    aget v2, v22, v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_50

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_4d
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    iget v7, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    if-nez v7, :cond_4e

    goto :goto_2e

    :cond_4e
    invoke-virtual {v5, v8, v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I

    move-result v7

    if-le v7, v2, :cond_4d

    move-object v4, v5

    move v2, v7

    goto :goto_2e

    :cond_4f
    if-eqz v4, :cond_50

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour$enumunboxing$(I)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_2f

    :cond_50
    const/4 v4, 0x0

    :goto_2f
    if-nez v6, :cond_52

    if-eqz v4, :cond_51

    goto :goto_31

    :cond_51
    :goto_30
    const/4 v0, 0x0

    goto :goto_32

    :cond_52
    :goto_31
    const/4 v0, 0x1

    :goto_32
    if-eqz v0, :cond_57

    move/from16 v2, v27

    const/4 v3, 0x2

    if-ne v2, v3, :cond_54

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    move/from16 v3, v26

    if-ge v3, v0, :cond_53

    if-lez v3, :cond_53

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    goto :goto_33

    :cond_53
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    goto :goto_34

    :cond_54
    move/from16 v3, v26

    :goto_33
    move v0, v3

    :goto_34
    move/from16 v4, v24

    const/4 v3, 0x2

    if-ne v4, v3, :cond_56

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    move/from16 v5, v20

    if-ge v5, v3, :cond_55

    if-lez v5, :cond_55

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    goto :goto_35

    :cond_55
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    goto :goto_36

    :cond_56
    move/from16 v5, v20

    :goto_35
    move v3, v5

    :goto_36
    move v5, v3

    move v3, v0

    const/4 v0, 0x1

    goto :goto_38

    :cond_57
    move/from16 v5, v20

    move/from16 v4, v24

    move/from16 v3, v26

    move/from16 v2, v27

    goto :goto_37

    :cond_58
    move/from16 v25, v3

    move v4, v7

    move-object/from16 v23, v12

    move/from16 v5, v20

    move v3, v0

    move/from16 v29, v8

    move-object v8, v2

    move/from16 v2, v29

    :goto_37
    const/4 v0, 0x0

    :goto_38
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v7

    if-nez v7, :cond_5a

    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v7

    if-eqz v7, :cond_59

    goto :goto_39

    :cond_59
    const/4 v7, 0x0

    goto :goto_3a

    :cond_5a
    :goto_39
    const/4 v7, 0x1

    :goto_3a
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    iget v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    if-eqz v10, :cond_5b

    if-eqz v7, :cond_5b

    const/4 v7, 0x1

    iput-boolean v7, v8, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    goto :goto_3b

    :cond_5b
    const/4 v7, 0x1

    :goto_3b
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    aget v11, v22, v9

    const/4 v12, 0x2

    if-eq v11, v12, :cond_5d

    aget v11, v22, v7

    if-ne v11, v12, :cond_5c

    goto :goto_3c

    :cond_5c
    move v7, v9

    goto :goto_3d

    :cond_5d
    :goto_3c
    const/4 v7, 0x1

    :goto_3d
    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    move/from16 v11, v25

    const/4 v9, 0x0

    :goto_3e
    if-ge v9, v11, :cond_5f

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v13, v12, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    if-eqz v13, :cond_5e

    check-cast v12, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->layout()V

    :cond_5e
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_5f
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v9

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_3f
    if-eqz v13, :cond_74

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v8}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    const/4 v14, 0x0

    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    const/4 v0, 0x0

    :goto_40
    if-ge v0, v11, :cond_60

    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v14, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_60
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v13, 0x5

    if-eqz v0, :cond_61

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v14, v23

    :try_start_3
    invoke-virtual {v8, v14}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v23, v14

    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v8, v0, v6, v14, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v6, 0x0

    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_41

    :catch_0
    move-exception v0

    goto :goto_42

    :catch_1
    move-exception v0

    move-object/from16 v23, v14

    goto :goto_42

    :cond_61
    :goto_41
    :try_start_5
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v0, :cond_62

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v8, v6, v0, v14, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v6, 0x0

    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_43

    :goto_42
    const/4 v6, 0x0

    goto :goto_46

    :cond_62
    :goto_43
    :try_start_7
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v6, v21

    :try_start_8
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v14

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v21, v6

    const/4 v6, 0x0

    :try_start_9
    invoke-virtual {v8, v0, v14, v6, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    const/4 v6, 0x0

    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    goto :goto_44

    :catch_2
    move-exception v0

    move-object/from16 v21, v6

    goto :goto_42

    :cond_63
    :goto_44
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v8, v6, v0, v14, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const/4 v6, 0x0

    :try_start_a
    iput-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    goto :goto_45

    :catch_3
    move-exception v0

    goto :goto_42

    :cond_64
    const/4 v6, 0x0

    :goto_45
    invoke-virtual {v8}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    const/16 v20, 0x1

    goto :goto_48

    :catch_4
    move-exception v0

    :goto_46
    const/4 v13, 0x1

    goto :goto_47

    :catch_5
    move-exception v0

    const/4 v6, 0x0

    :goto_47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v20, v13

    const-string v13, "EXCEPTION : "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_48
    sget-object v0, Landroidx/media3/ui/HtmlUtils;->flags:[Z

    if-eqz v20, :cond_69

    const/4 v6, 0x2

    const/4 v13, 0x0

    aput-boolean v13, v0, v6

    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v13

    invoke-virtual {v1, v8, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v6, 0x0

    const/16 v20, 0x0

    :goto_49
    if-ge v6, v14, :cond_68

    move/from16 v24, v14

    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v14, v8, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    move/from16 v25, v13

    iget v13, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    move/from16 v26, v12

    const/4 v12, -0x1

    if-ne v13, v12, :cond_66

    iget v13, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    if-eq v13, v12, :cond_65

    goto :goto_4a

    :cond_65
    const/4 v13, 0x0

    goto :goto_4b

    :cond_66
    :goto_4a
    const/4 v13, 0x1

    :goto_4b
    if-eqz v13, :cond_67

    const/16 v20, 0x1

    :cond_67
    add-int/lit8 v6, v6, 0x1

    move/from16 v14, v24

    move/from16 v13, v25

    move/from16 v12, v26

    goto :goto_49

    :cond_68
    move/from16 v26, v12

    const/4 v12, -0x1

    goto :goto_4d

    :cond_69
    move/from16 v26, v12

    const/4 v12, -0x1

    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    const/4 v6, 0x0

    :goto_4c
    if-ge v6, v11, :cond_6a

    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v13, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    :cond_6a
    const/16 v20, 0x0

    :goto_4d
    const/16 v6, 0x8

    if-eqz v7, :cond_6d

    if-ge v15, v6, :cond_6d

    const/4 v13, 0x2

    aget-boolean v0, v0, v13

    if-eqz v0, :cond_6d

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4e
    if-ge v0, v11, :cond_6b

    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v25

    add-int v6, v25, v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    add-int/2addr v12, v6

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x8

    const/4 v12, -0x1

    goto :goto_4e

    :cond_6b
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v12, 0x2

    if-ne v2, v12, :cond_6c

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    if-ge v13, v0, :cond_6c

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    const/4 v13, 0x0

    aput v12, v22, v13

    const/16 v20, 0x1

    const/16 v26, 0x1

    :cond_6c
    if-ne v4, v12, :cond_6d

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    if-ge v0, v6, :cond_6d

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    const/4 v6, 0x1

    aput v12, v22, v6

    const/16 v20, 0x1

    const/16 v26, 0x1

    :cond_6d
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    if-le v0, v6, :cond_6e

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    const/4 v6, 0x1

    const/4 v12, 0x0

    aput v6, v22, v12

    move/from16 v17, v6

    move/from16 v20, v17

    goto :goto_4f

    :cond_6e
    const/4 v6, 0x1

    move/from16 v17, v26

    :goto_4f
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    if-le v0, v12, :cond_6f

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    aput v6, v22, v6

    move v0, v6

    move/from16 v20, v0

    goto :goto_50

    :cond_6f
    move/from16 v0, v17

    :goto_50
    if-nez v0, :cond_71

    const/4 v12, 0x0

    aget v13, v22, v12

    const/4 v14, 0x2

    if-ne v13, v14, :cond_70

    if-lez v3, :cond_70

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    if-le v13, v3, :cond_70

    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    aput v6, v22, v12

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    move v0, v6

    move/from16 v20, v0

    :cond_70
    aget v12, v22, v6

    const/4 v13, 0x2

    if-ne v12, v13, :cond_72

    if-lez v5, :cond_72

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    if-le v12, v5, :cond_72

    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    aput v6, v22, v6

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    const/16 v0, 0x8

    const/4 v6, 0x1

    const/4 v12, 0x1

    goto :goto_51

    :cond_71
    const/4 v13, 0x2

    :cond_72
    move v12, v0

    move/from16 v6, v20

    const/16 v0, 0x8

    :goto_51
    if-le v15, v0, :cond_73

    const/4 v6, 0x0

    :cond_73
    move v13, v6

    move v0, v15

    const/16 v6, 0x40

    goto/16 :goto_3f

    :cond_74
    move/from16 v26, v12

    iput-object v10, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    if-eqz v26, :cond_75

    const/4 v3, 0x0

    aput v2, v22, v3

    const/4 v2, 0x1

    aput v4, v22, v2

    :cond_75
    iget-object v0, v8, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/work/WorkQuery;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->resetSolverVariables(Landroidx/work/WorkQuery;)V

    return-void
.end method

.method public final optimizeFor(I)Z
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->reset()V

    return-void
.end method

.method public final updateFromRuns(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
