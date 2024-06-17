.class public final Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "SourceFile"


# instance fields
.field public attachedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public dataSetObserver:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$1;

.field public onPageChangeListener:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;

.field public pager:Landroidx/viewpager2/widget/ViewPager2;


# virtual methods
.method public final attachToPager(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->attachedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iput-object p2, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setCurrentPosition(I)V

    new-instance v0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$1;

    invoke-direct {v0, p1}, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$1;-><init>(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;)V

    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->dataSetObserver:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$1;

    iget-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->attachedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    new-instance v0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;

    invoke-direct {v0, p0, p1}, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;-><init>(Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;)V

    iput-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->onPageChangeListener:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;

    iget-object p0, p2, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object p0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Set adapter before call attachToPager() method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final detachFromPager()V
    .locals 2

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->attachedAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->dataSetObserver:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, v1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->pager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher;->onPageChangeListener:Lru/tinkoff/scrollingpagerindicator/ViewPager2Attacher$2;

    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v0, v0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
