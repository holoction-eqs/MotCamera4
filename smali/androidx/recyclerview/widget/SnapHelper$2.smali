.class public final Landroidx/recyclerview/widget/SnapHelper$2;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final calculateDtToFit(IIIII)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p0

    return p0

    :pswitch_0
    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    :goto_0
    add-int/2addr p2, p1

    sub-int/2addr p4, p2

    return p4

    :pswitch_1
    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final calculateDxToMakeVisible(Landroid/view/View;I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 3

    iget p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    const/high16 v0, 0x43160000    # 150.0f

    const/4 v1, 0x1

    const/high16 v2, 0x42c80000    # 100.0f

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_0
    :goto_0
    int-to-float p0, v1

    div-float/2addr v0, p0

    return v0

    :pswitch_2
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :pswitch_3
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_1
    int-to-float p0, p0

    div-float/2addr v2, p0

    return v2

    :pswitch_4
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1

    :pswitch_5
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1

    :goto_2
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x41c80000    # 25.0f

    div-float/2addr p1, p0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final calculateTimeForScrolling(I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p0

    return p0

    :pswitch_0
    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->preState:I

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final onStop()V
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    return-void

    :pswitch_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    if-nez p0, :cond_1

    iput-boolean v1, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    iget-object p0, v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    if-nez p0, :cond_2

    iput-boolean v1, v2, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->disableScroll:Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v1, p0, Landroidx/recyclerview/widget/SnapHelper$2;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/recyclerview/widget/SnapHelper$2;->this$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    return-void

    :pswitch_0
    check-cast v4, Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object p2, v4, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {v4, p2, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    aget p2, p1, v3

    aget p1, p1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p0

    if-lez p0, :cond_0

    iput p2, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput p0, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v2, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    :cond_0
    return-void

    :pswitch_1
    check-cast v4, Landroidx/recyclerview/widget/SnapHelper;

    iget-object p2, v4, Landroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {v4, p2, p1}, Landroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    aget p2, p1, v3

    aget p1, p1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p0

    if-lez p0, :cond_2

    iput p2, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput p0, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v2, p3, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
