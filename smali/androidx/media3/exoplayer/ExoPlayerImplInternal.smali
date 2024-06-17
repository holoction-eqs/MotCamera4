.class public final Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
.implements Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;


# instance fields
.field public final backBufferDurationUs:J

.field public final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field public final clock:Landroidx/media3/common/util/Clock;

.field public deliverPendingMessageAtStartPositionRequired:Z

.field public final emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public enabledRendererCount:I

.field public foregroundMode:Z

.field public final handler:Landroidx/media3/common/util/SystemHandlerWrapper;

.field public final internalPlaybackThread:Landroid/os/HandlerThread;

.field public isRebuffering:Z

.field public final livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

.field public final loadControl:Landroidx/media3/exoplayer/LoadControl;

.field public final mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

.field public final mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

.field public nextPendingMessageIndexHint:I

.field public offloadSchedulingEnabled:Z

.field public pauseAtEndOfWindow:Z

.field public pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

.field public final pendingMessages:Ljava/util/ArrayList;

.field public pendingPauseAtEndOfPeriod:Z

.field public pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

.field public final period:Landroidx/media3/common/Timeline$Period;

.field public playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field public playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field public final playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

.field public final playbackLooper:Landroid/os/Looper;

.field public playbackMaybeBecameStuckAtMs:J

.field public final queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

.field public final releaseTimeoutMs:J

.field public released:Z

.field public final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field public rendererPositionUs:J

