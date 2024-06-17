.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/extractor/ExtractorOutput;
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;
.implements Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;
.implements Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;


# static fields
.field public static final ICY_FORMAT:Landroidx/media3/common/Format;

.field public static final ICY_METADATA_HEADERS:Ljava/util/Map;


# instance fields
.field public final allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field public callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public final continueLoadingCheckIntervalBytes:J

.field public final customCacheKey:Ljava/lang/String;

.field public final dataSource:Landroidx/media3/datasource/DataSource;

.field public dataType:I

.field public final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public durationUs:J

.field public enabledTrackCount:I

.field public extractedSamplesCountAtStartOfLoad:I

.field public final handler:Landroid/os/Handler;

.field public haveAudioVideoTracks:Z

.field public icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

.field public isLengthKnown:Z

.field public isLive:Z

.field public lastSeekPositionUs:J

.field public final listener:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

.field public final loadCondition:Landroidx/media3/common/FlagSet$Builder;

.field public final loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

.field public final loader:Landroidx/media3/exoplayer/upstream/Loader;

.field public loadingFinished:Z

.field public final maybeFinishPrepareRunnable:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

.field public final mediaSourceEventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

.field public notifyDiscontinuity:Z

.field public final onContinueLoadingRequestedRunnable:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

.field public pendingDeferredRetry:Z

.field public pendingResetPositionUs:J

.field public prepared:Z

.field public final progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

.field public released:Z

.field public sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

.field public sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

.field public sampleQueuesBuilt:Z

.field public seekMap:Landroidx/media3/extractor/SeekMap;

.field public seenFirstTrackSelection:Z

