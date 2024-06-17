.class public final Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public regions:Ljava/lang/Cloneable;

.field public state:I

.field public timeOutSecs:I

.field public version:I


# direct methods
.method public constructor <init>(IIILandroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->timeOutSecs:I

    iput p2, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    iput p3, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    iput-object p4, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Ljava/lang/Cloneable;

    return-void
.end method


# virtual methods
.method public final addPosition(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Ljava/lang/Cloneable;

    move-object v2, v1

    check-cast v2, [I

    if-nez v2, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Ljava/lang/Cloneable;

    check-cast v1, [I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    check-cast v2, [I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    check-cast v1, [I

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Ljava/lang/Cloneable;

    check-cast v2, [I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Ljava/lang/Cloneable;

    move-object v2, v1

    check-cast v2, [I

    aput p1, v2, v0

    check-cast v1, [I

    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    iget p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel distance must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Layout positions must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    iget-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->regions:Ljava/lang/Cloneable;

    check-cast v1, [I

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eqz v2, :cond_5

    if-eqz p2, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {v1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroidx/media3/extractor/text/dvb/DvbParser$PageComposition;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v2, :cond_2

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_4

    iget v0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->timeOutSecs:I

    iget v2, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->version:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v0, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;)V

    :cond_4
    :goto_0
    iget p0, p0, Landroidx/media3/extractor/text/dvb/DvbParser$PageComposition;->state:I

    iget v0, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le p0, v0, :cond_5

    iput p0, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    iput-boolean p2, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_5
    return-void
.end method