.class public final Landroidx/recyclerview/widget/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    iget p3, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    const-string v0, "recyclerView"

    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    new-instance p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p3, p0, p2, v0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Landroidx/recyclerview/widget/FastScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p3

    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int v1, p3, v0

    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_1

    if-lt v0, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int v6, v1, v5

    if-lez v6, :cond_2

    if-lt v5, v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v6, :cond_3

    if-nez v2, :cond_3

    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_7

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_2

    :cond_3
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v6, :cond_4

    int-to-float p1, p1

    int-to-float v3, v0

    div-float v6, v3, v2

    add-float/2addr v6, p1

    mul-float/2addr v6, v3

    int-to-float p1, p3

    div-float/2addr v6, p1

    float-to-int p1, v6

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    mul-int p1, v0, v0

    div-int/2addr p1, p3

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    :cond_4
    iget-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p1, :cond_5

    int-to-float p1, p2

    int-to-float p2, v5

    div-float p3, p2, v2

    add-float/2addr p3, p1

    mul-float/2addr p3, p2

    int-to-float p1, v1

    div-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v5, v5

    div-int/2addr p1, v1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    :cond_5
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    if-eqz p1, :cond_6

    if-ne p1, v4, :cond_7

    :cond_6
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    :cond_7
    :goto_2
    return-void

    :goto_3
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    new-instance p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    const/16 v0, 0xb

    invoke-direct {p3, p0, p2, v0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
