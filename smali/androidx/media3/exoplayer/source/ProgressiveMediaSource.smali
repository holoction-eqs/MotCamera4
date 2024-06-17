.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"


# instance fields
.field public final continueLoadingCheckIntervalBytes:I

.field public final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field public final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final loadableLoadErrorHandlingPolicy:Lkotlin/UInt$Companion;

.field public final localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final progressiveMediaExtractorFactory:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

.field public timelineDurationUs:J

.field public timelineIsLive:Z

.field public timelineIsPlaceholder:Z

.field public timelineIsSeekable:Z

.field public transferListener:Landroidx/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;Landroidx/media3/exoplayer/drm/DrmSessionManager;Lkotlin/UInt$Companion;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iput p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    return-void
.end method


# virtual methods
.method public final createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 14

    move-object v8, p0

    move-object v0, p1

    iget-object v1, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v2

    iget-object v1, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    new-instance v12, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v1, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v4, v8, Landroidx/media3/exoplayer/source/BaseMediaSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v4, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    iget-object v4, v4, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/extractor/ExtractorsFactory;

    new-instance v5, Landroidx/core/view/MenuHostHelper;

    invoke-direct {v5, v4}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    iget-object v4, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    new-instance v6, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v7, v8, Landroidx/media3/exoplayer/source/BaseMediaSource;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v7, v7, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9, p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iget-object v7, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    new-instance v10, Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v11, v8, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v11, v11, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v11, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v13, 0x4

    invoke-direct {v10, v11, v9, p1, v13}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/Serializable;ILjava/lang/Object;I)V

    iget-object v11, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget v13, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, v12

    move-object v1, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    move-object v8, p0

    move-object/from16 v9, p2

    move-object v10, v11

    move v11, v13

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/core/view/MenuHostHelper;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lkotlin/UInt$Companion;Lcom/adobe/xmp/impl/ByteBuffer;Landroidx/media3/exoplayer/source/ProgressiveMediaSource;Landroidx/media3/exoplayer/upstream/DefaultAllocator;Ljava/lang/String;I)V

    return-object v12
.end method

.method public final getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public final notifySourceInfoRefreshed()V
    .locals 7

    new-instance v6, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZLandroidx/media3/common/MediaItem;)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;

    invoke-direct {v0, p0, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;Landroidx/media3/exoplayer/source/SinglePeriodTimeline;)V

    move-object v6, v0

    :cond_0
    invoke-virtual {p0, v6}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final onSourceInfoRefreshed(JZZ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iput-boolean p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public final prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v1, p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->prepare()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public final releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 6

    check-cast p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-boolean p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepared:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    iget-object v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v4, :cond_0

    iget-object v5, v3, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    iput-object v0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->cancel(Z)V

    :cond_2
    new-instance v1, Landroidx/work/Worker$1;

    const/16 v3, 0xa

    invoke-direct {v1, p1, v3}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iput-boolean v2, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->released:Z

    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->release()V

    return-void
.end method
