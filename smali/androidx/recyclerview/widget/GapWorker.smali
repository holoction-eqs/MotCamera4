.class public final Landroidx/recyclerview/widget/GapWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final sGapWorker:Ljava/lang/ThreadLocal;

.field public static final sTaskComparator:Landroidx/viewpager/widget/ViewPager$1;


# instance fields
.field public mFrameIntervalNs:J

.field public mPostTimeNs:J

.field public final mRecyclerViews:Ljava/util/ArrayList;

.field public final mTasks:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Landroidx/viewpager/widget/ViewPager$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method public static prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    invoke-virtual {v0, p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(JI)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw p1
.end method


# virtual methods
.method public final postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempting to post unregistered view!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    iput p2, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->timeOutSecs:I

    iput p3, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    return-void
.end method

.method public final prefetch(J)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    invoke-virtual {v7, v6, v3}, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v6, v7, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    add-int/2addr v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v4, v3

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v2, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_5

    :cond_2
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    iget v9, v8, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->timeOutSecs:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v8, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v10, v9

    move v9, v3

    :goto_2
    iget v11, v8, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    mul-int/lit8 v11, v11, 0x2

    if-ge v9, v11, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v5, v11, :cond_3

    new-instance v11, Landroidx/recyclerview/widget/GapWorker$Task;

    invoke-direct {v11}, Landroidx/recyclerview/widget/GapWorker$Task;-><init>()V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/GapWorker$Task;

    :goto_3
    iget-object v12, v8, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Ljava/lang/Cloneable;

    check-cast v12, [I

    add-int/lit8 v13, v9, 0x1

    aget v13, v12, v13

    if-gt v13, v10, :cond_4

    move v14, v6

    goto :goto_4

    :cond_4
    move v14, v3

    :goto_4
    iput-boolean v14, v11, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    iput v10, v11, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iput v13, v11, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    iput-object v7, v11, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    aget v12, v12, v9

    iput v12, v11, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    sget-object v1, Landroidx/recyclerview/widget/GapWorker;->sTaskComparator:Landroidx/viewpager/widget/ViewPager$1;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v3

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GapWorker$Task;

    iget-object v4, v2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_7

    goto/16 :goto_b

    :cond_7
    iget-boolean v5, v2, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eqz v5, :cond_8

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_7

    :cond_8
    move-wide/from16 v7, p1

    :goto_7
    iget v5, v2, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    invoke-static {v4, v5, v7, v8}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_9

    goto :goto_9

    :cond_9
    iget-boolean v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v5, :cond_c

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_a
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v5, :cond_b

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_b
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_c
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;

    invoke-virtual {v5, v4, v6}, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v7, v5, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v7, :cond_e

    :try_start_0
    const-string v7, "RV Nested Prefetch"

    invoke-static {v7}, Landroidx/core/os/TraceCompat$Api18Impl;->beginSection(Ljava/lang/String;)V

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput v6, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    iput v8, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    iput-boolean v3, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    iput-boolean v3, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    iput-boolean v3, v7, Landroidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    move v7, v3

    :goto_8
    iget v8, v5, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_d

    iget-object v8, v5, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Ljava/lang/Cloneable;

    check-cast v8, [I

    aget v8, v8, v7

    move-wide/from16 v9, p1

    invoke-static {v4, v8, v9, v10}, Landroidx/recyclerview/widget/GapWorker;->prefetchPositionWithDeadline(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x2

    goto :goto_8

    :cond_d
    move-wide/from16 v9, p1

    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    goto :goto_a

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    throw v0

    :cond_e
    :goto_9
    move-wide/from16 v9, p1

    :goto_a
    iput-boolean v3, v2, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    iput v3, v2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iput v3, v2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    const/4 v4, 0x0

    iput-object v4, v2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    iput v3, v2, Landroidx/recyclerview/widget/GapWorker$Task;->position:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_f
    :goto_b
    return-void
.end method

.method public final run()V
    .locals 9

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroidx/core/os/TraceCompat$Api18Impl;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroidx/recyclerview/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move-wide v5, v0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    cmp-long v2, v5, v0

    if-nez v2, :cond_3

    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    return-void

    :cond_3
    :try_start_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/GapWorker;->prefetch(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    return-void

    :catchall_0
    move-exception v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    throw v2
.end method
