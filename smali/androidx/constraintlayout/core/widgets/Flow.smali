.class public final Landroidx/constraintlayout/core/widgets/Flow;
.super Landroidx/constraintlayout/core/widgets/HelperWidget;
.source "SourceFile"


# instance fields
.field public mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mAlignedDimensions:[I

.field public final mChainList:Ljava/util/ArrayList;

.field public mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mDisplayedWidgetsCount:I

.field public mFirstHorizontalBias:F

.field public mFirstHorizontalStyle:I

.field public mFirstVerticalBias:F

.field public mFirstVerticalStyle:I

.field public mHorizontalAlign:I

.field public mHorizontalBias:F

.field public mHorizontalGap:I

.field public mHorizontalStyle:I

.field public mLastHorizontalBias:F

.field public mLastHorizontalStyle:I

.field public mLastVerticalBias:F

.field public mLastVerticalStyle:I

.field public mMaxElementsWrap:I

.field public final mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field public mMeasuredHeight:I

.field public mMeasuredWidth:I

.field public mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field public mNeedsCallFromSolver:Z

.field public mOrientation:I

.field public mPaddingBottom:I

.field public mPaddingEnd:I

.field public mPaddingStart:I

.field public mPaddingTop:I

.field public mResolvedPaddingLeft:I

.field public mResolvedPaddingRight:I

.field public mVerticalAlign:I

.field public mVerticalBias:F

.field public mVerticalGap:I

.field public mVerticalStyle:I

.field public mWrapMode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingStart:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingEnd:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mNeedsCallFromSolver:Z

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredWidth:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredHeight:I

    new-instance v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    const/4 v3, 0x2

    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    iput v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method


# virtual methods
.method public final addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 11

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    if-eq v1, v0, :cond_19

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p2

    :goto_1
    if-ge v3, v1, :cond_1c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p2

    :goto_2
    invoke-virtual {v4, v3, p1, v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v1, :cond_4

    goto/16 :goto_e

    :cond_4
    move v1, p2

    :goto_3
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    aget v2, v1, p2

    aget v1, v1, v0

    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    const/4 v4, 0x0

    move v5, p2

    :goto_4
    const/16 v6, 0x8

    if-ge v5, v2, :cond_c

    if-eqz p1, :cond_6

    sub-int v3, v2, v5

    sub-int/2addr v3, v0

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    sub-float/2addr v7, v8

    goto :goto_5

    :cond_6
    move v7, v3

    move v3, v5

    :goto_5
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v8, v3

    if-eqz v3, :cond_b

    iget v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v8, v6, :cond_7

    goto :goto_6

    :cond_7
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v5, :cond_8

    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3, v6, v9, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    iput v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    :cond_8
    add-int/lit8 v8, v2, -0x1

    if-ne v5, v8, :cond_9

    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    iget-object v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3, v9, v10, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_9
    if-lez v5, :cond_a

    if-eqz v4, :cond_a

    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3, v6, v9, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    invoke-virtual {v4, v9, v6, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_a
    move-object v4, v3

    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_4

    :cond_c
    move p1, p2

    :goto_7
    if-ge p1, v1, :cond_12

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, p1

    if-eqz v3, :cond_11

    iget v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v5, v6, :cond_d

    goto :goto_8

    :cond_d
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez p1, :cond_e

    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3, v5, v8, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    :cond_e
    add-int/lit8 v7, v1, -0x1

    if-ne p1, v7, :cond_f

    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    iget-object v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3, v8, v9, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_f
    if-lez p1, :cond_10

    if-eqz v4, :cond_10

    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3, v5, v8, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_10
    move-object v4, v3

    :cond_11
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_12
    move p1, p2

    :goto_9
    if-ge p1, v2, :cond_1c

    move v3, p2

    :goto_a
    if-ge v3, v1, :cond_18

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    if-ne v5, v0, :cond_13

    mul-int v4, p1, v1

    add-int/2addr v4, v3

    :cond_13
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    array-length v7, v5

    if-lt v4, v7, :cond_14

    goto :goto_b

    :cond_14
    aget-object v4, v5, v4

    if-eqz v4, :cond_17

    iget v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v5, v6, :cond_15

    goto :goto_b

    :cond_15
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v5, v5, p1

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v7, v7, v3

    if-eq v4, v5, :cond_16

    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4, v9, v8, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_16
    if-eq v4, v7, :cond_17

    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v4, v5, v7, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    :cond_17
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, p2

    :goto_c
    if-ge v3, v1, :cond_1c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_1a

    move v5, v0

    goto :goto_d

    :cond_1a
    move v5, p2

    :goto_d
    invoke-virtual {v4, v3, p1, v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1c

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    invoke-virtual {v1, p2, p1, v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(IZZ)V

    :cond_1c
    :goto_e
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mNeedsCallFromSolver:Z

    return-void
.end method

.method public final getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v3, :cond_1

    return v0

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    iget v3, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    if-eq p1, v3, :cond_2

    iput-boolean v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    aget v6, v1, v0

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p2

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/Flow;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    :cond_2
    return p1

    :cond_3
    if-ne v3, v2, :cond_4

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p0

    return p0

    :cond_4
    if-ne v3, v4, :cond_5

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_5
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I
    .locals 11

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    aget v2, v1, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget v2, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v4, 0x1

    if-ne v2, v0, :cond_3

    iget v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    if-eq p1, v0, :cond_2

    iput-boolean v4, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    const/4 v7, 0x1

    aget v9, v1, v4

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    move-object v5, p0

    move-object v6, p2

    move v8, p1

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/core/widgets/Flow;->measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V

    :cond_2
    return p1

    :cond_3
    if-ne v2, v4, :cond_4

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p0

    return p0

    :cond_4
    if-ne v2, v3, :cond_5

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p0

    int-to-float p0, p0

    iget p1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_5
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p0

    return p0
.end method

.method public final measure(IIII)V
    .locals 37

    move-object/from16 v8, p0

    iget v0, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lez v0, :cond_a

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    move v0, v11

    goto/16 :goto_5

    :cond_1
    move v2, v11

    :goto_1
    iget v3, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v2, v3, :cond_9

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour$enumunboxing$(I)I

    move-result v4

    invoke-virtual {v3, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour$enumunboxing$(I)I

    move-result v5

    if-ne v4, v10, :cond_4

    iget v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v6, v12, :cond_4

    if-ne v5, v10, :cond_4

    iget v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v6, v12, :cond_4

    move v6, v12

    goto :goto_2

    :cond_4
    move v6, v11

    :goto_2
    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    if-ne v4, v10, :cond_6

    move v4, v9

    :cond_6
    if-ne v5, v10, :cond_7

    move v5, v9

    :cond_7
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    iput v5, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    iput v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    iput v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    invoke-virtual {v0, v3, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    iput v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v4, :cond_8

    move v4, v12

    goto :goto_3

    :cond_8
    move v4, v11

    :goto_3
    iput-boolean v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    move v0, v12

    :goto_5
    if-nez v0, :cond_a

    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredWidth:I

    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredHeight:I

    iput-boolean v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mNeedsCallFromSolver:Z

    return-void

    :cond_a
    iget v13, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    iget v14, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    iget v15, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    iget v7, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    new-array v6, v9, [I

    sub-int v0, p2, v13

    sub-int/2addr v0, v14

    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    if-ne v2, v12, :cond_b

    sub-int v0, p4, v15

    sub-int/2addr v0, v7

    :cond_b
    move v5, v0

    const/4 v0, -0x1

    if-nez v2, :cond_d

    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    if-ne v2, v0, :cond_c

    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    :cond_c
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    if-ne v2, v0, :cond_f

    goto :goto_6

    :cond_d
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    if-ne v2, v0, :cond_e

    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    :cond_e
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    if-ne v2, v0, :cond_f

    :goto_6
    iput v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    :cond_f
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move v2, v11

    move v3, v2

    :goto_7
    iget v4, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    const/16 v1, 0x8

    if-ge v2, v4, :cond_11

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v4, v4, v2

    iget v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v4, v1, :cond_10

    add-int/lit8 v3, v3, 0x1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    if-lez v3, :cond_13

    sub-int/2addr v4, v3

    new-array v0, v4, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move v2, v11

    move v4, v2

    :goto_8
    iget v3, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v2, v3, :cond_13

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    iget v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-eq v11, v1, :cond_12

    aput-object v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto :goto_8

    :cond_13
    move-object v11, v0

    iput-object v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    if-eqz v0, :cond_70

    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v27, v9

    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    if-eq v0, v12, :cond_56

    const/4 v12, 0x2

    if-eq v0, v12, :cond_2f

    const/4 v12, 0x3

    if-eq v0, v12, :cond_14

    goto :goto_9

    :cond_14
    iget v12, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    if-nez v4, :cond_15

    :goto_9
    move-object/from16 v31, v6

    move/from16 v32, v7

    move/from16 v29, v13

    move/from16 v33, v14

    move/from16 v34, v15

    goto/16 :goto_3f

    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    move-object/from16 v19, v3

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v20, v4

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v21, v5

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v22, v6

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v0

    move-object/from16 v23, v1

    move-object/from16 v1, p0

    move-object/from16 v24, v2

    move v2, v12

    move-object/from16 v28, v10

    move-object/from16 v10, v19

    move/from16 v29, v13

    move/from16 v13, v20

    move/from16 v30, v21

    move-object/from16 v31, v22

    move/from16 v32, v7

    move/from16 v7, v30

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_1d

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v13, :cond_1c

    const/4 v4, 0x1

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v11, v7

    move/from16 v4, v30

    invoke-virtual {v8, v4, v5}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v16

    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/16 v19, 0x0

    aget v1, v1, v19

    move-object/from16 v20, v5

    const/4 v5, 0x3

    if-ne v1, v5, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    move/from16 v19, v2

    if-eq v3, v4, :cond_17

    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v1, v3

    add-int v1, v1, v16

    if-le v1, v4, :cond_18

    :cond_17
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_b

    :cond_18
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_19

    if-lez v7, :cond_19

    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_19

    if-le v6, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    if-eqz v1, :cond_1a

    new-instance v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v21, v0

    move-object v0, v5

    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object/from16 v25, v2

    move v2, v12

    move/from16 v30, v4

    move-object/from16 v4, v25

    move/from16 v33, v14

    move/from16 v34, v15

    move-object/from16 v14, v20

    move-object v15, v5

    move-object/from16 v5, v22

    move/from16 v20, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v9

    move v9, v7

    move/from16 v7, v30

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    iput v9, v15, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v15

    move/from16 v3, v16

    move/from16 v1, v20

    goto :goto_c

    :cond_1a
    move/from16 v30, v4

    move-object/from16 v21, v9

    move/from16 v33, v14

    move/from16 v34, v15

    move-object/from16 v14, v20

    move v9, v7

    if-lez v9, :cond_1b

    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int v1, v1, v16

    add-int v16, v1, v3

    :cond_1b
    move/from16 v3, v16

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v7, v9, 0x1

    move/from16 v2, v19

    move-object/from16 v9, v21

    move/from16 v14, v33

    move/from16 v15, v34

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v21, v9

    move/from16 v33, v14

    move/from16 v34, v15

    move/from16 v15, v30

    goto/16 :goto_11

    :cond_1d
    move-object/from16 v21, v9

    move/from16 v33, v14

    move/from16 v34, v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_d
    if-ge v9, v13, :cond_24

    aget-object v14, v11, v9

    move/from16 v15, v30

    invoke-virtual {v8, v15, v14}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v16

    iget-object v3, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    move/from16 v19, v1

    if-eq v2, v15, :cond_1f

    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v1, v2

    add-int v1, v1, v16

    if-le v1, v15, :cond_20

    :cond_1f
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_e

    :cond_20
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_21

    if-lez v9, :cond_21

    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v3, :cond_21

    if-gez v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    if-eqz v1, :cond_22

    new-instance v7, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v12

    move-object/from16 v30, v11

    move-object v11, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    iput v9, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v11

    goto :goto_f

    :cond_22
    move-object/from16 v30, v11

    if-lez v9, :cond_23

    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int v1, v1, v16

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_10

    :cond_23
    :goto_f
    move/from16 v2, v16

    :goto_10
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v19

    move-object/from16 v11, v30

    move/from16 v30, v15

    goto :goto_d

    :cond_24
    move/from16 v15, v30

    move v2, v1

    :goto_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    iget v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    const/4 v6, 0x0

    aget v7, v21, v6

    const/4 v6, 0x2

    if-eq v7, v6, :cond_26

    const/4 v7, 0x1

    aget v9, v21, v7

    if-ne v9, v6, :cond_25

    goto :goto_12

    :cond_25
    const/4 v6, 0x0

    goto :goto_13

    :cond_26
    :goto_12
    const/4 v6, 0x1

    :goto_13
    if-lez v2, :cond_28

    if-eqz v6, :cond_28

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_28

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    if-nez v12, :cond_27

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v7

    goto :goto_15

    :cond_27
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v7

    :goto_15
    sub-int v7, v15, v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_28
    move v6, v3

    move-object/from16 v2, v24

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v3, v1

    move-object/from16 v1, v23

    :goto_16
    if-ge v7, v0, :cond_2e

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v30, v5

    move-object/from16 v5, v16

    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    if-nez v12, :cond_2b

    add-int/lit8 v13, v0, -0x1

    if-ge v7, v13, :cond_29

    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v10

    const/16 v30, 0x0

    goto :goto_17

    :cond_29
    iget v13, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    move-object/from16 v35, v10

    move/from16 v30, v13

    move-object/from16 v13, v27

    :goto_17
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v5

    move/from16 v17, v12

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v30

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v5

    add-int/2addr v5, v11

    if-lez v7, :cond_2a

    iget v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v5, v6

    :cond_2a
    move v9, v2

    move v11, v5

    move-object v2, v10

    move/from16 v5, v30

    move-object/from16 v10, v35

    const/4 v6, 0x0

    move/from16 v35, v0

    goto :goto_19

    :cond_2b
    move-object/from16 v35, v10

    add-int/lit8 v4, v0, -0x1

    if-ge v7, v4, :cond_2c

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v10, v35

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v35, v0

    move-object v14, v4

    const/4 v4, 0x0

    goto :goto_18

    :cond_2c
    move-object/from16 v10, v35

    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    move/from16 v35, v0

    move-object/from16 v14, v28

    :goto_18
    iget-object v0, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v5

    move/from16 v17, v12

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v30

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v7, :cond_2d

    iget v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v1, v5

    :cond_2d
    move v9, v1

    move v11, v3

    move/from16 v5, v30

    const/4 v3, 0x0

    move-object v1, v0

    :goto_19
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v35

    goto/16 :goto_16

    :cond_2e
    const/4 v0, 0x0

    aput v9, v31, v0

    const/4 v0, 0x1

    aput v11, v31, v0

    goto/16 :goto_3f

    :cond_2f
    move-object/from16 v31, v6

    move/from16 v32, v7

    move-object/from16 v30, v11

    move/from16 v29, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move v13, v4

    move v15, v5

    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-nez v0, :cond_35

    if-gtz v1, :cond_34

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-ge v1, v13, :cond_33

    if-lez v1, :cond_30

    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v2, v4

    :cond_30
    aget-object v4, v30, v1

    if-nez v4, :cond_31

    goto :goto_1b

    :cond_31
    invoke-virtual {v8, v15, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v4

    add-int/2addr v4, v2

    if-le v4, v15, :cond_32

    goto :goto_1c

    :cond_32
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_33
    :goto_1c
    move v1, v3

    :cond_34
    move v2, v1

    const/4 v1, 0x0

    goto :goto_20

    :cond_35
    if-gtz v1, :cond_3a

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-ge v1, v13, :cond_39

    if-lez v1, :cond_36

    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v2, v4

    :cond_36
    aget-object v4, v30, v1

    if-nez v4, :cond_37

    goto :goto_1e

    :cond_37
    invoke-virtual {v8, v15, v4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v4

    add-int/2addr v4, v2

    if-le v4, v15, :cond_38

    goto :goto_1f

    :cond_38
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_39
    :goto_1f
    move v1, v3

    :cond_3a
    const/4 v2, 0x0

    :goto_20
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    if-nez v3, :cond_3b

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    :cond_3b
    if-nez v1, :cond_3c

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3d

    :cond_3c
    if-nez v2, :cond_3e

    if-nez v0, :cond_3e

    :cond_3d
    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v0

    move v6, v1

    move v7, v2

    move-object v9, v8

    move-object/from16 v11, v30

    move-object/from16 v10, v31

    move/from16 v14, v33

    const/4 v0, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_2e

    :cond_3e
    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v0

    move v6, v1

    move v7, v2

    move-object v0, v8

    move-object/from16 v11, v30

    move-object/from16 v9, v31

    move/from16 v14, v33

    const/4 v10, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    :goto_21
    if-nez v10, :cond_55

    if-nez v5, :cond_3f

    int-to-float v6, v13

    int-to-float v12, v7

    div-float/2addr v6, v12

    move-object/from16 p0, v0

    move/from16 p1, v1

    float-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v6, v0

    goto :goto_22

    :cond_3f
    move-object/from16 p0, v0

    move/from16 p1, v1

    int-to-float v0, v13

    int-to-float v1, v6

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move v7, v0

    :goto_22
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_41

    array-length v1, v0

    if-ge v1, v7, :cond_40

    goto :goto_23

    :cond_40
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_24

    :cond_41
    :goto_23
    const/4 v1, 0x0

    new-array v0, v7, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :goto_24
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_43

    array-length v12, v0

    if-ge v12, v6, :cond_42

    goto :goto_25

    :cond_42
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_26

    :cond_43
    :goto_25
    new-array v0, v6, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :goto_26
    const/4 v0, 0x0

    :goto_27
    if-ge v0, v7, :cond_4c

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v6, :cond_4b

    mul-int v12, v1, v7

    add-int/2addr v12, v0

    move/from16 p2, v2

    const/4 v2, 0x1

    if-ne v5, v2, :cond_44

    mul-int v2, v0, v6

    add-int v12, v2, v1

    :cond_44
    array-length v2, v11

    if-lt v12, v2, :cond_45

    :goto_29
    move/from16 p3, v3

    goto :goto_2a

    :cond_45
    aget-object v2, v11, v12

    if-nez v2, :cond_46

    goto :goto_29

    :cond_46
    invoke-virtual {v8, v15, v2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v12

    move/from16 p3, v3

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v0

    if-eqz v3, :cond_47

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    if-ge v3, v12, :cond_48

    :cond_47
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v2, v3, v0

    :cond_48
    invoke-virtual {v8, v15, v2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v3

    iget-object v12, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v12, v12, v1

    if-eqz v12, :cond_49

    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    if-ge v12, v3, :cond_4a

    :cond_49
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aput-object v2, v3, v1

    :cond_4a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_28

    :cond_4b
    move/from16 p2, v2

    move/from16 p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_4c
    move/from16 p2, v2

    move/from16 p3, v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2b
    if-ge v0, v7, :cond_4f

    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4e

    if-lez v0, :cond_4d

    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v1, v3

    :cond_4d
    invoke-virtual {v8, v15, v2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_4f
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2c
    if-ge v0, v6, :cond_52

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v3, v3, v0

    if-eqz v3, :cond_51

    if-lez v0, :cond_50

    iget v12, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v2, v12

    :cond_50
    invoke-virtual {v8, v15, v3}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_52
    const/4 v0, 0x0

    aput v1, v9, v0

    const/4 v0, 0x1

    aput v2, v9, v0

    if-nez v5, :cond_53

    if-le v1, v15, :cond_54

    if-le v7, v0, :cond_54

    add-int/lit8 v7, v7, -0x1

    goto :goto_2d

    :cond_53
    if-le v2, v15, :cond_54

    if-le v6, v0, :cond_54

    add-int/lit8 v6, v6, -0x1

    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_21

    :cond_54
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v10, v31

    move-object/from16 v31, v9

    move-object v9, v8

    move-object/from16 v8, p0

    :goto_2e
    move-object/from16 v36, v10

    move v10, v0

    move-object v0, v8

    move-object v8, v9

    move-object/from16 v9, v31

    move-object/from16 v31, v36

    goto/16 :goto_21

    :cond_55
    move-object/from16 p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    const/4 v0, 0x1

    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    const/4 v2, 0x0

    aput v7, v1, v2

    aput v6, v1, v0

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v13, v29

    move-object/from16 v6, v31

    move/from16 v7, v32

    goto/16 :goto_40

    :cond_56
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    move-object/from16 v31, v6

    move/from16 v32, v7

    move-object/from16 v21, v9

    move-object/from16 v28, v10

    move-object/from16 v30, v11

    move/from16 v29, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move-object v10, v3

    move v13, v4

    move v15, v5

    iget v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    if-nez v13, :cond_57

    goto/16 :goto_3f

    :cond_57
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v11

    move-object/from16 v1, p0

    move v2, v9

    move v7, v15

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v12, 0x0

    if-nez v9, :cond_5e

    :goto_2f
    if-ge v12, v13, :cond_65

    aget-object v14, v30, v12

    invoke-virtual {v8, v15, v14}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v16

    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_58

    add-int/lit8 v0, v0, 0x1

    :cond_58
    move/from16 v19, v0

    if-eq v1, v15, :cond_59

    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v15, :cond_5a

    :cond_59
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    goto :goto_30

    :cond_5a
    const/4 v0, 0x0

    :goto_30
    if-nez v0, :cond_5b

    if-lez v12, :cond_5b

    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_5b

    rem-int v2, v12, v2

    if-nez v2, :cond_5b

    const/4 v0, 0x1

    :cond_5b
    if-eqz v0, :cond_5c

    new-instance v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v11

    move-object/from16 v1, p0

    move v2, v9

    move v7, v15

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    iput v12, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_5c
    if-lez v12, :cond_5d

    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_32

    :cond_5d
    :goto_31
    move/from16 v1, v16

    :goto_32
    invoke-virtual {v11, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v19

    goto :goto_2f

    :cond_5e
    :goto_33
    if-ge v12, v13, :cond_65

    aget-object v14, v30, v12

    invoke-virtual {v8, v15, v14}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I

    move-result v16

    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v7, 0x3

    if-ne v2, v7, :cond_5f

    add-int/lit8 v0, v0, 0x1

    :cond_5f
    move/from16 v17, v0

    if-eq v1, v15, :cond_60

    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v1

    add-int v0, v0, v16

    if-le v0, v15, :cond_61

    :cond_60
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_61

    const/4 v0, 0x1

    goto :goto_34

    :cond_61
    const/4 v0, 0x0

    :goto_34
    if-nez v0, :cond_62

    if-lez v12, :cond_62

    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_62

    rem-int v2, v12, v2

    if-nez v2, :cond_62

    const/4 v0, 0x1

    :cond_62
    if-eqz v0, :cond_63

    new-instance v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v11

    move-object/from16 v1, p0

    move v2, v9

    move/from16 v19, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    iput v12, v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_63
    move/from16 v19, v7

    if-lez v12, :cond_64

    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int v0, v0, v16

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_36

    :cond_64
    :goto_35
    move/from16 v1, v16

    :goto_36
    invoke-virtual {v11, v14}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v17

    goto :goto_33

    :cond_65
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    iget v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    const/4 v6, 0x0

    aget v7, v21, v6

    const/4 v6, 0x2

    if-eq v7, v6, :cond_67

    const/4 v7, 0x1

    aget v11, v21, v7

    if-ne v11, v6, :cond_66

    goto :goto_37

    :cond_66
    const/4 v6, 0x0

    goto :goto_38

    :cond_67
    :goto_37
    const/4 v6, 0x1

    :goto_38
    if-lez v0, :cond_69

    if-eqz v6, :cond_69

    const/4 v0, 0x0

    :goto_39
    if-ge v0, v1, :cond_69

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    if-nez v9, :cond_68

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v7

    goto :goto_3a

    :cond_68
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v7

    :goto_3a
    sub-int v7, v15, v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_69
    move v6, v3

    move-object/from16 v0, v23

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v3, v2

    move-object/from16 v2, v24

    :goto_3b
    if-ge v7, v1, :cond_6f

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v30, v5

    move-object/from16 v5, v16

    check-cast v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    if-nez v9, :cond_6c

    add-int/lit8 v13, v1, -0x1

    if-ge v7, v13, :cond_6a

    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v35, v10

    const/16 v30, 0x0

    goto :goto_3c

    :cond_6a
    iget v13, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    move-object/from16 v35, v10

    move/from16 v30, v13

    move-object/from16 v13, v27

    :goto_3c
    iget-object v10, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v5

    move/from16 v17, v9

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v30

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v5

    add-int/2addr v5, v12

    if-lez v7, :cond_6b

    iget v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    add-int/2addr v5, v6

    :cond_6b
    move v11, v2

    move v12, v5

    move-object v2, v10

    move/from16 v5, v30

    move-object/from16 v10, v35

    const/4 v6, 0x0

    move/from16 v35, v1

    goto :goto_3e

    :cond_6c
    move-object/from16 v35, v10

    add-int/lit8 v4, v1, -0x1

    if-ge v7, v4, :cond_6d

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v10, v35

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move/from16 v35, v1

    move-object v14, v4

    const/4 v4, 0x0

    goto :goto_3d

    :cond_6d
    move-object/from16 v10, v35

    iget v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    move/from16 v35, v1

    move-object/from16 v14, v28

    :goto_3d
    iget-object v1, v5, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v16, v5

    move/from16 v17, v9

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move/from16 v22, v3

    move/from16 v23, v6

    move/from16 v24, v4

    move/from16 v25, v30

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v7, :cond_6e

    iget v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v5

    :cond_6e
    move v11, v0

    move-object v0, v1

    move v12, v3

    move/from16 v5, v30

    const/4 v3, 0x0

    :goto_3e
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v35

    goto/16 :goto_3b

    :cond_6f
    const/4 v0, 0x0

    aput v11, v31, v0

    const/4 v0, 0x1

    aput v12, v31, v0

    goto :goto_3f

    :cond_70
    move-object v10, v3

    move-object/from16 v31, v6

    move/from16 v32, v7

    move-object/from16 v30, v11

    move/from16 v29, v13

    move/from16 v33, v14

    move/from16 v34, v15

    move v13, v4

    move v15, v5

    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    if-nez v13, :cond_71

    :goto_3f
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v13, v29

    move-object/from16 v6, v31

    move/from16 v7, v32

    move/from16 v14, v33

    :goto_40
    move/from16 v15, v34

    move v3, v2

    const/16 v19, 0x0

    move v2, v1

    const/4 v1, 0x1

    goto/16 :goto_43

    :cond_71
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_72

    new-instance v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object v0, v9

    move-object/from16 v1, p0

    move v7, v15

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_72
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggestDimension:I

    const/4 v1, 0x0

    iput-object v1, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mWidth:I

    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mHeight:I

    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mStartIndex:I

    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mCount:I

    iput v0, v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->mNbMatchConstraintsWidgets:I

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingLeft:I

    iget v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingTop:I

    iget v7, v8, Landroidx/constraintlayout/core/widgets/Flow;->mResolvedPaddingRight:I

    iget v10, v8, Landroidx/constraintlayout/core/widgets/Flow;->mPaddingBottom:I

    move-object/from16 v16, v9

    move/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    :goto_41
    const/4 v0, 0x0

    :goto_42
    if-ge v0, v13, :cond_73

    aget-object v1, v30, v0

    invoke-virtual {v9, v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_73
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    move-result v0

    const/16 v19, 0x0

    aput v0, v31, v19

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    aput v0, v31, v1

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v13, v29

    move-object/from16 v6, v31

    move/from16 v7, v32

    move/from16 v14, v33

    move/from16 v15, v34

    :goto_43
    aget v5, v6, v19

    add-int/2addr v5, v13

    add-int/2addr v5, v14

    aget v6, v6, v1

    add-int/2addr v6, v15

    add-int/2addr v6, v7

    const/high16 v7, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v0, v9, :cond_74

    move v0, v2

    goto :goto_44

    :cond_74
    if-ne v0, v7, :cond_75

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_44

    :cond_75
    if-nez v0, :cond_76

    move v0, v5

    goto :goto_44

    :cond_76
    move/from16 v0, v19

    :goto_44
    if-ne v3, v9, :cond_77

    move v2, v4

    goto :goto_45

    :cond_77
    if-ne v3, v7, :cond_78

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_45

    :cond_78
    if-nez v3, :cond_79

    move v2, v6

    goto :goto_45

    :cond_79
    move/from16 v2, v19

    :goto_45
    iput v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredWidth:I

    iput v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMeasuredHeight:I

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget v0, v8, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-lez v0, :cond_7a

    move v11, v1

    goto :goto_46

    :cond_7a
    move/from16 v11, v19

    :goto_46
    iput-boolean v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mNeedsCallFromSolver:Z

    return-void
.end method

.method public final measure$enumunboxing$(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IIII)V
    .locals 2

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_0

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:I

    iput p4, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:I

    iput p3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    iput p5, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    invoke-virtual {v0, p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    iget p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    iput-boolean p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    iput p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iput-boolean p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    return-void
.end method

.method public final updateConstraints()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
