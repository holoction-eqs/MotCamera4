.class public Landroidx/recyclerview/widget/PagerSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

.field public mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->$r8$classId:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    new-array v0, v3, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper$1;)I

    move-result v3

    aput v3, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper$1;)I

    move-result p0

    aput p0, v0, v1

    goto :goto_1

    :cond_1
    aput v2, v0, v1

    :goto_1
    return-object v0

    :goto_2
    new-array v0, v3, [I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper$1;)I

    move-result v3

    aput v3, v0, v2

    goto :goto_3

    :cond_2
    aput v2, v0, v2

    :goto_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper$1;)I

    move-result p0

    aput p0, v0, v1

    goto :goto_4

    :cond_3
    aput v2, v0, v1

    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final distanceToCenter(Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper$1;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    :goto_0
    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    return p1

    :goto_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper$1;II)I
    .locals 10

    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p3, p0, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalX()I

    move-result p3

    iget-object p0, p0, Landroidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalY()I

    move-result p0

    filled-new-array {p3, p0}, [I

    move-result-object p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v6, v0

    move v5, v4

    move v4, v3

    move-object v3, v2

    :goto_0
    if-ge v6, p3, :cond_4

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    if-ge v8, v4, :cond_2

    move-object v2, v7

    move v4, v8

    :cond_2
    if-le v8, v5, :cond_3

    move-object v3, v7

    move v5, v8

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_7

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    int-to-float p1, p2

    mul-float/2addr p1, v1

    sub-int/2addr v5, v4

    add-int/2addr v5, p4

    int-to-float p2, v5

    div-float v1, p1, p2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_8

    return v0

    :cond_8
    aget p1, p0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p2, p0, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_9

    aget p0, p0, v0

    goto :goto_3

    :cond_9
    aget p0, p0, p4

    :goto_3
    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper$1;)Landroid/view/View;
    .locals 7

    iget p0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->$r8$classId:I

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getTotalSpace()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v1, :cond_1

    move-object v2, v3

    move v1, v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getStartAfterPadding()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper$1;->getTotalSpace()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    :goto_3
    if-ge v0, p0, :cond_5

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v1, :cond_4

    move-object v2, v3

    move v1, v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper$1;)Landroid/view/View;

    move-result-object v1

    :cond_1
    return-object v1

    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper$1;)Landroid/view/View;

    move-result-object v1

    :cond_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    return-object p0

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_3

    :cond_2
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    :cond_3
    iget-object p0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    return-object p0

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_3

    :cond_2
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper$1;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    :cond_3
    iget-object p0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
