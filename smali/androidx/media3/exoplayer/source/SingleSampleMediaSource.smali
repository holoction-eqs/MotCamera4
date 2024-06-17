.class public final Landroidx/media3/exoplayer/source/SingleSampleMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"


# instance fields
.field public final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field public final dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final durationUs:J

.field public final format:Landroidx/media3/common/Format;

.field public final loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final timeline:Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

.field public transferListener:Landroidx/media3/datasource/TransferListener;

.field public final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/datasource/DataSource$Factory;Lkotlin/UInt$Companion;ZLcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    move-object/from16 v2, p3

    iput-object v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->durationUs:J

    move-object/from16 v2, p4

    iput-object v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    move/from16 v2, p5

    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    new-instance v2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v3, v2, Landroidx/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    iget-object v3, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v2, Landroidx/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v3, p6

    iput-object v3, v2, Landroidx/media3/common/MediaItem$Builder;->tag:Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v4, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "text/x-unknown"

    :goto_0
    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iget v4, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iput v4, v3, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iget v4, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    iput v4, v3, Landroidx/media3/common/Format$Builder;->roleFlags:I

    iget-object v4, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    :goto_1
    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v4, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->format:Landroidx/media3/common/Format;

    const/16 v18, 0x0

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    const-wide/16 v14, -0x1

    const/16 v17, 0x1

    iget-object v6, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    const-string v1, "The uri must be set."

    invoke-static {v6, v1}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/media3/datasource/DataSpec;

    move-object v5, v1

    invoke-direct/range {v5 .. v18}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    new-instance v1, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 p1, v1

    move-wide/from16 p2, v5

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v2

    invoke-direct/range {p1 .. p6}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZLandroidx/media3/common/MediaItem;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->timeline:Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    return-void
.end method


# virtual methods
.method public final createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/DefaultAllocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 10

    new-instance p2, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->format:Landroidx/media3/common/Format;

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    new-instance v8, Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object p3, p3, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p4, 0x4

    const/4 v0, 0x0

    invoke-direct {v8, p3, v0, p1, p4}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Ljava/io/Serializable;ILjava/lang/Object;I)V

    iget-boolean v9, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;-><init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/common/Format;JLkotlin/UInt$Companion;Lcom/adobe/xmp/impl/ByteBuffer;Z)V

    return-object p2
.end method

.method public final getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public final maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public final prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->timeline:Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public final releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    check-cast p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-object p0, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->cancel(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final releaseSourceInternal()V
    .locals 0

    return-void
.end method
