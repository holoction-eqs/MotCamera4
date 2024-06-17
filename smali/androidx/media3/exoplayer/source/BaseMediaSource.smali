.class public abstract Landroidx/media3/exoplayer/source/BaseMediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final enabledMediaSourceCallers:Ljava/util/HashSet;

.field public final eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

.field public looper:Landroid/os/Looper;

.field public final mediaSourceCallers:Ljava/util/ArrayList;

.field public playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public timeline:Landroidx/media3/common/Timeline;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method public abstract createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
.end method

.method public final disable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->disableInternal()V

    :cond_0
    return-void
.end method

.method public disableInternal()V
    .locals 0

    return-void
.end method

.method public final enable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->enableInternal()V

    :cond_0
    return-void
.end method

.method public enableInternal()V
    .locals 0

    return-void
.end method

.method public bridge synthetic getInitialTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getMediaItem()Landroidx/media3/common/MediaItem;
.end method

.method public bridge synthetic isSingleWindow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
.end method

.method public final prepareSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    if-nez v1, :cond_2

    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/BaseMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->enable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    invoke-interface {p1, p0, p3}, Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;->onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/common/Timeline;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public abstract prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
.end method

.method public final refreshSourceInfo(Landroidx/media3/common/Timeline;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->timeline:Landroidx/media3/common/Timeline;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;->onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/common/Timeline;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
.end method

.method public final releaseSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->mediaSourceCallers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->looper:Landroid/os/Looper;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->timeline:Landroidx/media3/common/Timeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releaseSourceInternal()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->disable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :goto_0
    return-void
.end method

.method public abstract releaseSourceInternal()V
.end method

.method public final removeDrmEventListener(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    iget-object v2, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeEventListener(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v0, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
