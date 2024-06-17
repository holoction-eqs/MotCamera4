.class public abstract Landroidx/media3/exoplayer/source/WrappingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "SourceFile"


# instance fields
.field public final mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/BaseMediaSource;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    return-void
.end method


# virtual methods
.method public final getInitialTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->getInitialTimeline()Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    .line 2
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaTimeForChildMediaTime(JLjava/lang/Object;)J
    .locals 0

    check-cast p3, Ljava/lang/Void;

    return-wide p1
.end method

.method public final getWindowIndexForChildWindowIndex(ILjava/lang/Object;)I
    .locals 0

    check-cast p2, Ljava/lang/Void;

    return p1
.end method

.method public final isSingleWindow()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->isSingleWindow()Z

    move-result p0

    return p0
.end method

.method public abstract onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
.end method

.method public final onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    .line 1
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public prepareSourceInternal()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/BaseMediaSource;)V

    return-void
.end method

.method public final prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->eventHandler:Landroid/os/Handler;

    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->prepareSourceInternal()V

    return-void
.end method
