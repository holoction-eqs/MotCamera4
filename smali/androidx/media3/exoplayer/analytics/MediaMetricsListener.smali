.class public final Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;


# instance fields
.field public activeSessionId:Ljava/lang/String;

.field public audioUnderruns:I

.field public final bandwidthBytes:Ljava/util/HashMap;

.field public final bandwidthTimeMs:Ljava/util/HashMap;

.field public final context:Landroid/content/Context;

.field public currentAudioFormat:Landroidx/media3/common/Format;

.field public currentNetworkType:I

.field public currentPlaybackState:I

.field public currentTextFormat:Landroidx/media3/common/Format;

.field public currentVideoFormat:Landroidx/media3/common/Format;

.field public discontinuityReason:I

.field public droppedFrames:I

.field public hasFatalError:Z

.field public ioErrorType:I

.field public isSeeking:Z

.field public metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public pendingAudioFormat:Lcom/adobe/xmp/impl/ByteBuffer;

.field public pendingPlayerError:Landroidx/media3/common/PlaybackException;

.field public pendingTextFormat:Lcom/adobe/xmp/impl/ByteBuffer;

.field public pendingVideoFormat:Lcom/adobe/xmp/impl/ByteBuffer;

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public final playbackSession:Landroid/media/metrics/PlaybackSession;

.field public playedFrames:I

.field public reportedEventsForCurrentSession:Z

.field public final sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

.field public final startTimeMs:J

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->period:Landroidx/media3/common/Timeline$Period;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentNetworkType:I

    new-instance p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iput-object p0, p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    return-void
.end method

