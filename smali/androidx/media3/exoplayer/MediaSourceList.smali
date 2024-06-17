.class public final Landroidx/media3/exoplayer/MediaSourceList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final childSources:Ljava/util/HashMap;

.field public final enabledMediaSourceHolders:Ljava/util/HashSet;

.field public final eventHandler:Landroidx/media3/common/util/HandlerWrapper;

.field public final eventListener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field public isPrepared:Z

.field public final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

.field public final mediaSourceByUid:Ljava/util/HashMap;

.field public final mediaSourceHolders:Ljava/util/ArrayList;

.field public final mediaSourceListInfoListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public mediaTransferListener:Landroidx/media3/datasource/TransferListener;

.field public final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/SystemHandlerWrapper;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroidx/media3/exoplayer/MediaSourceList;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceListInfoListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    new-instance p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventListener:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList;->eventHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final addMediaSources(ILjava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)Landroidx/media3/common/Timeline;
    .locals 6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_4

    sub-int v0, p3, p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-lez p3, :cond_0

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget v3, v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindowCount()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    :goto_1
    iput-boolean v2, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_0
    iput v2, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    goto :goto_1

    :goto_2
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindowCount()I

    move-result v2

    move v3, p3

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget v5, v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v5, v2

    iput v5, v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/util/HashMap;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaSourceList;->prepareChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->disable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_3
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public final createTimeline()Landroidx/media3/common/Timeline;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline$1;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iput v2, v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindowCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v1, v0, p0}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    return-object v1
.end method

.method public final disableUnusedMediaSources()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->disable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final maybeReleaseChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .locals 3

    iget-boolean v0, p1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releaseSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeEventListener(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeDrmEventListener(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final prepareChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .locals 6

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    new-instance v1, Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/MediaSourceList;)V

    new-instance v2, Lcom/motorola/camera/device/CameraService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/motorola/camera/device/CameraService;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    new-instance v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    invoke-direct {v4, v0, v1, v2}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;-><init>(Landroidx/media3/exoplayer/source/MaskingMediaSource;Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;Lcom/motorola/camera/device/CameraService;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iget-object p1, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v5, v3, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iget-object p1, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v4, v3, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    iget-object p1, p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaSourceList;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0, v1, p1, p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->prepareSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method

.method public final removeMediaSourcesInternal(II)V
    .locals 7

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v3, p0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindowCount()I

    move-result v3

    neg-int v3, v3

    move v4, p2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v6, v3

    iput v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iput-boolean v0, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    iget-boolean v1, p0, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/MediaSourceList;->maybeReleaseChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