.field public trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "icy"

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v1, "application/x-icy"

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_FORMAT:Landroidx/media3/common/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/core/view/MenuHostHelper;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lkotlin/UInt$Companion;Lcom/adobe/xmp/impl/ByteBuffer;Landroidx/media3/exoplayer/source/ProgressiveMediaSource;Landroidx/media3/exoplayer/upstream/DefaultAllocator;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataSource:Landroidx/media3/datasource/DataSource;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iput-object p7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    iput-object p8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    iput-object p9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iput-object p10, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    int-to-long p1, p11

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    new-instance p1, Landroidx/media3/common/FlagSet$Builder;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroidx/media3/common/FlagSet$Builder;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/FlagSet$Builder;

    new-instance p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-array p1, p3, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    new-array p1, p3, [Landroidx/media3/exoplayer/source/SampleQueue;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    iput p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    return-void
.end method


# virtual methods
.method public final assertPrepared()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final continueLoading(J)Z
    .locals 2

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    const/4 p2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {p2}, Landroidx/media3/common/FlagSet$Builder;->open()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->startLoading()V

    goto :goto_1

    :cond_2
    move v1, p2

    :goto_1
    return v1

    :cond_3
    :goto_2
    return p2
.end method

.method public final discardBuffer(J)V
    .locals 12

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v8, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v10, v0, v9

    aget-boolean v0, v7, v9

    iget-object v11, v10, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lcom/google/zxing/Result;

    monitor-enter v10

    :try_start_0
    iget v1, v10, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-eqz v1, :cond_4

    iget-object v2, v10, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v3, v10, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v4, v2, v3

    cmp-long v2, p1, v4

    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    iget v0, v10, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    move-object v0, v10

    move v1, v3

    move-wide v3, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v10, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/16 v0, -0x1

    :goto_3
    monitor-exit v10

    invoke-virtual {v11, v0, v1}, Lcom/google/zxing/Result;->discardDownstreamTo(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v10

    throw p0

    :cond_5
    return-void
.end method

.method public final endTracks()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    iget-object v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v4}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v4, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v7, v4, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-object v0, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v9, v0, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-wide v11, v3, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    cmp-long v0, v11, v5

    iget-wide v3, v3, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    if-nez v0, :cond_1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move-wide v13, v1

    goto :goto_3

    :cond_1
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    sub-long v13, v1, v11

    xor-long/2addr v11, v1

    xor-long v15, v1, v13

    and-long/2addr v11, v15

    cmp-long v0, v11, v5

    if-gez v0, :cond_2

    const-wide/high16 v13, -0x8000000000000000L

    :cond_2
    add-long v11, v1, v3

    xor-long v15, v1, v11

    xor-long/2addr v3, v11

    and-long/2addr v3, v15

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    const-wide v11, 0x7fffffffffffffffL

    :cond_3
    cmp-long v0, v13, v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v0, :cond_4

    cmp-long v0, v7, v11

    if-gtz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    cmp-long v5, v13, v9

    if-gtz v5, :cond_5

    cmp-long v5, v9, v11

    if-gtz v5, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    sub-long v3, v7, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v0, v9, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_8

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    :goto_2
    move-wide v13, v7

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_9

    :cond_8
    move-wide v13, v9

    :cond_9
    :goto_3
    return-wide v13
.end method

.method public final getBufferedPositionUs()J
    .locals 12

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v10, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v9, v9, v6

    monitor-enter v9

    :try_start_0
    iget-boolean v10, v9, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v9

    if-nez v10, :cond_2

    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v9, v9, v6

    monitor-enter v9

    :try_start_1
    iget-wide v10, v9, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v9

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v9

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    :cond_6
    return-wide v7

    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final getExtractedSamplesCount()I
    .locals 5

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    iget v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v3, v3, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final getLargestQueuedTimestampUs(Z)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v3, v3, v2

    monitor-enter v3

    :try_start_0
    iget-wide v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_2
    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object p0
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/FlagSet$Builder;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPendingReset()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybeFinishPrepare()V
    .locals 11

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->released:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    monitor-enter v5

    :try_start_0
    iget-boolean v6, v5, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v5, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v5

    if-nez v4, :cond_2

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/FlagSet$Builder;

    monitor-enter v0

    :try_start_1
    iput-boolean v2, v0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    new-array v1, v0, [Landroidx/media3/common/TrackGroup;

    new-array v3, v0, [Z

    move v5, v2

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v0, :cond_b

    iget-object v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v7, v7, v5

    monitor-enter v7

    :try_start_2
    iget-boolean v8, v7, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v8, :cond_4

    move-object v8, v4

    goto :goto_3

    :cond_4
    iget-object v8, v7, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    monitor-exit v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    move v7, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v7, v6

    :goto_5
    aput-boolean v7, v3, v5

    iget-boolean v10, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    or-int/2addr v7, v10

    iput-boolean v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    iget-object v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    if-eqz v7, :cond_a

    if-nez v9, :cond_7

    iget-object v10, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aget-object v10, v10, v5

    iget-boolean v10, v10, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->isIcyTrack:Z

    if-eqz v10, :cond_9

    :cond_7
    iget-object v10, v8, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v10, :cond_8

    new-instance v10, Landroidx/media3/common/Metadata;

    new-array v6, v6, [Landroidx/media3/common/Metadata$Entry;

    aput-object v7, v6, v2

    invoke-direct {v10, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_6

    :cond_8
    new-array v6, v6, [Landroidx/media3/common/Metadata$Entry;

    aput-object v7, v6, v2

    invoke-virtual {v10, v6}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v10

    :goto_6
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6, v8}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    iput-object v10, v6, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    new-instance v8, Landroidx/media3/common/Format;

    invoke-direct {v8, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :cond_9
    if-eqz v9, :cond_a

    iget v6, v8, Landroidx/media3/common/Format;->averageBitrate:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_a

    iget v6, v8, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v6, v9, :cond_a

    iget v6, v7, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v6, v9, :cond_a

    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7, v8}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    iput v6, v7, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    new-instance v8, Landroidx/media3/common/Format;

    invoke-direct {v8, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :cond_a
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v6, v8}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Landroidx/media3/common/Format;)I

    move-result v6

    invoke-virtual {v8}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v7

    iput v6, v7, Landroidx/media3/common/Format$Builder;->cryptoType:I

    invoke-virtual {v7}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v6

    new-instance v7, Landroidx/media3/common/TrackGroup;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6}, [Landroidx/media3/common/Format;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v7

    throw p0

    :cond_b
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    new-instance v2, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;-><init>(Landroidx/media3/exoplayer/source/TrackGroupArray;[Z)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    goto :goto_7

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_c
    :goto_7
    return-void
.end method

.method public final maybeNotifyDownstreamFormat(I)V
    .locals 13

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackNotifiedDownstreamFormats:[Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    const/4 v2, 0x0

    aget-object v6, v0, v2

    iget-object v0, v6, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v5

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v0, Landroidx/media3/exoplayer/source/MediaLoadData;

    const/4 v4, 0x1

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->downstreamFormatChanged(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/4 p0, 0x1

    aput-boolean p0, v1, p1

    :cond_0
    return-void
.end method

.method public final maybeStartDeferredRetry(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    iput v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final maybeThrowPrepareError()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iget v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    invoke-virtual {v0, v1}, Lkotlin/UInt$Companion;->getMinimumLoadableRetryCount(I)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-nez v2, :cond_5

    iget-object v1, v1, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz v1, :cond_2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    iget v0, v1, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    :cond_0
    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v2, :cond_2

    iget v1, v1, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "Loading finished before preparation is complete."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    return-void

    :cond_5
    throw v2
.end method

.method public final onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, v2, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-direct {v3}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>()V

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    iget-object v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v15, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v13

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v1

    move-object v7, v15

    move-object v4, v15

    move-wide v15, v1

    invoke-direct/range {v7 .. v16}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {v6, v3, v4}, Lcom/adobe/xmp/impl/ByteBuffer;->loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    if-nez p6, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-lez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method

.method public final onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-wide v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v2

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getLargestQueuedTimestampUs(Z)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    :goto_0
    iput-wide v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    iget-object v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->listener:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    iget-boolean v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLive:Z

    invoke-virtual {v6, v4, v5, v2, v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->onSourceInfoRefreshed(JZZ)V

    :cond_1
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    new-instance v4, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, v2, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-direct {v4}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>()V

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    iget-object v15, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v13, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v1

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v16

    move-object v5, v13

    move v6, v7

    move v7, v9

    move v9, v10

    move-object v10, v11

    move-wide v11, v1

    move-object v1, v13

    move-wide/from16 v13, v16

    invoke-direct/range {v5 .. v14}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {v15, v4, v1}, Lcom/adobe/xmp/impl/ByteBuffer;->loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    iput-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public final onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, v2, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-direct {v3}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>()V

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v7, Landroidx/media3/common/ParserException;

    const/4 v4, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    if-nez v2, :cond_3

    instance-of v2, v7, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_3

    instance-of v2, v7, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v2, :cond_3

    instance-of v2, v7, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    if-nez v2, :cond_3

    sget v2, Landroidx/media3/datasource/DataSourceException;->$r8$clinit:I

    move-object v2, v7

    :goto_0
    if-eqz v2, :cond_1

    instance-of v9, v2, Landroidx/media3/datasource/DataSourceException;

    if-eqz v9, :cond_0

    move-object v9, v2

    check-cast v9, Landroidx/media3/datasource/DataSourceException;

    iget v9, v9, Landroidx/media3/datasource/DataSourceException;->reason:I

    const/16 v10, 0x7d8

    if-ne v9, v10, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v2, v8

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, p7, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v9, 0x1388

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v9, v2

    goto :goto_3

    :cond_3
    :goto_2
    move-wide v9, v5

    :goto_3
    cmp-long v2, v9, v5

    if-nez v2, :cond_4

    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    :goto_4
    move-object v9, v2

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v2

    iget v11, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v2, v11, :cond_5

    move v11, v4

    goto :goto_5

    :cond_5
    move v11, v8

    :goto_5
    iget-boolean v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isLengthKnown:Z

    if-nez v12, :cond_9

    iget-object v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v12

    cmp-long v5, v12, v5

    if-eqz v5, :cond_6

    goto :goto_7

    :cond_6
    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v2

    if-nez v2, :cond_7

    iput-boolean v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    move v2, v8

    goto :goto_9

    :cond_7
    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    iput v8, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v12, v2

    move v13, v8

    :goto_6
    if-ge v13, v12, :cond_8

    aget-object v14, v2, v13

    invoke-virtual {v14, v8}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_8
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iput-wide v5, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    iput-wide v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    iput-boolean v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    iput-boolean v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    goto :goto_8

    :cond_9
    :goto_7
    iput v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    :goto_8
    move v2, v4

    :goto_9
    if-eqz v2, :cond_a

    new-instance v2, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {v2, v11, v9, v10}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    goto :goto_4

    :cond_a
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_4

    :goto_a
    iget v2, v9, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    if-eqz v2, :cond_b

    if-ne v2, v4, :cond_c

    :cond_b
    move v8, v4

    :cond_c
    xor-int/2addr v8, v4

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    const/4 v4, 0x0

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v10

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/xmp/impl/ByteBuffer;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/common/Format;JJLjava/io/IOException;Z)V

    return-object v9
.end method

.method public final prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {p1}, Landroidx/media3/common/FlagSet$Builder;->open()Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->startLoading()V

    return-void
.end method

.method public final prepareTrackOutput(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/exoplayer/source/SampleQueue;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/source/SampleQueue;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-direct {v1, v4, v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iput-object p0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aput-object p1, v2, v0

    iput-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueueTrackIds:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/exoplayer/source/SampleQueue;

    aput-object v1, p1, v0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    return-object v1
.end method

.method public final readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public final seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final seekToUs(J)J
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v1}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->lastSeekPositionUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-wide p1

    :cond_1
    iget v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v2, v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v4

    if-nez v4, :cond_3

    aget-boolean v4, v0, v3

    if-nez v4, :cond_2

    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->haveAudioVideoTracks:Z

    if-nez v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    return-wide p1

    :cond_5
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v2, p0

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_6

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-object p0, v0, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->cancel(Z)V

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, p0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_8

    aget-object v3, p0, v2

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-wide p1
.end method

.method public final selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->assertPrepared()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->trackState:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    iget-object v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v8, p1, v4

    if-eqz v8, :cond_0

    aget-boolean v8, p2, v4

    if-nez v8, :cond_1

    :cond_0
    check-cast v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    iget v5, v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    aget-boolean v8, v7, v5

    invoke-static {v8}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    sub-int/2addr v8, v6

    iput v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    aput-boolean v3, v7, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    move p2, v6

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    move v0, v3

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_a

    aget-object v2, p3, v0

    if-nez v2, :cond_9

    aget-object v2, p1, v0

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v4

    if-ne v4, v6, :cond_5

    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v4

    if-nez v4, :cond_6

    move v4, v6

    goto :goto_5

    :cond_6
    move v4, v3

    :goto_5
    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v2

    iget-object v4, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, -0x1

    :goto_6
    aget-boolean v4, v7, v2

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    add-int/2addr v4, v6

    iput v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    aput-boolean v6, v7, v2

    new-instance v4, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-direct {v4, p0, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    aput-object v4, p3, v0

    aput-boolean v6, p4, v0

    if-nez p2, :cond_9

    iget-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object p2, p2, v2

    invoke-virtual {p2, p5, p6, v6}, Landroidx/media3/exoplayer/source/SampleQueue;->seekTo(JZ)Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p2, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget p2, p2, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v2, p2

    if-eqz v2, :cond_8

    move p2, v6

    goto :goto_7

    :cond_8
    move p2, v3

    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->enabledTrackCount:I

    if-nez p1, :cond_d

    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingDeferredRetry:Z

    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length p3, p2

    move p4, v3

    :goto_8
    if-ge p4, p3, :cond_b

    aget-object v0, p2, p4

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_8

    :cond_b
    iget-object p1, p1, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    invoke-static {p1}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->cancel(Z)V

    goto :goto_b

    :cond_c
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length p2, p1

    move p3, v3

    :goto_9
    if-ge p3, p2, :cond_f

    aget-object p4, p1, p3

    invoke-virtual {p4, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_d
    if-eqz p2, :cond_f

    invoke-virtual {p0, p5, p6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekToUs(J)J

    move-result-wide p5

    :goto_a
    array-length p1, p3

    if-ge v3, p1, :cond_f

    aget-object p1, p3, v3

    if-eqz p1, :cond_e

    aput-boolean v6, p4, v3

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    :goto_b
    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seenFirstTrackSelection:Z

    return-wide p5
.end method

.method public final startLoading()V
    .locals 19

    move-object/from16 v7, p0

    new-instance v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->uri:Landroid/net/Uri;

    iget-object v3, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataSource:Landroidx/media3/datasource/DataSource;

    iget-object v4, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-object v6, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadCondition:Landroidx/media3/common/FlagSet$Builder;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/core/view/MenuHostHelper;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/common/FlagSet$Builder;)V

    iget-boolean v0, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-wide v0, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-wide v9, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    cmp-long v0, v9, v0

    if-lez v0, :cond_0

    iput-boolean v5, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    iput-wide v2, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    return-void

    :cond_0
    iget-object v0, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->seekMap:Landroidx/media3/extractor/SeekMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v9, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    invoke-interface {v0, v9, v10}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v0, v0, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-wide v9, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    iget-object v4, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iput-wide v0, v4, Landroidx/media3/extractor/PositionHolder;->position:J

    iput-wide v9, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    iput-boolean v5, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const/4 v0, 0x0

    iput-boolean v0, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    iget-object v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v4, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    iget-wide v9, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    iput-wide v9, v5, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-wide v2, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->pendingResetPositionUs:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->getExtractedSamplesCount()I

    move-result v0

    iput v0, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->extractedSamplesCountAtStartOfLoad:I

    iget-object v0, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iget v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    invoke-virtual {v0, v1}, Lkotlin/UInt$Companion;->getMinimumLoadableRetryCount(I)I

    move-result v0

    iget-object v1, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1, v8, v7, v0}, Landroidx/media3/exoplayer/upstream/Loader;->startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    iget-object v0, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    new-instance v1, Landroidx/media3/exoplayer/source/LoadEventInfo;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(Landroidx/media3/datasource/DataSpec;)V

    const/4 v12, 0x0

    iget-wide v2, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    iget-wide v4, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->durationUs:J

    iget-object v0, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->mediaSourceEventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v6, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v15

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v17

    move-object v9, v6

    invoke-direct/range {v9 .. v18}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {v0, v1, v6}, Lcom/adobe/xmp/impl/ByteBuffer;->loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public final suppressRead()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->notifyDiscontinuity:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->isPendingReset()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 1

    new-instance p2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepareTrackOutput(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object p0

    return-object p0
.end method
