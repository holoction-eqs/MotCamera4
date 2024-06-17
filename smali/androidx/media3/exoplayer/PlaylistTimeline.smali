.class public final Landroidx/media3/exoplayer/PlaylistTimeline;
.super Landroidx/media3/common/Timeline;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final childCount:I

.field public final childIndexByUid:Ljava/util/HashMap;

.field public final firstPeriodInChildIndices:[I

.field public final firstWindowInChildIndices:[I

.field public final periodCount:I

.field public final shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

.field public final timelines:[Landroidx/media3/common/Timeline;

.field public final uids:[Ljava/lang/Object;

.field public final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/Timeline;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaSourceInfoHolder;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v4}, Landroidx/media3/exoplayer/MediaSourceInfoHolder;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaSourceInfoHolder;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3}, Landroidx/media3/exoplayer/MediaSourceInfoHolder;->getUid()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    return-void
.end method

.method public constructor <init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V
    .locals 7

    .line 4
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 5
    iget-object p3, p3, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    .line 6
    array-length p3, p3

    .line 7
    iput p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childCount:I

    .line 8
    array-length p3, p1

    iput-object p1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    new-array v0, p3, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    new-array p3, p3, [I

    iput-object p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    iput-object p2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    array-length p3, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v4, p1, v0

    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aput-object v4, v5, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    aput v1, v5, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aput v2, v5, v3

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    aget-object v5, p2, v3

    add-int/lit8 v6, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->windowCount:I

    iput v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->periodCount:I

    return-void
.end method


# virtual methods
.method public final getFirstWindowIndex(Z)I
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v3, v2

    if-lez v3, :cond_1

    aget v0, v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/PlaylistTimeline;->getNextChildIndex(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget p0, p0, v0

    aget-object v0, v2, v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    add-int v1, p1, p0

    :goto_1
    return v1
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 3

    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aget p0, p0, v0

    add-int v1, p0, p1

    :goto_1
    return v1
.end method

.method public final getLastWindowIndex(Z)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childCount:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    add-int/2addr v2, v0

    aget v1, v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/2addr v1, v0

    :cond_3
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v1, p1}, Landroidx/media3/exoplayer/PlaylistTimeline;->getPreviousChildIndex(IZ)I

    move-result v1

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget p0, p0, v1

    aget-object v0, v2, v1

    invoke-virtual {v0, p1}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    add-int v0, p1, p0

    :goto_1
    return v0
.end method

.method public final getNextChildIndex(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length p2, p0

    if-ge p1, p2, :cond_1

    aget v0, p0, p1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childCount:I

    add-int/2addr p0, v0

    if-ge p1, p0, :cond_1

    add-int/lit8 v0, p1, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getNextWindowIndex(IIZ)I
    .locals 7

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    aget v3, v1, v0

    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v5, v4, v0

    sub-int/2addr p1, v3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-virtual {v5, p1, v2, p3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    add-int v2, v3, p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0, p3}, Landroidx/media3/exoplayer/PlaylistTimeline;->getNextChildIndex(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_2

    aget-object v0, v4, p1

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/PlaylistTimeline;->getNextChildIndex(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v2, :cond_3

    aget p0, v1, p1

    aget-object p1, v4, p1

    invoke-virtual {p1, p3}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    add-int v2, p1, p0

    goto :goto_2

    :cond_3
    if-ne p2, v6, :cond_4

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/PlaylistTimeline;->getFirstWindowIndex(Z)I

    move-result v2

    :cond_4
    :goto_2
    return v2
.end method

.method public final getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 4

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    invoke-static {v2, v0, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget v1, v1, v0

    aget v2, v2, v0

    iget-object v3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v3, v3, v0

    sub-int/2addr p1, v2

    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget p1, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    add-int/2addr p1, v1

    iput p1, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-eqz p3, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object p0, p0, v0

    iget-object p1, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    iput-object p0, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget v2, v2, v1

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object p0, p0, v1

    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget p0, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    add-int/2addr p0, v2

    iput p0, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iput-object p1, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    return-object p2
.end method

.method public final getPeriodCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->periodCount:I

    return p0
.end method

.method public final getPreviousChildIndex(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->indexInShuffled:[I

    aget p1, p2, p1

    add-int/2addr p1, v0

    if-ltz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    aget v0, p0, p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    add-int/2addr v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getPreviousWindowIndex(IIZ)I
    .locals 7

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    aget v3, v1, v0

    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v5, v4, v0

    sub-int/2addr p1, v3

    const/4 v6, 0x2

    if-ne p2, v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    invoke-virtual {v5, p1, v2, p3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    add-int v2, v3, p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0, p3}, Landroidx/media3/exoplayer/PlaylistTimeline;->getPreviousChildIndex(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_2

    aget-object v0, v4, p1

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/PlaylistTimeline;->getPreviousChildIndex(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v2, :cond_3

    aget p0, v1, p1

    aget-object p1, v4, p1

    invoke-virtual {p1, p3}, Landroidx/media3/common/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    add-int v2, p1, p0

    goto :goto_2

    :cond_3
    if-ne p2, v6, :cond_4

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/PlaylistTimeline;->getLastWindowIndex(Z)I

    move-result v2

    :cond_4
    :goto_2
    return v2
.end method

.method public final getUidOfPeriod(I)Ljava/lang/Object;
    .locals 3

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    invoke-static {v2, v0, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    aget v1, v2, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v2, v2, v0

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object p0, p0, v0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 4

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstWindowInChildIndices:[I

    invoke-static {v2, v0, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    aget v1, v2, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v3, v3, v0

    sub-int/2addr p1, v1

    invoke-virtual {v3, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object p0, p0, v0

    sget-object p1, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object p3, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    :goto_0
    iput-object p0, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget p0, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr p0, v2

    iput p0, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget p0, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr p0, v2

    iput p0, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    return-object p2
.end method

.method public final getWindowCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->windowCount:I

    return p0
.end method