.method public static getDrmErrorCode(I)I
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1b

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x1c

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final canReportPendingFormatUpdate(Lcom/adobe/xmp/impl/ByteBuffer;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final finishCurrentSession()V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    return-void
.end method

.method public final maybeUpdateTimelineMetadata(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget p2, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-object p1, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    const/4 p2, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {v3, p1}, Landroidx/media3/common/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, p2, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-wide v3, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    iget-boolean p1, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez p1, :cond_6

    iget-boolean p1, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_6

    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-nez p1, :cond_6

    iget-wide v3, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move p2, v2

    :goto_1
    invoke-virtual {v0, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    return-void
.end method

.method public final onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 7

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-nez v1, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    add-long/2addr v5, p3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1
    int-to-long p2, p2

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final onDownstreamFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 6

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    monitor-enter v2

    :try_start_0
    iget-object v4, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v4, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v2, p1, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget v2, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackSelectionReason:I

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/lang/Object;ILjava/lang/String;I)V

    iget p1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final onEvents(Landroidx/media3/common/Player;Lcom/motorola/camera/CameraKpi;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/CameraKpi;->size$1()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x0

    move v1, v8

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/CameraKpi;->size$1()I

    move-result v2

    const/16 v9, 0xb

    const/4 v10, 0x1

    if-ge v1, v2, :cond_c

    iget-object v2, v7, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/FlagSet;

    invoke-virtual {v2, v1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v2

    iget-object v3, v7, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_5

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    monitor-enter v2

    :try_start_0
    iget-object v4, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    iget-object v5, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iput-object v5, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    iget-object v5, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    iget-object v9, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v6, v4, v9}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->tryResolvingToNewTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    iget-boolean v9, v6, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    if-eqz v9, :cond_1

    iget-object v9, v6, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    iget-object v10, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    :cond_3
    iget-object v9, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v6, v6, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    invoke-virtual {v9, v3, v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    if-ne v2, v9, :cond_b

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->discontinuityReason:I

    monitor-enter v2

    :try_start_1
    iget-object v5, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move v10, v8

    :goto_2
    iget-object v4, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    iget-boolean v6, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    if-eqz v6, :cond_7

    iget-object v6, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    iget-object v9, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v10, :cond_8

    if-eqz v6, :cond_8

    iget-boolean v9, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    :cond_9
    iget-object v6, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    iget-object v5, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_b
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v7, v8}, Lcom/motorola/camera/CameraKpi;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v2, :cond_d

    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateTimelineMetadata(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    :cond_d
    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Lcom/motorola/camera/CameraKpi;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_15

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v8}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object v1

    :cond_e
    invoke-virtual {v1}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractIndexedListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    move v3, v8

    :goto_5
    iget v4, v2, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v3, v4, :cond_e

    iget-object v4, v2, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_f

    invoke-virtual {v2, v3}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz v4, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_15

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    move v2, v8

    :goto_7
    iget v3, v4, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v2, v3, :cond_14

    iget-object v3, v4, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    sget-object v5, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v2, 0x3

    goto :goto_8

    :cond_11
    sget-object v5, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v2, v13

    goto :goto_8

    :cond_12
    sget-object v5, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v2, 0x6

    goto :goto_8

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    move v2, v10

    :goto_8
    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_15
    const/16 v1, 0x3f3

    invoke-virtual {v7, v1}, Lcom/motorola/camera/CameraKpi;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    add-int/2addr v1, v10

    iput v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->audioUnderruns:I

    :cond_16
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingPlayerError:Landroidx/media3/common/PlaybackException;

    const/4 v9, 0x4

    const/16 v2, 0x9

    const/4 v6, 0x5

    if-nez v1, :cond_17

    move v1, v13

    const/4 v13, 0x6

    const/4 v14, 0x7

    const/16 v19, 0x8

    goto/16 :goto_17

    :cond_17
    iget v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->ioErrorType:I

    if-ne v4, v9, :cond_18

    move v4, v10

    goto :goto_9

    :cond_18
    move v4, v8

    :goto_9
    iget v13, v1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v5, 0x3e9

    if-ne v13, v5, :cond_19

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x14

    invoke-direct {v4, v5, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_e

    :cond_19
    instance-of v5, v1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v5, :cond_1b

    move-object v5, v1

    check-cast v5, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget v9, v5, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v9, v10, :cond_1a

    move v9, v10

    goto :goto_a

    :cond_1a
    move v9, v8

    :goto_a
    iget v5, v5, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    goto :goto_b

    :cond_1b
    move v5, v8

    move v9, v5

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v14, v3, Ljava/io/IOException;

    const/16 v15, 0x17

    if-eqz v14, :cond_30

    instance-of v5, v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v5, :cond_1c

    check-cast v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iget v3, v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    invoke-direct {v4, v6, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_e

    :cond_1c
    instance-of v5, v3, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    if-nez v5, :cond_2e

    instance-of v5, v3, Landroidx/media3/common/ParserException;

    if-eqz v5, :cond_1d

    goto/16 :goto_11

    :cond_1d
    instance-of v4, v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-nez v4, :cond_29

    instance-of v5, v3, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    if-eqz v5, :cond_1e

    goto/16 :goto_d

    :cond_1e
    const/16 v4, 0x3ea

    const/16 v5, 0x15

    if-ne v13, v4, :cond_1f

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v4, v5, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_e

    :cond_1f
    instance-of v4, v3, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v4, v5, :cond_20

    instance-of v5, v3, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v5, :cond_20

    check-cast v3, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v3}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getDrmErrorCode(I)I

    move-result v4

    new-instance v5, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v5, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    move-object v4, v5

    goto/16 :goto_e

    :cond_20
    if-lt v4, v15, :cond_21

    instance-of v5, v3, Landroid/media/MediaDrmResetException;

    if-eqz v5, :cond_21

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x1b

    invoke-direct {v4, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_e

    :cond_21
    const/16 v5, 0x12

    if-lt v4, v5, :cond_22

    instance-of v9, v3, Landroid/media/NotProvisionedException;

    if-eqz v9, :cond_22

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x18

    invoke-direct {v4, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_e

    :cond_22
    if-lt v4, v5, :cond_23

    instance-of v4, v3, Landroid/media/DeniedByServerException;

    if-eqz v4, :cond_23

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x1d

    invoke-direct {v4, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto/16 :goto_e

    :cond_23
    instance-of v4, v3, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    if-eqz v4, :cond_24

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v4, v15, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_e

    :cond_24
    instance-of v3, v3, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    if-eqz v3, :cond_25

    const/16 v3, 0x1c

    goto :goto_c

    :cond_25
    const/16 v3, 0x1e

    :goto_c
    invoke-direct {v4, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_e

    :cond_26
    instance-of v4, v3, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v4, v5, :cond_27

    instance-of v4, v3, Landroid/system/ErrnoException;

    if-eqz v4, :cond_27

    check-cast v3, Landroid/system/ErrnoException;

    iget v3, v3, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EACCES:I

    if-ne v3, v4, :cond_27

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x20

    invoke-direct {v4, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_e

    :cond_27
    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x1f

    invoke-direct {v4, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_e

    :cond_28
    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v4, v2, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_e

    :cond_29
    :goto_d
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    invoke-static {v5}, Landroidx/media3/common/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    move-result-object v5

    iget-object v9, v5, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2
    iget v5, v5, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v5, v10, :cond_2a

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v3, 0x3

    invoke-direct {v4, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_e
    const/4 v13, 0x6

    goto :goto_f

    :cond_2a
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v9, v5, Ljava/net/UnknownHostException;

    if-eqz v9, :cond_2b

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v13, 0x6

    invoke-direct {v4, v13, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_f
    const/16 v5, 0xd

    const/4 v14, 0x7

    const/16 v19, 0x8

    goto/16 :goto_16

    :cond_2b
    const/4 v13, 0x6

    instance-of v5, v5, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_2c

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v14, 0x7

    invoke-direct {v3, v14, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_10
    const/16 v5, 0x8

    goto :goto_13

    :cond_2c
    const/4 v14, 0x7

    if-eqz v4, :cond_2d

    check-cast v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget v3, v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    if-ne v3, v10, :cond_2d

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_10

    :cond_2d
    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0x8

    invoke-direct {v3, v5, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_13

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_2e
    :goto_11
    const/16 v5, 0x8

    const/4 v13, 0x6

    const/4 v14, 0x7

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    if-eqz v4, :cond_2f

    const/16 v4, 0xa

    goto :goto_12

    :cond_2f
    const/16 v4, 0xb

    :goto_12
    invoke-direct {v3, v4, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_13
    move-object v4, v3

    move/from16 v19, v5

    goto :goto_15

    :cond_30
    const/4 v13, 0x6

    const/4 v14, 0x7

    const/16 v19, 0x8

    if-eqz v9, :cond_32

    if-eqz v5, :cond_31

    if-ne v5, v10, :cond_32

    :cond_31
    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0x23

    invoke-direct {v3, v4, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_14
    move-object v4, v3

    goto :goto_15

    :cond_32
    if-eqz v9, :cond_33

    const/4 v4, 0x3

    if-ne v5, v4, :cond_33

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_14

    :cond_33
    if-eqz v9, :cond_34

    const/4 v4, 0x2

    if-ne v5, v4, :cond_34

    new-instance v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v3, v15, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_14

    :goto_15
    const/16 v5, 0xd

    goto :goto_16

    :cond_34
    instance-of v4, v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v4, :cond_35

    check-cast v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v3, v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v5, 0xd

    invoke-direct {v4, v5, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_16

    :cond_35
    const/16 v5, 0xd

    instance-of v4, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    const/16 v9, 0xe

    if-eqz v4, :cond_36

    check-cast v3, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    iget-object v3, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;->diagnosticInfo:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v4, v9, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_16

    :cond_36
    instance-of v4, v3, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_37

    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v4, v9, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    goto :goto_16

    :cond_37
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v4, v9, :cond_38

    instance-of v4, v3, Landroid/media/MediaCodec$CryptoException;

    if-eqz v4, :cond_38

    check-cast v3, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->getDrmErrorCode(I)I

    move-result v4

    new-instance v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v9, v4, v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    move-object v4, v9

    goto :goto_16

    :cond_38
    new-instance v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v3, 0x16

    invoke-direct {v4, v3, v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    :goto_16
    new-instance v3, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v5, v11, v5

    invoke-virtual {v3, v5, v6}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v3

    iget v5, v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    invoke-virtual {v3, v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v3

    iget v4, v4, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    invoke-virtual {v3, v4}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v1

    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v3, v1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    iput-boolean v10, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingPlayerError:Landroidx/media3/common/PlaybackException;

    const/4 v1, 0x2

    :goto_17
    invoke-virtual {v7, v1}, Lcom/motorola/camera/CameraKpi;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_42

    move-object/from16 v3, p1

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v4

    invoke-virtual {v3, v10}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v15

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v20

    if-nez v4, :cond_39

    if-nez v15, :cond_39

    if-eqz v20, :cond_42

    :cond_39
    if-nez v4, :cond_3c

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    move/from16 v16, v2

    move-object v13, v6

    const/16 v9, 0xa

    goto :goto_19

    :cond_3a
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    if-nez v1, :cond_3b

    move/from16 v17, v10

    goto :goto_18

    :cond_3b
    move/from16 v17, v8

    :goto_18
    iput-object v6, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v16, v2

    const/16 v4, 0xa

    move v2, v3

    move v9, v4

    const/16 v18, 0xd

    move-wide v3, v11

    move-object v13, v6

    const/16 v21, 0x5

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V

    goto :goto_1a

    :cond_3c
    move/from16 v16, v2

    const/16 v9, 0xa

    const/4 v13, 0x0

    :goto_19
    const/16 v18, 0xd

    const/16 v21, 0x5

    :goto_1a
    const/4 v6, 0x0

    if-nez v15, :cond_3f

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    invoke-static {v1, v6}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_1c

    :cond_3d
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    if-nez v1, :cond_3e

    move v15, v10

    goto :goto_1b

    :cond_3e
    move v15, v8

    :goto_1b
    iput-object v6, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-wide v3, v11

    move-object v5, v6

    move-object v14, v6

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V

    goto :goto_1d

    :cond_3f
    :goto_1c
    move-object v14, v6

    :goto_1d
    if-nez v20, :cond_43

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    invoke-static {v1, v14}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_1f

    :cond_40
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    if-nez v1, :cond_41

    move v6, v10

    goto :goto_1e

    :cond_41
    move v6, v8

    :goto_1e
    iput-object v14, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-wide v3, v11

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V

    goto :goto_1f

    :cond_42
    move/from16 v16, v2

    const/16 v9, 0xa

    const/4 v13, 0x0

    const/16 v18, 0xd

    const/16 v21, 0x5

    :cond_43
    :goto_1f
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Lcom/adobe/xmp/impl/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v2, v1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroidx/media3/common/Format;

    iget v2, v5, Landroidx/media3/common/Format;->height:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_46

    iget v1, v1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    invoke-static {v2, v5}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    goto :goto_21

    :cond_44
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    if-nez v2, :cond_45

    if-nez v1, :cond_45

    move v6, v10

    goto :goto_20

    :cond_45
    move v6, v1

    :goto_20
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentVideoFormat:Landroidx/media3/common/Format;

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide v3, v11

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V

    :goto_21
    iput-object v13, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    :cond_46
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Lcom/adobe/xmp/impl/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v2, v1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroidx/media3/common/Format;

    iget v1, v1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    invoke-static {v2, v5}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_23

    :cond_47
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    if-nez v2, :cond_48

    if-nez v1, :cond_48

    move v6, v10

    goto :goto_22

    :cond_48
    move v6, v1

    :goto_22
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentAudioFormat:Landroidx/media3/common/Format;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-wide v3, v11

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V

    :goto_23
    iput-object v13, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    :cond_49
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Lcom/adobe/xmp/impl/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v2, v1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroidx/media3/common/Format;

    iget v1, v1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    invoke-static {v2, v5}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_25

    :cond_4a
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    if-nez v2, :cond_4b

    if-nez v1, :cond_4b

    move v6, v10

    goto :goto_24

    :cond_4b
    move v6, v1

    :goto_24
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentTextFormat:Landroidx/media3/common/Format;

    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-wide v3, v11

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V

    :goto_25
    iput-object v13, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    :cond_4c
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/media3/common/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    move-result-object v1

    iget-object v2, v1, Landroidx/media3/common/util/NetworkTypeObserver;->networkTypeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget v1, v1, Landroidx/media3/common/util/NetworkTypeObserver;->networkType:I

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v5, v10

    goto :goto_26

    :pswitch_1
    const/4 v5, 0x7

    goto :goto_26

    :pswitch_2
    move/from16 v5, v19

    goto :goto_26

    :pswitch_3
    const/4 v5, 0x3

    goto :goto_26

    :pswitch_4
    const/4 v5, 0x6

    goto :goto_26

    :pswitch_5
    move/from16 v5, v21

    goto :goto_26

    :pswitch_6
    const/4 v5, 0x4

    goto :goto_26

    :pswitch_7
    const/4 v5, 0x2

    goto :goto_26

    :pswitch_8
    move/from16 v5, v16

    goto :goto_26

    :pswitch_9
    move v5, v8

    :goto_26
    iget v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentNetworkType:I

    if-eq v5, v1, :cond_4d

    iput v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentNetworkType:I

    new-instance v1, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v1}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    invoke-virtual {v1, v5}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    iget-wide v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long v2, v11, v2

    invoke-virtual {v1, v2, v3}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v2, v1}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    :cond_4d
    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4e

    iput-boolean v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->isSeeking:Z

    :cond_4e
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v2, :cond_4f

    iput-boolean v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->hasFatalError:Z

    goto :goto_27

    :cond_4f
    invoke-virtual {v7, v9}, Lcom/motorola/camera/CameraKpi;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_50

    iput-boolean v10, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->hasFatalError:Z

    :cond_50
    :goto_27
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v2

    iget-boolean v3, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->isSeeking:Z

    if-eqz v3, :cond_51

    move/from16 v9, v21

    goto :goto_29

    :cond_51
    iget-boolean v3, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->hasFatalError:Z

    if-eqz v3, :cond_52

    move/from16 v9, v18

    goto :goto_29

    :cond_52
    const/4 v3, 0x4

    if-ne v2, v3, :cond_53

    const/16 v9, 0xb

    goto :goto_29

    :cond_53
    const/4 v4, 0x2

    if-ne v2, v4, :cond_58

    iget v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz v2, :cond_57

    if-ne v2, v4, :cond_54

    goto :goto_28

    :cond_54
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_55

    const/4 v9, 0x7

    goto :goto_29

    :cond_55
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-eqz v1, :cond_56

    goto :goto_29

    :cond_56
    const/4 v9, 0x6

    goto :goto_29

    :cond_57
    :goto_28
    move v9, v4

    goto :goto_29

    :cond_58
    const/4 v4, 0x3

    if-ne v2, v4, :cond_5a

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v2

    if-nez v2, :cond_59

    move v9, v3

    goto :goto_29

    :cond_59
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-eqz v1, :cond_57

    move/from16 v9, v16

    goto :goto_29

    :cond_5a
    if-ne v2, v10, :cond_5b

    iget v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz v1, :cond_5b

    const/16 v9, 0xc

    goto :goto_29

    :cond_5b
    iget v9, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    :goto_29
    iget v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eq v1, v9, :cond_5c

    iput v9, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    iput-boolean v10, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    new-instance v1, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->currentPlaybackState:I

    invoke-virtual {v1, v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v1

    iget-wide v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long/2addr v11, v2

    invoke-virtual {v1, v11, v12}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v2, v1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_5c
    const/16 v1, 0x404

    invoke-virtual {v7, v1}, Lcom/motorola/camera/CameraKpi;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    iget-object v0, v7, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v2

    :try_start_5
    iget-object v1, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-eqz v1, :cond_5d

    iget-object v3, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    :cond_5d
    iget-object v1, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5e
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-boolean v4, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    if-eqz v4, :cond_5e

    iget-object v4, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    if-eqz v4, :cond_5e

    iget-object v3, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2a

    :cond_5f
    monitor-exit v2

    goto :goto_2b

    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_60
    :goto_2b
    return-void

    :catchall_4
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->isSeeking:Z

    :cond_0
    iput p4, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->discontinuityReason:I

    return-void
.end method

.method public final onSessionActive(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->finishCurrentSession()V

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    new-instance p2, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    const-string v1, "AndroidXMedia3"

    invoke-virtual {p2, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v1, "1.1.1"

    invoke-virtual {p2, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->maybeUpdateTimelineMetadata(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public final onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->finishCurrentSession()V

    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onVideoDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 1

    iget p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    iget v0, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->droppedFrames:I

    iget p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    iget p2, p2, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playedFrames:I

    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Landroidx/media3/common/Format;

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p2, Landroidx/media3/common/VideoSize;->width:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->width:I

    iget p2, p2, Landroidx/media3/common/VideoSize;->height:I

    iput p2, v0, Landroidx/media3/common/Format$Builder;->height:I

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p2

    new-instance v0, Lcom/adobe/xmp/impl/ByteBuffer;

    iget v1, p1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object p1, p1, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, p2, v1, p1, v2}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/lang/Object;ILjava/lang/String;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/adobe/xmp/impl/ByteBuffer;

    :cond_0
    return-void
.end method

.method public final reportTrackChangeEvent(IJLandroidx/media3/common/Format;I)V
    .locals 3

    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_d

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_1

    const/4 v1, 0x3

    if-eq p5, v0, :cond_2

    if-eq p5, v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p5, p4, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-eqz p5, :cond_3

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_3
    iget-object p5, p4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p5, :cond_4

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4
    iget-object p5, p4, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz p5, :cond_5

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_5
    const/4 p5, -0x1

    iget v1, p4, Landroidx/media3/common/Format;->bitrate:I

    if-eq v1, p5, :cond_6

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_6
    iget v1, p4, Landroidx/media3/common/Format;->width:I

    if-eq v1, p5, :cond_7

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7
    iget v1, p4, Landroidx/media3/common/Format;->height:I

    if-eq v1, p5, :cond_8

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_8
    iget v1, p4, Landroidx/media3/common/Format;->channelCount:I

    if-eq v1, p5, :cond_9

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_9
    iget v1, p4, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v1, p5, :cond_a

    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_a
    iget-object v1, p4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_c

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const-string v2, "-"

    invoke-virtual {v1, v2, p5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    aget-object p2, p5, p2

    array-length v1, p5

    if-lt v1, v0, :cond_b

    aget-object p5, p5, p3

    goto :goto_1

    :cond_b
    const/4 p5, 0x0

    :goto_1
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_c

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_c
    const/high16 p2, -0x40800000    # -1.0f

    iget p4, p4, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_e

    invoke-virtual {p1, p4}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_2

    :cond_d
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_e
    :goto_2
    iput-boolean p3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method
