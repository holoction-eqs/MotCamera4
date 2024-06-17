.class public final Landroidx/transition/ViewUtils$1;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Class;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Landroid/view/View;)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 1
    :sswitch_0
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    .line 3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 4
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 5
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 6
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p0

    .line 7
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 8
    :goto_0
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 9
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result p0

    int-to-float p0, p0

    .line 10
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    .line 11
    :pswitch_0
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 12
    :pswitch_1
    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    .line 13
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    .line 14
    :goto_0
    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    .line 15
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_1
    return-object p0

    .line 16
    :pswitch_2
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    packed-switch v0, :pswitch_data_2

    goto :goto_2

    .line 17
    :pswitch_3
    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    .line 18
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_3

    .line 19
    :goto_2
    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_3
    return-object p0

    .line 21
    :pswitch_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/transition/ViewUtils$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_5
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/transition/ViewUtils$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 23
    :pswitch_6
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/transition/ViewUtils$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_7
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/transition/ViewUtils$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_8
    check-cast p1, Landroid/view/View;

    .line 26
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 27
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api18Impl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 28
    :pswitch_9
    check-cast p1, Landroid/view/View;

    return-object v1

    .line 29
    :pswitch_a
    check-cast p1, Landroid/view/View;

    return-object v1

    .line 30
    :pswitch_b
    check-cast p1, Landroid/view/View;

    return-object v1

    .line 31
    :pswitch_c
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    return-object v1

    .line 32
    :pswitch_d
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    return-object v1

    .line 33
    :pswitch_e
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 34
    iget p0, p1, Landroidx/appcompat/widget/SwitchCompat;->mThumbPosition:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_f
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/transition/ViewUtils$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 36
    :goto_4
    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getGrowFraction()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_3
    .end packed-switch
.end method

.method public final set(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 2

    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2
    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 4
    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    .line 5
    :goto_0
    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 6
    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Landroid/view/View;Ljava/lang/Float;)V
    .locals 2

    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 7
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 8
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 10
    invoke-static {p1, p0, p2, v0, v1}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void

    .line 11
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 12
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 13
    :sswitch_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void

    .line 15
    :goto_0
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 16
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result p0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 18
    invoke-static {p1, p0, v0, p2, v1}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public final set(Landroidx/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .locals 4

    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 19
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    if-ne p2, v1, :cond_0

    .line 21
    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    iget v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    sget-object v3, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    .line 22
    iget-object v3, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    invoke-virtual {v3, p2, p0, v1, v2}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 23
    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    :cond_0
    return-void

    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    iget p0, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    if-ne v1, p2, :cond_1

    .line 26
    iget p2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    iget v1, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    iget v2, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    sget-object v3, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    .line 27
    iget-object v3, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    invoke-virtual {v3, p2, v1, v2, p0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 28
    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    iput v0, p1, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;Ljava/lang/Float;)V
    .locals 8

    iget p0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_3

    .line 29
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 30
    iput p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    const p2, 0x45a8c000    # 5400.0f

    mul-float/2addr p2, p0

    float-to-int p2, p2

    .line 31
    iget-object v0, p1, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v0, [F

    const/high16 v1, 0x44be0000    # 1520.0f

    mul-float/2addr p0, v1

    const/high16 v1, -0x3e600000    # -20.0f

    add-float/2addr v1, p0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    move p0, v2

    :goto_0
    iget-object v0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    const/4 v3, 0x4

    if-ge p0, v3, :cond_0

    sget-object v3, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_EXPAND_IN_MS:[I

    aget v3, v3, p0

    sub-int v3, p2, v3

    int-to-float v3, v3

    const/16 v4, 0x29b

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v5, p1, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v5, [F

    aget v6, v5, v1

    invoke-virtual {v0, v3}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    aput v3, v5, v1

    sget-object v3, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_COLLAPSE_IN_MS:[I

    aget v3, v3, p0

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget-object v4, p1, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast v4, [F

    aget v5, v4, v2

    invoke-virtual {v0, v3}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v7

    add-float/2addr v0, v5

    aput v0, v4, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/collection/MapCollections;->mKeySet:Ljava/lang/Object;

    check-cast p0, [F

    aget v4, p0, v2

    aget v5, p0, v1

    sub-float v6, v5, v4

    iget v7, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    aput v6, p0, v2

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v6, v4

    aput v6, p0, v2

    div-float/2addr v5, v4

    aput v5, p0, v1

    move p0, v2

    :goto_1
    if-ge p0, v3, :cond_2

    .line 32
    sget-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_FADE_IN_MS:[I

    aget v1, v1, p0

    sub-int v1, p2, v1

    int-to-float v1, v1

    const/16 v4, 0x14d

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_1

    iget p2, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    add-int/2addr p0, p2

    iget-object p2, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v3, p2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v4, v3

    rem-int/2addr p0, v4

    add-int/lit8 v4, p0, 0x1

    array-length v5, v3

    rem-int/2addr v4, v5

    aget p0, v3, p0

    iget-object v3, p1, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 33
    iget v3, v3, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 34
    invoke-static {p0, v3}, Ljms/IJobMgrService$_Parcel;->compositeARGBWithAlpha(II)I

    move-result p0

    iget-object p2, p2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget p2, p2, v4

    iget-object v3, p1, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 35
    iget v3, v3, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 36
    invoke-static {p2, v3}, Ljms/IJobMgrService$_Parcel;->compositeARGBWithAlpha(II)I

    move-result p2

    invoke-virtual {v0, v1}, Landroidx/interpolator/view/animation/LookupTableInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p1, Landroidx/collection/MapCollections;->mValues:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p0, p2}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aput p0, v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 37
    :cond_2
    :goto_2
    iget-object p0, p1, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 38
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 39
    iput p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/transition/ViewUtils$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;Ljava/lang/Float;)V

    return-void

    .line 41
    :pswitch_1
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;Ljava/lang/Float;)V

    return-void

    .line 42
    :pswitch_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    .line 43
    :pswitch_3
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    .line 44
    :pswitch_4
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    .line 45
    :pswitch_5
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    .line 46
    :pswitch_6
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    .line 47
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 48
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    .line 49
    :pswitch_7
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void

    .line 50
    :pswitch_8
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void

    .line 51
    :pswitch_9
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void

    .line 52
    :pswitch_a
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroidx/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void

    .line 53
    :pswitch_b
    check-cast p1, Landroidx/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroidx/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void

    .line 54
    :pswitch_c
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    .line 55
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void

    .line 56
    :pswitch_d
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ViewUtils$1;->set(Landroid/view/View;Ljava/lang/Float;)V

    return-void

    .line 57
    :goto_0
    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    check-cast p2, Ljava/lang/Float;

    .line 58
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 59
    iget p2, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    cmpl-float p2, p2, p0

    if-eqz p2, :cond_0

    .line 60
    iput p0, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->growFraction:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
