.class public final Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Lcom/google/android/gms/dynamite/zzb;
.source "SourceFile"


# instance fields
.field public activePointerId:I

.field public originalCapturedViewLeft:I

.field public final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Lcom/google/android/gms/dynamite/zzb;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    return-void
.end method


# virtual methods
.method public final clampViewPositionHorizontal(Landroid/view/View;I)I
    .locals 4

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_1
    if-ne v2, v1, :cond_4

    if-eqz v0, :cond_3

    :cond_2
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p0

    goto :goto_2

    :cond_3
    :goto_1
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, v0, p1

    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move v3, p1

    move p1, p0

    move p0, v3

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p0

    move p0, v0

    :goto_2
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final clampViewPositionVertical(Landroid/view/View;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public final onViewCaptured(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->requestingDisallowInterceptTouchEvent:Z

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->requestingDisallowInterceptTouchEvent:Z

    :cond_0
    return-void
.end method

.method public final onViewDragStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onViewPositionChanged(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v1, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    mul-float/2addr p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    mul-float/2addr v1, v0

    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p2, p0, p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    cmpl-float p2, p0, v1

    const/4 v2, 0x0

    if-ltz p2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    sub-float/2addr p0, p3

    sub-float/2addr v1, p3

    div-float/2addr p0, v1

    sub-float p0, v0, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 8

    const/4 p3, -0x1

    iput p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-ne v5, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iget v6, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    cmpg-float v1, p2, v0

    if-gez v1, :cond_6

    goto :goto_1

    :cond_2
    if-lez v1, :cond_6

    goto :goto_1

    :cond_3
    if-ne v6, v2, :cond_6

    if-eqz v5, :cond_4

    if-lez v1, :cond_6

    goto :goto_1

    :cond_4
    cmpg-float v1, p2, v0

    if-gez v1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int/2addr v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v5, :cond_6

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    if-eqz v1, :cond_9

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    if-ge p2, v0, :cond_7

    goto :goto_3

    :cond_7
    add-int/2addr v0, p3

    goto :goto_4

    :cond_8
    :goto_3
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int v0, p0, p3

    goto :goto_4

    :cond_9
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    move v2, v4

    :goto_4
    iget-object p0, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    invoke-direct {p0, v3, p1, v2}, Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
