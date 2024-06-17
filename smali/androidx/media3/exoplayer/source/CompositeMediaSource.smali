.class public abstract Landroidx/media3/exoplayer/source/CompositeMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"


# instance fields
.field public final childSources:Ljava/util/HashMap;

.field public eventHandler:Landroid/os/Handler;

.field public mediaTransferListener:Landroidx/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final disableInternal()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->disable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final enableInternal()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->enable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
.end method

.method public getMediaTimeForChildMediaTime(JLjava/lang/Object;)J
    .locals 0

    return-wide p1
.end method

.method public getWindowIndexForChildWindowIndex(ILjava/lang/Object;)I
    .locals 0

    return p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/common/Timeline;)V
.end method

.method public final prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    new-instance v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;)V

    new-instance v2, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v2, p0, p1}, Landroidx/work/WorkQuery$Builder;-><init>(Landroidx/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;)V

    new-instance v3, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    invoke-direct {v3, p2, v1, v2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;-><init>(Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;Landroidx/work/WorkQuery$Builder;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v3, p1, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v3, p1, v2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    iget-object p1, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v1, p1, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->prepareSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->enabledMediaSourceCallers:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->disable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_0
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->childSources:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releaseSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Landroidx/work/WorkQuery$Builder;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeEventListener(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeDrmEventListener(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
