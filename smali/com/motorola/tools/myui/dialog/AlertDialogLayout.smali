.class public Lcom/motorola/tools/myui/dialog/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getGravity()I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    const v4, 0x800007

    and-int/2addr v2, v4

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, p5

    sub-int/2addr v3, p3

    sub-int p3, v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int p3, p5, v3

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    if-nez p5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    :goto_1
    const/4 p5, 0x0

    :goto_2
    if-ge p5, v1, :cond_7

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v6, :cond_3

    move v6, v2

    :cond_3
    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, p1

    goto :goto_4

    :cond_4
    sub-int v6, p2, v3

    goto :goto_3

    :cond_5
    sub-int v6, p4, v3

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p1

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    :goto_3
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    :goto_4
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v7

    add-int/2addr v3, v6

    add-int v7, v4, p3

    invoke-virtual {v0, v6, p3, v3, v7}, Landroid/view/View;->layout(IIII)V

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v0

    add-int/2addr v4, p3

    move p3, v4

    :cond_6
    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-ne v0, v8, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v2, 0x0

    move v5, v1

    move-object v3, v2

    move-object v4, v3

    :goto_1
    const/16 v10, 0x8

    if-ge v5, v9, :cond_6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v10

    const v12, 0x7f0a043a

    if-ne v10, v12, :cond_2

    move-object v2, v11

    goto :goto_2

    :cond_2
    const v12, 0x7f0a00a9

    if-ne v10, v12, :cond_3

    move-object v3, v11

    goto :goto_2

    :cond_3
    const v12, 0x7f0a0103

    if-ne v10, v12, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v11

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    move/from16 v8, p2

    goto/16 :goto_b

    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int/2addr v14, v13

    const-string v13, "0x%x"

    if-eqz v2, :cond_7

    invoke-virtual {v2, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v13, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_4

    :cond_7
    move v2, v1

    move v15, v2

    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {v3, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v14, v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_5

    :cond_8
    move v8, v1

    :goto_5
    if-eqz v4, :cond_a

    if-nez v5, :cond_9

    move v3, v1

    goto :goto_6

    :cond_9
    sub-int/2addr v11, v14

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_6
    invoke-virtual {v4, v7, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v14, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v2, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_7

    :cond_a
    move v3, v1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    if-eqz v0, :cond_c

    if-eqz v4, :cond_c

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v11, 0x3f333333    # 0.7f

    mul-float/2addr v0, v11

    float-to-int v0, v0

    if-le v14, v0, :cond_c

    sub-int/2addr v0, v15

    sub-int/2addr v0, v8

    sub-int/2addr v14, v3

    if-nez v5, :cond_b

    move v0, v1

    goto :goto_8

    :cond_b
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_8
    invoke-virtual {v4, v7, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v14, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v2, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_c
    move v0, v1

    move v3, v0

    :goto_9
    if-ge v0, v9, :cond_e

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    invoke-static {v4, v7, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    move/from16 v8, p2

    invoke-static {v14, v8, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v12, v1

    :goto_a
    if-ge v12, v9, :cond_10

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    iget v0, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    iget v14, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v11

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x1

    :goto_b
    if-nez v1, :cond_11

    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :cond_11
    return-void
.end method
