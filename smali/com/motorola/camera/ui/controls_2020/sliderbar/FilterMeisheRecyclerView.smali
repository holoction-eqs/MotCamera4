.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Companion",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public disableScroll:Z

.field public isDragging:Z

.field public paddingSet:Z

.field public preState:I

.field public registered:Z

.field public final scrollListener:Landroidx/recyclerview/widget/FastScroller$2;

.field public final snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

.field public systemGestureRects:Ljava/util/List;

.field public final viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroidx/recyclerview/widget/PagerSnapHelper;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->snapHelper:Landroidx/recyclerview/widget/PagerSnapHelper;

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->preState:I

    new-instance v1, Landroidx/recyclerview/widget/FastScroller$2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->scrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    instance-of v1, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance v1, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v1, p1}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    invoke-virtual {v1, p1}, Landroidx/core/view/MenuHostHelper;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    :cond_1
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    invoke-direct {p1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;-><init>()V

    const/4 p2, 0x0

    invoke-static {p2, v0}, L_COROUTINE/ArtificialStackFrames;->getRotation(FI)F

    move-result p2

    iput p2, p1, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->rotation:F

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070356

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p1, p2, v0}, Lcom/motorola/camera/ui/controls_2020/SpacingItemDecorator;-><init>(II)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->paddingSet:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->paddingSet:Z

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/4 v0, 0x2

    div-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    new-array p2, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, p2, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v1, v3, v2, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, p2, p1

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->systemGestureRects:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->scrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->viewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->preState:I

    if-nez v4, :cond_1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->isDragging:Z

    :cond_1
    iget-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->isDragging:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    :cond_3
    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->isDragging:Z

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    iput-boolean v1, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    iput-boolean v2, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    :goto_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->isDragging:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    if-nez v2, :cond_8

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->registered:Z

    :cond_8
    :goto_1
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->preState:I

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;->disableScroll:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