.field public final renderers:[Landroidx/media3/exoplayer/Renderer;

.field public final renderersToReset:Ljava/util/Set;

.field public repeatMode:I

.field public seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field public shouldContinueLoading:Z

.field public shuffleModeEnabled:Z

.field public final trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

.field public final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;JZLandroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    move-object/from16 v6, p15

    move-object/from16 v7, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v8, p16

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    move-object v8, p3

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    move/from16 v9, p6

    iput v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    move/from16 v9, p7

    iput-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object/from16 v9, p9

    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    move-object/from16 v9, p10

    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-wide/from16 v9, p11

    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    move/from16 v9, p13

    iput-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    check-cast v3, Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-wide v9, v3, Landroidx/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    invoke-static {p3}, Landroidx/media3/exoplayer/PlaybackInfo;->createDummy(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    new-instance v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-direct {v8, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    iput-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    array-length v3, v1

    new-array v3, v3, [Landroidx/media3/exoplayer/RendererCapabilities;

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    move-object v3, v2

    check-cast v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_0

    aget-object v8, v1, v3

    invoke-interface {v8, v3, v7}, Landroidx/media3/exoplayer/Renderer;->init(ILandroidx/media3/exoplayer/analytics/PlayerId;)V

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v9, v1, v3

    invoke-interface {v9}, Landroidx/media3/exoplayer/Renderer;->getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v8, v8, v3

    invoke-interface {v8}, Landroidx/media3/exoplayer/RendererCapabilities;->setListener()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-direct {v1, p0, v6}, Landroidx/media3/exoplayer/DefaultMediaClock;-><init>(Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Landroidx/media3/common/util/Clock;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iput-object v0, v2, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->listener:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iput-object v4, v2, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    move-object v1, v6

    check-cast v1, Landroidx/media3/common/util/SystemClock;

    const/4 v2, 0x0

    move-object/from16 v3, p14

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v2

    new-instance v3, Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-direct {v3, v5, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/SystemHandlerWrapper;)V

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    new-instance v3, Landroidx/media3/exoplayer/MediaSourceList;

    invoke-direct {v3, p0, v5, v2, v7}, Landroidx/media3/exoplayer/MediaSourceList;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/SystemHandlerWrapper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ExoPlayer:Playback"

    const/16 v4, -0x10

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2, p0}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    return-void
.end method

.method public static isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z
    .locals 0

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static resolvePendingMessageEndOfStreamPosition(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V
    .locals 4

    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget-wide v0, p3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput p2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iput-wide v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iput-object p0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    return-void
.end method

.method public static resolvePendingMessagePosition(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    if-nez v2, :cond_3

    iget-wide v1, v15, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    cmp-long v3, v1, v13

    if-nez v3, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    :goto_0
    new-instance v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v4, v15, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    iget v5, v15, Landroidx/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    invoke-direct {v3, v4, v5, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return v11

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iput v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iput-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    iget-wide v1, v15, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    invoke-static {v8, v0, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V

    :cond_2
    return v12

    :cond_3
    invoke-virtual {v8, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v11

    :cond_4
    iget-wide v3, v15, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    cmp-long v3, v3, v13

    if-nez v3, :cond_5

    invoke-static {v8, v0, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V

    return v12

    :cond_5
    iput v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-boolean v2, v10, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_6

    iget v2, v10, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v1, v2, v9}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_6

    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iget-wide v3, v10, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v5, v1, v3

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v8, v1, v10}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v4, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iput v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iput-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    :cond_6
    return v12
.end method

.method public static resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;
    .locals 12

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    :goto_0
    :try_start_0
    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v10}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-boolean v2, v2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_3

    iget v2, v8, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move-object/from16 v11, p5

    invoke-virtual {v10, v2, v11}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v3, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v3, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method public static resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p5, p4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p5}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->getNextPeriodIndex(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p5, v4}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p6, p4}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static setCurrentStreamFinal(Landroidx/media3/exoplayer/Renderer;J)V
    .locals 1

    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->setCurrentStreamFinal()V

    instance-of v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/media3/exoplayer/text/TextRenderer;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final addMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 v0, -0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    if-ne p2, v0, :cond_0

    iget-object p2, v1, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {v1, p2, v0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->addMediaSources(ILjava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final disableRenderer(Landroidx/media3/exoplayer/Renderer;)V
    .locals 3

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v2, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    if-ne p1, v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    iput-object v2, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    iput-boolean v1, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    :cond_2
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->stop()V

    :cond_3
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->disable()V

    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    return-void
.end method

.method public final doSomeWork()V
    .locals 50

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    check-cast v1, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v1, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const-wide/high16 v15, -0x8000000000000000L

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    if-nez v1, :cond_35

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-nez v1, :cond_0

    goto/16 :goto_22

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_2

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v4, :cond_1

    move v4, v8

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-boolean v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v2, v6

    invoke-interface {v4, v2, v3}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v2, :cond_6

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-nez v3, :cond_5

    iget-boolean v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v3, :cond_3

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v2

    cmp-long v2, v2, v15

    if-nez v2, :cond_4

    :cond_3
    move v2, v8

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v2, v2, v9

    if-eqz v2, :cond_5

    iget v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v8

    :goto_3
    if-eqz v1, :cond_c

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v5, :cond_7

    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, v4, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v4, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v9, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-wide/from16 v21, v5

    move-wide/from16 v23, v9

    invoke-virtual/range {v18 .. v24}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    goto :goto_4

    :cond_7
    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v4, v5, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_c

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    check-cast v5, Landroidx/media3/exoplayer/DefaultLoadControl;

    iget-object v5, v5, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v9, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v9, :cond_8

    const-wide v9, 0xe8d4a51000L

    move-wide/from16 v29, v9

    goto :goto_5

    :cond_8
    iget-wide v13, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v9, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v9, v9, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v13, v9

    iget-wide v9, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v13, v9

    move-wide/from16 v29, v13

    :goto_5
    new-instance v9, Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object/from16 v27, v9

    move-object/from16 v28, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 v34, v1

    move-object/from16 v35, v7

    invoke-direct/range {v27 .. v35}, Landroidx/media3/exoplayer/MediaPeriodHolder;-><init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/MappingTrackSelector;Landroidx/media3/exoplayer/upstream/DefaultAllocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v3, :cond_a

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v9, v4, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    iput-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    goto :goto_6

    :cond_a
    iput-object v9, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v9, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_6
    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/2addr v3, v8

    iput v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->length:I

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    iget-object v2, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v3, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v2, v0, v3, v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v2, v9, :cond_b

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :cond_b
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    :goto_7
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateIsLoading()V

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    :goto_8
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v2, :cond_e

    goto/16 :goto_d

    :cond_e
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    if-eqz v3, :cond_1f

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v3, :cond_f

    goto/16 :goto_12

    :cond_f
    iget-boolean v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_10

    goto :goto_b

    :cond_10
    move v3, v6

    :goto_9
    array-length v4, v9

    if-ge v3, v4, :cond_15

    aget-object v4, v9, v3

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v5, v5, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v7

    if-ne v7, v5, :cond_14

    if-eqz v5, :cond_13

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v7, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v7, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-eqz v7, :cond_12

    iget-boolean v7, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v7, :cond_12

    instance-of v7, v4, Landroidx/media3/exoplayer/text/TextRenderer;

    if-nez v7, :cond_11

    instance-of v7, v4, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    if-nez v7, :cond_11

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide v13

    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    cmp-long v4, v13, v4

    if-ltz v4, :cond_12

    :cond_11
    move v4, v8

    goto :goto_a

    :cond_12
    move v4, v6

    :goto_a
    if-nez v4, :cond_13

    goto :goto_b

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    :goto_b
    move v3, v6

    goto :goto_c

    :cond_15
    move v3, v8

    :goto_c
    if-nez v3, :cond_16

    goto :goto_d

    :cond_16
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v4, :cond_18

    iget-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v13

    cmp-long v3, v4, v13

    if-gez v3, :cond_18

    :cond_17
    :goto_d
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_16

    :cond_18
    iget-object v10, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v3, :cond_19

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v3, :cond_19

    move v3, v8

    goto :goto_e

    :cond_19
    move v3, v6

    :goto_e
    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iput-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    iget-object v13, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v14, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v4

    move-wide/from16 v6, v20

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    iget-boolean v1, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_1b

    iget-object v1, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    invoke-virtual {v13}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v1

    array-length v3, v9

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v3, :cond_17

    aget-object v4, v9, v6

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-static {v4, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setCurrentStreamFinal(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1b
    const/4 v6, 0x0

    :goto_10
    array-length v1, v9

    if-ge v6, v1, :cond_17

    invoke-virtual {v10, v6}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    invoke-virtual {v14, v6}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-eqz v1, :cond_1e

    aget-object v1, v9, v6

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v1, v1, v6

    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_1c

    const/4 v8, 0x1

    goto :goto_11

    :cond_1c
    const/4 v8, 0x0

    :goto_11
    iget-object v1, v10, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v1, v1, v6

    iget-object v3, v14, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v3, v3, v6

    if-eqz v2, :cond_1d

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz v8, :cond_1e

    :cond_1d
    aget-object v1, v9, v6

    invoke-virtual {v13}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setCurrentStreamFinal(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1f
    :goto_12
    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-nez v1, :cond_20

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_17

    :cond_20
    const/4 v6, 0x0

    :goto_13
    array-length v1, v9

    if-ge v6, v1, :cond_17

    aget-object v1, v9, v6

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v3, v3, v6

    if-eqz v3, :cond_22

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v4

    if-ne v4, v3, :cond_22

    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v13

    if-eqz v5, :cond_21

    cmp-long v5, v3, v15

    if-eqz v5, :cond_21

    iget-wide v7, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v3, v7

    goto :goto_14

    :cond_21
    move-wide v3, v13

    :goto_14
    invoke-static {v1, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setCurrentStreamFinal(Landroidx/media3/exoplayer/Renderer;J)V

    goto :goto_15

    :cond_22
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :goto_16
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v2, :cond_2c

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v1, v2, :cond_2c

    iget-boolean v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v1, :cond_23

    goto/16 :goto_1c

    :cond_23
    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_17
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v4, v3

    if-ge v6, v4, :cond_2b

    aget-object v3, v3, v6

    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_1b

    :cond_24
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v4

    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v7, v5, v6

    if-eq v4, v7, :cond_25

    const/4 v4, 0x1

    goto :goto_18

    :cond_25
    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_26

    if-nez v4, :cond_26

    goto :goto_1b

    :cond_26
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v4, v4, v6

    if-eqz v4, :cond_27

    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v7

    goto :goto_19

    :cond_27
    const/4 v7, 0x0

    :goto_19
    new-array v9, v7, [Landroidx/media3/common/Format;

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v7, :cond_28

    invoke-interface {v4, v10}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v17

    aput-object v17, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_28
    aget-object v22, v5, v6

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v23

    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    move-object/from16 v20, v3

    move-object/from16 v21, v9

    move-wide/from16 v25, v4

    invoke-interface/range {v20 .. v26}, Landroidx/media3/exoplayer/Renderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJ)V

    goto :goto_1b

    :cond_29
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(Landroidx/media3/exoplayer/Renderer;)V

    goto :goto_1b

    :cond_2a
    const/4 v8, 0x1

    :goto_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_2b
    const/4 v10, 0x1

    xor-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_2d

    array-length v1, v3

    new-array v1, v1, [Z

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([Z)V

    goto :goto_1d

    :cond_2c
    :goto_1c
    const/4 v10, 0x1

    :cond_2d
    :goto_1d
    const/4 v8, 0x0

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v1

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    if-nez v1, :cond_2e

    goto :goto_1f

    :cond_2e
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_2f

    goto :goto_1f

    :cond_2f
    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_30

    goto :goto_1f

    :cond_30
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_31

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_31

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v1, :cond_31

    move v1, v10

    goto :goto_20

    :cond_31
    :goto_1f
    const/4 v1, 0x0

    :goto_20
    if-eqz v1, :cond_34

    if-eqz v8, :cond_32

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    :cond_32
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v3, v2, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_33

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v5, v3, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    if-ne v5, v4, :cond_33

    iget v2, v2, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    iget v3, v3, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v2, v3, :cond_33

    move v8, v10

    goto :goto_21

    :cond_33
    const/4 v8, 0x0

    :goto_21
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v3, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    xor-int/lit8 v9, v8, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide v7, v3

    move-wide v3, v5

    move-wide/from16 v20, v5

    move-wide v5, v7

    move-wide/from16 v7, v20

    move v15, v10

    move/from16 v10, v17

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    move v8, v15

    move v10, v8

    const-wide/high16 v15, -0x8000000000000000L

    goto/16 :goto_1e

    :cond_34
    move v15, v10

    goto :goto_23

    :cond_35
    :goto_22
    move v15, v8

    move-wide v13, v9

    :goto_23
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v15, :cond_6c

    const/4 v2, 0x4

    if-ne v1, v2, :cond_36

    goto/16 :goto_47

    :cond_36
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const-wide/16 v3, 0xa

    if-nez v1, :cond_37

    invoke-virtual {v0, v11, v12, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    return-void

    :cond_37
    const-string v5, "doSomeWork"

    invoke-static {v5}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    iget-boolean v5, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const-wide/16 v6, 0x3e8

    if-eqz v5, :cond_41

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    mul-long/2addr v8, v6

    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v10, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v3, v6

    invoke-interface {v5, v3, v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(J)V

    move v3, v15

    move v4, v3

    const/4 v6, 0x0

    :goto_24
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v7, v5

    if-ge v6, v7, :cond_40

    aget-object v5, v5, v6

    invoke-static {v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v7

    if-nez v7, :cond_38

    goto :goto_2b

    :cond_38
    iget-wide v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v5, v13, v14, v8, v9}, Landroidx/media3/exoplayer/Renderer;->render(JJ)V

    if-eqz v3, :cond_39

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_39

    move v3, v15

    goto :goto_25

    :cond_39
    const/4 v3, 0x0

    :goto_25
    iget-object v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v7, v7, v6

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v10

    if-eq v7, v10, :cond_3a

    move v7, v15

    goto :goto_26

    :cond_3a
    const/4 v7, 0x0

    :goto_26
    if-nez v7, :cond_3b

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v10

    if-eqz v10, :cond_3b

    move v10, v15

    goto :goto_27

    :cond_3b
    const/4 v10, 0x0

    :goto_27
    if-nez v7, :cond_3d

    if-nez v10, :cond_3d

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v7

    if-eqz v7, :cond_3c

    goto :goto_28

    :cond_3c
    const/4 v7, 0x0

    goto :goto_29

    :cond_3d
    :goto_28
    move v7, v15

    :goto_29
    if-eqz v4, :cond_3e

    if-eqz v7, :cond_3e

    move v4, v15

    goto :goto_2a

    :cond_3e
    const/4 v4, 0x0

    :goto_2a
    if-nez v7, :cond_3f

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->maybeThrowStreamError()V

    :cond_3f
    :goto_2b
    add-int/lit8 v6, v6, 0x1

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_24

    :cond_40
    move v8, v3

    goto :goto_2c

    :cond_41
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v3}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    move v4, v15

    move v8, v4

    :goto_2c
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    if-eqz v8, :cond_43

    iget-boolean v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_43

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v5, v7

    if-eqz v3, :cond_42

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v3, v5, v7

    if-gtz v3, :cond_43

    :cond_42
    move v8, v15

    goto :goto_2d

    :cond_43
    const/4 v8, 0x0

    :goto_2d
    if-eqz v8, :cond_44

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v3, :cond_44

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v6, 0x5

    invoke-virtual {v0, v5, v6, v3, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlayWhenReadyInternal(IIZZ)V

    goto :goto_2e

    :cond_44
    const/4 v3, 0x0

    :goto_2e
    const/4 v5, 0x3

    if-eqz v8, :cond_45

    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-eqz v6, :cond_45

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    goto/16 :goto_3d

    :cond_45
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v7, v6, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_56

    iget v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v7, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v8

    goto/16 :goto_3a

    :cond_46
    if-nez v4, :cond_47

    goto/16 :goto_38

    :cond_47
    iget-boolean v7, v6, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-nez v7, :cond_48

    goto/16 :goto_39

    :cond_48
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v8, v7, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v9, v8, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v9, v9, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v6, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v6

    if-eqz v6, :cond_49

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget-wide v9, v6, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    goto :goto_2f

    :cond_49
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2f
    iget-object v6, v7, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v7, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v7, :cond_4b

    iget-boolean v7, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v7, :cond_4a

    iget-object v7, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v7}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v13

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v7, v13, v20

    if-nez v7, :cond_4b

    :cond_4a
    move v7, v15

    goto :goto_30

    :cond_4b
    move v7, v3

    :goto_30
    if-eqz v7, :cond_4c

    iget-object v7, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v7, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-eqz v7, :cond_4c

    move v7, v15

    goto :goto_31

    :cond_4c
    move v7, v3

    :goto_31
    iget-object v13, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v13, v13, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v13}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v13

    if-eqz v13, :cond_4d

    iget-boolean v6, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v6, :cond_4d

    move v6, v15

    goto :goto_32

    :cond_4d
    move v6, v3

    :goto_32
    if-nez v7, :cond_55

    if-nez v6, :cond_55

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v7, v8, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v8, v8, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v8, :cond_4e

    const-wide/16 v2, 0x0

    goto :goto_33

    :cond_4e
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v13, v8, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v2, v13

    sub-long/2addr v6, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v2, v6

    :goto_33
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-boolean v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    check-cast v8, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v6, v13

    if-nez v13, :cond_4f

    goto :goto_34

    :cond_4f
    long-to-double v2, v2

    float-to-double v13, v6

    div-double/2addr v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    :goto_34
    if-eqz v7, :cond_50

    iget-wide v6, v8, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_35

    :cond_50
    iget-wide v6, v8, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    :goto_35
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v21, v9, v13

    if-eqz v21, :cond_51

    const-wide/16 v13, 0x2

    div-long/2addr v9, v13

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_51
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-lez v9, :cond_53

    cmp-long v2, v2, v6

    if-gez v2, :cond_53

    iget-object v2, v8, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter v2

    :try_start_0
    iget v3, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v6, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v3, v6

    monitor-exit v2

    iget v2, v8, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytes:I

    if-lt v3, v2, :cond_52

    goto :goto_36

    :cond_52
    const/4 v8, 0x0

    goto :goto_37

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_53
    :goto_36
    move v8, v15

    :goto_37
    if-eqz v8, :cond_54

    goto :goto_39

    :cond_54
    :goto_38
    const/4 v8, 0x0

    goto :goto_3a

    :cond_55
    :goto_39
    move v8, v15

    :goto_3a
    if-eqz v8, :cond_56

    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_3e

    :cond_56
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v2, v5, :cond_5f

    iget v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v2, :cond_57

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_3e

    :cond_57
    if-nez v4, :cond_5f

    :cond_58
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v2

    iput-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz v2, :cond_5e

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_3b
    if-eqz v2, :cond_5b

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v3, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v4, :cond_5a

    aget-object v7, v3, v6

    if-eqz v7, :cond_59

    invoke-interface {v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onRebuffer()V

    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    :cond_5a
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3b

    :cond_5b
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget-wide v3, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v3, v6

    if-nez v8, :cond_5c

    goto :goto_3d

    :cond_5c
    iget-wide v8, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    add-long/2addr v3, v8

    iput-wide v3, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iget-wide v8, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_5d

    cmp-long v3, v3, v8

    if-lez v3, :cond_5d

    iput-wide v8, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_5d
    iput-wide v6, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    :cond_5e
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    :cond_5f
    :goto_3e
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_62

    const/4 v6, 0x0

    :goto_3f
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v3, v2

    if-ge v6, v3, :cond_61

    aget-object v2, v2, v6

    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v2, v2, v6

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v2

    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v3, v3, v6

    if-ne v2, v3, :cond_60

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    aget-object v2, v2, v6

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->maybeThrowStreamError()V

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_61
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-nez v2, :cond_62

    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-gez v1, :cond_62

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v1

    if-eqz v1, :cond_62

    move v8, v15

    goto :goto_40

    :cond_62
    const/4 v8, 0x0

    :goto_40
    if-nez v8, :cond_63

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_41

    :cond_63
    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_64

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    check-cast v1, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :goto_41
    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_42

    :cond_64
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    check-cast v1, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xfa0

    cmp-long v1, v1, v3

    if-gez v1, :cond_6b

    :goto_42
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v1, v5, :cond_65

    move v8, v15

    goto :goto_43

    :cond_65
    const/4 v8, 0x0

    :goto_43
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    const/16 v49, 0x0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v2, :cond_66

    new-instance v2, Landroidx/media3/exoplayer/PlaybackInfo;

    move-object/from16 v24, v2

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    move-object/from16 v25, v3

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v26, v3

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    move-wide/from16 v27, v3

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    move-wide/from16 v29, v3

    iget v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    move/from16 v31, v3

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    move-object/from16 v32, v3

    iget-boolean v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    move/from16 v33, v3

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-object/from16 v34, v3

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-object/from16 v35, v3

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object/from16 v36, v3

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v37, v3

    iget-boolean v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    move/from16 v38, v3

    iget v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v39, v3

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    move-object/from16 v40, v3

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v41, v3

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v43, v3

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-wide/from16 v45, v3

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUpdateTimeMs:J

    move-wide/from16 v47, v3

    invoke-direct/range {v24 .. v49}, Landroidx/media3/exoplayer/PlaybackInfo;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZILandroidx/media3/common/PlaybackParameters;JJJJZ)V

    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_66
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_67

    goto :goto_46

    :cond_67
    if-nez v8, :cond_69

    const/4 v2, 0x2

    if-ne v1, v2, :cond_68

    goto :goto_44

    :cond_68
    if-ne v1, v5, :cond_6a

    iget v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-eqz v1, :cond_6a

    const-wide/16 v3, 0x3e8

    goto :goto_45

    :cond_69
    :goto_44
    const-wide/16 v3, 0xa

    :goto_45
    invoke-virtual {v0, v11, v12, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    :cond_6a
    :goto_46
    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    return-void

    :cond_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Playback stuck buffering and not loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    :goto_47
    return-void
.end method

.method public final enableRenderers([Z)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v7, v6

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    if-ge v5, v7, :cond_1

    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v6, v5

    invoke-interface {v8, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v6, v6, v5

    invoke-interface {v6}, Landroidx/media3/exoplayer/Renderer;->reset()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    array-length v7, v6

    const/4 v9, 0x1

    if-ge v5, v7, :cond_a

    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8

    aget-boolean v7, p1, v5

    aget-object v14, v6, v5

    invoke-static {v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v10, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v11, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v10, v11, :cond_3

    move/from16 v17, v9

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    :goto_2
    iget-object v11, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v12, v11, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v12, v12, v5

    iget-object v11, v11, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v11, v11, v5

    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v13

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    new-array v15, v13, [Landroidx/media3/common/Format;

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v13, :cond_5

    invoke-interface {v11, v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v16

    aput-object v16, v15, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v11, 0x3

    if-ne v4, v11, :cond_6

    move v4, v9

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-nez v7, :cond_7

    if-eqz v4, :cond_7

    move/from16 v16, v9

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    iget v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/2addr v7, v9

    iput v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v7, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v13, v7, v5

    move-object/from16 v22, v6

    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v10}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v18

    iget-wide v9, v10, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    move-wide/from16 v20, v9

    move-object v10, v14

    move-object v11, v12

    move-object v12, v15

    move-object v9, v14

    move-wide v14, v6

    invoke-interface/range {v10 .. v21}, Landroidx/media3/exoplayer/Renderer;->enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJ)V

    new-instance v6, Lcom/google/gson/FieldAttributes;

    const/16 v7, 0x8

    invoke-direct {v6, v0, v7}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/Object;I)V

    const/16 v7, 0xb

    invoke-interface {v9, v7, v6}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Landroidx/media3/exoplayer/Renderer;->getMediaClock()V

    if-eqz v4, :cond_9

    invoke-interface {v9}, Landroidx/media3/exoplayer/Renderer;->start()V

    goto :goto_8

    :cond_8
    :goto_7
    move-object/from16 v22, v6

    :cond_9
    :goto_8
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v22

    goto/16 :goto_1

    :cond_a
    iput-boolean v9, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    return-void
.end method

.method public final getLiveOffsetUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-wide p1, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide p1, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr p1, v1

    :goto_0
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p0

    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr p3, v0

    sub-long/2addr p0, p3

    return-wide p0

    :cond_2
    :goto_1
    return-wide v1
.end method

.method public final getMaxRendererReadPositionUs()J
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v5, v4, v3

    invoke-static {v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, v4, v3

    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v5

    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    aget-object v4, v4, v3

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method public final getPlaceholderFirstMediaPeriodPositionUs(Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v6

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, p0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget p1, v3, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result p1

    iget v0, v3, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v1, p0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    :cond_1
    move-wide v4, v1

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final handleContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne v3, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-wide v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    if-eqz v0, :cond_3

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-boolean p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_3

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v3, v0

    invoke-interface {p1, v3, v4}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method public final handleIoException(Ljava/io/IOException;I)V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    :cond_0
    const-string p1, "ExoPlayerImplInternal"

    const-string p2, "Playback error"

    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    return-void
.end method

.method public final handleLoadingMediaPeriodChanged(Z)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v1}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    if-nez v0, :cond_2

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const-wide/16 v6, 0x0

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v10, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v8, v10

    sub-long/2addr v3, v8

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_2
    iput-wide v6, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    if-nez v2, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    if-eqz v0, :cond_5

    iget-boolean p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_5

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    :cond_5
    return-void
.end method

.method public final handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V
    .locals 37

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v9, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v10, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v13, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v14, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v15, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    sget-object v19, Landroidx/media3/exoplayer/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const-wide/16 v20, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v26}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    move-object v7, v0

    const/4 v15, -0x1

    goto/16 :goto_17

    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    iget-object v5, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v5, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v19, 0x1

    :goto_1
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v19, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v6, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_3

    :cond_4
    :goto_2
    iget-wide v6, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    :goto_3
    move-wide/from16 v22, v6

    if-eqz v8, :cond_8

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object v7, v2

    move-object v2, v8

    move-object v6, v3

    move v3, v5

    move v5, v10

    move-object/from16 v27, v6

    move-object v6, v13

    move-object/from16 v29, v7

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v12, v10}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move-wide/from16 v3, v22

    move-object/from16 v2, v29

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_6

    :cond_5
    iget-wide v2, v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v2, v2, v16

    if-nez v2, :cond_6

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v12, v1, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v7, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move-wide/from16 v3, v22

    move-object/from16 v2, v29

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v6, 0x1

    const/4 v7, -0x1

    :goto_4
    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v1, v15, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    move v5, v6

    move v6, v1

    move v1, v7

    const/4 v7, 0x0

    :goto_6
    move/from16 v36, v6

    move v6, v5

    move/from16 v5, v36

    goto :goto_7

    :cond_8
    move-object/from16 v29, v2

    move-object/from16 v27, v3

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v12, v10}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move-wide/from16 v3, v22

    move-object/from16 v2, v29

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_7
    move/from16 v33, v5

    move/from16 v35, v6

    move/from16 v34, v7

    move-object/from16 v7, v27

    const/4 v15, -0x1

    :goto_8
    move v5, v1

    goto/16 :goto_d

    :cond_9
    move-object/from16 v8, v29

    invoke-virtual {v12, v8}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_b

    iget-object v6, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v10

    move-object v5, v8

    move v15, v7

    move-object/from16 v7, p1

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSubsequentPeriod(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {v12, v10}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    const/4 v6, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v12, v1, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    const/4 v6, 0x0

    :goto_9
    move v7, v1

    move v5, v6

    goto :goto_a

    :cond_b
    move v15, v7

    cmp-long v1, v22, v16

    if-nez v1, :cond_c

    invoke-virtual {v12, v8, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move v7, v1

    const/4 v5, 0x0

    :goto_a
    move v1, v7

    move-object/from16 v7, v27

    goto :goto_c

    :cond_c
    if-eqz v19, :cond_e

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    move-object/from16 v7, v27

    iget-object v2, v7, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v2, v14, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v1, v2, v13}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, v7, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_d

    iget-wide v1, v14, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v5, v22, v1

    invoke-virtual {v12, v8, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v4, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_b

    :cond_d
    move-object v2, v8

    move-wide/from16 v3, v22

    :goto_b
    move v5, v15

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    goto :goto_d

    :cond_e
    move-object/from16 v7, v27

    move v1, v15

    const/4 v5, 0x0

    :goto_c
    move/from16 v34, v5

    move-object v2, v8

    move-wide/from16 v3, v22

    const/16 v33, 0x0

    const/16 v35, 0x0

    goto/16 :goto_8

    :goto_d
    if-eq v5, v15, :cond_f

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move v4, v5

    move-wide/from16 v5, v20

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v31, v16

    goto :goto_e

    :cond_f
    move-wide/from16 v31, v3

    :goto_e
    invoke-virtual {v9, v12, v2, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iget v5, v1, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v5, v15, :cond_11

    iget v6, v7, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v6, v15, :cond_10

    if-lt v5, v6, :cond_10

    goto :goto_f

    :cond_10
    const/4 v6, 0x0

    goto :goto_10

    :cond_11
    :goto_f
    const/4 v6, 0x1

    :goto_10
    iget-object v5, v7, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v7}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {v1}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v5

    if-nez v5, :cond_12

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    goto :goto_11

    :cond_12
    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v12, v2, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    if-nez v19, :cond_15

    cmp-long v5, v22, v31

    if-nez v5, :cond_15

    iget-object v5, v7, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v8, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_13

    :cond_13
    invoke-virtual {v7}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v5

    if-eqz v5, :cond_14

    iget v5, v7, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v8

    if-eqz v8, :cond_14

    iget v8, v7, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v2, v5, v8}, Landroidx/media3/common/Timeline$Period;->getAdState(II)I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_15

    invoke-virtual {v2, v5, v8}, Landroidx/media3/common/Timeline$Period;->getAdState(II)I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_15

    goto :goto_12

    :cond_14
    invoke-virtual {v1}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_12
    const/4 v2, 0x1

    goto :goto_14

    :cond_15
    :goto_13
    const/4 v2, 0x0

    :goto_14
    if-nez v6, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    move-object v1, v7

    :cond_17
    invoke-virtual {v1}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v7}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_15

    :cond_18
    iget-object v0, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v12, v0, v14}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v0, v1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    iget v2, v1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v14, v2}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v2

    if-ne v0, v2, :cond_19

    iget-object v0, v14, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v2, v0, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    goto :goto_15

    :cond_19
    const-wide/16 v2, 0x0

    :goto_15
    move-wide/from16 v29, v2

    goto :goto_16

    :cond_1a
    move-wide/from16 v29, v3

    :goto_16
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-object/from16 v27, v0

    move-object/from16 v28, v1

    invoke-direct/range {v27 .. v35}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    move-object v7, v0

    :goto_17
    iget-object v9, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v13, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    iget-boolean v6, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    iget-wide v3, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v9}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_1b

    goto :goto_18

    :cond_1b
    const/4 v10, 0x0

    goto :goto_19

    :cond_1c
    :goto_18
    const/4 v10, 0x1

    :goto_19
    const/4 v8, 0x0

    const/16 v19, 0x3

    :try_start_0
    iget-boolean v0, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_1e

    :try_start_1
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x1

    const/4 v2, 0x4

    if-eq v0, v5, :cond_1d

    :try_start_2
    invoke-virtual {v11, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1a

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1d
    :goto_1a
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v11, v1, v1, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    goto :goto_1c

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x1

    :goto_1b
    move v15, v1

    move/from16 v18, v2

    move-wide/from16 v22, v3

    move/from16 v24, v5

    goto/16 :goto_23

    :cond_1e
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v5, 0x1

    :goto_1c
    if-nez v10, :cond_1f

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-wide v5, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getMaxRendererReadPositionUs()J

    move-result-wide v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v15, v1

    move-object v1, v0

    move/from16 v18, v2

    move-object/from16 v2, p1

    move-wide/from16 v22, v3

    move-wide v3, v5

    const/16 v24, 0x1

    move-wide/from16 v5, v20

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateQueuedPeriods(Landroidx/media3/common/Timeline;JJ)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v11, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_1f

    :catchall_2
    move-exception v0

    move v15, v1

    move/from16 v18, v2

    move-wide/from16 v22, v3

    const/16 v24, 0x1

    goto/16 :goto_23

    :catchall_3
    move-exception v0

    goto :goto_1b

    :cond_1f
    move v15, v1

    move/from16 v18, v2

    move-wide/from16 v22, v3

    move/from16 v24, v5

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_1d
    if-eqz v0, :cond_21

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v9}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {v1, v12, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->updateClipping()V

    :cond_20
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_1d

    :cond_21
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v1, v0, :cond_22

    move/from16 v5, v24

    goto :goto_1e

    :cond_22
    move v5, v15

    :goto_1e
    move-object/from16 v1, p0

    move-object v2, v9

    move-wide/from16 v3, v22

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-wide/from16 v22, v0

    :cond_23
    :goto_1f
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-boolean v0, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v0, :cond_24

    move-wide/from16 v6, v22

    goto :goto_20

    :cond_24
    move-wide/from16 v6, v16

    :goto_20
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v15, v8

    move v8, v0

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    if-nez v10, :cond_25

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v0, v13, v0

    if-eqz v0, :cond_28

    :cond_25
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    if-eqz v10, :cond_26

    if-eqz p2, :cond_26

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-nez v0, :cond_26

    goto :goto_21

    :cond_26
    const/16 v24, 0x0

    :goto_21
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-virtual {v12, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    move/from16 v10, v18

    goto :goto_22

    :cond_27
    move/from16 v10, v19

    :goto_22
    move-object/from16 v1, p0

    move-object v2, v9

    move-wide/from16 v3, v22

    move-wide v5, v13

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v11, v12, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePositions(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iput-object v15, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_29
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void

    :catchall_4
    move-exception v0

    :goto_23
    move-object v15, v8

    goto :goto_24

    :catchall_5
    move-exception v0

    move-wide/from16 v22, v3

    move-object v15, v8

    const/16 v18, 0x4

    const/16 v24, 0x1

    :goto_24
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-boolean v1, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v1, :cond_2a

    move-wide/from16 v6, v22

    goto :goto_25

    :cond_2a
    move-wide/from16 v6, v16

    :goto_25
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    if-nez v10, :cond_2b

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v1, v13, v1

    if-eqz v1, :cond_2e

    :cond_2b
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    if-eqz v10, :cond_2c

    if-eqz p2, :cond_2c

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-nez v1, :cond_2c

    goto :goto_26

    :cond_2c
    const/16 v24, 0x0

    :goto_26
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-virtual {v12, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    move/from16 v10, v18

    goto :goto_27

    :cond_2d
    move/from16 v10, v19

    :goto_27
    move-object/from16 v1, p0

    move-object v2, v9

    move-wide/from16 v3, v22

    move-wide v5, v13

    move/from16 v9, v24

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v11, v12, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePositions(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1, v12}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    iput-object v15, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_2f
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    const-string v1, "Playback error"

    const-string v2, "ExoPlayerImplInternal"

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    const/4 v11, 0x0

    const/4 v12, 0x1

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v11

    :pswitch_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    invoke-virtual {p0, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    invoke-virtual {p0, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto/16 :goto_a

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setOffloadSchedulingEnabledInternal(Z)V

    goto/16 :goto_a

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v0, v12

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPauseAtEndOfWindowInternal(Z)V

    goto/16 :goto_a

    :pswitch_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceListUpdateRequestedInternal()V

    goto/16 :goto_a

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setShuffleOrderInternal(Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    goto/16 :goto_a

    :pswitch_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {p0, v5, v6, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->removeMediaItemsInternal(IILandroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    goto/16 :goto_a

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->moveMediaItemsInternal()V

    throw v3

    :pswitch_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->addMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    goto/16 :goto_a

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    goto/16 :goto_a

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    iget v5, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {p0, v0, v5, v12, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    goto/16 :goto_a

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTargetThread(Landroidx/media3/exoplayer/PlayerMessage;)V

    goto/16 :goto_a

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageInternal(Landroidx/media3/exoplayer/PlayerMessage;)V

    goto/16 :goto_a

    :pswitch_d
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    move v5, v12

    goto :goto_2

    :cond_2
    move v5, v11

    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_a

    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v0, v12

    goto :goto_3

    :cond_3
    move v0, v11

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    goto/16 :goto_a

    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    goto/16 :goto_a

    :pswitch_10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    goto/16 :goto_a

    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    goto/16 :goto_a

    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePeriodPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    goto/16 :goto_a

    :pswitch_13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseInternal()V

    return v12

    :pswitch_14
    invoke-virtual {p0, v11, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    goto/16 :goto_a

    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/SeekParameters;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    goto/16 :goto_a

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlaybackParametersInternal(Landroidx/media3/common/PlaybackParameters;)V

    goto/16 :goto_a

    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    goto/16 :goto_a

    :pswitch_18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->doSomeWork()V

    goto/16 :goto_a

    :pswitch_19
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v12

    goto :goto_4

    :cond_4
    move v5, v11

    :goto_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v12, v5, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlayWhenReadyInternal(IIZZ)V

    goto/16 :goto_a

    :pswitch_1a
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prepareInternal()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    instance-of v3, v0, Ljava/lang/IllegalStateException;

    if-nez v3, :cond_5

    instance-of v3, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_6

    :cond_5
    const/16 v4, 0x3ec

    :cond_6
    new-instance v3, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v0, v4}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    invoke-static {v2, v1, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catch_1
    move-exception v0

    const/16 v1, 0x7d0

    goto :goto_7

    :catch_2
    move-exception v0

    iget v1, v0, Landroidx/media3/datasource/DataSourceException;->reason:I

    goto :goto_7

    :catch_3
    move-exception v0

    iget-boolean v1, v0, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    iget v2, v0, Landroidx/media3/common/ParserException;->dataType:I

    if-ne v2, v12, :cond_8

    if-eqz v1, :cond_7

    const/16 v1, 0xbb9

    goto :goto_5

    :cond_7
    const/16 v1, 0xbbb

    :goto_5
    move v4, v1

    goto :goto_6

    :cond_8
    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    if-eqz v1, :cond_9

    const/16 v1, 0xbba

    goto :goto_5

    :cond_9
    const/16 v1, 0xbbc

    goto :goto_5

    :cond_a
    :goto_6
    invoke-virtual {p0, v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_a

    :catch_4
    move-exception v0

    iget v1, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    :goto_7
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_a

    :catch_5
    move-exception v0

    iget v4, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    if-ne v4, v12, :cond_b

    iget-object v4, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v4, :cond_b

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    :cond_b
    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v4, :cond_d

    const-string v1, "Recoverable renderer error"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iput-object v3, v0, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    sget-object v3, Landroidx/media3/common/util/SystemHandlerWrapper;->messagePool:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_c

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    monitor-exit v3

    goto :goto_a

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_e
    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget v1, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v1, v12, :cond_10

    iget-object v1, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v1, v2, :cond_10

    :goto_8
    iget-object v1, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v1, v2, :cond_f

    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_8

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v7, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v3, v7

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_10
    move-object v3, v0

    :goto_9
    invoke-virtual {p0, v12, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :goto_a
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    return v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handlePeriodPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x1

    if-eqz v7, :cond_0

    iget-object v2, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-ne v2, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iput-boolean v1, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    iget-object v1, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    iput-object v1, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v7, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLandroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    iget-object v1, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v8

    if-eqz v1, :cond_2

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    const-wide/16 v3, 0x1

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_2
    const/4 v5, 0x0

    iget-object v1, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v1, v1

    new-array v6, v1, [Z

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v1

    iget-wide v3, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object v5, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v8, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v8, v1

    add-long/2addr v8, v3

    iput-wide v8, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    invoke-virtual {v5, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    iput-object v1, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v7, v0, :cond_3

    iget-object v0, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v6, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v8, 0x0

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method public final handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V
    .locals 4

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_1
    iget p3, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p4, p4, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_4

    iget-object v1, p4, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    invoke-interface {v3, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p4, p4, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length p3, p0

    :goto_2
    if-ge v0, p3, :cond_6

    aget-object p4, p0, v0

    if-eqz p4, :cond_5

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-interface {p4, p2, v1}, Landroidx/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p4

    move/from16 v2, p9

    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    const/4 v7, 0x0

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v3, p2, v8

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v10, v3, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-boolean v11, v11, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-eqz v11, :cond_9

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_2

    sget-object v8, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_2

    :cond_2
    iget-object v8, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_2
    if-nez v3, :cond_3

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_3

    :cond_3
    iget-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_3
    iget-object v10, v9, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    new-instance v11, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v11}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    array-length v12, v10

    move v13, v7

    move v14, v13

    :goto_4
    if-ge v13, v12, :cond_6

    aget-object v15, v10, v13

    if-eqz v15, :cond_5

    invoke-interface {v15, v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v15

    iget-object v15, v15, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v15, :cond_4

    new-instance v15, Landroidx/media3/common/Metadata;

    new-array v6, v7, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v15, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    const/4 v14, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object v6

    goto :goto_6

    :cond_7
    sget-object v6, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v6, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    :goto_6
    if-eqz v3, :cond_8

    iget-object v10, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v11, v10, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v11, v11, v4

    if-eqz v11, :cond_8

    invoke-virtual {v10, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v10

    iput-object v10, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    :cond_8
    move-object v12, v6

    move-object v10, v8

    move-object v11, v9

    goto :goto_7

    :cond_9
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    sget-object v8, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    move-object v10, v3

    move-object v11, v6

    move-object v12, v8

    goto :goto_7

    :cond_a
    move-object v11, v9

    move-object v12, v10

    move-object v10, v8

    :goto_7
    if-eqz p8, :cond_d

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-boolean v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    if-eqz v6, :cond_c

    iget v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    const/4 v8, 0x5

    if-eq v6, v8, :cond_c

    if-ne v2, v8, :cond_b

    const/4 v6, 0x1

    goto :goto_8

    :cond_b
    move v6, v7

    :goto_8
    invoke-static {v6}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    goto :goto_9

    :cond_c
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iput-boolean v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    iput v2, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    :cond_d
    :goto_9
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_e

    const-wide/16 v8, 0x0

    goto :goto_a

    :cond_e
    iget-wide v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v8, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v13, v8

    sub-long/2addr v6, v13

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v8, v6

    :goto_a
    move-object v0, v2

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isLoadingPossible()Z
    .locals 5

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v1

    :goto_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isTimelineReady()Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybeContinueLoading()V
    .locals 11

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v5

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v2, :cond_2

    move-wide v5, v3

    goto :goto_1

    :cond_2
    iget-wide v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v9, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v7, v9

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v7, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-virtual {v0, v2, v5, v6}, Landroidx/media3/exoplayer/DefaultLoadControl;->shouldContinueLoading(FJ)Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/32 v7, 0x7a120

    cmp-long v2, v5, v7

    if-gez v2, :cond_5

    iget-wide v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    cmp-long v2, v7, v3

    if-gtz v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-virtual {v0, v2, v5, v6}, Landroidx/media3/exoplayer/DefaultLoadControl;->shouldContinueLoading(FJ)Z

    move-result v0

    :cond_5
    :goto_3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v2, v4

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(J)Z

    :cond_7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updateIsLoading()V

    return-void
.end method

.method public final maybeNotifyPlaybackInfoChanged()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eq v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v1, v0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    :cond_1
    return-void
.end method

.method public final mediaSourceListUpdateRequestedInternal()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final moveMediaItemsInternal()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    return-void
.end method

.method public final onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    return-void
.end method

.method public final prepareInternal()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->reset(Z)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    check-cast v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-boolean v5, v4, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    xor-int/2addr v5, v1

    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-object v2, v4, Landroidx/media3/exoplayer/MediaSourceList;->mediaTransferListener:Landroidx/media3/datasource/TransferListener;

    :goto_1
    iget-object v2, v4, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/MediaSourceList;->prepareChildSource(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    iget-object v5, v4, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v1, v4, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final releaseInternal()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroidx/media3/exoplayer/RendererCapabilities;->clearListener()V

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/DefaultLoadControl;->reset(Z)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final removeMediaItemsInternal(IILandroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v3, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-object p3, v0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList;->removeMediaSourcesInternal(II)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final reselectTracksInternal()V
    .locals 20

    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object v3, v2

    const/4 v2, 0x1

    :goto_0
    if-eqz v3, :cond_f

    iget-boolean v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v4, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v3, v0, v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLandroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v13

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/16 v18, 0x0

    if-eqz v4, :cond_4

    iget-object v5, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v5, v5

    iget-object v6, v13, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v7, v6

    if-eq v5, v7, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v5, v18

    :goto_1
    array-length v7, v6

    if-ge v5, v7, :cond_3

    invoke-virtual {v13, v4, v5}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    move/from16 v4, v18

    :goto_3
    if-nez v4, :cond_d

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    const/4 v9, 0x4

    if-eqz v2, :cond_a

    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0, v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v16

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v0, v0

    new-array v6, v0, [Z

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v14, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-object v12, v8

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v12

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v9, :cond_5

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, v12, v0

    if-eqz v0, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    move/from16 v14, v18

    :goto_4
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object/from16 v19, v6

    move-wide/from16 v6, v16

    move-object v11, v8

    move v8, v14

    move v9, v15

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eqz v14, :cond_6

    invoke-virtual {v10, v12, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :cond_6
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    move/from16 v1, v18

    :goto_5
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    aget-object v2, v2, v1

    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v3

    aput-boolean v3, v0, v1

    iget-object v4, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v4, v4, v1

    if-eqz v3, :cond_8

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v3

    if-eq v4, v3, :cond_7

    invoke-virtual {v10, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(Landroidx/media3/exoplayer/Renderer;)V

    goto :goto_6

    :cond_7
    aget-boolean v3, v19, v1

    if-eqz v3, :cond_8

    iget-wide v3, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v10, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([Z)V

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    iget-boolean v0, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_b

    iget-object v0, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v6, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const/4 v7, 0x0

    iget-object v0, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    array-length v0, v0

    new-array v8, v0, [Z

    move-object v4, v13

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    :cond_b
    :goto_7
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_c
    return-void

    :cond_d
    const/4 v4, 0x1

    if-ne v3, v1, :cond_e

    move/from16 v2, v18

    :cond_e
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto/16 :goto_0

    :cond_f
    :goto_8
    return-void
.end method

.method public final resetInternal(ZZZZ)V
    .locals 31

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iput-boolean v3, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-boolean v4, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    iput-boolean v3, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    :cond_0
    const-wide v4, 0xe8d4a51000L

    iput-wide v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v5, v4

    move v6, v3

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_1

    aget-object v0, v4, v6

    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(Landroidx/media3/exoplayer/Renderer;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "Disable failed."

    invoke-static {v7, v8, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v0, v4, v6

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    invoke-static {v7, v0, v8}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_7

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v9, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v9, v9, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v9, v8}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v7

    :goto_5
    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_7

    :cond_7
    :goto_6
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    :goto_7
    if-eqz p2, :cond_8

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v4, v0}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    move v7, v3

    :goto_8
    move-wide/from16 v26, v5

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->clear()V

    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    if-eqz p3, :cond_a

    instance-of v5, v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    if-eqz v5, :cond_a

    check-cast v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object v6, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->timelines:[Landroidx/media3/common/Timeline;

    array-length v10, v6

    new-array v10, v10, [Landroidx/media3/common/Timeline;

    move v11, v3

    :goto_9
    array-length v12, v6

    if-ge v11, v12, :cond_9

    new-instance v12, Landroidx/media3/exoplayer/PlaylistTimeline$1;

    aget-object v13, v6, v11

    invoke-direct {v12, v0, v13}, Landroidx/media3/exoplayer/PlaylistTimeline$1;-><init>(Landroidx/media3/exoplayer/PlaylistTimeline;Landroidx/media3/common/Timeline;)V

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_9
    new-instance v6, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->uids:[Ljava/lang/Object;

    invoke-direct {v6, v10, v0, v5}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    iget v0, v4, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_b

    iget-object v0, v4, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6, v0, v5}, Landroidx/media3/exoplayer/PlaylistTimeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v6, v0, v5}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v4, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v10, v4, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v0, v10, v11, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(JLjava/lang/Object;)V

    move-object v4, v0

    goto :goto_a

    :cond_a
    move-object v6, v0

    :cond_b
    :goto_a
    move-object/from16 v18, v4

    new-instance v0, Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v12, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eqz p4, :cond_c

    goto :goto_b

    :cond_c
    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    :goto_b
    move-object v13, v2

    const/4 v14, 0x0

    if-eqz v7, :cond_d

    sget-object v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_c

    :cond_d
    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_c
    move-object v15, v2

    if-eqz v7, :cond_e

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_d

    :cond_e
    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_d
    move-object/from16 v16, v2

    if-eqz v7, :cond_f

    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_e

    :cond_f
    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_e
    move-object/from16 v17, v2

    iget-boolean v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    move/from16 v19, v2

    iget v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v20, v2

    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    move-object/from16 v21, v2

    const-wide/16 v24, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    move-object v5, v0

    move-object/from16 v7, v18

    move-wide/from16 v10, v26

    move-wide/from16 v22, v26

    invoke-direct/range {v5 .. v30}, Landroidx/media3/exoplayer/PlaybackInfo;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZILandroidx/media3/common/PlaybackParameters;JJJJZ)V

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    if-eqz p3, :cond_11

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    :try_start_2
    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/BaseMediaSource;->releaseSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    const-string v6, "MediaSourceList"

    const-string v7, "Failed to release child source."

    invoke-static {v6, v7, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    iget-object v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeEventListener(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/BaseMediaSource;->removeDrmEventListener(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    goto :goto_f

    :cond_10
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v0, v1, Landroidx/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-boolean v3, v1, Landroidx/media3/exoplayer/MediaSourceList;->isPrepared:Z

    :cond_11
    return-void
.end method

.method public final resetPendingPauseAtEndOfPeriod()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    return-void
.end method

.method public final resetRendererPosition(J)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_0

    const-wide v1, 0xe8d4a51000L

    :goto_0
    add-long/2addr p1, v1

    goto :goto_1

    :cond_0
    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    goto :goto_0

    :goto_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v1, v1, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, p2, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v3, v4, v5}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_3
    if-eqz p0, :cond_5

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length p2, p1

    move v0, v1

    :goto_4
    if-ge v0, p2, :cond_4

    aget-object v2, p1, v0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onDiscontinuity()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final resolvePendingMessagePositions(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V
    .locals 10

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final scheduleNextWork(JJ)V
    .locals 0

    add-long/2addr p1, p3

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object p0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final seekToCurrentPosition(Z)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_0
    return-void
.end method

.method public final seekToInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    const/4 v3, 0x1

    iget v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v6, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    if-nez v1, :cond_0

    iget-object v6, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v11, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v6

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v6, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v8

    goto :goto_3

    :cond_0
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    move-wide v9, v4

    goto :goto_0

    :cond_1
    move-wide v9, v12

    :goto_0
    iget-object v14, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v15, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v15, v15, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v14, v15, v6, v12, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v6, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v12, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v4, v5, v12}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget v5, v6, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v4, v5}, Landroidx/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    iget v5, v6, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    if-ne v4, v5, :cond_2

    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v4, v4, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v4, v4, Landroidx/media3/common/AdPlaybackState;->adResumePositionUs:J

    goto :goto_1

    :cond_2
    move-wide v4, v2

    :goto_1
    move-wide v12, v4

    move-wide v14, v9

    move-object v9, v6

    move v10, v8

    goto :goto_4

    :cond_3
    iget-wide v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v4, v14, v4

    if-nez v4, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v7

    :goto_2
    move-object/from16 v18, v6

    move v6, v4

    move-wide v4, v9

    move-object/from16 v9, v18

    :goto_3
    move-wide v14, v4

    move v10, v6

    :goto_4
    :try_start_0
    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    goto :goto_5

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v8, :cond_6

    invoke-virtual {v11, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    :cond_6
    invoke-virtual {v11, v7, v8, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :goto_5
    move-wide v7, v12

    goto :goto_7

    :cond_7
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v9, v1}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_8

    iget-boolean v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_8

    cmp-long v2, v12, v2

    if-eqz v2, :cond_8

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {v1, v12, v13, v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v12

    :goto_6
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    iget-object v5, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    :cond_9
    iget-wide v7, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_7
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v14

    move v9, v10

    move v10, v0

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    return-void

    :cond_a
    move-wide v3, v1

    goto :goto_8

    :cond_b
    move-wide v3, v12

    :goto_8
    :try_start_1
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v1, v0, :cond_c

    move v6, v8

    goto :goto_9

    :cond_c
    move v6, v7

    :goto_9
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v1, v0, :cond_d

    move v5, v8

    goto :goto_a

    :cond_d
    move v5, v7

    :goto_a
    move-object/from16 v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v0, v12, v16

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    move v8, v7

    :goto_b
    or-int/2addr v10, v8

    :try_start_2
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v14

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v7, v16

    goto :goto_7

    :catchall_0
    move-exception v0

    move-wide/from16 v7, v16

    goto :goto_c

    :catchall_1
    move-exception v0

    move-wide v7, v12

    :goto_c
    const/4 v12, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v14

    move v9, v10

    move v10, v12

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    throw v0
.end method

.method public final seekToPeriodPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p5, p5, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    :cond_1
    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, p5, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne v2, v3, :cond_4

    if-eqz v3, :cond_7

    iget-wide v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v4, p2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-gez p1, :cond_7

    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length p4, p1

    move v2, v0

    :goto_2
    if-ge v2, p4, :cond_5

    aget-object v4, p1, v2

    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(Landroidx/media3/exoplayer/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_7

    :goto_3
    iget-object p4, p5, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq p4, v3, :cond_6

    invoke-virtual {p5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_3

    :cond_6
    invoke-virtual {p5, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    const-wide v4, 0xe8d4a51000L

    iput-wide v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    array-length p1, p1

    new-array p1, p1, [Z

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([Z)V

    :cond_7
    if-eqz v3, :cond_a

    invoke-virtual {p5, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->removeAfter(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    iget-boolean p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_8

    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    goto :goto_4

    :cond_8
    iget-boolean p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz p1, :cond_9

    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    iget-wide p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long p4, p2, p4

    invoke-interface {p1, p4, p5}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(J)V

    :cond_9
    :goto_4
    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_5

    :cond_a
    invoke-virtual {p5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->clear()V

    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :goto_5
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method public final sendMessageInternal(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 9

    iget-wide v0, p1, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media3/exoplayer/PlayerMessage;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media3/exoplayer/PlayerMessage;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media3/exoplayer/PlayerMessage;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    move-object v2, v0

    move-object v3, v4

    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePosition(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    :goto_0
    return-void
.end method

.method public final sendMessageToTarget(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 5

    iget-object v0, p1, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    if-ne v0, v1, :cond_2

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p1, Landroidx/media3/exoplayer/PlayerMessage;->target:Landroidx/media3/exoplayer/PlayerMessage$Target;

    iget v3, p1, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    iget-object v4, p1, Landroidx/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 p1, 0x3

    const/4 v0, 0x2

    if-eq p0, p1, :cond_1

    if-ne p0, v0, :cond_3

    :cond_1
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    const/16 p0, 0xf

    invoke-virtual {v2, p0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final sendMessageToTargetThread(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "TAG"

    const-string v0, "Trying to send message on a dead thread."

    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    check-cast v1, Landroidx/media3/common/util/SystemClock;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/SystemClock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/SystemHandlerWrapper;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/SystemHandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final setMediaItemsInternal(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    const/4 v1, -0x1

    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    iget-object v3, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    if-eq v0, v1, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    new-instance v1, Landroidx/media3/exoplayer/PlaylistTimeline;

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-direct {v1, v4, v2}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V

    iget v4, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    iget-wide v5, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    invoke-direct {v0, v1, v4, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroidx/media3/exoplayer/MediaSourceList;->removeMediaSourcesInternal(II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0, v3, v2}, Landroidx/media3/exoplayer/MediaSourceList;->addMediaSources(ILjava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final setOffloadSchedulingEnabledInternal(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public final setPauseAtEndOfWindowInternal(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    :cond_0
    return-void
.end method

.method public final setPlayWhenReadyInternal(IIZZ)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v0, 0x1

    iput-boolean v0, p4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iput-boolean v0, p4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    iput p2, p4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p2, p1, p3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlayWhenReady(IZ)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_0
    if-eqz p2, :cond_2

    iget-object p4, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p4, p4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v0, p4

    move v1, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p4, v1

    if-eqz v2, :cond_0

    invoke-interface {v2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->next:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_2

    :cond_4
    if-ne p1, p3, :cond_5

    :goto_2
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {p0, p3}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_5
    :goto_3
    return-void
.end method

.method public final setPlaybackParametersInternal(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    iget v0, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    return-void
.end method

.method public final setRepeatModeInternal(I)V
    .locals 2

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iput p1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method public final setShuffleModeEnabledInternal(Z)V
    .locals 2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iput-boolean p1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Landroidx/media3/common/Timeline;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method public final setShuffleOrderInternal(Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->shuffled:[I

    array-length v2, v2

    if-eq v2, v1, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    new-instance v3, Ljava/util/Random;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(Ljava/util/Random;)V

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->cloneAndInsert(I)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    move-result-object p1

    :cond_0
    iput-object p1, v0, Landroidx/media3/exoplayer/MediaSourceList;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->createTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Landroidx/media3/common/Timeline;Z)V

    return-void
.end method

.method public final setState(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_1
    return-void
.end method

.method public final shouldPlayWhenReady()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 4

    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz p1, :cond_1

    iget-wide p0, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final startRenderers()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object v1, v1, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->start()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final stopInternal(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    check-cast p1, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/DefaultLoadControl;->reset(Z)V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method public final stopRenderers()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    iput-boolean v1, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRendererEnabled(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->stop()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateIsLoading()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v11, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-eq v11, v2, :cond_2

    new-instance v15, Landroidx/media3/exoplayer/PlaybackInfo;

    move-object v2, v15

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v9, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    iget-object v10, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v12, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v13, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v14, v1, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object/from16 v16, v15

    iget-object v15, v1, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v28, v16

    iget-boolean v0, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    move/from16 v16, v0

    iget v0, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v17, v0

    iget-object v0, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    move-object/from16 v18, v0

    move-object v0, v2

    move-object/from16 v29, v3

    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v21, v2

    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-wide/from16 v23, v2

    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUpdateTimeMs:J

    move-wide/from16 v25, v2

    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v27, v1

    move-object v2, v0

    move-object/from16 v3, v29

    invoke-direct/range {v2 .. v27}, Landroidx/media3/exoplayer/PlaybackInfo;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZILandroidx/media3/common/PlaybackParameters;JJJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_2
    return-void
.end method

.method public final updateLoadControlTrackSelection(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl;

    iget v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    move v2, v1

    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v5, v4

    const/high16 v6, 0xc80000

    if-ge v1, v5, :cond_1

    aget-object v5, p1, v1

    if-eqz v5, :cond_0

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    const/high16 v6, 0x20000

    goto :goto_1

    :pswitch_2
    const/high16 v6, 0x7d00000

    goto :goto_1

    :pswitch_3
    const/high16 v6, 0x89a0000

    goto :goto_1

    :pswitch_4
    move v6, v3

    :goto_1
    :pswitch_5
    add-int/2addr v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    iput v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytes:I

    iget-object p0, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter p0

    :try_start_0
    iget p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge v1, p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput v1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final updatePlaybackPositions()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->playing:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v2

    move-wide v7, v2

    goto :goto_0

    :cond_1
    move-wide v7, v11

    :goto_0
    cmp-long v2, v7, v11

    const/16 v13, 0x10

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v1, v7, v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v9, 0x1

    const/4 v10, 0x5

    move-object/from16 v1, p0

    move-wide v3, v7

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_2
    move-object v1, v0

    goto/16 :goto_11

    :cond_3
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->reading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v1, v3, :cond_4

    move v3, v15

    goto :goto_1

    :cond_4
    move v3, v14

    :goto_1
    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v3, :cond_6

    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v14

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v15

    :goto_3
    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    if-eqz v3, :cond_7

    iput-boolean v15, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    iget-boolean v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    goto :goto_4

    :cond_7
    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Landroidx/media3/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v5

    iget-boolean v7, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_8

    iget-boolean v3, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    iput-boolean v14, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    goto :goto_4

    :cond_8
    iput-boolean v14, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    iget-boolean v7, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz v7, :cond_9

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    :cond_9
    invoke-virtual {v4, v5, v6}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    invoke-interface {v3}, Landroidx/media3/exoplayer/MediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v3

    iget-object v5, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v3, v5}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/StandaloneMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->listener:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v4, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v4, v13, v3}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    :cond_a
    :goto_4
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPositionUs()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v2, v4

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1b

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_b

    goto/16 :goto_f

    :cond_b
    iget-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-eqz v6, :cond_c

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-boolean v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    :cond_c
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v6, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v6}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    iget v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-wide v9, v4

    if-lez v7, :cond_d

    move v8, v6

    move v13, v7

    move-wide v4, v2

    move-wide v6, v4

    move-object v2, v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_7

    :cond_d
    move/from16 v16, v6

    move/from16 v17, v7

    move-wide v4, v2

    move-wide v6, v4

    move-object v2, v0

    move-object v3, v1

    move-object v1, v2

    :goto_5
    move/from16 v8, v16

    move/from16 v13, v17

    const/4 v15, 0x0

    :goto_6
    if-eqz v15, :cond_10

    iget v14, v15, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v14, v8, :cond_e

    if-ne v14, v8, :cond_10

    iget-wide v14, v15, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v14, v14, v9

    if-lez v14, :cond_10

    :cond_e
    add-int/lit8 v13, v13, -0x1

    if-lez v13, :cond_f

    :goto_7
    add-int/lit8 v14, v13, -0x1

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    const/4 v14, 0x0

    goto :goto_6

    :cond_f
    move/from16 v16, v8

    move/from16 v17, v13

    const/16 v13, 0x10

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_11

    goto :goto_a

    :cond_11
    :goto_8
    const/4 v14, 0x0

    :goto_9
    if-eqz v14, :cond_14

    iget-object v15, v14, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v15, :cond_14

    iget v15, v14, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v15, v8, :cond_12

    if-ne v15, v8, :cond_14

    iget-wide v11, v14, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v11, v11, v9

    if-gtz v11, :cond_14

    :cond_12
    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v13, v11, :cond_13

    :goto_a
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_9

    :cond_13
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8

    :cond_14
    :goto_b
    if-eqz v14, :cond_1a

    iget-object v11, v14, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    iget-object v12, v14, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v12, :cond_1a

    iget v12, v14, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v12, v8, :cond_1a

    iget-wide v14, v14, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v12, v14, v9

    if-lez v12, :cond_1a

    cmp-long v12, v14, v6

    if-gtz v12, :cond_1a

    :try_start_0
    invoke-virtual {v2, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTarget(Landroidx/media3/exoplayer/PlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-boolean v12, v11, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    if-nez v12, :cond_16

    monitor-enter v11

    :try_start_1
    iget-boolean v12, v11, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    if-eqz v12, :cond_15

    goto :goto_c

    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v11

    throw v1

    :cond_16
    :goto_c
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v13, v11, :cond_17

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    move-object v14, v11

    goto :goto_b

    :cond_17
    const/4 v14, 0x0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    iget-boolean v0, v11, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    if-nez v0, :cond_18

    monitor-enter v11

    :try_start_2
    iget-boolean v0, v11, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v11

    if-eqz v0, :cond_19

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v1, v0

    monitor-exit v11

    throw v1

    :cond_18
    :goto_e
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_19
    throw v1

    :cond_1a
    iput v13, v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    move-wide v2, v4

    goto :goto_10

    :cond_1b
    :goto_f
    move-object v1, v0

    :goto_10
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iput-wide v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUpdateTimeMs:J

    :goto_11
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    const-wide/16 v6, 0x0

    if-nez v5, :cond_1c

    move-wide v3, v6

    goto :goto_12

    :cond_1c
    iget-wide v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v10, v5, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v8, v10

    sub-long/2addr v3, v8

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :goto_12
    iput-wide v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eqz v3, :cond_26

    iget v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_26

    iget-object v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v3, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v3, v3, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_26

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget-object v8, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v9, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v9, v9, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v10, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-virtual {v0, v8, v9, v10, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getLiveOffsetUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide v8

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v10, v2, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->loading:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v2, :cond_1d

    move-wide v1, v6

    goto :goto_13

    :cond_1d
    iget-wide v12, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    sub-long/2addr v12, v1

    sub-long/2addr v10, v12

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_13
    iget-wide v10, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v10, v12

    if-nez v10, :cond_1e

    goto/16 :goto_19

    :cond_1e
    sub-long v1, v8, v1

    iget-wide v10, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_1f

    iput-wide v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    goto :goto_14

    :cond_1f
    iget v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    long-to-float v7, v10

    mul-float/2addr v7, v6

    sub-float v10, v5, v6

    long-to-float v11, v1

    mul-float/2addr v11, v10

    add-float/2addr v11, v7

    float-to-long v11, v11

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    sub-long/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v11, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    long-to-float v7, v11

    mul-float/2addr v7, v6

    long-to-float v1, v1

    mul-float/2addr v10, v1

    add-float/2addr v10, v7

    float-to-long v6, v10

    :goto_14
    iput-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iget-wide v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v6

    const-wide/16 v6, 0x3e8

    if-eqz v1, :cond_20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v10, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    sub-long/2addr v1, v10

    cmp-long v1, v1, v6

    if-gez v1, :cond_20

    goto/16 :goto_18

    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    iget-wide v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 v10, 0x3

    iget-wide v12, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    mul-long/2addr v12, v10

    add-long v22, v12, v1

    iget-wide v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    cmp-long v1, v1, v22

    const v2, 0x33d6bf95    # 1.0E-7f

    if-lez v1, :cond_23

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v6

    iget v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v1, v5

    long-to-float v6, v6

    mul-float/2addr v1, v6

    float-to-long v10, v1

    iget v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    sub-float/2addr v1, v5

    mul-float/2addr v1, v6

    float-to-long v6, v1

    add-long/2addr v10, v6

    new-array v1, v4, [J

    const/4 v6, 0x0

    aput-wide v22, v1, v6

    iget-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    const/4 v12, 0x1

    aput-wide v6, v1, v12

    iget-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v6, v10

    const/4 v10, 0x2

    aput-wide v6, v1, v10

    move v15, v12

    move-wide/from16 v6, v22

    :goto_15
    if-ge v15, v4, :cond_22

    aget-wide v10, v1, v15

    cmp-long v12, v10, v6

    if-lez v12, :cond_21

    move-wide v6, v10

    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    :cond_22
    iput-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    goto :goto_16

    :cond_23
    iget v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v1, v5

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v2

    float-to-long v6, v1

    sub-long v18, v8, v6

    iget-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    move-wide/from16 v20, v6

    invoke-static/range {v18 .. v23}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v6

    iput-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iget-wide v10, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v10, v12

    if-eqz v1, :cond_24

    cmp-long v1, v6, v10

    if-lez v1, :cond_24

    iput-wide v10, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_24
    :goto_16
    iget-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-wide v10, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    cmp-long v1, v6, v10

    if-gez v1, :cond_25

    goto :goto_17

    :cond_25
    long-to-float v1, v8

    mul-float/2addr v2, v1

    add-float/2addr v2, v5

    iget v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget v4, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :goto_17
    iput v5, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    :goto_18
    iget v5, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    :goto_19
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    new-instance v2, Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-direct {v2, v5, v1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object v1, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    :cond_26
    return-void
.end method

.method public final updatePlaybackSpeedSettingsForNewPeriod(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    iget-object p3, p3, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    const/16 p4, 0x10

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Landroidx/media3/common/PlaybackParameters;FZZ)V

    :cond_1
    return-void

    :cond_2
    iget-object p2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-object v1, v2, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    iget-wide v4, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    iget-wide v4, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    iget v4, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v5, -0x800001

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const v4, 0x3f7851ec    # 0.97f

    :goto_1
    iput v4, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget v1, v1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const v1, 0x3f83d70a    # 1.03f

    :goto_2
    iput v1, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_5

    cmpl-float v1, v1, v5

    if-nez v1, :cond_5

    iput-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    :cond_5
    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    cmp-long v1, p5, v6

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, p2, p5, p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getLiveOffsetUs(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide p0

    iput-wide p0, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    :goto_3
    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    goto :goto_5

    :cond_6
    iget-object p0, v2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p4, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p3, p1, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p3, p1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    invoke-static {p1, p0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz p7, :cond_9

    :cond_8
    iput-wide v6, v3, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    goto :goto_3

    :cond_9
    :goto_5
    return-void
.end method

.method public final declared-synchronized waitUninterruptibly(Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    check-cast v0, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    :try_start_1
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x1

    move v2, p2

    :goto_1
    :try_start_2
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    check-cast p2, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
