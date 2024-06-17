.class public final Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mChildrenFrozen:[Z

.field public final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field public mIndexToFlexLine:[I

.field public mMeasureSpecCache:[J

.field public mMeasuredSizeCache:[J


# direct methods
.method public constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    return-void
.end method


# virtual methods
.method public final addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .locals 0

    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final calculateFlexLines(Lcom/adobe/xmp/impl/ParseState;IIIIILjava/util/List;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object v4, v3

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-nez p7, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    iput-object v8, v1, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    const/4 v9, -0x1

    if-ne v2, v9, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v5, :cond_3

    iget-object v13, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_2

    sget-object v14, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v13}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result v13

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v13

    :goto_2
    if-eqz v5, :cond_5

    iget-object v14, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v14, :cond_4

    sget-object v15, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v14}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v14

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v14

    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v15

    goto :goto_4

    :cond_6
    iget-object v15, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v15, :cond_7

    sget-object v16, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v15}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result v15

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-eqz v5, :cond_8

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v16

    goto :goto_5

    :cond_8
    iget-object v11, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_9

    sget-object v16, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v11}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v11

    move/from16 v16, v11

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    :goto_5
    new-instance v11, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v11}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move/from16 v9, p5

    iput v9, v11, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v13, v14

    iput v13, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-virtual {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v14

    const/high16 v17, -0x80000000

    move/from16 v19, v17

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_6
    if-ge v9, v14, :cond_3a

    invoke-virtual {v4, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_c

    add-int/lit8 v1, v14, -0x1

    if-ne v9, v1, :cond_a

    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 p5, v12

    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v1, v12

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    move/from16 p5, v12

    :cond_b
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_e

    goto :goto_9

    :cond_c
    move/from16 p5, v12

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v2, 0x8

    if-ne v12, v2, :cond_f

    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v11, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v12, v2

    iput v12, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v2, v14, -0x1

    if-ne v9, v2, :cond_d

    sub-int/2addr v12, v1

    if-eqz v12, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_e

    :goto_9
    invoke-virtual {v0, v8, v11, v9, v10}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    :cond_e
    move/from16 v12, p5

    move/from16 v1, p6

    move-object/from16 v21, v3

    move/from16 v23, v6

    move/from16 v22, v7

    move/from16 v20, v14

    move/from16 v24, v15

    move/from16 v2, v19

    const/4 v3, -0x1

    const/4 v7, 0x1

    move/from16 v6, p4

    move/from16 v19, v13

    goto/16 :goto_28

    :cond_f
    instance-of v2, v1, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_14

    move-object v2, v1

    check-cast v2, Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    move/from16 v20, v14

    iget v14, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    move-object/from16 v21, v3

    iget v3, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    invoke-static {v2}, Landroidx/core/widget/CompoundButtonCompat$Api23Impl;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_10

    const/16 v22, 0x0

    goto :goto_a

    :cond_10
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v22

    :goto_a
    if-nez v2, :cond_11

    const/4 v2, -0x1

    const/16 v23, 0x0

    goto :goto_b

    :cond_11
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    move/from16 v23, v2

    const/4 v2, -0x1

    :goto_b
    if-ne v14, v2, :cond_12

    move/from16 v14, v22

    :cond_12
    iput v14, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    if-ne v3, v2, :cond_13

    move/from16 v3, v23

    :cond_13
    iput v3, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    goto :goto_c

    :cond_14
    move-object/from16 v21, v3

    move/from16 v20, v14

    :goto_c
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    move-object v3, v2

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v12, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/4 v14, 0x4

    if-ne v12, v14, :cond_15

    iget-object v12, v11, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v5, :cond_16

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_d

    :cond_16
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_d
    iget v14, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    const/high16 v22, -0x40800000    # -1.0f

    cmpl-float v22, v14, v22

    if-eqz v22, :cond_17

    move/from16 v22, v12

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v6, v12, :cond_18

    int-to-float v12, v7

    mul-float/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    goto :goto_e

    :cond_17
    move/from16 v22, v12

    :cond_18
    move/from16 v12, v22

    :goto_e
    if-eqz v5, :cond_19

    iget v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v13

    move/from16 v22, v7

    move-object v7, v2

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    move/from16 v23, v6

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v14

    invoke-virtual {v4, v6, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildWidthMeasureSpec(II)I

    move-result v6

    add-int v12, v15, v16

    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v14

    add-int/2addr v12, v10

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v12, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildHeightMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v1, v9, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    goto :goto_f

    :cond_19
    move/from16 v23, v6

    move/from16 v22, v7

    add-int v6, v15, v16

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v6

    move-object v6, v2

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v14, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v7

    add-int/2addr v14, v10

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v4, v14, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildWidthMeasureSpec(II)I

    move-result v7

    iget v14, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v13

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v14

    invoke-virtual {v4, v6, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildHeightMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v7, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0, v1, v9, v7, v6}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    :goto_f
    invoke-virtual {v4, v1, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    invoke-virtual {v0, v1, v9}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    move/from16 v12, v18

    invoke-static {v12, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v18

    iget v7, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eqz v5, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    goto :goto_10

    :cond_1a
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    :goto_10
    if-eqz v5, :cond_1b

    iget v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_11

    :cond_1b
    iget v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_11
    add-int/2addr v14, v12

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    if-eqz v5, :cond_1c

    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_12

    :cond_1c
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_12
    add-int/2addr v12, v14

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v24, v15

    iget v15, v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v15, :cond_1d

    goto :goto_13

    :cond_1d
    iget-boolean v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    if-eqz v15, :cond_1e

    move-object/from16 v25, v2

    move/from16 v2, v22

    goto :goto_16

    :cond_1e
    if-nez v23, :cond_1f

    :goto_13
    move-object/from16 v25, v2

    goto :goto_14

    :cond_1f
    iget v15, v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    move-object/from16 v25, v2

    const/4 v2, -0x1

    if-eq v15, v2, :cond_20

    const/4 v2, 0x1

    add-int/2addr v14, v2

    if-gt v15, v14, :cond_20

    :goto_14
    move/from16 v2, v22

    goto :goto_17

    :cond_20
    invoke-virtual {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v14

    goto :goto_15

    :cond_21
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v2

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v14

    :goto_15
    add-int/2addr v14, v2

    if-lez v14, :cond_22

    add-int/2addr v12, v14

    :cond_22
    add-int/2addr v7, v12

    move/from16 v2, v22

    if-ge v2, v7, :cond_23

    :goto_16
    const/4 v7, 0x1

    goto :goto_18

    :cond_23
    :goto_17
    const/4 v7, 0x0

    :goto_18
    if-eqz v7, :cond_28

    iget v7, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget v12, v11, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v7, v12

    if-lez v7, :cond_25

    if-lez v9, :cond_24

    add-int/lit8 v7, v9, -0x1

    goto :goto_19

    :cond_24
    const/4 v7, 0x0

    :goto_19
    invoke-virtual {v0, v8, v11, v7, v10}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    iget v7, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v10, v7

    :cond_25
    if-eqz v5, :cond_26

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v7, v11, :cond_27

    invoke-virtual/range {v21 .. v21}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {v21 .. v21}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v11

    add-int/2addr v11, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v7

    add-int/2addr v11, v10

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v11, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildHeightMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_1a

    :cond_26
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v7, v11, :cond_27

    invoke-virtual/range {v21 .. v21}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {v21 .. v21}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v11

    add-int/2addr v11, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v7

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v7

    add-int/2addr v11, v10

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v4, v11, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildWidthMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v7, v6}, Landroid/view/View;->measure(II)V

    :goto_1a
    invoke-virtual {v0, v1, v9}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    :cond_27
    new-instance v11, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v11}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    const/4 v6, 0x1

    iput v6, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iput v13, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iput v9, v11, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    move/from16 v6, v17

    goto :goto_1b

    :cond_28
    const/4 v6, 0x1

    iget v7, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v7, v6

    iput v7, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    move/from16 v6, v19

    :goto_1b
    iget-boolean v7, v11, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    iget v12, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    const/4 v14, 0x0

    cmpl-float v15, v12, v14

    if-eqz v15, :cond_29

    const/4 v15, 0x1

    goto :goto_1c

    :cond_29
    const/4 v15, 0x0

    :goto_1c
    or-int/2addr v7, v15

    iput-boolean v7, v11, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    iget-boolean v7, v11, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    iget v15, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    cmpl-float v14, v15, v14

    if-eqz v14, :cond_2a

    const/4 v14, 0x1

    goto :goto_1d

    :cond_2a
    const/4 v14, 0x0

    :goto_1d
    or-int/2addr v7, v14

    iput-boolean v7, v11, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v7, :cond_2b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    aput v14, v7, v9

    :cond_2b
    iget v7, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eqz v5, :cond_2c

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    goto :goto_1e

    :cond_2c
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    :goto_1e
    if-eqz v5, :cond_2d

    move/from16 v22, v2

    move/from16 v19, v13

    move-object/from16 v2, v25

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1f

    :cond_2d
    move/from16 v22, v2

    move/from16 v19, v13

    move-object/from16 v2, v25

    iget v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1f
    add-int/2addr v13, v14

    if-eqz v5, :cond_2e

    iget v14, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_20

    :cond_2e
    iget v14, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_20
    add-int/2addr v14, v13

    add-int/2addr v14, v7

    iput v14, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v7, v11, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    add-float/2addr v7, v12

    iput v7, v11, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    iget v7, v11, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    add-float/2addr v7, v15

    iput v7, v11, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    sget-object v7, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v7

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v12

    goto :goto_21

    :cond_2f
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v7

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v12

    :goto_21
    add-int/2addr v12, v7

    iget v7, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    add-int/2addr v7, v12

    iput v7, v11, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v7, v11, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int/2addr v7, v12

    iput v7, v11, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    if-eqz v5, :cond_30

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto :goto_22

    :cond_30
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    :goto_22
    if-eqz v5, :cond_31

    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_23

    :cond_31
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_23
    add-int/2addr v12, v7

    if-eqz v5, :cond_32

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_24

    :cond_32
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_24
    add-int/2addr v2, v12

    invoke-virtual {v4, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz v5, :cond_34

    iget v6, v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_33

    iget v6, v11, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_25

    :cond_33
    iget v6, v11, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v1

    sub-int v1, v7, v1

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_25
    add-int/2addr v1, v3

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v11, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    :cond_34
    add-int/lit8 v14, v20, -0x1

    if-ne v9, v14, :cond_35

    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    iget v3, v11, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    sub-int/2addr v1, v3

    if-eqz v1, :cond_35

    const/4 v1, 0x1

    goto :goto_26

    :cond_35
    const/4 v1, 0x0

    :goto_26
    if-eqz v1, :cond_36

    invoke-virtual {v0, v8, v11, v9, v10}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v10, v1

    :cond_36
    move/from16 v1, p6

    const/4 v3, -0x1

    if-eq v1, v3, :cond_37

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_37

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    iget v6, v6, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    if-lt v6, v1, :cond_38

    if-lt v9, v1, :cond_38

    if-nez p5, :cond_38

    iget v6, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    neg-int v6, v6

    move v10, v6

    move v12, v7

    move/from16 v6, p4

    goto :goto_27

    :cond_37
    const/4 v7, 0x1

    :cond_38
    move/from16 v6, p4

    move/from16 v12, p5

    :goto_27
    if-le v10, v6, :cond_39

    if-eqz v12, :cond_39

    move-object/from16 v0, p1

    move/from16 v12, v18

    goto :goto_29

    :cond_39
    :goto_28
    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v3, v21

    move/from16 v7, v22

    move/from16 v6, v23

    move/from16 v15, v24

    move/from16 v19, v2

    move v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_6

    :cond_3a
    move/from16 v12, v18

    move-object/from16 v0, p1

    :goto_29
    iput v12, v0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    return-void
.end method

.method public final checkSizeConstraints(Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_0
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    if-le v1, v3, :cond_1

    goto :goto_0

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    if-ge v2, v5, :cond_2

    move v2, v5

    goto :goto_3

    :cond_2
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    if-le v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    if-eqz v4, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method public final clearFlexLines(ILjava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_1
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_2
    invoke-static {p2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    const-wide/16 v0, 0x0

    if-le p1, p2, :cond_3

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/Arrays;->fill([JIIJ)V

    :goto_1
    return-void
.end method

.method public final determineMainSize(III)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object v1, v0

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    :cond_0
    array-length v5, v2

    if-ge v5, v1, :cond_1

    array-length v2, v2

    mul-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_0

    :cond_1
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v1

    if-lt p3, v1, :cond_2

    return-void

    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget v1, v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    move-object v2, v0

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget v2, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_6

    const/4 v6, 0x1

    if-eq v2, v6, :cond_6

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid flex direction: "

    invoke-static {p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ne v1, v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v0

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLargestMainSize()I

    move-result v2

    :goto_2
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v3

    goto :goto_4

    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    move-object v3, v0

    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLargestMainSize()I

    move-result v3

    if-ne v1, v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    :goto_3
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v3

    :goto_4
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v1, :cond_8

    aget v4, v1, p3

    :cond_8
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    iget-object p3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    if-ge v4, v0, :cond_b

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v1, v2, :cond_9

    iget-boolean v5, v8, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    if-eqz v5, :cond_9

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v9, v2

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_6

    :cond_9
    if-le v1, v2, :cond_a

    iget-boolean v1, v8, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    if-eqz v1, :cond_a

    const/4 v11, 0x0

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v9, v2

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method public final ensureIndexToFlexLine(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    :cond_1
    :goto_0
    return-void
.end method

.method public final ensureMeasureSpecCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    :cond_1
    :goto_0
    return-void
.end method

.method public final ensureMeasuredSizeCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    goto :goto_0

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    :cond_1
    :goto_0
    return-void
.end method

.method public final expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v2, 0x0

    cmpg-float v5, v1, v2

    if-lez v5, :cond_16

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v4, v5, :cond_0

    goto/16 :goto_b

    :cond_0
    sub-int v6, v4, v5

    int-to-float v6, v6

    div-float/2addr v6, v1

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v1, p5, v1

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v1, -0x80000000

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v1, 0x0

    move v7, v1

    move v8, v7

    move v9, v2

    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v1, v10, :cond_15

    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v1

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v11, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v11, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexItem;

    iget v14, v11, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v15, 0x1

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const/16 v18, 0x20

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    if-eqz v14, :cond_b

    if-ne v14, v15, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_4

    aget-wide v14, v15, v10

    shr-long v14, v14, v18

    long-to-int v14, v14

    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    move/from16 v22, v5

    if-eqz v2, :cond_5

    aget-wide v4, v2, v10

    long-to-int v15, v4

    :cond_5
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v2, v2, v10

    if-nez v2, :cond_a

    move-object v2, v13

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    const/4 v5, 0x0

    cmpl-float v18, v4, v5

    if-lez v18, :cond_a

    int-to-float v5, v14

    mul-float v14, v6, v4

    add-float/2addr v14, v5

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    if-ne v1, v5, :cond_6

    add-float/2addr v14, v9

    const/4 v9, 0x0

    :cond_6
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v2, v2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    if-le v5, v2, :cond_7

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aput-boolean v15, v5, v10

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    sub-float/2addr v5, v4

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v4, v1

    move v5, v2

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    int-to-float v2, v5

    sub-float/2addr v14, v2

    add-float/2addr v14, v9

    move v4, v1

    float-to-double v1, v14

    cmpl-double v9, v1, v19

    if-lez v9, :cond_8

    add-int/lit8 v5, v5, 0x1

    sub-double v1, v1, v19

    goto :goto_1

    :cond_8
    cmpg-double v9, v1, v16

    if-gez v9, :cond_9

    add-int/lit8 v5, v5, -0x1

    add-double v1, v1, v19

    :goto_1
    double-to-float v1, v1

    move v9, v1

    goto :goto_2

    :cond_9
    move v9, v14

    :goto_2
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v2, p1

    invoke-virtual {v0, v2, v13, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v1, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v0, v12, v10, v1, v5}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-virtual {v11, v12, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    goto :goto_3

    :cond_a
    move/from16 v2, p1

    move v4, v1

    :goto_3
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v1

    invoke-virtual {v11, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v15

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v8

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v8

    add-int/2addr v14, v5

    iput v14, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v15, p2

    const/16 v18, 0x0

    goto/16 :goto_8

    :cond_b
    :goto_4
    move/from16 v2, p1

    move v4, v1

    move/from16 v22, v5

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_c

    aget-wide v14, v5, v10

    long-to-int v1, v14

    :cond_c
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_d

    aget-wide v14, v14, v10

    shr-long v14, v14, v18

    long-to-int v5, v14

    :cond_d
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v14, v14, v10

    if-nez v14, :cond_13

    move-object v14, v13

    check-cast v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    const/16 v18, 0x0

    cmpl-float v21, v15, v18

    if-lez v21, :cond_12

    int-to-float v1, v1

    mul-float v5, v6, v15

    add-float/2addr v5, v1

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v4, v1, :cond_e

    add-float/2addr v5, v9

    move/from16 v9, v18

    :cond_e
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v14, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    if-le v1, v14, :cond_f

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v5, 0x1

    aput-boolean v5, v1, v10

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    sub-float/2addr v1, v15

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v7, v5

    goto :goto_6

    :cond_f
    int-to-float v14, v1

    sub-float/2addr v5, v14

    add-float/2addr v5, v9

    float-to-double v14, v5

    cmpl-double v9, v14, v19

    if-lez v9, :cond_10

    add-int/lit8 v1, v1, 0x1

    sub-double v14, v14, v19

    goto :goto_5

    :cond_10
    cmpg-double v9, v14, v16

    if-gez v9, :cond_11

    add-int/lit8 v1, v1, -0x1

    add-double v14, v14, v19

    :goto_5
    double-to-float v5, v14

    :cond_11
    move v14, v1

    move v9, v5

    :goto_6
    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v15, p2

    invoke-virtual {v0, v15, v13, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v5, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual {v0, v12, v10, v5, v1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-virtual {v11, v12, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    move v1, v14

    move/from16 v5, v16

    goto :goto_7

    :cond_12
    move/from16 v15, p2

    goto :goto_7

    :cond_13
    move/from16 v15, p2

    const/16 v18, 0x0

    :goto_7
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v10

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v10

    invoke-virtual {v11, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v5

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v10

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v10

    add-int/2addr v1, v8

    iput v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v1, v5

    :goto_8
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v8, v1

    goto :goto_a

    :cond_14
    :goto_9
    move/from16 v15, p2

    move v4, v1

    move/from16 v18, v2

    move/from16 v22, v5

    move/from16 v2, p1

    :goto_a
    add-int/lit8 v1, v4, 0x1

    move/from16 v4, p4

    move/from16 v2, v18

    move/from16 v5, v22

    goto/16 :goto_0

    :cond_15
    move/from16 v2, p1

    move/from16 v15, p2

    move/from16 v22, v5

    if-eqz v7, :cond_16

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v4, v22

    if-eq v4, v1, :cond_16

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_16
    :goto_b
    return-void
.end method

.method public final getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object p1, p0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, v0

    check-cast p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v0

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    add-int/2addr p1, p3

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildHeightMeasureSpec(II)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    if-le p1, p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    if-ge p1, p2, :cond_1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public final getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 1

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object p1, p0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p1

    add-int/2addr p1, v0

    check-cast p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v0

    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    add-int/2addr p1, p3

    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildWidthMeasureSpec(II)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p3, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    if-le p1, p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    if-ge p1, p2, :cond_1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method public final shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget v1, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-lez v6, :cond_16

    if-le v4, v1, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v6, v1, v4

    int-to-float v6, v6

    div-float/2addr v6, v2

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v2, p5, v2

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-nez p6, :cond_1

    const/high16 v2, -0x80000000

    iput v2, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v2, 0x0

    move v7, v2

    move v8, v7

    move v9, v5

    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v2, v10, :cond_15

    iget v10, v3, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v2

    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v11, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v11, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/google/android/flexbox/FlexItem;

    iget v14, v11, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v15, 0x1

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v20, 0x20

    const/high16 v21, 0x3f800000    # 1.0f

    if-eqz v14, :cond_b

    if-ne v14, v15, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v15, :cond_4

    aget-wide v14, v15, v10

    shr-long v14, v14, v20

    long-to-int v14, v14

    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_5

    aget-wide v4, v5, v10

    long-to-int v15, v4

    :cond_5
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v4, v4, v10

    if-nez v4, :cond_a

    move-object v4, v13

    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v5, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    const/16 v20, 0x0

    cmpl-float v23, v5, v20

    if-lez v23, :cond_a

    int-to-float v14, v14

    mul-float v15, v6, v5

    sub-float/2addr v14, v15

    iget v15, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v15, v15, -0x1

    if-ne v2, v15, :cond_6

    add-float/2addr v14, v9

    const/4 v9, 0x0

    :cond_6
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v15

    iget v4, v4, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    if-ge v15, v4, :cond_7

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v14, 0x1

    aput-boolean v14, v7, v10

    iget v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    sub-float/2addr v7, v5

    iput v7, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    int-to-float v4, v15

    sub-float/2addr v14, v4

    add-float/2addr v14, v9

    float-to-double v4, v14

    cmpl-double v9, v4, v18

    if-lez v9, :cond_8

    add-int/lit8 v15, v15, 0x1

    sub-float v14, v14, v21

    goto :goto_1

    :cond_8
    cmpg-double v4, v4, v16

    if-gez v4, :cond_9

    add-int/lit8 v15, v15, -0x1

    add-float v14, v14, v21

    :cond_9
    :goto_1
    move v9, v14

    move v4, v15

    :goto_2
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v14, p1

    invoke-virtual {v0, v14, v13, v5}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v4, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v12, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual {v0, v12, v10, v5, v4}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-virtual {v11, v12, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    move/from16 v14, v16

    :cond_a
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v4

    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v4

    invoke-virtual {v11, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v15

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v8

    iget v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v8

    add-int/2addr v14, v5

    iput v14, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v15, p2

    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_b
    :goto_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_c

    aget-wide v4, v5, v10

    long-to-int v4, v4

    :cond_c
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v14, :cond_d

    aget-wide v14, v14, v10

    shr-long v14, v14, v20

    long-to-int v5, v14

    :cond_d
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v14, v14, v10

    if-nez v14, :cond_13

    move-object v14, v13

    check-cast v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v15, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    const/16 v20, 0x0

    cmpl-float v22, v15, v20

    if-lez v22, :cond_12

    int-to-float v4, v4

    mul-float v5, v6, v15

    sub-float/2addr v4, v5

    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_e

    add-float/2addr v4, v9

    move/from16 v9, v20

    :cond_e
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v14, v14, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    if-ge v5, v14, :cond_f

    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v10

    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    sub-float/2addr v4, v15

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move v7, v5

    goto :goto_5

    :cond_f
    int-to-float v14, v5

    sub-float/2addr v4, v14

    add-float/2addr v4, v9

    float-to-double v14, v4

    cmpl-double v9, v14, v18

    if-lez v9, :cond_10

    add-int/lit8 v5, v5, 0x1

    sub-float v4, v4, v21

    goto :goto_4

    :cond_10
    cmpg-double v9, v14, v16

    if-gez v9, :cond_11

    add-int/lit8 v5, v5, -0x1

    add-float v4, v4, v21

    :cond_11
    :goto_4
    move v9, v4

    move v14, v5

    :goto_5
    iget v4, v3, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v15, p2

    invoke-virtual {v0, v15, v13, v4}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual {v0, v12, v10, v5, v4}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    invoke-virtual {v11, v12, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    move v4, v14

    move/from16 v5, v16

    goto :goto_6

    :cond_12
    move/from16 v15, p2

    goto :goto_6

    :cond_13
    move/from16 v15, p2

    const/16 v20, 0x0

    :goto_6
    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v10

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v10

    invoke-virtual {v11, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v10, v5

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v8, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v10

    iget v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v10

    add-int/2addr v4, v8

    iput v4, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move v4, v5

    :goto_7
    iget v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v8, v4

    goto :goto_9

    :cond_14
    :goto_8
    move/from16 v15, p2

    move/from16 v20, v5

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p4

    move/from16 v5, v20

    goto/16 :goto_0

    :cond_15
    move/from16 v15, p2

    if-eqz v7, :cond_16

    iget v2, v3, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-eq v1, v2, :cond_16

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :cond_16
    :goto_a
    return-void
.end method

.method public final stretchViewHorizontally(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    move-object v1, v0

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, v1

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object v2, v1

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_0

    aget-wide v2, v0, p3

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    return-void
.end method

.method public final stretchViewVertically(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    move-object v1, v0

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p2, v1

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    move-object v2, v1

    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_0

    aget-wide v2, v0, p3

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(Landroid/view/View;III)V

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    return-void
.end method

.method public final stretchViews(I)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    const/4 v3, 0x1

    const-string v4, "Invalid flex direction: "

    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v2, :cond_1

    aget p1, v2, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    if-ge p1, v6, :cond_f

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/flexbox/FlexLine;

    iget v8, v7, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_9

    iget v10, v7, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v10, v9

    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v11

    if-lt v9, v11, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    check-cast v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    iget v12, v12, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    if-eq v12, v5, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_7

    const/4 v12, 0x2

    if-eq v1, v12, :cond_6

    const/4 v12, 0x3

    if-ne v1, v12, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    iget v12, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {p0, v11, v12, v10}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_4

    :cond_7
    iget v12, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {p0, v11, v12, v10}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    :cond_8
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_a
    iget-object p1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    iget-object v5, v2, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v1, :cond_e

    if-eq v1, v3, :cond_e

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eq v1, v8, :cond_d

    if-ne v1, v9, :cond_c

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_6
    iget v8, v2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v7, v8, v6}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_5

    :cond_e
    iget v8, v2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v7, v8, v6}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    goto :goto_5

    :cond_f
    return-void
.end method

.method public final updateMeasureCache(Landroid/view/View;III)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_0

    int-to-long v4, p4

    shl-long/2addr v4, v3

    int-to-long p3, p3

    and-long/2addr p3, v1

    or-long/2addr p3, v4

    aput-wide p3, v0, p2

    :cond_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-long v4, p1

    shl-long v3, v4, v3

    int-to-long p3, p3

    and-long/2addr p3, v1

    or-long/2addr p3, v3

    aput-wide p3, p0, p2

    :cond_1
    return-void
.end method
