.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Loadable;


# instance fields
.field public final dataSource:Landroidx/media3/datasource/StatsDataSource;

.field public dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public icyTrackOutput:Landroidx/media3/exoplayer/source/SampleQueue;

.field public volatile loadCanceled:Z

.field public final loadCondition:Landroidx/media3/common/FlagSet$Builder;

.field public pendingExtractorSeek:Z

.field public final positionHolder:Landroidx/media3/extractor/PositionHolder;

.field public final progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

.field public seekTimeUs:J

.field public seenIcyMetadata:Z

.field public final synthetic this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/core/view/MenuHostHelper;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/common/FlagSet$Builder;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    new-instance p1, Landroidx/media3/datasource/StatsDataSource;

    invoke-direct {p1, p3}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iput-object p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media3/common/FlagSet$Builder;

    new-instance p1, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {p1}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    sget-object p1, Landroidx/media3/exoplayer/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Landroidx/media3/datasource/DataSpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    return-void
.end method


# virtual methods
.method public final buildDataSpec(J)Landroidx/media3/datasource/DataSpec;
    .locals 15

    move-object v0, p0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    const-wide/16 v9, -0x1

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v11, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->customCacheKey:Ljava/lang/String;

    const/4 v12, 0x6

    sget-object v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_METADATA_HEADERS:Ljava/util/Map;

    const-string v1, "The uri must be set."

    iget-object v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    invoke-static {v7, v1}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Landroidx/media3/datasource/DataSpec;

    move-object v0, v14

    move-object v1, v7

    move-wide/from16 v7, p1

    invoke-direct/range {v0 .. v13}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v14
.end method

.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public final load()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    :catch_0
    :cond_0
    :goto_0
    if-nez v2, :cond_c

    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v3, :cond_c

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    :try_start_0
    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-wide v13, v6, Landroidx/media3/extractor/PositionHolder;->position:J

    invoke-virtual {v1, v13, v14}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Landroidx/media3/datasource/DataSpec;

    move-result-object v6

    iput-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v7, v6}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-eqz v8, :cond_1

    add-long/2addr v6, v13

    iget-object v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v9, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    new-instance v10, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    const/4 v11, 0x2

    invoke-direct {v10, v8, v11}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    move-wide v15, v6

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v7}, Landroidx/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    move-result-object v7

    iput-object v7, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v7, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    if-eqz v7, :cond_2

    iget v7, v7, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    new-instance v8, Landroidx/media3/exoplayer/source/IcyDataSource;

    invoke-direct {v8, v6, v7, v1}, Landroidx/media3/exoplayer/source/IcyDataSource;-><init>(Landroidx/media3/datasource/StatsDataSource;ILandroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;)V

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    invoke-direct {v7, v0, v5}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->prepareTrackOutput(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/exoplayer/source/SampleQueue;

    move-result-object v6

    iput-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Landroidx/media3/exoplayer/source/SampleQueue;

    sget-object v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->ICY_FORMAT:Landroidx/media3/common/Format;

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/source/SampleQueue;->format(Landroidx/media3/common/Format;)V

    goto :goto_1

    :cond_2
    move-object v8, v6

    :goto_1
    iget-object v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-object v9, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v6}, Landroidx/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    move-wide v11, v13

    move-wide v3, v13

    move-wide v13, v15

    move-object v15, v6

    invoke-virtual/range {v7 .. v15}, Landroidx/core/view/MenuHostHelper;->init(Landroidx/media3/datasource/DataSource;Landroid/net/Uri;Ljava/util/Map;JJLandroidx/media3/extractor/ExtractorOutput;)V

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->icyHeaders:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    if-eqz v6, :cond_3

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-object v6, v6, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroidx/media3/extractor/Extractor;

    instance-of v7, v7, Landroidx/media3/extractor/mp3/Mp3Extractor;

    if-eqz v7, :cond_3

    check-cast v6, Landroidx/media3/extractor/Extractor;

    check-cast v6, Landroidx/media3/extractor/mp3/Mp3Extractor;

    iput-boolean v5, v6, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    :cond_3
    iget-boolean v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v6, :cond_4

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    iget-object v6, v6, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/extractor/Extractor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v3, v4, v7, v8}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    iput-boolean v0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_4
    :goto_2
    move-wide v13, v3

    :cond_5
    if-nez v2, :cond_7

    iget-boolean v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_7

    :try_start_1
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media3/common/FlagSet$Builder;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_3
    :try_start_2
    iget-boolean v4, v3, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    if-nez v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :cond_6
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-object v6, v3, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/extractor/Extractor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/ExtractorInput;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6, v3, v4}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v2

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v3

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-wide v6, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->continueLoadingCheckIntervalBytes:J

    add-long/2addr v6, v13

    cmp-long v6, v3, v6

    if-lez v6, :cond_5

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media3/common/FlagSet$Builder;

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iput-boolean v0, v6, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v6

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v7, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->onContinueLoadingRequestedRunnable:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v6

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v3

    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    :try_start_8
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_7
    if-ne v2, v5, :cond_8

    move v2, v0

    goto :goto_4

    :cond_8
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-object v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v4}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v4

    iput-wide v4, v3, Landroidx/media3/extractor/PositionHolder;->position:J

    :cond_9
    :goto_4
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    if-eqz v3, :cond_0

    :try_start_9
    invoke-virtual {v3}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    if-eq v2, v5, :cond_a

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v2}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media3/extractor/PositionHolder;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v3}, Landroidx/core/view/MenuHostHelper;->getCurrentInputPosition()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    :cond_a
    iget-object v1, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    if-eqz v1, :cond_b

    :try_start_a
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    :cond_b
    throw v0

    :cond_c
    return-void
.end method
